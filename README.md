Browser JS
==========

#### Operating System
```
  Browser.osx()
  true
  
  Browser.linux()
  false
  
  Browser.windows()
  false
  
  Browser.operating_system()
  "OSX"
  
  Browser.meta()
  {
    os: "OSX",
    name: "Chrome",
    version: "27"
  }
```




#### Device
```
  Browser.iphone()
  false
  
  Browser.ipad()
  false
  
  Browser.kindle()
  false
  
  Browser.psp()
  false
```

#### Vendor
```
Browser.vendor()
"Chrome"

Browser.version()
"27"

Browser.semver()
"27.0.1453.116"

Browser.chrome()
true

Browser.safari()
false

Browser.firefox()
false

Browser.ie()
false
```


### Compile & Minify
```shell 
  $ coffee -w --output . --compile ./source
```

```shell
  $ uglifyjs --output browser.min.js browser.js
```
