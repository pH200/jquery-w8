# jQuery for Windows 8

Specialized jQuery for Windows 8 apps development.

## Why need a different jQuery for Windows 8?

Compared to normal browser environment, Windows 8 (metro apps) introduced higher security level for JS/DOM. You cannot simply put dynamic content into innerHTML, outerHTML or document.write. You must explicitly disable this restriction by using 'execUnsafeLocalFunction' method.

For more information, see this great article - [Windows 8 – Using jQuery for app development](http://www.incloud.de/2012/08/windows-8-using-jquery-for-app-development/)

http://www.incloud.de/2012/08/windows-8-using-jquery-for-app-development/

### Reduce Loading Time

In addition, all js files need to be UTF8 encoded with BOM in order to enable bytecode caching.

See [Reducing your app's loading time (Metro style apps using JavaScript and HTML)](http://msdn.microsoft.com/en-us/library/windows/apps/hh849088.aspx)

http://msdn.microsoft.com/en-us/library/windows/apps/hh849088.aspx

## Features

 - Wraps all unsafe codes with execUnsafeLocalFunction
 - File is encoded in UTF8 with BOM
 - Nuget package available for lazy people

## nuget

```
PM> Install-Package jQuery-W8
```

https://nuget.org/packages/jQuery-W8
