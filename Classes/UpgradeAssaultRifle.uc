class UpgradeAssaultRifle extends AssaultRifle
    config(DEKWeapons);
	
simulated function bool CanThrow()
{
	return false;
	Super.CanThrow();
}

defaultproperties
{
     FireModeClass(0)=Class'DEKWeapons208AD.UpgradeAssaultFire'
     FireModeClass(1)=Class'DEKWeapons208AD.UpgradeAssaultGrenade'
     PickupClass=Class'DEKWeapons208AD.UpgradeAssaultRiflePickup'
}
