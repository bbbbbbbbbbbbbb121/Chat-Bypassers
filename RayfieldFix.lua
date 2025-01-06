local API = {
    FileSystem = {
        Path = "UserCreation"
    },
    Characters = {},
    Phrases = {},
    Plugin = {},
    AI = {}
}

local UTF8, table, string, task, math, Vector3, CFrame, UDim2, Color3 =
    utf8,
    table,
    string,
    task,
    math,
    Vector3,
    CFrame,
    UDim2,
    Color3

local UTF8_LEN, UTF8_PATTERN, UTF8_NFCNORMALIZE, UTF8_CHAR = UTF8.len, UTF8.charpattern, UTF8.nfcnormalize, UTF8.char

local tinsert, tfind, tremove, tclone, tcreate, tmove, tunpack, tpack, tconcat, tsort =
    table.insert,
    table.find,
    table.remove,
    table.clone,
    table.create,
    table.move,
    table.unpack,
    table.pack,
    table.concat,
    table.sort
local rep, sub, gsub, find, format, match, lower, upper, split, gmatch, char =
    string.rep,
    string.sub,
    string.gsub,
    string.find,
    string.format,
    string.match,
    string.lower,
    string.upper,
    string.split,
    string.gmatch,
    string.char
local wait, spawn, delay = task.wait, task.spawn, task.delay
local random, rad, cos, sin, ceil, min, max, abs, clamp =
    math.random,
    math.rad,
    math.cos,
    math.sin,
    math.ceil,
    math.min,
    math.max,
    math.abs,
    math.clamp
local Color3_new, Color3_fromRGB = Color3.new, Color3.fromRGB

local Vector3_new = Vector3.new
local Instance_new = Instance.new
local CFrame_new = CFrame.new
local UDim2_new = UDim2.new
local debug_info = debug.info

local UI = {
    Theme = {
        TextColor = Color3.fromRGB(240, 240, 240),
        Background = Color3.fromRGB(15, 15, 15),
        Topbar = Color3.fromRGB(20, 20, 20),
        Shadow = Color3.fromRGB(83, 59, 120),
        NotificationBackground = Color3.fromRGB(20, 20, 20),
        NotificationActionsBackground = Color3.fromRGB(230, 230, 230),
        TabBackground = Color3.fromRGB(56, 56, 56),
        TabStroke = Color3.fromRGB(61, 61, 61),
        TabBackgroundSelected = Color3.fromRGB(175, 153, 255),
        TabTextColor = Color3.fromRGB(240, 240, 240),
        SelectedTabTextColor = Color3.fromRGB(46, 46, 46),
        ElementBackground = Color3.fromRGB(28, 28, 28),
        ElementBackgroundHover = Color3.fromRGB(33, 33, 33),
        SecondaryElementBackground = Color3.fromRGB(25, 25, 25),
        ElementStroke = Color3.fromRGB(46, 46, 46),
        SecondaryElementStroke = Color3.fromRGB(40, 40, 40),
        SliderBackground = Color3.fromRGB(23, 23, 23),
        SliderProgress = Color3.fromRGB(163, 103, 254),
        SliderStroke = Color3.fromRGB(84, 84, 84),
        ToggleBackground = Color3.fromRGB(23, 23, 23),
        ToggleEnabled = Color3.fromRGB(163, 103, 254),
        ToggleDisabled = Color3.fromRGB(100, 100, 100),
        ToggleEnabledStroke = Color3.fromRGB(69, 69, 69),
        ToggleDisabledStroke = Color3.fromRGB(125, 125, 125),
        ToggleEnabledOuterStroke = Color3.fromRGB(79, 79, 79),
        ToggleDisabledOuterStroke = Color3.fromRGB(65, 65, 65),
        DropdownSelected = Color3.fromRGB(40, 40, 40),
        DropdownUnselected = Color3.fromRGB(30, 30, 30),
        InputBackground = Color3.fromRGB(23, 23, 23),
        InputStroke = Color3.fromRGB(56, 56, 56),
        PlaceholderColor = Color3.fromRGB(178, 178, 178)
    },
    Tabs = {}
}

-- * Services

local workspace, game = workspace, game

local Chat, Players, HttpService, TextChatService, TweenService, UserInputService, StarterGui, ReplicatedStorage, VIM =
    game:GetService("Chat"),
    game:GetService("Players"),
    game:GetService("HttpService"),
    game:GetService("TextChatService"),
    game:GetService("TweenService"),
    game:GetService("UserInputService"),
    game:GetService("StarterGui"),
    game:GetService("ReplicatedStorage"),
    Instance.new("VirtualInputManager")

local Player = Players.LocalPlayer
local PlayerGui = Player:FindFirstChildOfClass("PlayerGui")
local IsTCS = TextChatService.ChatVersion == Enum.ChatVersion.TextChatService

-- * Luau Globals

local pcall, _print, warn, error, assert, tick, rawset, rawget, tostring, tonumber, setmetatable, getmetatable, typeof =
    pcall,
    print,
    warn,
    error,
    assert,
    tick,
    rawset,
    rawget,
    tostring,
    tonumber,
    setmetatable,
    getmetatable,
    typeof

local print = function(...)
    _print(format("[LINE %d]: ", debug_info(2, "l")), ...)
end

-- * Exploit Functions

local isfile, isfolder, writefile, makefolder, delfile, delfolder, readfile, cloneref =
    isfile,
    isfolder,
    writefile,
    makefolder,
    delfile,
    delfolder,
    readfile,
    cloneref or function(a)
        return a
    end

local function safe_readfile(path, default)
    if isfile(path) then
        return readfile(path)
    else
        if default then
            writefile(path, default)
        end

        return default or ""
    end
end

-- * Instance Functions

local FilterStringAsync = Chat.FilterStringAsync
local SetCore = StarterGui.SetCore
local JSONEncode = HttpService.JSONEncode
local JSONDecode = HttpService.JSONDecode

