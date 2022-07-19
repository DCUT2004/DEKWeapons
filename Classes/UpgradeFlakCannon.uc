class UpgradeFlakCannon extends FlakCannon
    config(DEKWeapons);
	
simulated function bool CanThrow()
{
	return false;
	Super.CanThrow();
}

defaultproperties
{
     FireModeClass(0)=Class'DEKWeapons999X.UpgradeFlakFire'
     FireModeClass(1)=Class'DEKWeapons999X.UpgradeFlakAltFire'
     PickupClass=Class'DEKWeapons999X.UpgradeFlakCannonPickup'
}
