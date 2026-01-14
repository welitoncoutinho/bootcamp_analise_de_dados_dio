#pegar o diretorio atual 
$scriptDiretory = Split-Path -Path $MyInvocation.MyCommand.Definition -Parent

#arquivo de saida 

$outputFile = Join-Path -Path $scriptDiretory -ChildPath "migration.sql"

# verifica se arquivo ja existe se existir apagar

if(Test-Path $outputFile){
    Remove-Item $outputFile
}

#pega o conteudo do arquivos

$sqlFile = Get-ChildItem -Path $scriptDiretory -Filter "*.sql" -File | Sort-Object Name

#Concatena Arquivos 
foreach($file in $sqlFile){
    Get-Content $file.FullName | Out-File -Append -FilePath $outputFile 
    "GO" | Out-File -Append -FilePath $outputFile
}

write-host "Arquivo de migração criado em: $outputFile"