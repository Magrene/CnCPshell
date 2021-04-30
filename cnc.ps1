    $hostIP= Get-NetIPAddress | where {($_.IPAddress -like "10.*")} | foreach{$_.IPAddress}


        [string[]]$read = get-content -path C:\Users\Public\Documents\rf.txt
        rm C:\Users\Public\Documents\rf.txt
    
        if($read[1] -eq ($hostIP.split("."))[3] -or $read[1] -eq 'all'){
            if($read[0] -eq ($hostIP.split("."))[1] -or $read[0] -eq 'all'){
                invoke-expression $read[2]
            }
            
        }
        
        
    }
