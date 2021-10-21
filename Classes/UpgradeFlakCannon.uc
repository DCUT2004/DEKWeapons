class UpgradeFlakCannon extends FlakCannon
    config(DEKWeapons);
	
simulated function bool CanThrow()
{
	return false;
	Super.CanThrow();
}

defaultproperties
{
     FireModeClass(0)=Class'DEKWeapons209B.UpgradeFlakFire'
     FireModeClass(1)=Class'DEKWeapons209B.UpgradeFlakAltFire'
     PickupClass=Class'DEKWeapons209B.UpgradeFlakCannonPickup'
}
