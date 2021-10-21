class UpgradeAssaultRifle extends AssaultRifle
    config(DEKWeapons);
	
simulated function bool CanThrow()
{
	return false;
	Super.CanThrow();
}

defaultproperties
{
     FireModeClass(0)=Class'DEKWeapons209B.UpgradeAssaultFire'
     FireModeClass(1)=Class'DEKWeapons209B.UpgradeAssaultGrenade'
     PickupClass=Class'DEKWeapons209B.UpgradeAssaultRiflePickup'
}
