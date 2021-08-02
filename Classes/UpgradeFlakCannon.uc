class UpgradeFlakCannon extends FlakCannon
    config(DEKWeapons);
	
simulated function bool CanThrow()
{
	return false;
	Super.CanThrow();
}

defaultproperties
{
     FireModeClass(0)=Class'DEKWeapons208AE.UpgradeFlakFire'
     FireModeClass(1)=Class'DEKWeapons208AE.UpgradeFlakAltFire'
     PickupClass=Class'DEKWeapons208AE.UpgradeFlakCannonPickup'
}
