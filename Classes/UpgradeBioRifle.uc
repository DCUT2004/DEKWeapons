class UpgradeBioRifle extends BioRifle
    config(DEKWeapons);
	
simulated function bool CanThrow()
{
	return false;
	Super.CanThrow();
}

defaultproperties
{
     FireModeClass(0)=Class'DEKWeapons999X.UpgradeBioFire'
     FireModeClass(1)=Class'DEKWeapons999X.UpgradeBioChargedFire'
     PickupClass=Class'DEKWeapons999X.UpgradeBioRiflePickup'
}