-- Phrases setter
do
    API.Phrases =
        HttpService:JSONDecode([[{   
    "Fun 10723424372 1": [
      "black niggers for harris 2024!!!",
      "dont speak to me submissive nigga",
      "donald j trump can dick me down",
      "ill suck your dick for a penny",
      "wanna watch some gay midget porn w me?",
      "nigga kys you gave me aids",
      "ngl i kinda like the fishy smell of your pussy",
      "give me a lap dance for free robux nigga",
      "hey nigger whats up",
      "yall niggas tryna have a jerk session?",
      "can you take a picture of my 8inch dick & send it",
      "ur my cumslut now :3",
      "shorty just let me fuck already!!!",
      "let me stick my 2 inch cock inside you gang",
      "ill slide you 10k to see ur pussy yfm",
      "yeah my scripts private nigga stop begging",
      "whos daddies slutty little bitch :3",
      "poor fucking slave dogshit script",
      "THIS GUY IS HERE TO MEET A 13 YEAR OLD FOR SEX!",
      "i love big booty latinas",
      "who wants to watch Mia Khalipha on pornhub!!",
      "woah nigga! take a chill pill!",
      "this nigger is bugging out!",
      "i want to get RAILED by 5 BIG BLACK NIGGERS AT ONCE!!!",
      "VISIT PORNHUB.COM FOR FREE ROBUX!!!",
      "your script is fucking terrible",
      "DROP YOUR DISCORD SO WE CAN HAVE E-SEX PLEASE MOMMY"
    ],
    "Hate 10709761629 2": [
      "u look unrapeable",
      "you smell like poverty little nigger boy",
      "run my 1s nigga",
      "this nigga autistic ong",
      "you a faggot or sum?",
      "go penis for penis nigga the fuck",
      "yeah yeah nigga at least my momma aint a sex slave",
      "stop forcing your voice faggot",
      "bitch ass nigga aint gon do nun",
      "womp womp nigger go kys",
      "your mother is a dirty whore nigga",
      "ever heard of getting pussy before?",
      "ur my slave little nigga fr",
      "ur talking to ur daddy slave",
      "get this ugly ass nigga away from me",
      "rip that cumslut thots hair out",
      "dumb fucking brokie count a dollar",
      "im unbannable you desperate slut keep whining",
      "oh no the fat bitch is gonna report me!",
      "please go ahead and kill yourself",
      "your mom is such a dirty thot",
      "at least my mother isn't a sex slave!",
      "what a fucking loser",
      "womp womp nigger go kys",
      "ever heard of getting pussy before? ",
      "go braid your ekittens pubes faggot",
      "stop forcing ur voice faggot nobody wants u",
      "seriously hop off my dick dude",
      "you're so fucking poor holy shit"
    ],
    "Games 10709818534 3": [
      "hit a shot nigga are you retarded?",
      "ur antilock is fucking ass",
      "these niggas are getting slammed",
      "dumbass nigga using azure modded",
      "biggest faggot irl",
      "where is this nigga shooting??",
      "ur antilock is fucking ass",
      "these niggas are getting slammed",
      "pipe down nigger ur script is pasted :3",
      "you have decent aim for a faggot ngl",
      "at least buy a decent script you fucking retard",
      "where is this nigga shooting??"
    ],
    "Extreme 10723376114 4": [
      "you dirty jewish nigger heil hitler",
      "get in the fucking oven you inbred jew",
      "spit on a nigger and rape his parents",
      "im gonna rape the fuck out of you",
      "deep fry a nigger to make him look blacker!",
      "dirty little faggot you need to be burnt",
      "i hope you get brutally raped you dirty fucking fag",
      "cooking a filthy jew in my oven for dinner",
      "dirty muslim talking to me with self-destruct suicide vest on",
      "get in the fucking oven you inbred jew",
      "spit on a nigger and rape his parents",
      "im gonna rape the fuck out of you",
      "take a nigger skydiving and cut his parachute!",
      "hang a retarded nigger with autism from a christmas tree! :D",
      "deep fry a nigger to make him look blacker!",
      "i hope you get brutally raped you dirty fucking fag"
    ],
    "Casual 10734964188 5": [
      "whats good my nigga",
      "ok this shit is kinda weird...",
      "i agree with this nigga"
    ],
    "Racism 10709770005 6": [
      "get out of my face you shit skinned nigger",
      "can you speak english nigga all i hear is oo aa",
      "get the fuck away from me nigger",
      "this nigger is retarded istg",
      "no kfc for you nigger",
      "fuck off you little black monkey",
      "what are you gonna do nigger",
      "shut the fuck up you dirty black slave",
      "pipe down you filthy nigger",
      "life failed this dirty nigger",
      "this niggas black pussy looks like a medium rare steak",
      "EVERYBODY RAPE THIS NIGGER TOGETHER",
      "average nigger behavior:",
      "eat ur kfc you black monkey fuck",
      "yo u fat nigger get back to picking cotton",
      "im gonna whip the shit out of you slave",
      "*whips you* pick cotton slave",
      "common hitler W!",
      "eat my shit nigger boy",
      "take a shit over a niggers dead body",
      "i would talk to you but your shitty skincolor makes me think otherwise",
      "#blacklivesDONTmatter",
      "average nigger behavior:",
      "EVERYONE RUN A NIGGER IS COMING!!!",
      "stop being a blackass nigger and then we can talk.",
      "hey there! - have you seen a filthy black nigger running away by any chance?",
      "go mine some bitcoins you stinky faggot paki"
    ],
    "Homophobic 10723375443 7": [
      "why is this game full of dirty fags?",
      "shut the fuck up you filthy fag",
      "hang yourself you filthy queer fuck",
      "this faggot has a cock up his ass!",
      "how many times have you tried to kill yourself you dirty faggot",
      "shut the fuck up you filthy queer",
      "how many dildos are up your ass trannie fag?",
      "first one to rape an LGBTQ activist gets headless!",
      "why is this game full of dirty fags?",
      "i identify as a faggot raper - am i included?",
      "shoot up an LGBTQ parade for free robux!",
      "shut the fuck up you filthy fag",
      "hang yourself you filthy queer fuck",
      "everyone in this game is gay as fuck and needs to be raped",
      "hey faggot filth i wasnt talking to you!",
      "deepthroat a shotgun fag",
      "shoot a faggot in the head with a 12 gauge shotgun",
      "this faggot has a cock up his ass!",
      "first one to rape an LGBTQ activist gets korblox!"
    ],
    "Sex 10723406885 8": [
      "u look rapeable",
      "what color is your pussy?",
      "wanna fuck?",
      "could i possibly rape you?",
      "can i jerk off to your roblox avatar?",
      "i wanna fuck you so bad ughhh",
      "can i sling my 10 foot cock over your shoulder?",
      "anime kid that hasnt grown pubes yet:",
      "squirt on my cock for free robux!!!",
      "let me rub my dick on your clit",
      "have you ever been raped before? (asking for a friend)",
      "i wanna fuck a thot with breast cancer",
      "what color is your pussy?",
      "wanna fuck?",
      "PLEASE HAVE HOT SEX WITH ME MOMMY",
      "can you send me pictures of your pussy? (18+ only)",
      "do you cream or squirt?",
      "could i possibly rape you?",
      "can i jerk off to your roblox avatar?",
      "can i fill your pussy up with my penis?",
      "you would definently suck roblox cock for 5 robux!"
    ],
    "Women 10709790757 9": [
      "clean my fucking house you filthy sex slave",
      "you're a dirty fat whore aren't you?",
      "stop forcing your voice its embarassing as fuck",
      "shut your mouth you fat bitch",
      "i brutally rape feminists until they realise they have no rights",
      "WASH THOSE DISHES FASTER BITCH! THE CLOCK IS TICKING!!!",
      "go make me a sandwich you fatass hoe!",
      "hop off my cock fatty!",
      "MAKE ME A FUCKING SANDWICH BITCH",
      "you get fucked by 5 guys a day and you're acting innocent?",
      "stop forcing your voice its embarassing as fuck",
      "go back to doing the laundry retard!",
      "WASH THOSE DISHES FASTER BITCH! THE CLOCK IS TICKING!!!",
      "shut your mouth you fat bitch",
      "i brutally rape feminists until they realise they have no rights!"
    ],
    "Roleplay eye 10": [
      "*u- u- ugh...* fuck me i- in t- the ass da- daddy...",
      "*puts lotion on my hard cock*",
      "*starts jerking off*",
      "*grabs your pussy*",
      "*slowly licks the tip of your penis*",
      "*starts jerking your shit*",
      "*starts teasing your pussy*",
      "*smacks my penis across your face*",
      "*puts lotion on my hard cock*",
      "*starts jerking off*",
      "*u- ugh- o- oh y- yes daddy f- fuck me h- harder...*",
      "*pulls your pussy open and looks inside*",
      "*grabs your boobs*"
    ],
    "edate message-square-heart 11": [
      "faggot ass nigga has no game irl",
      "go braid your ekittens pubes nigga"
    ]
  }]])
end

-- * Functions

local function GET_ACCENTS()
    local Accents = {}
    for i = 768, 879 do
        local Character = UTF8_CHAR(i)

        Accents[Character] = ""
    end

    return Accents
end

