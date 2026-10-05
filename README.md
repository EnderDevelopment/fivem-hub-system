# FiveM Hub System

A versatile hub system for FiveM servers with customizable menus and markers.

## Features

- Customizable hub location and appearance
- Interactive menu system with multiple options

## Requirements

- FiveM server
- ESX Framework

## Installation

1. Download the script from the [releases page](https://github.com/EnderDevelopment/fivem-hub-system/releases).
2. Extract the files into your server's `resources` folder.
3. Add `start fivem-hub-system` to your server.cfg file.

## Usage

1. Configure the hub settings in the `config.lua` file.
2. Customize the menu options in the `config.lua` file.
3. Restart your server or start the resource.

## Configuration

The script can be fully configured through the `config.lua` file. Here are the available options:

```lua
Config = {}

-- Hub settings
Config.HubName = 'Zoro Hub'
Config.HubCoords = vector3(425.1, -979.5, 30.7)
Config.HubMarker = 27
Config.HubMarkerColor = {r = 0, g = 255, b = 0, a = 100}
Config.HubMarkerSize = vector3(2.0, 2.0, 1.0)

-- Menu settings
Config.MenuTitle = 'Zoro Hub Menu'
Config.MenuSubtitle = 'Select an option'
Config.MenuOptions = {
    {label = 'Option 1', value = 'option1'},
    {label = 'Option 2', value = 'option2'},
    {label = 'Option 3', value = 'option3'}
}
```

---

## Generated with EnderDevelopment

This plugin was generated in minutes with [EnderDevelopment](https://enderdevelopment.com) — the AI platform that turns your ideas into working Minecraft plugins, Discord bots and FiveM scripts.

**Want your own?** [Generate this project on EnderDevelopment](https://dash.enderdevelopment.com?utm_source=github&utm_medium=readme&utm_campaign=fivem-hub-system&utm_content=bottom) — describe it in one sentence and get the full source code.