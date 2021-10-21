class UpgradeBioRifle extends BioRifle
    config(DEKWeapons);
	
simulated function bool CanThrow()
{
	return false;
	Super.CanThrow();
}

defaultproperties
{
     FireModeClass(0)=Class'DEKWeapons209B.UpgradeBioFire'
     FireModeClass(1)=Class'DEKWeapons209B.UpgradeBioChargedFire'
     PickupClass=Class'DEKWeapons209B.UpgradeBioRiflePickup'
}
