param(
    [string]$version = "8.0.22"
)
$url = "https://dev.mysql.com/get/Downloads/MySQL-$version/mysql-$version-winx64.msi"
$output = "C:\mysql-installer.msi"
Invoke-WebRequest -Uri $url -OutFile $output
Start-Process -FilePath $output -ArgumentList "/quiet" -Wait
