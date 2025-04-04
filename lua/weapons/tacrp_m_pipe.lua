SWEP.Base = "tacrp_base_knife"
SWEP.Spawnable = true

AddCSLuaFile()

// names and stuff
SWEP.PrintName = "Lead Pipe"
SWEP.Category = "Tactical RP (Special)"

SWEP.SubCatTier = "9Special"
SWEP.SubCatType = "8Blunt Melee"

SWEP.Description = "Sturdy lead water pipe. Despite not being designed for any kind of harm-doing, hitting someone with it does quite a lot of harm."
SWEP.Description_Quote = "\"OH SHIT!! Too late!!\""

SWEP.Credits = "Assets: No More Room in Hell"

SWEP.ViewModel = "models/weapons/tacint_melee/v_pipe.mdl"
SWEP.WorldModel = "models/weapons/tacint_melee/w_pipe.mdl"

SWEP.MeleeDamage = 40
SWEP.MeleeAttackTime = 0.4
SWEP.MeleeAttackMissTime = 0.5
SWEP.MeleeRange = 90

SWEP.MeleeDamageType = DMG_CLUB

SWEP.MeleeThrowForce = 900

SWEP.MeleePerkStr = 0.4
SWEP.MeleePerkAgi = 0.4
SWEP.MeleePerkInt = 0.4

// hold types

SWEP.HoldType = "melee"
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
	"physics/metal/metal_canister_impact_hard1.wav",
	"physics/metal/metal_canister_impact_hard2.wav",
	"physics/metal/metal_canister_impact_hard3.wav",
}

SWEP.Sound_MeleeHitBody = {
    path1 .. "1.wav",
    path1 .. "2.wav",
    path1 .. "3.wav",
    path1 .. "4.wav",
}

SWEP.Sound_MeleeSwing = {
	"weapons/iceaxe/iceaxe_swing1.wav",
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