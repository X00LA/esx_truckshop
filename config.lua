Config                            = {}
Config.DrawDistance               = 100
Config.EnablePlayerManagement     = false -- enables the actual car dealer job. You'll need esx_addonaccount, esx_billing and esx_society
Config.ResellPercentage           = 50

Config.Locale                     = 'de'

Config.LicenseEnable = true -- require people to own drivers license when buying vehicles? Only applies if EnablePlayerManagement is disabled. Requires esx_license

-- looks like this: 'LLL NNN'
-- The maximum plate length is 8 chars (including spaces & symbols), don't go past it!
Config.PlateLetters = 4
Config.PlateNumbers = 4
Config.PlateUseSpace = false
Config.LegacyFuel = true

Config.Zones = {

	ShopEntering = {
		Pos   = vector3(-41.20, -1675.26, 28.43),
		Size  = {x = 1.5, y = 1.5, z = 1.0},
		Type  = 1,
		Color = { r = 0, g = 200, b = 0 },
	},

	ShopInside = {
		Pos     = vector3(-47.91, -1681.73, 28.44),
		Size    = {x = 1.5, y = 1.5, z = 1.0},
		Heading = -40.0,
		Type    = -1,
		Color 	= { r = 13, g = 0, b = 255 },
	},

	ShopOutside = {
		Pos     = vector3(-47.91, -1681.73, 28.44),
		Size    = {x = 1.5, y = 1.5, z = 1.0},
		Heading = 320.71,
		Type    = -1,
		Color 	= { r = 255, g = 0, b = 230 },
	},

	BossActions = {
		Pos   = vector3(-26.79, -1672.52, 28.49),
		Size  = {x = 1.5, y = 1.5, z = 1.0},
		Type  = -1,
		Color = { r = 0, g = 255, b = 179 },
	},

	GiveBackVehicle = {
		Pos   = vector3(-44.57, -1678.69, 28.41),
		Size  = {x = 3.0, y = 3.0, z = 1.0},
		Type  = (Config.EnablePlayerManagement and 1 or -1),
		Color = { r = 255, g = 94, b = 0 },
	},

	ResellVehicle = {
		Pos   = vector3(-29.91, -1679.76, 28.46),
		Size  = {x = 3.0, y = 3.0, z = 1.0},
		Type  = 1,
		Color = { r = 0, g = 255, b = 0 },
	}

}
