----------
  
[configMarkdown](configMarkdown.html) | [devnotes](devnotes.html) | [DiasporaCredits](DiasporaCredits.html) | [dsp_params](dsp_params.html)	| [dsp_readme](dsp_readme.html) 

-----------

# Available packages and installers
## Diaspora dsp plugin only 
**All you need for Sim City 4 is the dsp_pack.dat package. It's three small files plus the docs. Try this first to explore your games with dsp.** 

This comes in two common flavours:

- zipped file for manual installation: [dsp_pack_man.rar](https://googledrive.com/host/0B4lfo3Q6T2EUbnEzOC1nT1prR1E/setup/dsp_pack_man.rar "dsp_pack_man.rar")
- common Windows installer: [dsp_pack_win.rar](https://googledrive.com/host/0B4lfo3Q6T2EUbnEzOC1nT1prR1E/setup/dsp_pack_win.rar "dsp_pack_win.rar")

## Diaspora datafile viewer incl. dependencies
- zipped file for manual installation: [dsp_view_man.rar](https://googledrive.com/host/0B4lfo3Q6T2EUbnEzOC1nT1prR1E/setup/dsp_view_man.rar "dsp_view_man.rar")
- common windows installer: [dsp_view_win.rar](setup/dsp_view_win.rar "je")

*If you do not like the provided mongoose server you may use your own http server, but you will have to configure the paths manually. Sorry, but there's currently no detailed docs about Diaspora Viewer and Editor, but some parts of the code are well commented.*

## All in one packages

- zipped file: [dsp_all_man.rar](https://googledrive.com/host/0B4lfo3Q6T2EUbnEzOC1nT1prR1E/setup/dsp_all_man.rar "dsp_all_man.rar")
- Windows installer: [dsp_all_win.rar](https://googledrive.com/host/0B4lfo3Q6T2EUbnEzOC1nT1prR1E/setup/dsp_all_win.rar "dsp_all_win.rar")

You will have to unzip the files. All 'flavors' contain several documentation files, as far as they exist to this point. You will find the files in your sc4 user directory (that's where the whole package goes by default).
*The download links point to the most current versions on my g**gle drive. There is more useful information on the Diaspora website currently located at [https://googledrive.com/host/0B4lfo3Q6T2EUbnEzOC1nT1prR1E/](https://googledrive.com/host/0B4lfo3Q6T2EUbnEzOC1nT1prR1E/) .

### Recommended directory structure
For the plugin only. You may view and edit config/data with your preferred editor.

    %simcity user files%plugins%\dsp_pack.dat
    %Sim City 4 application%\Apps\Diaspora\data.dat
    %Sim City 4 application%\Apps\Diaspora\patch.dat

If the viewer is to be installed, by default files go to 

    %simcity user files%\Diaspora\
    %simcity user files%\Diaspora\doc
    %simcity user files%\Diaspora\app

#Credits
This package contains software from various sources and license models. All parts (or components) are licensed under some kind of Open Source licensing model. You will find the details in the sub directories and/or script files. These components are *reused as fundamental parts of this package*. 

## Included components
 1. The main .dat files required to read/write the data. This is a quite normal and convenient module for Sim City 4 only. *This will work standalone!*
 2. A viewer component to view local and remote patch (configuration) and data files. 
 3. A lightweight HTTP server for local usage only.
 4. Windows run times for node.js which sandboxes the viewer application.
 5. Several jQuery plugins.
 
*All rights are held by the respective authors of the software.*
 
### Links
- jQUery: [http://jquery.com/](http://jquery.com/), [http://jqueryui.com/](http://jqueryui.com/) used to develop the viewer interface,
- app.js: [http://appjs.org](http://appjs.org) which provides a wrapper and sandbox for the viewer,
- node.js:[http://nodejs.org](http://nodejs.org) which is essential for app.js 
- jqPlot: [http://jqplot.com](http://jqplot.com)
- mongoose: [http://code.google.com/p/mongoose/](http://code.google.com/p/mongoose/) A fantastic library to generate jQuery plots on the fly. Look here for ideas and plugs for the graphics....
- Install Creator: [https://www.clickteam.com/website/world/install-creator](https://www.clickteam.com/website/world/install-creator) well known and free windows installer.


*Support and documentation for these components is provided in detail following the links above.*

# Last but not least: have fun!

----------
  
[configMarkdown](configMarkdown.html) | [devnotes](devnotes.html) | [DiasporaCredits](DiasporaCredits.html) | [dsp_params](dsp_params.html)	| [dsp_readme](dsp_readme.html) 

-----------
06.04.2013 15:30:27