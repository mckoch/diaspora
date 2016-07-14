----------
  
[configMarkdown](configMarkdown.html) | [devnotes](devnotes.html) | [DiasporaCredits](DiasporaCredits.html) | [dsp_params](dsp_params.html)	| [dsp_readme](dsp_readme.html) 

-----------

## Sample dsp configuration file - Overview App\Diaspora\patch.dat ##

    #0x000000#1364730031#Apps\Diaspora\patch.dat -- auto-generated eyecandy..

This is the main Diaspora configuration file.
May be edited any time during a running game.
Only lines starting with a dsp valid hex are interpreted.
Changes take place the next time watchdog calls this file.

The following two lines are essential, but may be changed anytime.

    #0xff0000#Apps\Diaspora\data.dat# current logfile in sc4/Apps/ 
    #0xfffff0#3# Watchdog's interval in minutes


If a new logfile was created, for some strange reason this takes up
a full interval. The next cycle everything is fine.


Comments may be placed anywhere, on seperate lines. 
A comment which goes to the logfile:
    
    
    #0xfffff0#0#Send this comment to the current logfile.
    
    
current budget /get only:

    
    #0x000002#reserved#Total Budget. -sc4game.budget.total_funds()
    
    
or add some money:
    
    
    #0x020000#1000000# budget add / subtract by sc4game.budget.deposit_funds(100)
    
    

example automata buildings counter:

    #0xd0000a#0x1305#-- passenger rail
    #0xd0000a#0x1306#-- freight rail 
    #0xd0000a#0x150A#-- landmark
    #0xd0000a#0x150F#-- schools_k6
    #0xd0000a#0x1307#-- Monorail station

some traffic data:

    #0xd0000a#0x4001#Automata: Pedestrian
    #0xd0000a#0x4002#Automata: Vehicle
    #0xd0000a#0x4003#Automata: Aircraft


a buildings counter:

    #0xd0000a#0x11010#Building: R$
    #0xd0000a#0x11020#Building: R$$
    #0xd0000a#0x11030#Building: R$$$
    #0xd0000a#0x13320#Building: CO$$
    #0xd0000a#0x13330#Building: CO$$$
    #0xd0000a#0x13110#Building: CS$
    #0xd0000a#0x13120#Building: CS$$
    #0xd0000a#0x13130#Building: CS$$$
    #0xd0000a#0x14100#Building: IA
    #0xd0000a#0x14200#Building: ID
    #0xd0000a#0x14300#Building: IM
    #0xd0000a#0x14400#Building: IHT


more about rail:

    #0xB0#g_train_station_count#
    #0xB0#ga_train_station_utilization_p#
    
demands:

    #0xB0#g_r1_demand#
    #0xB0#g_r2_demand#
    #0xB0#g_r3_demand#
    #0xB0#g_co2_demand#
    #0xB0#g_co3_demand#
    #0xB0#g_r1_active_demand#
    #0xB0#g_r2_active_demand#
    #0xB0#g_r3_active_demand#
    #0xB0#g_co2_active_demand#
    #0xB0#g_co3_active_demand#
    #0xB0#g_id_active_demand#
    #0xB0#g_im_active_demand#
    #0xB0#g_iht_active_demand#
    #0xB0#g_workforce_demand#
    #0xB0#g_workforce_active_demand#
    #0xB0#g_current_id_cap#
    #0xB0#g_current_im_cap#
    #0xB0#g_current_iht_cap#
    #0xB0#g_current_co2_cap#
    #0xB0#g_current_co3_cap#
    #0xB0#g_current_r1_cap#
    #0xB0#g_current_r2_cap#
    #0xB0#g_current_r3_cap#


exmpl. community content:

    #0xd0000a#0xB5C00151#SG: Shops
    #0xd0000a#0xB5C00152#SG: Offices
    #0xd0000a#0xB5C0000E#CSX: Parks
    #0xd0000a#0xB5C0000F#BTE: Industrial Chain
    #0xd0000a#0xB5C00010#CSX: Commercial Farms
    #0xd0000a#0x422c#Automata: El Train Engine
    #0xd0000a#0x422d#Automata: El Train
    #0xd0000a#0xB5C009B0#CP: Timber Related Business/industry
    #0xd0000a#0xB5C009B1#CP: Outdoor Recreation Related Business/industry
    #0xd0000a#0xB5C00BA9#CAM: R$ Stage 9
    #0xd0000a#0xB5C00BAA#CAM: R$ Stage 10


----------
  
[configMarkdown](configMarkdown.html) | [devnotes](devnotes.html) | [DiasporaCredits](DiasporaCredits.html) | [dsp_params](dsp_params.html)	| [dsp_readme](dsp_readme.html) 

-----------
06.04.2013 19:40:49 