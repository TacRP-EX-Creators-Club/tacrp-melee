SWEP.Base = "tacrp_base_knife"
SWEP.Spawnable = os.date("%m-%d") == "04-01" or math.random() <= 0.01 -- Secret weapon.  If you're reading this, you're either a dev, a Github user or nosy workshop user who decompiled the addon.  Type "give tacrp_m_wiimote" in the console to get this weapon ingame.

AddCSLuaFile()

// names and stuff
SWEP.PrintName = "Nintendo Wii Remote"
SWEP.Category = "Tactical RP (Special)"

SWEP.SubCatTier = "9Special"
SWEP.SubCatType = "8Blunt Melee"

SWEP.Description = "An iconic game controller with revolutionary motion controls. \nCareful!  Neglecting to wear the wrist strap could lead to injury."

SWEP.Credits = "Model & Texture: Mr. Pickle"

SWEP.ViewModel = "models/weapons/tacint_melee/v_wiimote.mdl"
SWEP.WorldModel = "models/weapons/tacint_melee/w_wiimote.mdl"

SWEP.Slot = 0

SWEP.MeleeDamage = 25
SWEP.MeleeAttackTime = 0.33
SWEP.MeleeAttackMissTime = 0.4
SWEP.MeleeDelay = 0.1

SWEP.MeleeDamageType = DMG_CLUB

SWEP.MeleeThrowForce = 5000

SWEP.MeleePerkStr = 0.3
SWEP.MeleePerkAgi = 0.6
SWEP.MeleePerkInt = 0.8

// hold types

SWEP.HoldType = "knife"
SWEP.HoldTypeSprint = "knife"

SWEP.GestureShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_PISTOL
SWEP.GestureReload = ACT_HL2MP_GESTURE_RELOAD_PISTOL
SWEP.GestureBash = ACT_HL2MP_GESTURE_RANGE_ATTACK_MELEE
SWEP.GestureBash2 = ACT_HL2MP_GESTURE_RANGE_ATTACK_MELEE

SWEP.MidAirSpreadPenalty = 0

SWEP.PassiveAng = Angle(-2.5, 0, 0)
SWEP.PassivePos = Vector(1, 0, -5)

SWEP.SprintAng = Angle(0, 0, 0)
SWEP.SprintPos = Vector(2, 0, -5)

SWEP.CustomizeAng = Angle(0, 25, 0)
SWEP.CustomizePos = Vector(2, 0, -12)

SWEP.SprintMidPoint = {
    Pos = Vector(2, 0, -5),
    Ang = Angle(0, 0, 0)
}

SWEP.HolsterVisible = false
SWEP.HolsterSlot = TacRP.HOLSTER_SLOT_GEAR
SWEP.HolsterPos = Vector(2, 0, 0)
SWEP.HolsterAng = Angle(-90, -90, 15)

// sounds

local path = "tacrp/weapons/knife/"
local path1 = "tacint_shark/weapons/melee/knife_hit"

SWEP.AnimationTranslationTable = {
    ["deploy"] = "deploy",
    ["melee"] = {"slash_left1", "slash_left2", "slash_right1", "slash_right2"},
    ["melee2"] = {"slash_forward1", "slash_forward2"},
    ["meleethrow"] = {"knifethrow"},
}

SWEP.Sound_MeleeHit = {
    path1 .. "1.wav",
    path1 .. "2.wav",
    path1 .. "3.wav",
    path1 .. "4.wav",

}

SWEP.Sound_MeleeHitBody = {
    path1 .. "1.wav",
    path1 .. "2.wav",
    path1 .. "3.wav",
    path1 .. "4.wav",
}

SWEP.Sound_MeleeSwing = {
    path .. "swing-1.wav",
    path .. "swing-2.wav",
    path .. "swing-3.wav",
    path .. "swing-4.wav",
    path .. "swing-5.wav",
    path .. "swing-6.wav",
}

// attachments

SWEP.Attachments = {
    [1] = {
        PrintName = "Technique",
        Category = "melee_tech",
        AttachSound = "TacRP/weapons/flashlight_on.wav",
        DetachSound = "TacRP/weapons/flashlight_off.wav",
    },
    [2] = {
        PrintName = "Special",
        Category = "melee_spec",
        AttachSound = "TacRP/weapons/flashlight_on.wav",
        DetachSound = "TacRP/weapons/flashlight_off.wav",
    },
}

SWEP.FreeAim = false

SWEP.DrawCrosshair = true
SWEP.DrawCrosshairInSprint = true
SWEP.CrosshairStatic = true

local function addsound(name, spath)
    sound.Add({
        name = name,
        channel = 16,
        volume = 1.0,
        sound = spath
    })
end

addsound("tacint_knife2.deploy", "tacrp/magtap.ogg")

function SWEP:PrimaryAttack()
    local stop = self:RunHook("Hook_PreShoot")
    if stop then return end

    self:Melee()
    return
end

function SWEP:ThinkSprint()
end

function SWEP:ThinkSights()
end

SWEP.AutoSpawnable = false