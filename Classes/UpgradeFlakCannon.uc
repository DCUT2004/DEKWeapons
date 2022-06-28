class UpgradeFlakCannon extends FlakCannon
    config(DEKWeapons);
	
simulated function bool CanThrow()
{
	return false;
	Super.CanThrow();
}

defaultproperties
{
     FireModeClass(0)=Class'DEKWeapons209D.UpgradeFlakFire'
     FireModeClass(1)=Class'DEKWeapons209D.UpgradeFlakAltFire'
     PickupClass=Class'DEKWeapons209D.UpgradeFlakCannonPickup'
}
