$url = "https://www.linkedin.com" 
$cookiejar = New-Object System.Net.CookieContainer 
$webrequest = [System.Net.HTTPWebRequest]::Create($url); 
$webrequest.CookieContainer = $cookiejar 
$response = $webrequest.GetResponse() 
$cookies = $cookiejar.GetCookies($url) 
     
# Here, you can output all of $cookies, or you can go through them one by one. 
 
foreach ($cookie in $cookies) { 
     # You can get cookie specifics, or just use $cookie 
     # This gets each cookie's name and value 
     Write-Host "$($cookie.name) = $($cookie.value)" 
    
}
 Write-Host ($cookies)
 $cookies| out-file -filepath C:\Recovery\dump.txt -append -width 200
