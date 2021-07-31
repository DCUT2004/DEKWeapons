class UpgradeFlakCannon extends FlakCannon
    config(DEKWeapons);
	
simulated function bool CanThrow()
{
	return false;
	Super.CanThrow();
}

defaultproperties
{
     FireModeClass(0)=Class'DEKWeapons208AD.UpgradeFlakFire'
     FireModeClass(1)=Class'DEKWeapons208AD.UpgradeFlakAltFire'
     PickupClass=Class'DEKWeapons208AD.UpgradeFlakCannonPickup'
}
