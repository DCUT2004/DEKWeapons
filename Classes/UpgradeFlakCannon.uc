class UpgradeFlakCannon extends FlakCannon
    config(DEKWeapons);
	
simulated function bool CanThrow()
{
	return false;
	Super.CanThrow();
}

defaultproperties
{
     FireModeClass(0)=Class'DEKWeapons208AA.UpgradeFlakFire'
     FireModeClass(1)=Class'DEKWeapons208AA.UpgradeFlakAltFire'
     PickupClass=Class'DEKWeapons208AA.UpgradeFlakCannonPickup'
}
