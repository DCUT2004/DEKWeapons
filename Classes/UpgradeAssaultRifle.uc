class UpgradeAssaultRifle extends AssaultRifle
    config(DEKWeapons);
	
simulated function bool CanThrow()
{
	return false;
	Super.CanThrow();
}

defaultproperties
{
     FireModeClass(0)=Class'DEKWeapons999X.UpgradeAssaultFire'
     FireModeClass(1)=Class'DEKWeapons999X.UpgradeAssaultGrenade'
     PickupClass=Class'DEKWeapons999X.UpgradeAssaultRiflePickup'
}
