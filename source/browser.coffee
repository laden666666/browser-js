###
  Browser.js - v0.1.2
  Copyright (c) 2013 Ryan Lindsey
  Dual licensed under the MIT license and GPL license.
  https://github.com/pixelsonly
###

class @Browser

  @USER_AGENT = navigator.userAgent if navigator?

  @NAMES =
    chrome: 'Chrome'
    firefox: 'Firefox'
    safari: 'Safari'
    ie: 'Internet Explorer' 
    ipad: 'iPad'
    iphone: 'iPhone'
    ipod: 'iPod Touch'
    android: 'Android'
    blackberry: 'Blackberry'

  @VERSIONS =
    default: /(?:Version|MSIE|Firefox|Chrome|CriOS|QuickTime|BlackBerry[^\/]+|CoreMedia v)[\/ ]?([a-z0-9.]+)/i
    opera: /Opera\/.*? Version\/([\d.]+)/

  @TRIDENT_VERSION_REGEX = /Trident\/([0-9.]+)/

  constructor: ->
    undefined

  
  
  # Operating Systems
  # -------------------------------------
  @osx: ->
    !!Browser.USER_AGENT.match(/Mac OS X/i)

  @linux: ->
    !!Browser.USER_AGENT.match(/Linux/)

  @windows: ->
    !!Browser.USER_AGENT.match(/Windows/)

  @operating_system: ->
    if @osx()
      'OSX'
    else if @windows()
      'Windows'
    else if @linux()
      'Linux'
    else
      'Other'

  @meta: ->
    os: do @operating_system
    name: do @vendor
    version: do @version



  # Devices
  # -------------------------------------
  @iphone: ->
    !!Browser.USER_AGENT.match(/iPhone/)

  @ipad: ->
    !!Browser.USER_AGENT.match(/iPad/)

  @ipod: ->
    !!Browser.USER_AGENT.match(/iPod/)

  @kindle: ->
    !!Browser.USER_AGENT.match(/Kindle/)

  @psp: ->
    !!Browser.USER_AGENT.match(/PSP/)


  # Vendors
  # -------------------------------------
  @semver: ->
    String(Browser.USER_AGENT.match(Browser.VERSIONS.default)[1])

  @version: ->
    semver = do @semver
    semver.split('.')[0]

  @vendor: ->
    if @chrome()
      Browser.NAMES.chrome
    else if @safari()
      Browser.NAMES.safari
    else if @firefox()
      Browser.NAMES.firefox
    else if @ie()
      Browser.NAMES.ie
    else
      'Other'

  @chrome: ->
    !!Browser.USER_AGENT.match(/Chrome|CriOS/)

  @safari: ->
    Browser.USER_AGENT.match(/Safari/) and !Browser.USER_AGENT.match(/Chrome|CriOS/)

  @firefox: ->
    !!Browser.USER_AGENT.match(/Firefox/)

  @ie: ->
    !!Browser.USER_AGENT.match(/MSIE/) and !Browser.USER_AGENT.match(/Opera/)
