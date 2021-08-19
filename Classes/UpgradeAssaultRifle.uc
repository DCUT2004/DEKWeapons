class UpgradeAssaultRifle extends AssaultRifle
    config(DEKWeapons);
	
simulated function bool CanThrow()
{
	return false;
	Super.CanThrow();
}

defaultproperties
{
     FireModeClass(0)=Class'DEKWeapons208AH.UpgradeAssaultFire'
     FireModeClass(1)=Class'DEKWeapons208AH.UpgradeAssaultGrenade'
     PickupClass=Class'DEKWeapons208AH.UpgradeAssaultRiflePickup'
}
