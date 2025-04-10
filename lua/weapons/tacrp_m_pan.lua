SWEP.Base = "tacrp_base_knife"
SWEP.Spawnable = true

AddCSLuaFile()

// names and stuff
SWEP.PrintName = "Frying Pan"
SWEP.Category = "Tactical RP (Special)"

SWEP.SubCatTier = "9Special"
SWEP.SubCatType = "8Blunt Melee"

SWEP.Description = "Stovetop cooking device made of solid cast-iron. Made iconic as a weapon through slapstick and cartoons."
SWEP.Description_Quote = "CLANG CLANG CLANG CLANG CLANG CLANG"

SWEP.Credits = "Assets: Left 4 Dead 2"

SWEP.ViewModel = "models/weapons/tacint_melee/v_pansexual.mdl"
SWEP.WorldModel = "models/weapons/tacint_melee/w_pansexual.mdl"

SWEP.NoRanger = true
SWEP.NoStatBox = false

SWEP.Slot = 0

SWEP.NPCUsable = false

// misc. shooting

SWEP.PrimaryMelee = true

SWEP.MeleeDamage = 55
SWEP.MeleeRange = 90
SWEP.MeleeAttackTime = 0.6
SWEP.MeleeAttackMissTime = 0.7

SWEP.MeleeDamageType = DMG_CLUB

SWEP.MeleeThrowForce = 900

SWEP.MeleePerkStr = 0.35
SWEP.MeleePerkAgi = 0.35
SWEP.MeleePerkInt = 0.3

// hold types

SWEP.HoldType = "melee"
SWEP.HoldTypeSprint = "knife"

SWEP.GestureBash = ACT_HL2MP_GESTURE_RANGE_ATTACK_MELEE
SWEP.GestureBash2 = ACT_HL2MP_GESTURE_RANGE_ATTACK_MELEE

SWEP.PassiveAng = Angle(-5, -2, 0)
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

local path1 = "tacint_shark/weapons/melee/"

SWEP.AnimationTranslationTable = {
    ["deploy"] = "deploy",
    ["melee"] = {"slash_left1", "slash_left2", "slash_right1", "slash_right2"},
    ["melee2"] = {"slash_forward1", "slash_forward2"},
    ["meleethrow"] = {"knifethrow"},
}

SWEP.Sound_MeleeHit = {
    path1 .. "pan_impact_world1.wav",
    path1 .. "pan_impact_world2.wav",
    path1 .. "pan_impact_world3.wav",
}

SWEP.Sound_MeleeHitBody = {
    path1 .. "melee_frying_pan_01.wav",
    path1 .. "melee_frying_pan_02.wav",
    path1 .. "melee_frying_pan_03.wav",
    path1 .. "melee_frying_pan_04.wav",
}

SWEP.Sound_MeleeSwing = "weapons/iceaxe/iceaxe_swing1.wav"

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