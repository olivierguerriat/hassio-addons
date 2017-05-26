
# Homebridge Add-On for Hass.io

The [Homebridge](https://github.com/nfarina/homebridge) config folder is in the Home Assistant config folder (`/config/homebridge`) that you can access via SSH, Samba…

## Installation

1. [Add my add-on repository to your Hass.io installation](https://github.com/olivierguerriat/hassio-addons#installation)
2. Install the "Homebridge" add-on
3. Start the "Homebridge" add-on
4. If you have a password, add it to the config file (`/config/homebridge/config.json`) and reboot the add-on.
5. In the Home app (on your iPhone), add an accessory. "Home Assistant" should show up in the list. The default PIN code is `031-45-154`.

See [Homebridge](https://github.com/nfarina/homebridge) and [Home Assistant plugin](https://github.com/home-assistant/homebridge-homeassistant) documentation for more details.

This should work "out of the box". You can however tweak the Homebridge installation by editing the config file (`/config/homebridge/config.json`) and restarting the add-on after any changes.

## Homebridge Plugins

You can install additional [Homebridge plugins](https://www.npmjs.com/search?q=homebridge-plugin) by putting their name in the add-on config ([homebridge-homeassistant](https://github.com/home-assistant/homebridge-homeassistant) is installed by default):

    {
      "plugins": [
        "homebridge-statefuldummy"
      ]
    }

## Support

Something doesn't work as expected? Please use [this thread](https://community.home-assistant.io/t/homebridge-add-on/18569).

## Acknowledgments

This is greatly inspired from [docker-homebridge](https://github.com/oznu/docker-homebridge) and [homebridge-docker](https://github.com/ckuburlis/homebridge-docker). Thanks to them!
