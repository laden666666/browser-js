describe 'Browser', ->

  it 'can determine if the operating system is OSX', ->
    expect(Browser.osx()).toBeDefined()

  it 'can determine if the operating system is Linux', ->
    expect(Browser.linux()).toBeDefined()

  it 'can determine if the operating system is Windows', ->
    expect(Browser.windows()).toBeDefined()

  it 'can determine operating system in meta object', ->
    expect(Browser.meta().os).toBeDefined()

  it 'can determine browser vendor name in meta object', ->
    expect(Browser.meta().name).toBeDefined()

  it 'can determine browser version in meta object', ->
    expect(Browser.meta().version).toBeDefined()

  it 'can determine if device is iPhone', ->
    expect(Browser.iphone()).toBeDefined()

  it 'can determine if device is iPad', ->
    expect(Browser.ipad()).toBeDefined()

  it 'can determine if device is iPod', ->
    expect(Browser.ipod()).toBeDefined()

  it 'can determine if device is Kindle', ->
    expect(Browser.kindle()).toBeDefined()

  it 'can determine if device is PSP', ->
    expect(Browser.psp()).toBeDefined()

  it 'can determine browser semantic version', ->
    expect(Browser.semver()).toBeDefined()

  it 'can determine browser version', ->
    expect(Browser.version()).toBeDefined()

  it 'can determine the browser vendor', ->
    expect(Browser.vendor()).toBeDefined()

  it 'can determine if browser vendor is Chrome', ->
    expect(Browser.chrome()).toBeDefined()

  it 'can determine if browser vendor is Safari', ->
    expect(Browser.safari()).toBeDefined()

  it 'can determine if browser vendor is Firefox', ->
    expect(Browser.firefox()).toBeDefined()

  it 'can determine if browser vendor is Internet Explorer', ->
    expect(Browser.ie()).toBeDefined()