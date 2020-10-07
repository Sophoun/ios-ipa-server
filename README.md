Install IPA with HTTPS, and auto generate certificates.

[中文介绍](./README.md)

# Support Platform
* OS X
* Ubuntu
* CentOS
* Not test for other platform

# Require
* [nodejs](https://nodejs.org/)

# Installation
```
$ npm install -g ios-ipa-server
```

# Usage
```
Usage: ios-ipa-server [option] [dir]

Options:

-h, --help                output usage information
-V, --version             output the version number
-p, --port <port-number>  set port for server (defaults is 1234)
-i, --ip <ip-address>     set ip address for server (defaults is automatic getting by program)
```

## Start Server
```
$ cd /path/of/ipa
$ ios-ipa-server

# or 

$ ios-ipa-server /path/of/ipa


# open https://ip:port/download on your iphone 
```

### About `ipa` archive
* [Ad-hoc](https://developer.apple.com/library/ios/documentation/IDEs/Conceptual/AppDistributionGuide/TestingYouriOSApp/TestingYouriOSApp.html)
* [Enterprise Distributing](https://developer.apple.com/library/ios/documentation/IDEs/Conceptual/AppDistributionGuide/DistributingEnterpriseProgramApps/DistributingEnterpriseProgramApps.html)
* For normal developer you can use the [shenzhen](https://github.com/nomad/shenzhen) to build the `ipa`.
* Highly recommond use static ip address, avoid reinstall cer every time.

### Install App
* Open `https://ip:port/download` page.
* The first time webpage will alert `Cannot Verify Server Identity`, plz click `Details` button, and install the certificate by follow the hint press next and input password.
* Click the `ipa` link to install `ipa`.
* iOS 10.3 [Issue](https://github.com/bumaociyuan/ios-ipa-server/issues/23) Settings > General > About (logically...) > Certificate Trust Settings > Enable Full Trust for Root Certificates


![simulator screen shot jun 22 2016 2 38 35 pm 2](https://cloud.githubusercontent.com/assets/4977911/16257321/66d10888-388a-11e6-9b2d-d5ed0d100d8c.png)

# Screenshots
![screeshot](screeshot.png)

# Develop

```
# Download source code
$ git clone git@github.com:bumaociyuan/ios-ipa-server.git

# Install modules
$ cd ios-ipa-server
$ npm install 

# Make link for debug
$ npm link

# Run
$ cd /path/of/ipa
$ ios-ipa-server
```

# TODO

- [ ] Support Internationalization
- [ ] Support [shenzhen](https://github.com/nomad/shenzhen)
- [ ] Support upload IPA

# Build docker image
```
$ docker build -t sophoun/ios-ota-server .
```

# Run docker image
```
$ docker run -d \
-e host_ip=[1.0.0.1] \
-e port=[1234] \
-p 1234:1234 \
-v [absolute_path_ipa]:/ipa [image]
```

#Lisence
[MIT](https://github.com/bumaociyuan/zxIpaServer/blob/master/LICENSE.md)
