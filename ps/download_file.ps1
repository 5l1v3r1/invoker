$url = Read-Host "Enter URL";
Write-Host "";
$out = Read-Host "Enter output file name";
Write-Host "";
if ($url -eq "" -or $out -eq "") {
	Write-Host "Both parameters are required";
} else {
	try {
		(New-Object Net.WebClient).DownloadFile($url, $out);
		Write-Host "File was downloaded successfully";
	} catch {
		Write-Host $_.Exception.InnerException.Message;
	}
}
