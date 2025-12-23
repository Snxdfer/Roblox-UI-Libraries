# NOTHING UI
- Smooth
- Not lag
- Open Source
- Icons: [[https://raw.githubusercontent.com/dawid-scripts/Fluent/refs/heads/master/src/Icons.lua]]
  
## Require Library
```lua
local NothingLibrary = loadstring(game:HttpGetAsync('https://raw.githubusercontent.com/Snxdfer/Nothing-UI-Library/refs/heads/main/source.lua'))();
local Windows = NothingLibrary.new({
	Title = "NOTHING",
	Description = "Nothing UI Library",
	Keybind = Enum.KeyCode.LeftControl,
	Logo = 'http://www.roblox.com/asset/?id=18898582662'
})
```
## Create Window
```lua
local TabFrame = Windows:NewTab({
	Title = "Example",
	Description = "example tab",
	Icon = "rbxassetid://7733960981"
})

```

## Create Section
```lua
local Section = TabFrame:NewSection({
	Title = "Section",
	Icon = "rbxassetid://7743869054",
	Position = "Left"
})

local InfoSection = TabFrame:NewSection({
	Title = "Information",
	Icon = "rbxassetid://7733964719",
	Position = "Right"
})

```

### Toggle

```lua
Section:NewToggle({
	Title = "Toggle",
	Default = false,
	Callback = function(tr)
		print(tr)
	end,
})

Section:NewToggle({
	Title = "Auto Farm",
	Default = false,
	Callback = function(tr)
		print(tr)
	end,
})

```

### Button
```lua
Section:NewButton({
	Title = "Kill All",
	Callback = function()
		print('killed')
	end,
})

Section:NewButton({
	Title = "Teleport",
	Callback = function()
		print('tp')
	end,
})

```

### Slider
```lua
Section:NewSlider({
	Title = "Slider",
	Min = 10,
	Max = 50,
	Default = 25,
	Callback = function(a)
		print(a)
	end,
})

Section:NewSlider({
	Title = "WalkSpeed",
	Min = 15,
	Max = 50,
	Default = 16,
	Callback = function(a)
		print(a)
	end,
})

```

### Keybind
```lua
Section:NewKeybind({
	Title = "Keybind",
	Default = Enum.KeyCode.RightAlt,
	Callback = function(a)
		print(a)
	end,
})

Section:NewKeybind({
	Title = "Auto Combo",
	Default = Enum.KeyCode.T,
	Callback = function(a)
		print(a)
	end,
})
```

### Dropdown
```lua
Section:NewDropdown({
	Title = "Dropdown",
	Data = {1,2,3,4,5},
	Default = 1,
	Callback = function(a)
		print(a)
	end,
})

Section:NewDropdown({
	Title = "Method",
	Data = {'Teleport','Locker','Auto'},
	Default = 'Auto',
	Callback = function(a)
		print(a)
	end,
})

```

### End
```lua
InfoSection:NewTitle('UI by CATSUS')
InfoSection:NewButton({
	
	Title = "Discord",
	Callback = function()
		print('discord.gg/BH6pE7jesa')
	end,
})
```

# Full Example

```lua
local NothingLibrary = loadstring(game:HttpGetAsync('https://raw.githubusercontent.com/3345-c-a-t-s-u-s/NOTHING/main/source.lua'))();
local Notification = NothingLibrary.Notification();

Notification.new({
	Title = "Notification",
	Description = "Example",
	Duration = 5,
	Icon = "rbxassetid://8997385628"
})

local Windows = NothingLibrary.new({
	Title = "NOTHING",
	Description = "Nothing UI Library",
	Keybind = Enum.KeyCode.LeftControl,
	Logo = 'http://www.roblox.com/asset/?id=18898582662'
})

local TabFrame = Windows:NewTab({
	Title = "Example",
	Description = "example tab",
	Icon = "rbxassetid://7733960981"
})

local Section = TabFrame:NewSection({
	Title = "Section",
	Icon = "rbxassetid://7743869054",
	Position = "Left"
})

local InfoSection = TabFrame:NewSection({
	Title = "Information",
	Icon = "rbxassetid://7733964719",
	Position = "Right"
})

Section:NewToggle({
	Title = "Toggle",
	Default = false,
	Callback = function(tr)
		print(tr)
	end,
})

Section:NewToggle({
	Title = "Auto Farm",
	Default = false,
	Callback = function(tr)
		print(tr)
	end,
})

Section:NewButton({
	Title = "Kill All",
	Callback = function()
		Notification.new({
			Title = "Killed",
			Description = "10",
			Duration = 5,
			Icon = "rbxassetid://8997385628"
		})
		
		print('killed')
	end,
})

Section:NewButton({
	Title = "Teleport",
	Callback = function()
		print('tp')
	end,
})

Section:NewSlider({
	Title = "Slider",
	Min = 10,
	Max = 50,
	Default = 25,
	Callback = function(a)
		print(a)
	end,
})

Section:NewSlider({
	Title = "WalkSpeed",
	Min = 15,
	Max = 50,
	Default = 16,
	Callback = function(a)
		print(a)
		
	end,
})

Section:NewKeybind({
	Title = "Keybind",
	Default = Enum.KeyCode.RightAlt,
	Callback = function(a)
		print(a)
	end,
})

Section:NewKeybind({
	Title = "Auto Combo",
	Default = Enum.KeyCode.T,
	Callback = function(a)
		print(a)
	end,
})

Section:NewDropdown({
	Title = "Dropdown",
	Data = {1,2,3,4,5},
	Default = 1,
	Callback = function(a)
		print(a)
	end,
})

Section:NewDropdown({
	Title = "Method",
	Data = {'Teleport','Locker','Auto'},
	Default = 'Auto',
	Callback = function(a)
		print(a)
	end,
})

InfoSection:NewTitle('UI by 4lpaca')
InfoSection:NewButton({

	Title = "Discord",
	Callback = function()
		print('discord.gg/BH6pE7jesa')
	end,
})
```

### Key System

```lua
NothingLibrary.NewAuth({
	Title = "Neuron X",
	GetKey = function() 
		return 'https://example.com/key'
	end,
	Auth = function(MAIN_KEY)
		if MAIN_KEY.Name == '1234' then
			return true;
		end;
	end,
	Freeze = true,
}).Close();
```

### Notification

```lua
local Notification = NothingLibrary.Notification();

Notification.new({
	Description = 'Example';
	Title = "Notification";
	Duration = 3;
	Icon = "rbxassetid://7733993369",
})
```
