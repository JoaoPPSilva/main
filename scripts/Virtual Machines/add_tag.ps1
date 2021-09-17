#Assign new tag on virtual machines
#Pre-requisites:
# - Create a .txt file with vmName follow the tagName
# - .txt file separate for comma
# Change the parameters
#-------------------------------------------------------
#.txt file example
# vmName1,tagName,
# vmName2, tagName,
#-------------------------------------------------------

#Set all parameters
param(
  $tagCategory = 'Backups',
  $path = "C:\Users\INS507822\Documents\vmslist.txt"
)

Get-TagCategory -Name $tagCategory -ErrorAction SilentlyContinue | Remove-TagCategory -Confirm:$false

Try{
    $tag = New-TagCategory -Name $tagCategory -EntityType VirtualMachine -Cardinality Single -ErrorAction Stop
}
Catch{
    $tag = Get-TagCategory -Name $tagCategory
}

foreach($line in (Get-Content -Path $path | ConvertFrom-Csv -Header VMname,Tag)){
    Try{
        $newTag = New-Tag -Name $line.Tag -Category $tag -ErrorAction Stop
    }
    Catch{
        $newTag = Get-Tag -Name $line.Tag -Category $tag
    }

    Get-VM -Name $line.VMname | New-TagAssignment -Tag $newtag -Confirm:$false
}
