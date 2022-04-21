function Get-Boolean ($Message){
    $null = $Response
    While ($Response -NotIn 'yes','y','n','no'){
        Write-Host "Answer must be 'yes','y','n' or 'no'" -ForegroundColor Red
        $Response = Read-Host $Message
    }
    if ($Response -in 'yes','y'){return $true}
    elseif($Response -in 'n','no'){return $false}
    else{Write-Error "Invalid response";pause;exit}
}