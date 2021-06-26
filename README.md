I made this for my server and want to share it with you all.

Have Fun!

__(PREVIEW)[https://youtu.be/8Uli-UT4YQo]__

# esx_truckshop

ESX Truck Shop adds an truck shop to the game, where employeed players can sell trucks to other players. You can also disable the job part so any player can buy trucks with a menu based interaction.  
  
All features of the original esx_vehicleshop are present:  
- Buying/Selling Vehicles  
- Player Managment  
- Vehicle Rent  
Most features are tested but to make a deep testing of all feature I would need some testers.  

__Location of Shop: Mosleys__ 

__Known Bugs:__  
- Sometimes, in player management, the player gets stuck in his job when quitting. In this case you need to relog and everything is fine.  
Can't figure out at the moment what is causing this behaviour.  
- When you restart the module the database is not loading. You need to restart it again and all is fine.  

  
If you find bugs, please report them and I will do my best to fix them.  
If you can fix the bugs yourself, please make a pull request and share it with us.  
  
__Planned Features: none__  
  
__Included Languages: English & German__  
If you want your own language in the module use the translations from the original esx_vehicleshop and adapt the lines which I have changed.  
After that you have your own language present. ( Should only take 2 minutes to adapt the lang file. )  
  
I have planned to do also a motorcycle and airplane shop as well as the fitting dmv schools for airplanes and boats and several more.  
So stay informed about my github!

## Requirements

* Auto mode (everyone can buy vehicles from the dealer)
  * No need to download other resources

* Player management (the car dealer job): billing, boss actions and more!
  * [esx_society](https://github.com/ESX-Org/esx_society)
  * [esx_billing](https://github.com/ESX-Org/esx_billing)
  * [esx_addonaccount](https://github.com/ESX-Org/esx_addonaccount)
  * [esx_addoninventory](https://github.com/ESX-Org/esx_addoninventory)
  * [cron](https://github.com/ESX-Org/cron)

### Installation

- Import `esx_truckshop.sql` in your database
- Add this in your `server.cfg`:

```
ensure esx_truckshop
```
- If you want player management you have to set `Config.EnablePlayerManagement` to `true` in `config.lua`
- If you have LegacyFuel installed and want to have vehicles fuel tank on 100% when selled then set `Config.LegacyFuel` to `true` in `config.lua`

## Legal

### License

esx_truckshop - truck shop for ESX

Copyright (C) 2015-2020 Jérémie N'gadi
New Copyright (C) 2021 Markus Petautschnig

This program Is free software: you can redistribute it And/Or modify it under the terms Of the GNU General Public License As published by the Free Software Foundation, either version 3 Of the License, Or (at your option) any later version.

This program Is distributed In the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty Of MERCHANTABILITY Or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License For more details.

You should have received a copy Of the GNU General Public License along with this program. If Not, see http://www.gnu.org/licenses/.
