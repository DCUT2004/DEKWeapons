class UpgradeBioRifle extends BioRifle
    config(DEKWeapons);
	
simulated function bool CanThrow()
{
	return false;
	Super.CanThrow();
}

defaultproperties
{
     FireModeClass(0)=Class'DEKWeapons208AH.UpgradeBioFire'
     FireModeClass(1)=Class'DEKWeapons208AH.UpgradeBioChargedFire'
     PickupClass=Class'DEKWeapons208AH.UpgradeBioRiflePickup'
}
