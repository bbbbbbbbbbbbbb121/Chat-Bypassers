local TweenService = game:GetService("TweenService")

local Instance_new = Instance.new
local UDim2_new, UDim_new = UDim2.new, UDim.new
local Color3_fromHex = Color3.fromHex
local TweenInfoNew = TweenInfo.new

local GXL = {
 ["LoaderUI"] = Instance_new("ScreenGui"),
 ["BypassBuddyFrame"] = Instance_new("Frame"),
 ["Corner"] = Instance_new("UICorner"),
 ["Slider"] = Instance_new("Folder"),
 ["Slider_2"] = Instance_new("Frame"),
 ["SliderFill"] = Instance_new("Frame"),
 ["UICorner"] = Instance_new("UICorner"),
 ["Stroke"] = Instance_new("UIStroke"),
 ["Text"] = Instance_new("TextLabel"),
 ["Stroke_2"] = Instance_new("UIStroke"),
 ["UI"] = Instance_new("Folder")
}
GXL["LoaderUI"]["Parent"] = gethui and gethui() or game:GetService("Players").LocalPlayer.PlayerGui
GXL["LoaderUI"]["Name"] = 'LoaderUI'

GXL["BypassBuddyFrame"]["Parent"] = GXL["LoaderUI"]
GXL["BypassBuddyFrame"]["Name"] = 'BypassBuddyFrame'
GXL["BypassBuddyFrame"]["BackgroundColor3"] = Color3_fromHex("0f0f0f")
GXL["BypassBuddyFrame"]["BorderColor3"] = Color3_fromHex("000000")
GXL["BypassBuddyFrame"]["BorderSizePixel"] = 0
GXL["BypassBuddyFrame"]["Position"] = UDim2_new(.5, 0, .5, 0)
GXL["BypassBuddyFrame"]["AnchorPoint"] = Vector2.new(.5, .5)
GXL["BypassBuddyFrame"]["Size"] = UDim2_new(0.000000, 395.000000, 0.000000, 301.000000)

GXL["Corner"]["Parent"] = GXL["BypassBuddyFrame"]
GXL["Corner"]["Name"] = 'Corner'
GXL["Corner"]["CornerRadius"] = UDim_new(0.000000, 5.000000)

GXL["Slider"]["Parent"] = GXL["BypassBuddyFrame"]
GXL["Slider"]["Name"] = 'Slider'

GXL["Slider_2"]["Parent"] = GXL["Slider"]
GXL["Slider_2"]["Name"] = 'Slider'
GXL["Slider_2"]["BackgroundColor3"] = Color3_fromHex("ffffff")
GXL["Slider_2"]["BackgroundTransparency"] = 1
GXL["Slider_2"]["BorderColor3"] = Color3_fromHex("000000")
GXL["Slider_2"]["BorderSizePixel"] = 0
GXL["Slider_2"]["Position"] = UDim2_new(0.103797, 0.000000, 0.275748, 0.000000)
GXL["Slider_2"]["Size"] = UDim2_new(0.000000, 318.000000, 0.000000, 23.000000)

GXL["SliderFill"]["Parent"] = GXL["Slider_2"]
GXL["SliderFill"]["Name"] = 'SliderFill'
GXL["SliderFill"]["BackgroundColor3"] = Color3_fromHex("5555ff")
GXL["SliderFill"]["BorderColor3"] = Color3_fromHex("000000")
GXL["SliderFill"]["BorderSizePixel"] = 0
GXL["SliderFill"]["Size"] = UDim2_new(0.100000, 0.000000, 1.000000, 0.000000)

GXL["UICorner"]["Parent"] = GXL["SliderFill"]
GXL["UICorner"]["Name"] = 'UICorner'
GXL["UICorner"]["CornerRadius"] = UDim_new(0.000000, 2.000000)

GXL["Stroke"]["Parent"] = GXL["Slider_2"]
GXL["Stroke"]["Name"] = 'Stroke'
GXL["Stroke"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border
GXL["Stroke"]["Color"] = Color3_fromHex("282828")
GXL["Stroke"]["Thickness"] = 0.6000000238418579

GXL["Text"]["Parent"] = GXL["Slider"]
GXL["Text"]["Name"] = 'Text'
GXL["Text"]["FontFace"] = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Medium, Enum.FontStyle.Normal)
GXL["Text"]["FontSize"] = Enum.FontSize.Size18
GXL["Text"]["RichText"] = true
GXL["Text"]["Text"] = 'Fetching script metadata..'
GXL["Text"]["TextColor3"] = Color3_fromHex("b2b2b2")
GXL["Text"]["TextSize"] = 16
GXL["Text"]["AutomaticSize"] = Enum.AutomaticSize.XY
GXL["Text"]["BackgroundColor3"] = Color3_fromHex("ffffff")
GXL["Text"]["BackgroundTransparency"] = 1
GXL["Text"]["BorderColor3"] = Color3_fromHex("000000")
GXL["Text"]["BorderSizePixel"] = 0
GXL["Text"]["Position"] = UDim2_new(0.5, 0.000000, 0.14, 0.000000)
GXL["Text"]["AnchorPoint"] = Vector2.new(.5, .14)
GXL["Text"]["Size"] = UDim2_new(0.000000, 200.000000, 0.000000, 20.000000)

GXL["Stroke_2"]["Parent"] = GXL["Text"]
GXL["Stroke_2"]["Name"] = 'Stroke'
GXL["Stroke_2"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border
GXL["Stroke_2"]["Color"] = Color3_fromHex("282828")
GXL["Stroke_2"]["Thickness"] = 0.6000000238418579

GXL["UI"]["Parent"] = GXL["BypassBuddyFrame"]
GXL["UI"]["Name"] = 'UI'

return {
    Set = function(Percent, Text)
        local SizeX = GXL["SliderFill"].Size.X.Scale

        Text = Text or "..."
        Percent = Percent or SizeX

        GXL["Text"].Text = Text
        TweenService:Create(GXL["SliderFill"], TweenInfoNew(1 / (Percent / 100 / SizeX)), {Size = UDim2_new(Percent / 100, 0, 1, 0)}):Play()
    end,
    Get = function()
        return GXL["SliderFill"].Size.X.Scale
    end,
    UI = GXL
}
