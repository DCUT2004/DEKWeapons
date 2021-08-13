class UpgradeAssaultRifle extends AssaultRifle
    config(DEKWeapons);
	
simulated function bool CanThrow()
{
	return false;
	Super.CanThrow();
}

defaultproperties
{
     FireModeClass(0)=Class'DEKWeapons208AG.UpgradeAssaultFire'
     FireModeClass(1)=Class'DEKWeapons208AG.UpgradeAssaultGrenade'
     PickupClass=Class'DEKWeapons208AG.UpgradeAssaultRiflePickup'
}
