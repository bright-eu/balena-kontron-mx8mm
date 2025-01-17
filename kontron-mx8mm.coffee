deviceTypesCommon = require '@resin.io/device-types/common'
{ networkOptions, commonImg, instructions } = deviceTypesCommon

module.exports =
	version: 1
	slug: 'kontron-mx8mm'
	aliases: [ ]
	name: 'Kontron i.MX8M Mini'
	arch: 'aarch64'
	state: 'released'
	isDefault: true

	# imageDownloadAlerts: [
	# 	{
	# 		type: 'warning'
	# 		message: 'The Raspberry Pi 3 is not capable of connecting to 5GHz WiFi networks unless you use an external WiFi adapter that supports it. The Raspberry Pi 3 B+ is capable of connecting to both 5GHz and 2.4GHz networks.'
	# 	}
	# ]

	instructions: commonImg.instructions
	# gettingStartedLink:
	# 	windows: 'https://www.balena.io/docs/learn/getting-started/kontron-mx8mm/nodejs/'
	# 	osx: 'https://www.balena.io/docs/learn/getting-started/kontron-mx8mm/nodejs/'
	# 	linux: 'https://www.balena.io/docs/learn/getting-started/kontron-mx8mm/nodejs/'

	supportsBlink: false

	options: [ networkOptions.group ]

	yocto:
		machine: 'kontron-mx8mm'
		image: 'balena-image-flasher'
		fstype: 'balenaos-img'
		version: 'yocto-kirkstone'
		deployArtifact: 'balena-image-kontron-mx8mm.balenaos-img'
		compressed: true

	configuration:
		config:
			partition:
				primary: 1
			path: '/config.json'

	initialization: commonImg.initialization