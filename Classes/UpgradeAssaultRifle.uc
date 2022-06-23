class UpgradeAssaultRifle extends AssaultRifle
    config(DEKWeapons);
	
simulated function bool CanThrow()
{
	return false;
	Super.CanThrow();
}

defaultproperties
{
     FireModeClass(0)=Class'DEKWeapons209C.UpgradeAssaultFire'
     FireModeClass(1)=Class'DEKWeapons209C.UpgradeAssaultGrenade'
     PickupClass=Class'DEKWeapons209C.UpgradeAssaultRiflePickup'
}
