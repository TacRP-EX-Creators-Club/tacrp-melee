SWEP.Base = "tacrp_base_knife"
SWEP.Spawnable = true

AddCSLuaFile()

// names and stuff
SWEP.PrintName = "The Classic"
SWEP.Category = "Tactical RP (Special)"

SWEP.SubCatTier = "9Special"
SWEP.SubCatType = "8Melee Weapon"

SWEP.Description = "A classic knife design from the 90's, before fancy patterns and ludicrous prices were all the rage."
SWEP.Description_Quote = "Alright, let's move out!"

SWEP.Credits = "Assets: Counter-Strike: Source"

SWEP.ViewModel = "models/weapons/tacint_melee/v_cssknife.mdl"
SWEP.WorldModel = "models/weapons/tacint_melee/w_cssknife.mdl"

SWEP.Slot = 0

SWEP.MeleeDamage = 30
SWEP.MeleeAttackTime = 0.38
SWEP.MeleeAttackMissTime = 0.42

SWEP.MeleeDamageType = DMG_SLASH

SWEP.MeleePerkStr = 0.6
SWEP.MeleePerkAgi = 0.6
SWEP.MeleePerkInt = 0.6

// hold types

SWEP.HoldType = "knife"
SWEP.HoldTypeSprint = "knife"

SWEP.GestureBash = ACT_HL2MP_GESTURE_RANGE_ATTACK_KNIFE
SWEP.GestureBash2 = ACT_HL2MP_GESTURE_RANGE_ATTACK_MELEE

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

// sounds

local path = "tacrp/weapons/knife/"

SWEP.AnimationTranslationTable = {
    ["deploy"] = "deploy",
    ["melee"] = {"slash_left1", "slash_left2", "slash_right1", "slash_right2"},
    ["melee2"] = {"slash_forward1", "slash_forward2"},
    ["meleethrow"] = {"knifethrow"},
}

SWEP.Sound_MeleeHit = "weapons/knife/knife_hitwall1.wav"

SWEP.Sound_MeleeHitBody = {
    "weapons/knife/knife_hit1.wav",
    "weapons/knife/knife_hit2.wav",
    "weapons/knife/knife_hit3.wav",
    "weapons/knife/knife_hit4.wav",
}

SWEP.Sound_MeleeSwing = {
    "weapons/knife/knife_slash1.wav",
    "weapons/knife/knife_slash2.wav",
}