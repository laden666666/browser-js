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
  $ coffee -w -c .
```

```shell
  $ uglifyjs --output browser.min.js browser.js
```

### LICENSE

Copyright (c) 2013 Ryan Lindsey

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
"Software"), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE
LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