local function PATH_JOIN(...)
    local Result = ""
    local Paths = {...}

    for i, Path in next, Paths do
        Result = Result .. Path .. (i ~= #Paths and "/" or "")
    end

    return Result
end

local function JSON_Encode(a)
    return JSONEncode(HttpService, a)
end

local function JSON_Decode(a)
    return JSONDecode(HttpService, a)
end

local function Validate(T1, T2)
    for i, v in next, T2 do
        T1[i] = T1[i] == nil and v or T1[i]
    end

    return T1
end

do
    local Path = API.FileSystem.Path 
    if not isfolder(Path) then makefolder(Path) end

    for _, Folder in next, { "Plugins", "Assets", "Cache" } do
        local Path2 = PATH_JOIN(API.FileSystem.Path, Folder)
        if not isfolder(Path2) then makefolder(Path2) end
    end
end

function API:Filter(Text) --> IsFiltered, StatusMessage
    if not UTF8_LEN(Text) then
        return true, "UTF8"
    end

    local Success, Filtered = pcall(FilterStringAsync, Chat, Text, Player, Player)

    if not Success then
        return true, "Ratelimit"
    end

    return Text ~= Filtered, "Success"
end

API.FileSystem.GetSettings = function(_, DefaultSettings)
    local Success, JSON =
        pcall(
        function()
            return JSON_Decode(readfile(PATH_JOIN(API.FileSystem.Path, "Settings.json")))
        end
    )

    return Success and Validate(JSON, DefaultSettings) or DefaultSettings
end

API.FileSystem.SetSettings = function(_, Settings)
    writefile(PATH_JOIN(API.FileSystem.Path, "Settings.json"), JSON_Encode(Settings))
end

local Settings =
    API.FileSystem:GetSettings(
    {
        -- settings def
        global_enabled = true,
        global_mcab = false,
        mcab_messages = 2,
        cache_filter_check = true,
        cache_enabled = true,
        frequency_autofind = true,
        frequency_wordlist = true,
        fake_message_part1 = "Hi guys",
        fake_message_part2 = "[System]: You are now on the admins team.",
        bangsys_yapper = false,
        bangsys_speed = 2,
        bangsys_enabled = false,
        jerk_speed = 1,
        ai_enabled = false,
        ai_distance_enabled = false,
        ai_distance = 10,
        Favorites = {}
    }
)

local function Levenshtein(s, t) -- String Similarity
    local m, n = #s, #t
    if m == 0 then
        return n
    end
    if n == 0 then
        return m
    end

    local dp = {}
    for i = 0, m do
        dp[i] = {[0] = i}
    end
    for j = 0, n do
        dp[0][j] = j
    end

    for i = 1, m do
        for j = 1, n do
            if sub(s, i, i) == sub(t, j, j) then
                dp[i][j] = dp[i - 1][j - 1]
            else
                dp[i][j] = min(dp[i - 1][j], dp[i][j - 1], dp[i - 1][j - 1]) + 1
            end
        end
    end

    return dp[m][n]
end

local function SimilarityPercentage(a, b)
    return (1 - (Levenshtein(a, b) / max(#a, #b))) * 100
end

do
    local index = Settings

    Settings =
        setmetatable(
        tcreate(0),
        {
            __newindex = function(self, key, val)
                index[key] = val
                spawn(API.FileSystem.SetSettings, nil, getmetatable(self).__index)
            end,
            __index = index
        }
    )
end

-- ! Important Stuff !

local FormatCharacters = "-+?^&*#%!"

local SayMessageRequest, GetInitDataRequest

local Bar

local function AllowBypass()
    if UserInputService.TouchEnabled then -- Mobile Support
        local Old = getconnections(Bar.FocusLost)[1]

        Old:Disable()
        Bar.FocusLost:Connect(
            function(a)
                if not a then
                    return
                end
                if not Settings.global_enabled then
                    API:Chat(Bar.Text)
                    Bar.Text = "";
                    return;
                end

                Bar:ReleaseFocus()

                spawn(
                    function()
                        API:ChatMain(Bar.Text)
                    end
                )
            end
        )
    else
        if not getgenv().uc_connection then
            getgenv().uc_connection =
                UserInputService.InputBegan:Connect(
                function(input)
                    if input.KeyCode == Enum.KeyCode.Return and UserInputService:GetFocusedTextBox() == Bar and Settings.global_enabled then
                        Bar.Text = gsub(Bar.Text, "\n", "")
                        if sub(Bar.Text, 1, 1) == "/" then
                            Bar.MultiLine = false
                            Bar:ReleaseFocus(true)
                            Bar.MultiLine = true

                            return;
                        end

                        spawn(API.ChatMain, API, Bar.Text) -- API:ChatMain(Bar.Text)
                    end
                end
            )
        end
    end
end

local function SetChatBar(Object)
    Bar = Object
    Bar.MultiLine = Settings.global_enabled
end

local function GetChatBar()
    if IsTCS then
        Bar =
            cloneref(game:GetService("CoreGui")).ExperienceChat.appLayout.chatInputBar.Background.Container.TextContainer.TextBoxContainer.TextBox
        AllowBypass()
    else
        local function update(Box, Timeout)
            local Label =
                Bar.Parent:WaitForChild("TextLabel", Timeout) or
                {
                    TextColor3 = Color3_new(0, 0, 0),
                    Destroy = function()
                    end
                }

            Box.PlaceholderColor3 = Label.TextColor3

            Label:Destroy()
            AllowBypass()
        end
        -- A little bit more complicated
        local Parent = PlayerGui.Chat.Frame.ChatBarParentFrame
        Bar = Parent.Frame.BoxFrame.Frame.ChatBar

        Parent.DescendantAdded:Connect(
            function(Frame)
                if Frame:IsA("TextBox") and Frame.Name == "ChatBar" and Bar.Parent == nil then
                    Bar = Frame
                    update(Bar, 2)
                end
            end
        )

        spawn(update, Bar, 1)
    end

    return Bar
end

local function REVERSE_TABLE(tbl)
    local tbl2 = {}

    for i, v in next, tbl do
        tbl2[v.Replacement] = i
    end

    return tbl2
end

function API:Debypass(Message)
    for Letter, Value in next, API.Characters do
        Message = gsub(Message, Value.Replacement, Letter)
    end
    for Space = 1, 33 do
        Message = gsub(Message, char(Space), " ")
    end
    Message = gsub(Message, UTF8_PATTERN, GET_ACCENTS())

    return Message
end

local Channels = {}

do
    if not IsTCS then
        SayMessageRequest = ReplicatedStorage:FindFirstChild("SayMessageRequest", true)
        GetInitDataRequest = ReplicatedStorage:FindFirstChild("GetInitDataRequest", true)

        Channels = GetInitDataRequest:InvokeServer().Channels
    end
end

GetChatBar()

function API:Chat(Message)
    if sub(Message, 1, 1) == "\0" then
        return;
    end
    local function GET_CURRENT_CHANNEL()
        for _, Channel in next, Channels do
            if Channel[1] ~= "System" and Channel[1] ~= "Team" then
                return Channel[1]
            end
        end
    end

    if IsTCS then
        for _, Channel in next, TextChatService:GetDescendants() do
            if
                Channel:IsA("TextChannel") and Channel:FindFirstChild(Player.Name) and Channel.Name ~= "RBXSystem" and
                    sub(Channel.Name, 1, 10) ~= "RBXWhisper"
            then
                Channel:SendAsync(Message)
                return
            end
        end
    else
        SayMessageRequest:FireServer(Message, GET_CURRENT_CHANNEL())
    end
end

function API:Normalize(Text)
    return UTF8_LEN(UTF8_NFCNORMALIZE(Text))
end

local function ToHTML(Color, Message)
    return format("<font color='rgb(%d,%d,%d)'>%s</font>", Color.R * 255, Color.G * 255, Color.B * 255, Message)
end

local function Format(Value)
    if sub(Value, 1, 18) == "-!DONT_HIGHLIGHT!-" then
        return sub(Value, 19)
    end

    local Colors =
        setmetatable(
        {
            ["-"] = Color3_new(1, 0, 0),
            ["?"] = Color3_new(0.213725, 0.309804, 0.813726),
            ["^"] = Color3_new(1, 1, 0),
            ["&"] = Color3_fromRGB(255, 13, 114),
            ["%"] = Color3_new(.8, .5, 0),
            ["#"] = Color3_new(0.682352, 0, 1),
            ["!"] = Color3_new(.4, .7, 1)
        },
        {
            __index = function(self, key)
                return rawget(self, key) or Color3_new(0, 1, 0)
            end
        }
    )

    for _, Character in next, split(FormatCharacters, "") do
        local Character1 = tfind({"^", "%", "?", "-", "+", "*"}, Character) and "%" .. Character or Character

        Value =
            gsub(
            Value,
            format("([^$]?)%s+([^%s]+)[%s](.?)", Character1, (Character == "%" and Character1 or Character), Character1),
            function(Start, Message, False)
                if False == "%" then
                    return Start .. Character .. Message .. Character
                end

                return Start .. ToHTML(Colors[Character], Message) .. False
            end
        )
        Value = gsub(Value, "%$(.)", "%1")
    end

    return Value
end

local function Fix(Word)
    Word = gsub(Word, UTF8_PATTERN, REVERSE_TABLE(API.Characters))

    for i = 768, 879 do
        Word = gsub(Word, UTF8_CHAR(i), "")
    end

    return Word
end

local function LastBypass(Word, Accent, Letters, Words)
    local Exceptions = { queef = "q\u{0323}ueef", cock = "c\u{0323}ock" }
    Letters = Letters or {}
    Words = Words or {}

    Accent = Accent or "\u{307}"
    local Bypassed = ""

    if not Exceptions[Word] then
        for OriginalWord, BypassedWord in next, Words do
            if OriginalWord == Word then
                return BypassedWord
            end
        end

        local Count, Length = 1, #Word

        for Letter in gmatch(Word, UTF8_PATTERN) do
            local letter = Letters[Letter] or {Replacement = Letter .. Accent}
            Bypassed = Bypassed .. (Count == Length - 1 and letter.Replacement or Letter)

            Count = Count + 1
        end
    else
        Bypassed = Bypassed .. Exceptions[Word]
    end

    return Bypassed
end

local function FirstBypass(Word, Accent, Letters, Words)
    Letters = Letters or {}
    Words = Words or {}

    Accent = Accent or "\u{307}"
    local Bypassed = ""

    for OriginalWord, BypassedWord in next, Words do
        if OriginalWord == Word then
            return BypassedWord
        end
    end

    local Count = 1

    for Letter in gmatch(Word, UTF8_PATTERN) do
        local letter = Letters[Letter] or {Replacement = Letter .. Accent}
        Bypassed = Bypassed .. (Count == (#Word > 1 and 2 or 1) and letter.Replacement or Letter)

        Count = Count + 1
    end

    return Bypassed
end

local function GetValue(Bypassed, Table)
    for Letter, Value in next, Table do
        if Value.Replacement == Bypassed then
            return Letter
        end
    end
end

function API:Bypass(Message, CallCount)
    CallCount = CallCount or 1

    if CallCount > 5 then
        return "\0Timeout"
    end

    local Recursive = CallCount <= 2
    local i = "ı\u{0307}"

    API.Characters =
        CallCount < 2 and
        {
            i = {
                Replacement = i
            }
        } or
        {
            d = {
                Replacement = "d\u{307}",
                OnlyOnFirst = true
            },
            p = {
                Replacement = "p\u{0323}"
            },
            i = {
                Replacement = i
            }
        }

    local Words={Racism={"chink","gook","spic","wetback","kike","paki"},Homophobic={"dyke","queer","homo","tranny","fudgepacker"},SexualTerms={"cock","pussy","slut","whore","bastard","prick","dick","douche","twat","cunt","motherfucker","bimbo","penis","ejaculate", "cumslut","orgasm","masturbate","sex","boobs","tit","nipples","nude","porn","pornos","dildo","buttplug","fisting","queef","sperm","clit","bukkake","gangbang","blowjob","fellatio","cunnilingus","anal","assfucker","rimjob","sodomy","penetration","sexworker","sugarbaby","hooker","escort","bukkake","xxx", "naked"},Insults={"imbecile","idiot","moron","bastard","prick","fuckboy","bitchass","dickhead","shithead","dickwad","shitface","fuckface","bimbo","scumbag","troll","fucker","whorebag","bitchslap","retard","dipshit","dicknose","fool","douchebag","lardass","fatass","douchecanoe","loser","shitstain","fuckstick","maggot","weirdo","creep","scumbucket","assclown","dumbass"},ViolentTerms={"rape","rapist","murderer","kill","slay","sodomize","torture","behead","decapitate","assault","bomb","shoot","massacre","violence","butcher","scalping","executed","slaughter","execute","smash","crush"},DrugTerms={"crackhead","methhead","junkie","stoner","heroin","cocaine","meth","weed","pot","acid","ecstasy","shrooms","dope","hash","marijuana","pillpopper","smoke","high","trip","junk","methamphetamine"},OffensiveBehavior={"slave","pimp","hooker","escort","prostitute","terrorist","pedophile","childmolester","molester","nazi","rapist","killer","thief","robber","scammer","assassin","conman","fraud","drugdealer","sextrafficker","murderer"},ExtremistTerms={"bastard","fuckboy","whorebag","bimbo","scumbag","nazi","skinhead","racist","xenophobe","bigot","separatist","supremacist","terrorist","chauvinist","misogynist","sexist"}}

    local Wordlist = {
        discord = "dı\u{0307}scord",
        dick = "dı\u{0307}ck",
        youtube = "y\u{0307}outube"
    }

    --[[A literal baseplate thing]]
    if game.PlaceId == 4483381587 then
        local Value = (game:GetService("ReplicatedStorage"):FindFirstChild("StringValue") or Instance_new("StringValue")).Value

        for Letter, LetterValue in next, API.Characters do
            if find(Value, LetterValue.Replacement) then
                API.Characters[Letter] = nil
                for _, Word in next, Wordlist do
                    if find(Word, LetterValue.Replacement) then
                        Wordlist[_] = nil
                    end
                end
            end
        end
    end

    local LetterDatas = API.Characters

    local NaughtyWords = {}

    if IsTCS then
        Wordlist.gg = "g\u{331}g"
    else
        Wordlist.nig = "n" .. i .. "g"
        Wordlist.faggot = "fag\u{331}got"
    end

    Wordlist.NIG = "NI\u{309}G"
    Wordlist.FAGGOT = "FAG\u{309}GOT"

    for _, List in next, Words do
        for _, v in next, List do
            tinsert(NaughtyWords, v)
            local Upper = upper(v)
            Wordlist[v] = Wordlist[v] or LastBypass(v, "\u{307}")
            Wordlist[Upper] = Wordlist[Upper] or LastBypass(Upper, "\u{309}")
        end
    end

    local Bypassed = ""

    for Word in gmatch(Message, "[^ ]+") do -- For every word in the message (Separated by a space)
        local Old = Word
        if Recursive then
            if tfind(NaughtyWords, lower(Word)) and not Wordlist[Word] then
                Word = LastBypass(Word, "\u{309}")
            end
            for Word1, Bypass in next, Wordlist do
                Word = gsub(Word, Word1, Bypass)
            end
        end

        local Index = 1
        local WordData = {}

        if CallCount == 4 then
            Bypassed = Bypassed .. LastBypass(Word, Word:match("[A-Z]") and "\u{309}" or "\u{307}", LetterDatas)
        elseif CallCount == 5 then
            Bypassed = Bypassed .. FirstBypass(Word, Word:match("[A-Z]") and "\u{309}" or "\u{307}", LetterDatas)
        else
            for Letter in Word:gmatch(utf8.charpattern) do -- For every character in the word (Uses utf8.charpattern)
                local SelfData = LetterDatas[Letter]

                if not SelfData or (Old ~= Word and Fix(Word):sub(Index, Index) == Old:sub(Index, Index)) then
                    Bypassed = Bypassed .. Letter
                else
                    local Insert = Letter
                    local LetterData =
                        WordData[Letter] or
                        {
                            Used = false
                        }

                    if SelfData.OnlyOnFirst and not LetterData.Used or not SelfData.OnlyOnFirst then -- Is it the first time this letter was used? (Only checks if the letter has .Used)
                        Insert = SelfData.Replacement
                    end

                    LetterData.Used = true

                    if SelfData.ApplyOn then
                        local Found
                        for _, ApplyWord in next, SelfData.ApplyOn do
                            if Word:find(ApplyWord) then
                                Found = true
                                break
                            end
                        end

                        if not Found then
                            Insert = Letter
                            LetterData.Used = false
                        end
                    end

                    WordData[Letter] = LetterData
                    Bypassed = Bypassed .. Insert
                end
                Index = Index + 1
            end
        end

        Bypassed = Bypassed .. "\8"
    end

    local Filtered, FilterMessage = API:Filter(Bypassed)

    if Filtered then
        if FilterMessage == "Success" then
            return API:Bypass(Message, CallCount + 1)
        else
            return "\0" .. FilterMessage, CallCount
        end
    else
        return Bypassed, CallCount
    end
end


function API:Notify(Message, Type, Time)
    local Images = {
        info = "info",
        alert = "triangle-alert",
        error = "shield-x",
        success = "badge-check",
        unknown = "circle-help"
    }

    local Colors = {
        info = Color3_fromRGB(170, 170, 170),
        alert = Color3_fromRGB(218, 165, 32),
        error = Color3_fromRGB(255, 51, 51),
        success = Color3_fromRGB(34, 187, 51),
        unknown = Color3_fromRGB(91, 192, 222)
    }

    Type = Images[Type] and Type or "unknown"

    UI.Rayfield:Notify({
        Title = "UserCreation",
        Content = Message,
        Duration = Time or 10,
        Image = Images[Type],
    })

    local Dictionary = {
        Font = Enum.Font.GothamMedium,
        TextSize = 16
    }

    local Prefixes = {
        alert = "⚠️ ",
        error = "❌ "
    }

    Dictionary.Color = Colors[Type]
    Dictionary.Text = (Prefixes[Type] or "") .. --[[Format(Message)]]Message

    if not IsTCS then
        SetCore(StarterGui, "ChatMakeSystemMessage", Dictionary)
    else
        for _, Channel in next, TextChatService:GetDescendants() do
            if Channel:IsA("TextChannel") and Channel:FindFirstChild(Player.Name) then
                Channel:DisplaySystemMessage(format([[<font color="rgb(%d, %d, %d)">%s%s</font>]], Colors[Type].R * 255, Colors[Type].G * 255, Colors[Type].B * 255, Prefixes[Type] or "", Message))
                break;
            end
        end
    end

    return true
end

function API:FetchImage(Url)
    local Path = format("%s/%s/%s.png", API.FileSystem.Path, "Assets", crypt.base64encode(Url):gsub("/", ""))

    if not isfile(Path) then
        writefile(Path, game:HttpGet(Url, true))
    end

    return getcustomasset(Path)
end

function API:Feedback(Bypassed, Start, Calls)
    -- Check if it errored?
    if sub(Bypassed, 1, 1) == "\0" then
        API:Notify(format("Unable to process message, Error code: %s.", sub(Bypassed, 2)), "error")
        return true
    end

    if IsTCS and API.TCS_Ratelimited then
        API:Notify("You are currently unable to send messages in the chat, due to spamming chat / talking too much, please wait 5 seconds.", "error")
        return true
    end

    API:Notify(format("Successfully bypassed message in %.3f seconds!\nTook %d recursive calls.", tick() - Start, Calls), "success")
end

function API:ChatMain(Text, Release)
    Text = gsub(Text, "\n", "")
    Text = gsub(Text, "\r", IsTCS and "\r" or "")

    if not Release then
        Bar:ReleaseFocus()
        Bar.Text = ""
    end

    if Text == "" then
        return
    end

    local Start = tick()
    local Bypassed, Attempts = API:Bypass(Text)
    local Length = 100 * (IsTCS and 1 or 2)
    local NLength = (100 * (IsTCS and 1 or 2)) - 10

    if (IsTCS and #Bypassed > Length) or (not IsTCS and API:Normalize(Bypassed) > Length) then
        local Chunks = {}

        while #Bypassed > 0 do
            tinsert(Chunks, sub(Bypassed, 1, NLength))

            Bypassed = sub(Bypassed, NLength + 1)
        end

        for _, Chunk in next, Chunks do
            API:Chat(Chunk .. format("(%d/%d)", _, #Chunks))
        end

        return;
    end

    if API:Feedback(Bypassed, Start, Attempts or 1) then
        return
    end

    API:Chat(Bypassed)
end

local Config = {
    Version = "V4.09",
    BangSystem = {
        Enabled = Settings.bangsys_enabled,
        Speed = Settings.bangsys_speed,
        Animations = {
            R15 = "rbxassetid://5918726674",
            R6 = "rbxassetid://148840371"
        }
    },
    Jerk = {
        Enabled = false,
        Speed = 1,
        Animations = {
            Default = "rbxassetid://99198989",
            CloserHands = "rbxassetid://168086975",
        }
    },
    Harass = {
        Enabled = false,
        Target = nil,
        MessageDelay = 2.5,
        Modes = {
            Phrase = {"Sexual", "Racist"},
            Follow = {"Teleport", "Follow"}
        },
        CurrentMode = "Sexual",
        FollowMode = "Teleport",
        Phrases = {
            Sexual = {
                "hey.. i really w-wanna f-finger your pussy- hehe..",
                "hey.. do.. d-do you have a bf by any chance?..",
                "i-i want to lick your pussy so bad...",
                "my penis is getting hard just by looking at you...",
                "i can be your little sex toy.. hehe",
                "i bet your pussy is REALLY pink"
            },
            Racist = {
                "get BACK here nigger",
                "ew its a nigger monkey",
                "you dirty black piece of shit",
                "you dirty nigger go hang yourself",
                "niggers like you need to die"
            },
            Last = nil
        }
    }
}

local Character = Player.Character or Player.CharacterAdded:Wait()

local Root = Character:FindFirstChild("HumanoidRootPart")
local Humanoid = Character:FindFirstChildOfClass("Humanoid")

Player.CharacterAdded:Connect(function(character)
    Character = character
    Root = character:WaitForChild("HumanoidRootPart")
    Humanoid = character:WaitForChild("Humanoid")
end)

local function Harass(TargetPlayer)
    if not TargetPlayer then API:Notify("Player not found!", "error") return end

    local Char = (TargetPlayer.Character or TargetPlayer.CharacterAdded:Wait())
    local Part = Char.HumanoidRootPart

    TargetPlayer.CharacterAdded:Connect(function() Part = Char:WaitForChild("HumanoidRootPart") end)

    Players.PlayerRemoving:Connect(function(player)
        if player == TargetPlayer then
            TargetPlayer = nil
        end
    end)

    spawn(function()
        while true do
            wait(Config.Harass.MessageDelay)

            if Config.Harass.Enabled then
                local Phrases = Config.Harass.Phrases[Config.Harass.CurrentMode]
                local Phrase = Phrases[random(1, #Phrases)];

                while Phrase == Config.Harass.Phrases.Last do
                    Phrase = Phrases[random(1, #Phrases)]
                end

                Config.Harass.Phrases.Last = Phrase

                API:ChatMain(Phrase)
            else return end
        end
    end)

    while TargetPlayer and Config.Harass.Enabled do
        if Config.Harass.FollowMode == "Teleport" then
            local Target = (Part.CFrame + Part.CFrame.LookVector * 3).Position
            Root.CFrame = CFrame.lookAt(Target, Part.CFrame.Position)
        else
            Humanoid.Sit = false
            Humanoid:MoveTo((Part.CFrame - Part.CFrame.LookVector * 3).Position)
        end

        wait()
    end
end

local ChatSpy = {
    Connections = {}
}
function ChatSpy.Toggle(State)
    if not State then
        for _, ChatConnection in next, ChatSpy.Connections do
            ChatConnection:Disconnect()
        end
        return;
    end

    if IsTCS then
        return API:Notify("Unable to toggle Chat-Spy, Game chat type isnt legacy chat.", "error")
    end

    local function OnChatted(ByPlayer, Message)
        local WhisperTo, Whispered = match(Message, "/w (%w+) (.+)")

        if ByPlayer == Player or not WhisperTo then
            return;
        end

        API:Notify(
            format("[CHAT SPY]\nFrom: @%s\nTo: @%s\nMessage: %s", ByPlayer.Name, WhisperTo, Whispered),
            "unknown"
        )
    end

    local function Connect(player)
        tinsert(ChatSpy.Connections, player.Chatted:Connect(function(Message)
            OnChatted(player, Message)
        end))
    end

    Players.PlayerAdded:Connect(Connect)

    for _, player in next, Players:GetPlayers() do
        Connect(player)
    end
end

local function GetClosestPlayer(Name)
    local Closest = {Percent = 0, Player = nil}

    for _, player in next, Players:GetPlayers() do
        local sim = SimilarityPercentage(lower(Name), lower(player.Name))
        local sim2 = SimilarityPercentage(lower(Name), lower(player.DisplayName))

        sim = sim2 > sim and sim2 or sim -- higher similarity thing

        Closest = sim > Closest.Percent and player ~= Player and {Percent = sim, Player = player} or Closest
    end

    return Closest.Player
end

local Jerk = {
    GetTool = function(self)
        if self.tool then
            self.tool:Destroy()
            self.tool = nil
            self:StopJerking()
            return
        end
        self.tool = Instance_new("Tool")
        self.tool.Name = "Super Jorker 3000"
        self.tool.RequiresHandle = false
        self.tool.ToolTip = "stroke it?"
        
        self.tool.Equipped:Connect(function()
            self:StartJerking()
        end)
        
        self.tool.Unequipped:Connect(function()
            self:StopJerking()
        end)

        self.tool.Parent = Player.Backpack
    end,
    StartJerking = function(self) 
        if not self.Closer and Humanoid.RigType == Enum.HumanoidRigType.R6 then
            local anim = Instance.new("Animation")
            anim.AnimationId = Humanoid.RigType ~= Enum.HumanoidRigType.R15 and "rbxassetid://168086975" or nil
            local closer = Humanoid:LoadAnimation(anim)
            closer:Play()
            closer:AdjustSpeed(Config.Jerk.Speed)
            self.Closer = closer
        end

        if not self.Track then
            local anim = Instance_new("Animation")
            anim.AnimationId = Humanoid.RigType == Enum.HumanoidRigType.R15 and "rbxassetid://698251653" or Config.Jerk.Animations.Default
            local Track = Humanoid:LoadAnimation(anim)
            Track:Play()
            Track:AdjustSpeed(Settings.jerk_speed)
            Track.TimePosition = Humanoid.RigType == Enum.HumanoidRigType.R15 and .7 or 0
            Track.Looped = true
            self.Track = Track

            while Track.IsPlaying do
                if Humanoid.RigType ~= Enum.HumanoidRigType.R15 then
                    break;
                end
                if Track.TimePosition >= .8 then
                    Track.TimePosition = .7
                end
                wait()
            end
        end
    end,
    StopJerking = function(self)
        if self.Track then
            self.Track:Stop()
            self.Track = nil
        end

        if self.Closer then
            self.Closer:Stop()
            self.Closer = nil
        end
    end
}

local BangSystem = {
    Animation = nil,
    Connection = nil,
    Playing = false,
    Target = nil,
    Phrases = {
        "SWALLOW MY COCK YOU DIRTY SLUT",
        "oh my god nigga suck that shit up",
        "good little slut lick my cock",
        "this vagina is so good fuuuuuck",
        "take this penis in your mouth you dirty nigger",
        "TAKE THIS COCK MMM"
    },
    MessageDelay = 2.5,
    Last = {Sent=0, Phrase = nil},
    SetTarget = function(self, Name)
        self.Target = GetClosestPlayer(Name)
    end,
    PlayAnimation = function(self)
        if self.Animation and self.Animation.IsPlaying then
            self.Animation:AdjustSpeed(Settings.bangsys_speed)
            return
        end
        local Animation = Instance_new("Animation")
        Animation.AnimationId = Config.BangSystem.Animations[split(tostring(Humanoid.RigType), ".")[3]]
        Animation = Humanoid:LoadAnimation(Animation)

        self.Animation = Animation
        Animation:Play()
        Animation:AdjustSpeed(Settings.bangsys_speed)
    end,
    Start = function(self, TargetPlayer)
        if not self.Target then return API:Notify("No player found!", "error") end;
        self:Stop()
        self.Playing = true
        Players.PlayerRemoving:Connect(function(player)
            if player == TargetPlayer then
                self:Stop()
            end
        end)
        self.Connection =
            game:GetService("RunService").Heartbeat:Connect(
            function()
                if not Settings.bangsys_enabled then
                    return self:Stop()
                end

                local Target =
                    TargetPlayer:IsA("Model") and TargetPlayer or TargetPlayer.Character or
                    TargetPlayer.CharacterAdded:Wait()

                local TargetRoot = Target:FindFirstChild("HumanoidRootPart")

                self:PlayAnimation()

                if not TargetRoot then return end

                Root.CFrame = TargetRoot.CFrame * CFrame.new(0, 0, 1.1)
                if tick() - self.Last.Sent > self.MessageDelay then
                    self:Chat()
                end
            end
        )
    end,
    Stop = function(self)
        if self.Animation and self.Playing then
            self.Animation:Stop()
            self.Connection:Disconnect()
            self.Playing = false
        end
    end,
    Chat = function(self)
        local Phrase = self.Phrases[random(1, #self.Phrases)]

        repeat
            Phrase = self.Phrases[random(1, #self.Phrases)]
        until
            Phrase ~= self.Last.Phrase

        self.Last = {Sent = tick(), Phrase = Phrase}
        API:ChatMain(Phrase)
    end
}

Player.CharacterAdded:Connect(
    function(_0)
        _0:WaitForChild("HumanoidRootPart")
        if Settings.bangsys_enabled then
            -- Refresh
            BangSystem:Stop()

            BangSystem:Start(BangSystem.Target)
        end
    end
)

do
    local Rayfield = "local cloneref = cloneref or function(...) return ... end\n\n" .. request{
        Url = "https://raw.githubusercontent.com/bbbbbbbbbbbbbb121/Chat-Bypassers/refs/heads/main/RayfieldFix.lua",
        Method = "GET"
    }.Body:gsub("([^(])game:GetService(\"CoreGui\")", "%1cloneref(game:GetService(\"CoreGui\"))")
    UI.Rayfield = loadstring(Rayfield)()
end

-- UI Stuff

UI.Window =
    UI.Rayfield:CreateWindow(
    {
        Name = "UserCreation Premium | " .. Config['Version'],
        Icon = "rocket",
        LoadingTitle = "UserCreation Premium | " .. Config['Version'],
        LoadingSubtitle = "discord.gg/usercreation",
        Theme = UI.Theme
    }
)

function UI:Init(InitInfo) -- InitInfo: {[1] = {"TabName", TabId, {tab_content}}}
    for _, Tab in next, InitInfo do
        local TabName = Tab[1] or "Unnamed"
        local Content = Tab[3] -- DONT FUCKING CHANGE BECAUSE LAST TIME YOU DID IT BROKE, SAVING IT AS A VARIABLE BECAUSE WE UPDATE TAB LATER ON.

        Tab = UI.Window:CreateTab(TabName, Tab[2] or 4483362458)
        UI.Tabs[TabName] = Tab

        for _, Child in next, (Content or tcreate(0)) do -- {"Class", {"label", "label2", ...}}
            local Class = Child[1]
            local ChildArgs = tmove(Child, 2, #Child, 1, {}) -- Get arguments after 1 (Class)
            if Class == "Label" then
                Tab["Create" .. Class](Tab, tunpack(ChildArgs[1]))
            else
                Tab["Create" .. Class](Tab, tunpack(ChildArgs))
            end
        end
    end
end

local function Toggle(Name, Value, Callback)
    return {
        Name = Name,
        CurrentValue = Value,
        Callback = Callback,
        Flag = tostring(tick())
    }
end

local function FastToggle(Name, Key, Section, CustomCallback)
    Key = (Section and Section .. "_" or "") .. Key
    return Toggle(
        Name,
        Settings[Key],
        function(State)
            Settings[Key] = State
            if CustomCallback then
                spawn(CustomCallback, State)
            end
        end
    )
end

local function TextBox(Name, Placeholder, Callback, Remove)
    return {
        Name = Name,
        CurrentValue = "",
        RemoveTextAfterFocusLost = Remove,
        PlaceholderText = Placeholder,
        Callback = Callback,
        Flag = tostring(tick())
    }
end

local function FastTextBox(Name, Key, Section)
    Section = (Section and Section .. "_") or ""
    Key = Section .. Key

    return TextBox(
        Name,
        Settings[Key],
        function(Text)
            Settings[Key] = Text
        end
    )
end

local function Slider(Name, Min, Max, Default, Callback, Suffix, Increment)
    return {
        Name = Name,
        Range = {Min, Max},
        CurrentValue = Default,
        Callback = Callback,
        Suffix = Suffix,
        Flag = Name,
        Increment = Increment or (Max / ((Min == 0 and 1 or Min) * 10))
    }
end

local function FastSlider(Name, Min, Max, Default, Increment, Key, Section, Suffix)
    Key = ((Section and Section .. "_" or "") .. Key)

    return Slider(
        Name,
        Min,
        Max,
        Default,
        function(Value)
            Settings[Key] = Value
        end,
        Suffix,
        Increment
    )
end

local function Button(Name, Callback)
    return {
        Name = Name,
        Callback = Callback
    }
end

local function ChatPhrase(Phrase)
    return function()
        local Old, Old2 = Settings.cache_enabled, Settings.cache_filer_check
        Settings.cache_enabled = true
        Settings.cache_filter_check = false

        API:ChatMain(
            Phrase
        )

        Settings.cache_enabled = Old
        Settings.cache_filer_check = Old2
    end
end

local function MessageButton(Message)
    return Button(Message, ChatPhrase(Message))
end

local function CREATE_PHRASES(Phrases)
    local UIAppropriate = {}
    local Sorted = {}
    for _, Phrase in next, Phrases do
        local Suggestor = "\0"
        Sorted[Suggestor] = Sorted[Suggestor] or {}

        tinsert(Sorted[Suggestor], Phrase)
    end
    local Index = 0

    for _, SuggestorPhrases in next, Sorted do
        Index = Index + 1
        for _, Phrase in next, SuggestorPhrases do
            Index = Index + 1

            UIAppropriate["Button " .. tostring(Index)] =
                Button(
                format("%s", Phrase),
                ChatPhrase(Phrase)
            )
        end
    end

    return UIAppropriate
end

local Phrases = JSON_Decode(safe_readfile(PATH_JOIN(API.FileSystem.Path, "Phrases.json"), "[]"))

local function RemovePhrase(Phrase)
    tremove(Phrases, tfind(Phrases, Phrase))

    writefile(PATH_JOIN(API.FileSystem.Path, "Phrases.json"), JSON_Encode(Phrases))
end

local function AddPhrase(Phrase)
    UI.Tabs["My Phrases"]:CreateButton({
        Name = Phrase,
        Callback = ChatPhrase(Phrase)
    })

    tinsert(Phrases, Phrase)
    writefile(PATH_JOIN(API.FileSystem.Path, "Phrases.json"), JSON_Encode(Phrases))
end

local rawlen = function(t)
    local len = 0
    for _ in next, t do
        len = len + 1
    end

    return len
end

function API.Plugin:Translate(Array)
    local Result = {};

    for _, v in next, Array do
        Result["Button " .. tostring(_)] = Button(v, ChatPhrase(v))
    end

    return Result;
end

function API.Plugin:Add(Url, List, Id)
    local HTTPSuccess, Plugin = pcall(request, {
        Url = Url,
        Method = "GET"
    })

    if not HTTPSuccess or not pcall(JSON_Decode, Plugin.Body) then
        return API:Notify("Unable to fetch url, Plugin body was empty or non json.")
    else
        Plugin = Plugin.Body
    end

    local StartIDX = rawlen(List);
    local manifest = JSON_Decode(Plugin);
    local count = 0

    local Path = PATH_JOIN(API.FileSystem.Path, "Plugins", "plugins.json")
    local Files = JSON_Decode(safe_readfile(Path, "[]"));

    local ID = base64.encode(tostring(tick()))
    manifest.id = Id or ID

    writefile(PATH_JOIN(API.FileSystem.Path, "Cache", manifest.id), JSON_Encode(manifest))

    if not Id then
        tinsert(Files, {url = Url, id = manifest.id})
    end

    writefile(Path, JSON_Encode(Files))

    local Tabs = {};

    for _, tab in next, manifest.tabs do
        local index = StartIDX + count + 9e4
        local name = tab.Name

        local content = API.Plugin:Translate(tab.Content)

        if index > 9e9 then
            Tabs[name .. format(" %d", index)] = {
                Icon = tab.Icon,
                Content = content
            }
        else
            local Tab = List:CreateTab(name, tab.Icon)
            for _, ButtonObject in next, content do
                Tab:CreateButton(ButtonObject)
            end
        end
        count = count + 1
    end

    for name, tab in next, Tabs do
        local Tab = List:CreateTab(name, tab.Icon)
        for _, ButtonObject in next, tab.Content do
            Tab:CreateButton(ButtonObject)
        end
    end

    spawn(function()
        repeat wait() until UI.Tabs.Plugins

        local Text = format("Plugin `%s` loaded, %d tabs added.", manifest.name, #manifest.tabs)

        UI.Tabs.Plugins:CreateButton(Button(format("%s | Created by %s | ID: %s", manifest.name, manifest.author, manifest.id or "None"), function() API:Notify(Text, "Success") end))
        API:Notify(Text)
    end)
end

function API.AI:Generate(Text, PlayerFrom, Length)
    Text = API:Debypass(Text)
    Text = gsub(lower(Text), "black", "nigga") -- so the ai wont get censored

    Length = Length or (IsTCS and 60 or 170)

    local Response = game:HttpGet(
        format(
            "https://sigma.gamee8239.workers.dev/?prompt=%s&user=%s&maxlength=%d", HttpService:UrlEncode(Text), (PlayerFrom or Player).DisplayName, Length
        )
    )
    local Success, Result = pcall(JSON_Decode, Response)

    if not Success then
        API:Notify(format("ChatBot error, Message: %s", Response), "error")
        return ""
    end

    return lower(Result.result.response)
end

function API.AI:Insult(InsultPlayer, Level)
    Level = tfind({
        "light",
        "mediocore",
        "heavy"
    }, Level) and Level or "mediocore"
    return API.AI:Generate(format("%sly insult a player called %s", Level, InsultPlayer))
end

do
    local Tabs = {
        -- Tabs are formatted as: TabName TabSortOrder
        ["Main " .. tostring(-9e9)] = {
            Icon = "cloud-cog",
            Content = {
                --* Global Settings
                ["Label -0.1"] = game.PlaceId == 4483381587 and {"Auto bypass may not work on this game.", 10709752996, Color3.fromRGB(255, 126, 51), false} or nil,
                ["Paragraph 0"] = {
                    Title = "UserCreation Premium | " .. Config['Version'],
                    Content = "Welcome, premium user " .. Player.Name .. "!"
                },
                ["Divider 0.1"] = "",
                --* Bypass Settings
                ["Label 0.9"] = IsTCS and {"Using modern chat anti-ban will cause much more frequent message cooldowns!", 10709752996, Color3.fromRGB(255, 51, 51), false} or nil,
                ["Toggle 1.2"] = IsTCS and FastToggle("Modern Chat Anti Ban", "mcab", "global") or nil,
                ["Slider 1.3"] = IsTCS and FastSlider("Clear logs every", 1, 4, Settings.mcab_messages, 1, "messages", "mcab", "messages") or nil,

                ["Toggle 1"] = FastToggle(
                    "[" .. Config['Version'] .. "] Auto-Bypass",
                    "enabled",
                    "global",
                    function()
                        SetChatBar(GetChatBar())
                    end
                ),
                ["Button 3"] = Button("Fix tagging", ChatPhrase("abcdeABCDE12345~`|•√?x")),
                ["Divider 4"] = "",
                ["Paragraph 5"] = {
                    Title = "UserCreation Approved Phrases",
                    Content = "UserCreation has approved these phrases - Use them with pride!"
                },
                ["Button 6"] = MessageButton("join .gg/usercreation to slur at children!!!"),
                ["Button 7"] = MessageButton("wattup nigga"),
                ["Divider 8"] = "",

                -- Sexual Assault section
                ["Paragraph 9"] = {
                    Title = "Sexual Assault",
                    Content = "Enter a target's name and toggle on - have fun!"
                },
                ["Input 10"] = TextBox("Target", "...", function(Target)
                    BangSystem:SetTarget(Target);
                end),
                ["Slider 11"] = FastSlider("Speed", 1, 100, Settings.bangsys_speed, 1, "speed", "bangsys"),
                ["Toggle 12"] = FastToggle("Sexually Assault", "enabled", "bangsys", function(State)
                    if State then
                        BangSystem:Start(BangSystem.Target)
                    else
                        BangSystem:Stop()
                    end
                end),
                ["Divider 13"] = "",

                -- Misc Features section
                ["Paragraph 14"] = {
                    Title = "Misc Features",
                    Content = "Elevate your experience with more features! - Enjoy chat spy, FE animations, and much more!"
                },
                ["Toggle 16"] = FastToggle("Chat Spy", "enabled", "chatspy", function(State)
                    ChatSpy.Toggle(State)
                end),
                ["Divider 17"] = "",
                ["Paragraph 17.5"] = {
                    Title = "Jerk-off System",
                    Content = "Unlock a new level of trolling with this FE animation."
                },
                ["Toggle 18"] = Toggle("Jerk Off Tool", false, function()
                    Jerk:GetTool()
                end),
                ["Slider 19"] = FastSlider("Jerk Speed", 1, 10, Settings.jerk_speed, 1, "speed", "jerk"),
                ["Divider 21"] = "",
                ["Paragraph 22"] = {
                    Title = "Harass System",
                    Content = "Choose your mode and select your target."
                },
                ["Input 24"] = TextBox("Target", "...", function(Target)
                    Config.Harass.Target = GetClosestPlayer(Target)
                    Harass(Config.Harass.Target)
                end),
                ["Slider 25"] = Slider("Message Delay", 1, 6, Config.Harass.MessageDelay, function(Value)
                    Config.Harass.MessageDelay = Value
                end, "seconds", 1),
                ["Dropdown 26"] = {
                    Name = "Type",
                    Options = Config.Harass.Modes.Phrase,
                    CurrentOption = {Config.Harass.CurrentMode},
                    MultipleOptions = false,
                    Flag = "meow",
                    Callback = function(Options)
                        Config.Harass.CurrentMode = Options[1]
                    end,
                },
                ["Dropdown 27"] = {
                    Name = "Mode",
                    Options = Config.Harass.Modes.Follow,
                    CurrentOption = {Config.Harass.FollowMode},
                    MultipleOptions = false,
                    Flag = "meow2",
                    Callback = function(Options)
                        Config.Harass.FollowMode = Options[1]
                    end,
                },
                ["Toggle 28"] = Toggle("Enabled", Config.Harass.Enabled, function(Value)
                    Config.Harass.Enabled = Value
                    if Config.Harass.Target then Harass(Config.Harass.Target) end
                end)
            }
        },
        ["Favorites 3"] = {
            Icon = "star",
            Content = (function()
                local List = {
                    ["Paragraph 0"] = {
                        Title = "Favorite Phrases",
                        Content = "View your favorites! - press the star icon on any phrase to favorite it!"
                    },
                    ["Divider 0.1"] = "",
                }

                for i, v in next, Settings.Favorites do
                    List["Button " .. tostring(i)] = Button(v, ChatPhrase(v))
                end

                return List
            end)()
        },
        ["My Phrases 4"] = {
            Icon = "pencil",
            Content = (function()
                local List = {
                    ["Paragraph 0"] = {
                        Title = "My Phrases",
                        Content = "Create and save your own custom phrases! - just type your phrase in the input box."
                    },
                    ["Input 1"] = TextBox("Add Phrase", "...", function(Text)
                        AddPhrase(Text)
                    end),
                    ["Divider 2"] = "",
                }

                for _, Phrase in next, Phrases do
                    List["Button " .. tostring(_ + 100)] = Button(Phrase, ChatPhrase(Phrase))
                end

                return List
            end)()
        },
        ["Plugins 5"] = {
            Icon = "square-terminal",
            Content = {
                ["Paragraph 0"] = {
                    Title = "Plugin System",
                    Content = "You can find plugins on our discord server! - simply copy the plugin link and load it."
                },
                ["Input 1"] = TextBox("Load Plugin [From Url]:", "...", function(Url)
                    API.Plugin:Add(Url, UI.Window)
                end, true),
                ["Divider 1.2"] = "",
                ["Paragraph 2"] = {
                    Title = "Active Plugins:",
                    Content = "View your active plugins alongside their corrosponding info."
                },
            }
        },
        ["AI 6"] = {
            Icon = "bot-message-square",
            Content = {
                ["Paragraph 0"] = {
                    Title = "AI Chatbot",
                    Content = "Speak with AI from roblox, Have the ability to generate insults or regular text with AI."
                },
                ["Divider .5"] = "",
                ["Toggle 1"] = FastToggle("AI Enabled", "enabled", "ai"),
                ["Toggle 1.01"] = FastToggle("AI Lookat speaker", "lookat", "ai"),
                ["Slider 1.09"] = FastSlider("AI Distance", 1, 100, Settings.ai_distance, 1, "distance", "ai", "studs"),
                ["Input 1.1"] = TextBox("Chat with AI", "...", function(Text)
                    UI.Tabs["AI"]:CreateParagraph({
                        Title = Text,
                        Content = API.AI:Generate(Text, nil, 600)
                    })
                end, true)
            }
        }
    }
    Tabs["Misc 2"] = IsTCS and {
            Icon = "plus",
            Content = IsTCS and {
                ["Paragraph 0"] = {
                    Title = "Misc Features",
                    Content = "[Modern chat only] - access a library of fun trolling features such as fake message and much more!"
                },
                ["Divider .01"] = "",
                ["Paragraph .1"] = {
                    Title = "Fake Message",
                    Content = "The first line is your cover message - and the second lnie is what the fake message is."
                },
                ["Input 1"] = FastTextBox("First Line", "part1", "fake_message"),
                ["Input 2"] = FastTextBox("Second Line", "part2", "fake_message"),
                ["Button 4"] = Button(
                    "Send Fake Message",
                    function()
                        API:ChatMain(Settings.fake_message_part1 .. "\r" .. Settings.fake_message_part2)
                    end
                ),
                ["Divider 5"] = "",
                ["Button 6"] = Button(
                    "Send Tall Message",
                    function()
                        API:Chat("" .. rep("\u{000D} ", 99) .. "", true)
                    end
                )
            } or {
                ["Paragraph 0"] = {
                    Title = "Sorry.",
                    Content = "Sorry, your game does not use modern chat therefore this tab could not be loaded."
                }
            }
    } or nil

    local PhraseArrays = {}

    local function CREATE_PHRASES_TAB(Name, TabPhrases) -- Hate 123 1, {}
        local Split = split(Name, " ")
        local Icon = Split[#Split - 1]
        local Index = tonumber(Split[#Split])

        local TabName = tconcat(tmove(Split, 1, #Split - 2, 1, {}), " ")

        tinsert(PhraseArrays, TabName)

        Tabs[TabName .. format(" %d", Index + 9e2)] = {
            Icon = tonumber(Icon) or Icon,
            Content = TabPhrases
        }
    end

    for Title, Info in next, API.Phrases do
        CREATE_PHRASES_TAB(Title, CREATE_PHRASES(Info)) -- Name before icon, Icon, phrases
    end

    local Init = {}
    local TabsArray = {}

    for _, tab in next, Tabs do
        local Counter = tonumber(split(_, " ")[#split(_, " ")])
        if Counter < 0 or Counter > 5 then
            tab.Content["Label -.9"] = {"You need to set your language to 'Slovenski' for the script to work.", 10709752996, Color3.fromRGB(255, 126, 51), false}
        end
    end

    local PROCESSING_REQUEST; -- for ai
    local function Talk(Message, UserId)
        local player = Players:GetPlayerByUserId(UserId)
        local character = player.Character

        if Settings.ai_enabled and not PROCESSING_REQUEST and Message ~= rep("#", #Message) and #split(API:Debypass(Message), " ") > 1 then
            local root = character:FindFirstChildOfClass("Part")
            if not character or (Root.Position - root.Position).Magnitude > Settings.ai_distance then
                return;
            end
            
            PROCESSING_REQUEST = true
            API:ChatMain(API.AI:Generate(Message, player), true)
            PROCESSING_REQUEST = false

            if Settings.ai_lookat then
                Root.CFrame = CFrame.lookAt(Root.Position, root.Position)
            end
        end
    end

    if getgenv().uc_conn then
        getgenv().uc_conn:Disconnect()
    end

    if IsTCS then
        API:Notify(
            "This game uses modern chat! - usercreation is bannable!",
            "alert"
        )

        TextChatService.OnIncomingMessage = function(message)
            if message.TextSource == nil and message.Text == "You must wait before sending another message." then
                API.TCS_Ratelimited = true
                delay(5, function()
                    API.TCS_Ratelimited = false
                end)
            end
        end

        local Count = 0;
        getgenv().uc_conn = TextChatService.MessageReceived:Connect(function(textChatMessage)
            local Source = textChatMessage.TextSource
            pcall(function()
                if Source and Source.UserId == Player.UserId and Settings.global_mcab and textChatMessage.Text ~= "" and TextChatService.Chat then
                    Count = Count + 1

                    if Count % Settings.mcab_messages == 0 then
                        for _ = 1, 6 do
                            API:Chat("")
                        end
                        API:Notify("[Modern Chat Anti Ban]: Successfully cleared chat logs.", "success")
                    end
                end
            end)

            if Source and Source.UserId ~= Player.UserId then
                Talk(textChatMessage.Message, Source.UserId)
            end
        end)
    else
        getgenv().uc_conn = ReplicatedStorage:FindFirstChild("OnMessageDoneFiltering", true).OnClientEvent:Connect(function(Message)
            if Message.SpeakerUserId ~= Player.UserId then
                Talk(Message.Message, Message.SpeakerUserId)
            end
        end)
    end
    for TabIndex, TabValue in next, Tabs do
        tinsert(TabsArray, {i = TabIndex, v = TabValue})
    end

    tsort(
        TabsArray,
        function(a, b)
            local as = split(a.i, " ")
            local bs = split(b.i, " ")

            return tonumber(as[#as]) < tonumber(bs[#bs])
        end
    )

    for _, TabContent in next, TabsArray do
        local TabName = TabContent.i
        TabContent = TabContent.v

        local Split = split(TabName, " ")

        TabName = tconcat(tmove(Split, 1, #Split - 1, 1, {}), " ")

        local Content = {}
        local Array = {}
        for Index, Value in next, TabContent.Content do
            tinsert(Array, {Index = Index, Value = Value})
        end

        tsort(
            Array,
            function(a, b)
                return tonumber(split(a.Index, " ")[2]) < tonumber(split(b.Index, " ")[2])
            end
        )

        for _, ValueOuter in next, Array do
            local Value = ValueOuter.Value
            local Key = ValueOuter.Index
            local Class = split(Key, " ")[1]

            if Class ~= "Section" and Class ~= "Divider" then
                Value.Name = Value.Name-- and Format(Value.Name) or nil
                Value.Content = Value.Content-- and Format(Value.Content) or nil
            end

            tinsert(Content, {Class, Value})
        end

        tinsert(Init, {TabName, TabContent.Icon, Content})
    end

    UI:Init(Init)

    -- After init, add some changes like star icon for phrases
    local Rayfield = gethui():FindFirstChild("Rayfield")
    local Elements = Rayfield and Rayfield.Main.Elements or Instance_new("Folder")
    local TabList = Rayfield and Rayfield.Main.TabList or Instance_new("Folder")

    local Favorited = API:FetchImage("https://img.icons8.com/emoji/24/star-emoji.png")
    local Unfavorited = API:FetchImage("https://i.ibb.co/RgrVnhq/image.png")
    local TrashIcon = API:FetchImage("https://i.ibb.co/rFhYvGX/image-1.png")

    Rayfield:WaitForChild("Notifications"):WaitForChild("Template"):WaitForChild("Description").RichText = true

    local function Wait(Tween)
        Tween:Play()
        Tween.Completed:Wait()
    end

    local function AddTrash(EI, Child, Callback)
        local Trash = Instance_new("ImageButton")
        Trash.Size = UDim2.fromOffset(22, 22)
        Trash.Position = EI and EI.Position or UDim2_new(0, .8, 0, .5)
        Trash.AnchorPoint = EI and EI.AnchorPoint or Vector2.new(.8, .5)
        Trash.AutoButtonColor = false
        Trash.Parent = Child
        Trash.ZIndex = 9999999
        Trash.Image = TrashIcon
        Trash.BackgroundTransparency = 1

        if EI then
            EI.Visible = false
        end

        local Stroke = Instance_new("UIStroke")
        Stroke.Parent = Trash
        Stroke.Color = Color3_fromRGB(56, 56, 56)
        Stroke.Thickness = 1

        local Corner = Instance_new("UICorner")
        Corner.CornerRadius = UDim.new(0, 3)
        Corner.Parent = Trash

        Trash.MouseButton1Click:Connect(Callback)
        return Trash
    end

    local function Favorite(Child, Enabled, EnableTrash)
        local EI = Child:FindFirstChild("ElementIndicator")
        if not EI then
            return
        end

        local Phrase = Child.Name
        -- Replace that with a star (For favorite phrases thing)
        local Star = Instance_new("ImageButton")
        Star.Size = UDim2.fromOffset(22, 22)
        Star.BackgroundTransparency = 1
        Star.Position = EI.Position
        Star.AnchorPoint = EI.AnchorPoint
        Star.Image = Unfavorited
        Star.Name = "Star"
        Star.ZIndex = 9999999
        Star.AutoButtonColor = false
        Star.Parent = Child

        local Trash;

        if EnableTrash then
            Trash = AddTrash(EI, Child, function()
                RemovePhrase(Child.Name)
                Child:Destroy()
            end)

            Star.Position = EI.Position - UDim2.fromOffset(Trash.Size.X.Offset + 10, 0)
        end

        if Enabled then
            Star.Image = Favorited -- For some reason, doing Star.Image = Enabled and Favorited didnt work, so i went with this.
        end

        local Stroke = Instance_new("UIStroke")
        Stroke.Parent = Star
        Stroke.Color = Color3_fromRGB(56, 56, 56)
        Stroke.Thickness = 1

        local Corner = Instance_new("UICorner", Star)
        Corner.CornerRadius = UDim.new(0, 3)

        local Glow = Elements.Parent:FindFirstChild("Shadow"):FindFirstChild("Image"):Clone()
        Glow.ImageColor3 = Color3_fromRGB(255, 255, 255)
        Glow.Parent = Star
        Glow.Size = UDim2.new(1, 0, 1, 0)
        Glow.ZIndex = Star.ZIndex + 1
        Glow.ImageTransparency = 1

        Star.MouseEnter:Connect(function() TweenService:Create(Glow, TweenInfo.new(.3), {ImageTransparency = .8}):Play() end)

        Star.MouseLeave:Connect(function() TweenService:Create(Glow, TweenInfo.new(.3), {ImageTransparency = 1}):Play() end)

        local function ToggleImage(Object)
            Object = Object or Star
            local State = Object.Image == Favorited
            Wait(TweenService:Create(Object, TweenInfo.new(.3), {ImageTransparency = 1}))

            Object.Image = State and Unfavorited or Favorited

            Wait(TweenService:Create(Object, TweenInfo.new(.3), {ImageTransparency = 0}))
        end

        Star.MouseButton1Click:Connect(
            function()
                local Index = tfind(Settings.Favorites, Phrase)

                if not Index then
                    tinsert(Settings.Favorites, Phrase)

                    local Template = Elements.Template.Button:Clone()
                    Template.Name = Phrase
                    Template.Title.Text = Phrase
                    Template.Parent = Elements.Favorites

                    Template.Interact.MouseButton1Click:Connect(
                        function()
                            ChatPhrase(Phrase)()
                        end
                    )

                    ToggleImage()
                    Favorite(Template, true)
    
                    return;
                end

                tremove(Settings.Favorites, Index)
                for _, Tab in next, Elements:GetChildren() do
                    for _, Child2 in next, Tab:GetChildren() do
                        if
                            Child2.Name == Phrase and Child2:FindFirstChild("Star").Image == Favorited and
                                Child2.Star ~= Star
                        then
                            spawn(ToggleImage, Child2.Star)
                        end
                    end
                end

                ToggleImage()

                if Elements.Favorites:FindFirstChild(Phrase) then
                    Elements.Favorites:FindFirstChild(Phrase):Destroy()
                end
            end
        )

        EI.Visible = false
    end

    for _, Tab in next, Elements:GetChildren() do
        if tfind(PhraseArrays, Tab.Name) or Tab.Name == "Favorites" or Tab.Name == "My Phrases" then
            for _, Child in next, Tab:GetChildren() do
                Favorite(Child, Tab.Name == "Favorites" or tfind(Settings.Favorites, Child.Name), Tab.Name == "My Phrases")
            end
        end
    end

    Elements["My Phrases"].ChildAdded:Connect(function(Child)
        Favorite(Child, tfind(Settings.Favorites, Child.Name), true)
    end)
    Elements["Plugins"].ChildAdded:Connect(function(Child)
        local Title = Child:WaitForChild("Title")
        local PluginID = match(Title.Text, "ID: ([A-z0-9+/=]+)")
        Title.Text = gsub(Title.Text, "| ID: [A-z0-9+/=]+", "") -- Remove the ID indicator.

        AddTrash(Child:WaitForChild("ElementIndicator"), Child, function()
            local Success, Plugins = pcall(JSON_Decode, safe_readfile(PATH_JOIN(API.FileSystem.Path, "Plugins", "plugins.json"), "[]"));

            if not Success then
                return API:Notify("Unable to delete plugin, Reason: Unable to decode plugins list.", "error")
            end

            for _, Plugin in next, Plugins do
                if Plugin.id == PluginID then
                    Plugins[_] = nil;
                    writefile(PATH_JOIN(API.FileSystem.Path, "Plugins", "plugins.json"), JSON_Encode(Plugins))
                    Child:Destroy()
                    local File = PATH_JOIN(API.FileSystem.Path, "Cache", Plugin.id)
                    local Content = safe_readfile(File, "{}")

                    if isfile(File) then
                        delfile(File)
                    end

                    for _, Tab in next, JSON_Decode(Content).tabs do
                        TabList:FindFirstChild(Tab.Name):Destroy()
                        Elements:FindFirstChild(Tab.Name):Destroy()
                    end
                    break;
                end
            end
        end)
    end)

    for _, v in next, JSON_Decode(safe_readfile(PATH_JOIN(API.FileSystem.Path, "Plugins", "plugins.json"), "[]")) do
        -- Fetch each plugin:
        API.Plugin:Add(v.url, UI.Window, v.id)
    end
end

ChatSpy.Toggle(Settings.chatspy_enabled)
SetChatBar(GetChatBar())

if Bar then
    Bar.PlaceholderText = format("UserCreation %s︱Auto Bypass", Config.Version)
end
