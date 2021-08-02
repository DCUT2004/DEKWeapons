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
     FireModeClass(1)=Class'DEKWeapons208AE.UpgradeRocketMultiFire'
     bCanThrow=False
     PickupClass=Class'DEKWeapons208AE.UpgradeRocketLauncherPickup'
}
