class UpgradeFlakCannon extends FlakCannon
    config(DEKWeapons);
	
simulated function bool CanThrow()
{
	return false;
	Super.CanThrow();
}

defaultproperties
{
     FireModeClass(0)=Class'DEKWeapons208AF.UpgradeFlakFire'
     FireModeClass(1)=Class'DEKWeapons208AF.UpgradeFlakAltFire'
     PickupClass=Class'DEKWeapons208AF.UpgradeFlakCannonPickup'
}
