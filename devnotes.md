----------
  
[configMarkdown](configMarkdown.html) | [devnotes](devnotes.html) | [DiasporaCredits](DiasporaCredits.html) | [dsp_params](dsp_params.html)	| [dsp_readme](dsp_readme.html) 

-----------

> *A short preface: Since the early days of PCs I love playing around with simulators like Sim City (still remember Simtropolis...), Civilization, the more and more interesting CitiesXL, and - for quite a time - Medieval 1+2 and Rome. 'Playing' means more experimenting with the simulation, or playing around with them like - toys. It's not about 'winning' - I'm sure you know what I'm talking about if you use this software. It's not about cheating, it's about diving into the simulation and 'getting things done' - that's what mods are for.*

## Reuse Diaspora dsp - keeping things compatible

There are at least two ways to use dsp in Sim City 4 mods: either refer it's global functions if installed the plugin, or paste the code into a new mod and hook to your own mapping functions (or whatsoever). Please change the package signature to your own. Anyway, you have basic file in, file out, timed events and batch processing capabilities. 
    
    --#-package:0C160701# -- package signature - that's where dsp lives.
   
dsp uses two addresses: one for the plugin itself, one for the watchdog. That's it, so if there are incompatibilities, you simply might change the hex adresses.
 
## Modder's view / programming  intro

dsp is a small lib (less than 2k footprint) which can easily be used for own creations. 

    function dsp.CreateDiasporaFile(file_)
    	checks if file_ exists, creates new file_ if not. Returns true.
    
dsp.CreateDiasporaFile(file_) is the basic function and will accept file names in the SimCity4\Apps\ directory. If the file is not present, dsp will create it.

    function dsp.addGameStatus(data)
    		--# That's where the hook is....

dsp.addGameStatus(data) is the batch processors main function. It is called periodically by the advisor script which is located in function dsp.trigger(). It needs the config input from Apps\patch.dat. This input must be provided by dsp.readConfig() to work properly. It is the main hook for plugging extra functions and batching them from config. 

    function dsp.readConfig()
    	loads the config file line by line and returns an unfiltered table of lines.
    
dsp.readConfig() is the reader for the batch file patch.dat. It's name is 'hard coded'; if you want to change it: right at the beginning of the LUA script. It has no input parameters and should only be called by dsp.addGameStatus(data), so it reads always:

    dsp.addGameStatus(dsp.readConfig()) 

which is enough to trigger a full read/write cycle.


    function dsp.automataGetSourceBuildingCount(key_)
    	returns sc4's counter for automata at key_

dsp.automataGetSourceBuildingCount(key_) is the function which returns single values located at ingame key_.  
    
    function dsp.saveTo(data_, file_, comment_)
    	saves data_ to file_ with comment_, returns true/false.

function dsp.saveTo(data_, file_, comment_) is a helper to log certain strings to the current data file. May be used as output function from other facilities.
    
    function dsp.trigger()

dsp.trigger() actually calls dsp.addGameStatus(dsp.readConfig()). It is executed by the advisor within the given interval from config. It does timed checks for triggering dsp.addGameStatus(dsp.readConfig()), so the watchdog lives here (). Should not be called directly since it is hosted by the advicers. Function dsp.trigger() must always return true, else if sc4 shows an annoying advicer and terminate the watchdog.
    	
### main function

    dsp.CreateDiasporaFile(DiasporaMainDataFile)
    if dsp.addGameStatus(dsp.readConfig()) 
		    a = create_advice_safety('0C160701')
		    a.trigger  = "dsp.trigger()"
		    a.timeout = tuning_constants.ADVICE_TIMEOUT_SHORT
		    a.title = [[text@0C161702]]
		    a.message = [[text@0C161703]]
		    a.priority  = tuning_constants.ADVICE_PRIORITY_URGENT
		    a.mood = advice_moods.ALARM
		    dsp.saveTo("#SUCCESS#", DiasporaMainDataFile, "#WATCHDOG INSTALLED.")
    end



This is no rocket science and quite a common advicer script. Once the files are present, current status is written to file, and the advicer is instantiated. 

This is a basic overview, no copy and paste. Full code in the module files: there should be two (at least) addtional files in the package which contain 'pure' LUA. One only instantiates the dsp in/out and provides the hook for processing, the other contains additional functions - batch commands to say. This is what plugins\dsp_pack.dat does.

### Happy modding!

> *PS: Well, Diaspora tries to take the toys to a new level, that is: letting them play with each other. First step - that's what the dsp object does - is writing them to file in a common readable format. Since most games do not allow to load and execute external code at run time, dsp provides a mapper to allowed default game functions and addresses. Since file general file I/O is allowed, dsp can read and interpret a batch file. Simple, ah? Take it a step further: if a local mapper for game values maps from different simulators, so batch files may be created and fed during run time: in fact two engines may play (well, within limits) against each other. Or use one game as a sidekick for the other, or exchange AI files (yes, there's that term). Enough! Have fun!*

06.04.2013 18:17:13 **Additional information in script's comments and readmes, especially in dsp_params.md. Anything is subject to change, however.**

----------
  
[configMarkdown](configMarkdown.html) | [devnotes](devnotes.html) | [DiasporaCredits](DiasporaCredits.html) | [dsp_params](dsp_params.html)	| [dsp_readme](dsp_readme.html) 

-----------
06.04.2013 19:41:16 