class UpgradeBioRifle extends BioRifle
    config(DEKWeapons);
	
simulated function bool CanThrow()
{
	return false;
	Super.CanThrow();
}

defaultproperties
{
     FireModeClass(0)=Class'DEKWeapons208AJ.UpgradeBioFire'
     FireModeClass(1)=Class'DEKWeapons208AJ.UpgradeBioChargedFire'
     PickupClass=Class'DEKWeapons208AJ.UpgradeBioRiflePickup'
}
