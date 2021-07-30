class UpgradeAssaultRifle extends AssaultRifle
    config(DEKWeapons);
	
simulated function bool CanThrow()
{
	return false;
	Super.CanThrow();
}

defaultproperties
{
     FireModeClass(0)=Class'DEKWeapons208AC.UpgradeAssaultFire'
     FireModeClass(1)=Class'DEKWeapons208AC.UpgradeAssaultGrenade'
     PickupClass=Class'DEKWeapons208AC.UpgradeAssaultRiflePickup'
}
