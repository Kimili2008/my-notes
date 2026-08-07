![[Pasted image 20260803154936.png]]
https://www.runoob.com/w3cnote/https-ssl-intro.html
Root certificate

# example for http

```html
Client:
GET /index.html HTTP/1.1
Host: www.example.com
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101 Firefox/91.0
Accept: text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8
Accept-Encoding: gzip, deflate
Connection: keep-alive

Server:
HTTP/1.1 200 OK
Date: Wed, 18 Apr 2024 12:00:00 GMT
Server: Apache/2.4.1 (Unix)
Last-Modified: Wed, 18 Apr 2024 11:00:00 GMT
Content-Length: 12345
Content-Type: text/html; charset=UTF-8

<!DOCTYPE html>
<html>
<head>
    <title>Example Page</title>
</head>
<body>
    <h1>Hello, World!</h1>
    <!-- The rest of the HTML content -->
</body>
</html>

```



- The safety issues of SSL certificate

SSL Interception (Man in the middle attack)
This is not solely used for attack purposes. In some cases SSL interception is great for smooth Wi-Fi connection.

可以自己申请CA认证的证书，比如ISRG's lets encrypt 颁发的免费证书
