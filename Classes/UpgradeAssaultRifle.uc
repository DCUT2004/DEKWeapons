class UpgradeAssaultRifle extends AssaultRifle
    config(DEKWeapons);
	
simulated function bool CanThrow()
{
	return false;
	Super.CanThrow();
}

defaultproperties
{
     FireModeClass(0)=Class'DEKWeapons208AE.UpgradeAssaultFire'
     FireModeClass(1)=Class'DEKWeapons208AE.UpgradeAssaultGrenade'
     PickupClass=Class'DEKWeapons208AE.UpgradeAssaultRiflePickup'
}
