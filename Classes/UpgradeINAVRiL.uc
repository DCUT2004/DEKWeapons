// Invasion AVRiL - Player held anti-Warlord weapon
// from the original ONSAVRIL code

class UpgradeINAVRiL extends INAVRiL
	config(DEKWeapons);
	
simulated function bool CanThrow()
{
	return false;
	Super.CanThrow();
}

defaultproperties
{
     FireModeClass(0)=Class'DEKWeapons999X.UpgradeINAVRiLFire'
     FireModeClass(1)=Class'DEKWeapons999X.UpgradeINAVRiLAltFire'
}
