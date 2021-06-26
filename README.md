## Don't use! Currently not working! Any help is appreciated.

# esx_truckshop

ESX Truck Shop adds an truck shop to the game, where employeed players can sell trucks to other players. You can also disable the job part so any player can buy trucks with a menu based interaction.

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
