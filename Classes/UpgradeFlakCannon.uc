class UpgradeFlakCannon extends FlakCannon
    config(DEKWeapons);
	
simulated function bool CanThrow()
{
	return false;
	Super.CanThrow();
}

defaultproperties
{
     FireModeClass(0)=Class'DEKWeapons208AG.UpgradeFlakFire'
     FireModeClass(1)=Class'DEKWeapons208AG.UpgradeFlakAltFire'
     PickupClass=Class'DEKWeapons208AG.UpgradeFlakCannonPickup'
}
