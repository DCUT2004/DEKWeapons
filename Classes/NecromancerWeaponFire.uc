class NecromancerWeaponFire extends SniperFire;


function DoTrace(Vector Start, Rotator Dir)
{
	if (Instigator != None)
		Instigator.PlaySound(Sound'XEffects.LightningSound', SLOT_None, 600.0);
	Super.DoTrace(Start, Dir);
}

defaultproperties
{
     HitEmitterClass=Class'DEKWeapons208AG.NecromancerWeaponBoltFX'
     SecHitEmitterClass=Class'DEKWeapons208AG.NecromancerWeaponChildBoltFX'
     NumArcs=6
     DamageTypeHeadShot=Class'DEKWeapons208AG.DamTypeNecromancerWeaponHS'
     DamageType=Class'DEKWeapons208AG.DamTypeNecromancerWeapon'
     DamageMin=300
     DamageMax=300
     TraceRange=30000.000000
     FireSound=Sound'XEffects.LightningSound'
     AmmoClass=Class'DEKWeapons208AG.NecromancerWeaponAmmo'
     AmmoPerFire=5
}
