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
     FireModeClass(0)=Class'DEKWeapons209B.UpgradeSniperFire'
     PickupClass=Class'DEKWeapons209B.UpgradeSniperRiflePickup'
}
