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
     FireModeClass(0)=Class'DEKWeapons999X.UpgradeSniperFire'
     PickupClass=Class'DEKWeapons999X.UpgradeSniperRiflePickup'
}
