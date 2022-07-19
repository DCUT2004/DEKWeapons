class NecromancerWeaponFire extends SniperFire;


function DoTrace(Vector Start, Rotator Dir)
{
	if (Instigator != None)
		Instigator.PlaySound(Sound'XEffects.LightningSound', SLOT_None, 600.0);
	Super.DoTrace(Start, Dir);
}

defaultproperties
{
     HitEmitterClass=Class'DEKWeapons999X.NecromancerWeaponBoltFX'
     SecHitEmitterClass=Class'DEKWeapons999X.NecromancerWeaponChildBoltFX'
     NumArcs=6
     DamageTypeHeadShot=Class'DEKWeapons999X.DamTypeNecromancerWeaponHS'
     DamageType=Class'DEKWeapons999X.DamTypeNecromancerWeapon'
     DamageMin=300
     DamageMax=300
     TraceRange=30000.000000
     FireSound=Sound'XEffects.LightningSound'
     AmmoClass=Class'DEKWeapons999X.NecromancerWeaponAmmo'
     AmmoPerFire=5
}
