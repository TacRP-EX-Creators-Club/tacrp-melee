SWEP.Base = "tacrp_base"
SWEP.Spawnable = true

AddCSLuaFile()

// names and stuff
SWEP.PrintName = "Heat Hawk"
SWEP.Category = "Tactical RP (Special)"

SWEP.SubCatTier = "9Special"
SWEP.SubCatType = "8Melee Weapon"

SWEP.Description = "Axe-shaped MS weapon scaled down to human size.\nThe original utilizes a superheated edge that cuts through metal like butter, but this replica only has a glowing sticker attached to a metal blade."

SWEP.ViewModel = "models/weapons/tacint_extras/v_heathawk.mdl"
SWEP.WorldModel = "models/weapons/tacint_extras/w_heathawk.mdl"

SWEP.NoRanger = true
SWEP.NoStatBox = true

SWEP.Slot = 0

SWEP.NPCUsable = false

// misc. shooting

SWEP.PrimaryMelee = true

SWEP.MeleeDamage = 65
SWEP.MeleeAttackTime = 0.65
SWEP.MeleeRange = 128
SWEP.MeleeAttackMissTime = 0.75

SWEP.Melee2Damage = 80
SWEP.Melee2AttackTime = 0.7
SWEP.Melee2Range = 96
SWEP.Melee2AttackMissTime = 0.85

SWEP.MeleeDamageType = DMG_SLASH

SWEP.MeleeThrowTime = 1.5
SWEP.MeleeThrowTimeWait = 0.6

SWEP.Firemode = 0

SWEP.RPM = 110

SWEP.CanBlindFire = false

SWEP.Ammo = ""
SWEP.ClipSize = -1
SWEP.Primary.ClipSize = -1

// handling

SWEP.MoveSpeedMult = 1

SWEP.MeleeSpeedMult = 1
SWEP.MeleeSpeedMultTime = 0.5

SWEP.SprintToFireTime = 0.25

SWEP.QuickNadeTimeMult = 0.8

SWEP.Scope = false

SWEP.Sway = 0

// hold types

SWEP.HoldType = "melee"
SWEP.HoldTypeSprint = "melee"

SWEP.GestureShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_PISTOL
SWEP.GestureReload = ACT_HL2MP_GESTURE_RELOAD_PISTOL
SWEP.GestureBash = ACT_HL2MP_GESTURE_RANGE_ATTACK_MELEE
SWEP.GestureBash2 = ACT_HL2MP_GESTURE_RANGE_ATTACK_MELEE

SWEP.MidAirSpreadPenalty = 0

SWEP.PassiveAng = Angle(-6, 0, 0)
SWEP.PassivePos = Vector(4, 0, -7)

SWEP.SprintAng = Angle(0, 0, 0)
SWEP.SprintPos = Vector(2, 0, -5)

SWEP.CustomizeAng = Angle(0, -5, 0)
SWEP.CustomizePos = Vector(2, 0, -2)

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

SWEP.AnimationTranslationTable = {
    ["deploy"] = "deploy",
    ["melee"] = "slash_left1",
    ["melee2"] = {"slash_forward1", "slash_forward2"},
    ["meleethrow"] = {"knifethrow"},
}

SWEP.Sound_MeleeHit = {
    path .. "/scrape_metal-1.wav",
    path .. "/scrape_metal-2.wav",
    path .. "/scrape_metal-3.wav",
}

SWEP.Sound_MeleeHitBody = {
    path .. "/flesh_hit-1.wav",
    path .. "/flesh_hit-2.wav",
    path .. "/flesh_hit-3.wav",
    path .. "/flesh_hit-4.wav",
    path .. "/flesh_hit-5.wav",
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

addsound("tacint_heathawk.deploy", "tacrp/weapons/pistol_unholster-2.wav")

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