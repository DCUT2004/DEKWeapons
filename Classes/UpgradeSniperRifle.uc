//=============================================================================
// Sniper Rifle
//=============================================================================
class UpgradeSniperRifle extends SniperRifle
    config(DEKWeapons);
	
simulated function bool CanThrow()
{
	return false;
	Super.CanThrow();
}

defaultproperties
{
     FireModeClass(0)=Class'DEKWeapons208AJ.UpgradeSniperFire'
     PickupClass=Class'DEKWeapons208AJ.UpgradeSniperRiflePickup'
}
