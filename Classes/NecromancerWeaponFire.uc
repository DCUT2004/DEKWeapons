class NecromancerWeaponFire extends SniperFire;


function DoTrace(Vector Start, Rotator Dir)
{
	if (Instigator != None)
		Instigator.PlaySound(Sound'XEffects.LightningSound', SLOT_None, 600.0);
	Super.DoTrace(Start, Dir);
}

defaultproperties
{
     HitEmitterClass=Class'DEKWeapons209B.NecromancerWeaponBoltFX'
     SecHitEmitterClass=Class'DEKWeapons209B.NecromancerWeaponChildBoltFX'
     NumArcs=6
     DamageTypeHeadShot=Class'DEKWeapons209B.DamTypeNecromancerWeaponHS'
     DamageType=Class'DEKWeapons209B.DamTypeNecromancerWeapon'
     DamageMin=300
     DamageMax=300
     TraceRange=30000.000000
     FireSound=Sound'XEffects.LightningSound'
     AmmoClass=Class'DEKWeapons209B.NecromancerWeaponAmmo'
     AmmoPerFire=5
}
