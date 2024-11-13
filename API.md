## BypassBuddy API usage
```lua
local API = loadstring(game:HttpGet("https://raw.githubusercontent.com/bbbbbbbbbbbbbb121/BypassBuddy/refs/heads/main/script.lua", true))()
```

Sections:

UI - Handle bypassbuddy's UI library with a function:
UI.MakeTab, You can access already existing tabs with UI.Tabs (table)

Functions - Make your own fork of bypassbuddy internally!

# Bypassing:

```lua
local Message = "Do you have discord?"

local Bypassed, BypassedInHowManyTries = API.Bypass(Message)
print(Bypassed, BypassedInHowManyTries) -> Output: string, number
```

# Chatting:

```lua
-- Pretty simple:

local Message = "Do you have discord?"

API.Chat(API.Bypass(Message))
```

# Notifying the user:

```lua
-- The following is a table describing each code and their color.
{
  info = Color3.fromRGB(200, 200, 200),
  alert = Color3.fromRGB(200, 0, 0),
  success = Color3.fromRGB(0, 200, 0),
  error = Color3.fromRGB(255, 0, 0)
}

-- To notify:
API.Notify("Hello!', 'success')
API.Notify("Oh nose issue occured..", 'error')
API.Notify("WATCH OUT!!!", 'alert')
API.Notify("Hi", 'info')
```

# Filtering & Other stuff:

```lua
local IsFiltered, FilterMessage = API.Filter("discord")

print(IsFiltered, FilterMessage) -> Output: A boolean describing if the first argument is filtered (aka unsafe to chat), FilterMessage which can be: *UTF8* which means the first argument has an invalid utf8 character in it, *Ratelimit* which means the script got rate limited, you'd have to wait around 5 seconds for it to go away, *Success* which means the result is accurate.
```

# Settings:

```lua
local Settings = API.GetSettings()

table.foreach(Settings, print)

-- Update settings:

Settings.Feedback = not Settings.Feedback
API.SetSettings(Settings)
```

Thats all for the api!
