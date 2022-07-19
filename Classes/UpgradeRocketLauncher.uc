class UpgradeRocketLauncher extends RocketLauncher
    config(DEKWeapons);
	
simulated function bool CanThrow()
{
	return false;
	Super.CanThrow();
}

defaultproperties
{
     SeekRange=13000.000000
     LockRequiredTime=0.300000
     FireModeClass(1)=Class'DEKWeapons999X.UpgradeRocketMultiFire'
     bCanThrow=False
     PickupClass=Class'DEKWeapons999X.UpgradeRocketLauncherPickup'
}
