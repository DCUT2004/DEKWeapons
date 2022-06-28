//dummy weapon to force switch
class NecromancerWeapon extends Weapon
	CacheExempt;
	
	
simulated function bool PutDown()
{
	if ( Instigator.PendingWeapon == self )
		Instigator.PendingWeapon = None;
    return( false ); // Never let them put the weapon away.
}

simulated function float ChargeBar()
{
	return (AmmoAmount(0)/MaxAmmo(0));
}

defaultproperties
{
     FireModeClass(0)=Class'DEKWeapons209D.NecromancerWeaponFire'
     FireModeClass(1)=Class'DEKWeapons209D.NecromancerWeaponFire'
     bShowChargingBar=True
     bCanThrow=False
     bForceSwitch=True
     bNoVoluntarySwitch=True
     HudColor=(B=255)
     InventoryGroup=15
     ItemName="Phantom"
     DrawScale=0.050000
}
