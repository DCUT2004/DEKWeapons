class UpgradeFlakCannon extends FlakCannon
    config(DEKWeapons);
	
simulated function bool CanThrow()
{
	return false;
	Super.CanThrow();
}

defaultproperties
{
     FireModeClass(0)=Class'DEKWeapons208AC.UpgradeFlakFire'
     FireModeClass(1)=Class'DEKWeapons208AC.UpgradeFlakAltFire'
     PickupClass=Class'DEKWeapons208AC.UpgradeFlakCannonPickup'
}
