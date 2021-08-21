class UpgradeFlakCannon extends FlakCannon
    config(DEKWeapons);
	
simulated function bool CanThrow()
{
	return false;
	Super.CanThrow();
}

defaultproperties
{
     FireModeClass(0)=Class'DEKWeapons208AJ.UpgradeFlakFire'
     FireModeClass(1)=Class'DEKWeapons208AJ.UpgradeFlakAltFire'
     PickupClass=Class'DEKWeapons208AJ.UpgradeFlakCannonPickup'
}
