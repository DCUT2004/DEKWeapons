class UpgradeFlakCannon extends FlakCannon
    config(DEKWeapons);
	
simulated function bool CanThrow()
{
	return false;
	Super.CanThrow();
}

defaultproperties
{
     FireModeClass(0)=Class'DEKWeapons208AH.UpgradeFlakFire'
     FireModeClass(1)=Class'DEKWeapons208AH.UpgradeFlakAltFire'
     PickupClass=Class'DEKWeapons208AH.UpgradeFlakCannonPickup'
}
