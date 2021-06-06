mobilenetworkip
=============

Description
-----------
IP addresses of various mobile networks
* `France_mobile_IPv4.csv` and `France_mobile_IPv6.csv` from https://lafibre.info/4g/plages-ip-mobile/ (archived [here](https://web.archive.org/web/20200410095650/https://lafibre.info/4g/plages-ip-mobile/))
  ```
  $ head France_mobile_IPv4.csv 
  80.214.0.0;"ByTel"
  80.214.0.1;"ByTel"
  80.214.0.2;"ByTel"
  80.214.0.3;"ByTel"
  80.214.0.4;"ByTel"
  80.214.0.5;"ByTel"
  80.214.0.6;"ByTel"
  80.214.0.7;"ByTel"
  80.214.0.8;"ByTel"
  80.214.0.9;"ByTel"
  
  $ wc France_mobile_IPv4.csv
  2149632  2149632 45496298 France_mobile_IPv4.csv
  
  
  $ cat France_mobile_IPv6.csv 
  2a04:cec0::/29;"ByTel"
  2a01:cb01::/32;"Orange"
  2a01:cb06::/32;"Orange"
  2a01:cb09::/32;"Orange"
  2a01:cb16::/32;"Orange"
  2a02:8440::/32;"SFR"
  ```


Copyright and license
---------------------
* All trademarks, service marks, trade names and product names appearing on this repository are the property of their respective owners
