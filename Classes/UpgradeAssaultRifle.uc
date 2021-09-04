class UpgradeAssaultRifle extends AssaultRifle
    config(DEKWeapons);
	
simulated function bool CanThrow()
{
	return false;
	Super.CanThrow();
}

defaultproperties
{
     FireModeClass(0)=Class'DEKWeapons209A.UpgradeAssaultFire'
     FireModeClass(1)=Class'DEKWeapons209A.UpgradeAssaultGrenade'
     PickupClass=Class'DEKWeapons209A.UpgradeAssaultRiflePickup'
}
