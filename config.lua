Config                            = {}
Config.DrawDistance               = 100
Config.MarkerColor                = {r = 120, g = 120, b = 240}
Config.EnablePlayerManagement     = false -- enables the actual car dealer job. You'll need esx_addonaccount, esx_billing and esx_society
Config.ResellPercentage           = 50

Config.Locale                     = 'en'

Config.LicenseEnable = true -- require people to own drivers license when buying vehicles? Only applies if EnablePlayerManagement is disabled. Requires esx_license

-- looks like this: 'LLL NNN'
-- The maximum plate length is 8 chars (including spaces & symbols), don't go past it!
Config.PlateLetters = 3
Config.PlateNumbers = 3
Config.PlateUseSpace = true
Config.LegacyFuel = false

Config.Zones = {

	ShopEntering = {
		Pos   = vector3(-41.20, -1675.26, 28.43),
		Size  = {x = 1.5, y = 1.5, z = 1.0},
		Type  = 1
	},

	ShopInside = {
		Pos     = vector3(-44.57, -1678.69, 28.41),
		Size    = {x = 1.5, y = 1.5, z = 1.0},
		Heading = -228.71,
		Type    = -1
	},

	ShopOutside = {
		Pos     = vector3(-48.37, -1682.97, 28.46),
		Size    = {x = 1.5, y = 1.5, z = 1.0},
		Heading = 322.81,
		Type    = -1
	},

	BossActions = {
		Pos   = vector3(-26.79, -1672.52, 28.49),
		Size  = {x = 1.5, y = 1.5, z = 1.0},
		Type  = -1
	},

	GiveBackVehicle = {
		Pos   = vector3(-44.57, -1678.69, 28.41),
		Size  = {x = 3.0, y = 3.0, z = 1.0},
		Type  = (Config.EnablePlayerManagement and 1 or -1)
	},

	ResellVehicle = {
		Pos   = vector3(-29.91, -1679.76, 28.46),
		Size  = {x = 3.0, y = 3.0, z = 1.0},
		Type  = 1
	}

}
