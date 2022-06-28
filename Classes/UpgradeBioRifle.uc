class UpgradeBioRifle extends BioRifle
    config(DEKWeapons);
	
simulated function bool CanThrow()
{
	return false;
	Super.CanThrow();
}

defaultproperties
{
     FireModeClass(0)=Class'DEKWeapons209E.UpgradeBioFire'
     FireModeClass(1)=Class'DEKWeapons209E.UpgradeBioChargedFire'
     PickupClass=Class'DEKWeapons209E.UpgradeBioRiflePickup'
}
