class UpgradeAssaultRifle extends AssaultRifle
    config(DEKWeapons);
	
simulated function bool CanThrow()
{
	return false;
	Super.CanThrow();
}

defaultproperties
{
     FireModeClass(0)=Class'DEKWeapons208AF.UpgradeAssaultFire'
     FireModeClass(1)=Class'DEKWeapons208AF.UpgradeAssaultGrenade'
     PickupClass=Class'DEKWeapons208AF.UpgradeAssaultRiflePickup'
}
