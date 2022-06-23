class UpgradeFlakCannon extends FlakCannon
    config(DEKWeapons);
	
simulated function bool CanThrow()
{
	return false;
	Super.CanThrow();
}

defaultproperties
{
     FireModeClass(0)=Class'DEKWeapons209C.UpgradeFlakFire'
     FireModeClass(1)=Class'DEKWeapons209C.UpgradeFlakAltFire'
     PickupClass=Class'DEKWeapons209C.UpgradeFlakCannonPickup'
}
