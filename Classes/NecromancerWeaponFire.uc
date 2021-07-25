class NecromancerWeaponFire extends SniperFire;


function DoTrace(Vector Start, Rotator Dir)
{
	if (Instigator != None)
		Instigator.PlaySound(Sound'XEffects.LightningSound', SLOT_None, 600.0);
	Super.DoTrace(Start, Dir);
}

defaultproperties
{
     HitEmitterClass=Class'DEKWeapons208AB.NecromancerWeaponBoltFX'
     SecHitEmitterClass=Class'DEKWeapons208AB.NecromancerWeaponChildBoltFX'
     NumArcs=6
     DamageTypeHeadShot=Class'DEKWeapons208AB.DamTypeNecromancerWeaponHS'
     DamageType=Class'DEKWeapons208AB.DamTypeNecromancerWeapon'
     DamageMin=300
     DamageMax=300
     TraceRange=30000.000000
     FireSound=Sound'XEffects.LightningSound'
     AmmoClass=Class'DEKWeapons208AB.NecromancerWeaponAmmo'
     AmmoPerFire=5
}
