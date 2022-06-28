class UpgradeAssaultRifle extends AssaultRifle
    config(DEKWeapons);
	
simulated function bool CanThrow()
{
	return false;
	Super.CanThrow();
}

defaultproperties
{
     FireModeClass(0)=Class'DEKWeapons209D.UpgradeAssaultFire'
     FireModeClass(1)=Class'DEKWeapons209D.UpgradeAssaultGrenade'
     PickupClass=Class'DEKWeapons209D.UpgradeAssaultRiflePickup'
}
