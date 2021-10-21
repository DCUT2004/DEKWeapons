//-----------------------------------------------------------
//
//-----------------------------------------------------------
class PlasmaGrenadeLauncher extends Weapon
	config(User);

#exec OBJ LOAD FILE=HudContent.utx

var array<PlasmaGrenadeProjectile> Grenades;
var int CurrentGrenades; //should be sync'ed with Grenades.length
var int MaxGrenades;
var color FadedColor;

replication
{
	reliable if (bNetOwner && bNetDirty && ROLE == ROLE_Authority)
		CurrentGrenades;
}

simulated function bool HasAmmo()
{
    if (CurrentGrenades > 0)
    	return true;

    return Super.HasAmmo();
}

simulated function bool CanThrow()
{
	if ( AmmoAmount(0) <= 0 )
		return false;

	return Super.CanThrow();
}

simulated function OutOfAmmo()
{
}


simulated singular function ClientStopFire(int Mode)
{
	if (Mode == 1 && !HasAmmo())
		DoAutoSwitch();

	Super.ClientStopFire(Mode);
}

simulated function Destroyed()
{
	local int x;

	if (Role == ROLE_Authority)
	{
		for (x = 0; x < Grenades.Length; x++)
			if (Grenades[x] != None)
				Grenades[x].Explode(Grenades[x].Location, vect(0,0,1));
		Grenades.Length = 0;
	}

	Super.Destroyed();
}

// AI Interface
function float GetAIRating()
{
	local Bot B;
	local float EnemyDist;
	local vector EnemyDir;

	B = Bot(Instigator.Controller);
	if ( B == None )
		return AIRating;
	if ( B.Enemy == None )
	{
		if ( (B.Target != None) && VSize(B.Target.Location - B.Pawn.Location) > 1000 )
			return 0.2;
		return AIRating;
	}

	// if retreating, favor this weapon
	EnemyDir = B.Enemy.Location - Instigator.Location;
	EnemyDist = VSize(EnemyDir);
	if ( EnemyDist > 1500 )
		return 0.1;
	if ( B.IsRetreating() )
		return (AIRating + 0.4);
	if ( -1 * EnemyDir.Z > EnemyDist )
		return AIRating + 0.1;
	if ( (B.Enemy.Weapon != None) && B.Enemy.Weapon.bMeleeWeapon )
		return (AIRating + 0.3);
	if ( EnemyDist > 1000 )
		return 0.35;
	return AIRating;
}

/* BestMode()
choose between regular or alt-fire
*/
function byte BestMode()
{
	local int x;

	if (CurrentGrenades >= MaxGrenades || (AmmoAmount(0) <= 0 && FireMode[0].NextFireTime <= Level.TimeSeconds))
		return 1;

	for (x = 0; x < Grenades.length; x++)
		if (Grenades[x] != None && Pawn(Grenades[x].Base) != None)
			return 1;

	return 0;
}

function float SuggestAttackStyle()
{
	local Bot B;
	local float EnemyDist;

	B = Bot(Instigator.Controller);
	if ( (B == None) || (B.Enemy == None) )
		return 0.4;

	EnemyDist = VSize(B.Enemy.Location - Instigator.Location);
	if ( EnemyDist > 1500 )
		return 1.0;
	if ( EnemyDist > 1000 )
		return 0.4;
	return -0.4;
}

function float SuggestDefenseStyle()
{
	local Bot B;

	B = Bot(Instigator.Controller);
	if ( (B == None) || (B.Enemy == None) )
		return 0;

	if ( VSize(B.Enemy.Location - Instigator.Location) < 1600 )
		return -0.6;
	return 0;
}

// End AI Interface

simulated function AnimEnd(int Channel)
{
    local name anim;
    local float frame, rate;
    GetAnimParams(0, anim, frame, rate);

    if (anim == 'AltFire')
        LoopAnim('Hold', 1.0, 0.1);
    else
        Super.AnimEnd(Channel);
}

defaultproperties
{
     MaxGrenades=9
     FadedColor=(B=128,G=128,R=128,A=128)
     FireModeClass(0)=Class'DEKWeapons209B.PlasmaGrenadeFire'
     FireModeClass(1)=Class'DEKWeapons209B.PlasmaGrenadeAltFire'
     PutDownAnim="PutDown"
     SelectAnimRate=3.100000
     PutDownAnimRate=2.500000
     SelectSound=Sound'WeaponSounds.FlakCannon.SwitchToFlakCannon'
     SelectForce="SwitchToFlakCannon"
     AIRating=0.620000
     CurrentRating=0.620000
     bCanThrow=False
     Description="The DEK Anti-Gravity Grenade Launcher, Also know as The AGGL, is a powerful defensive weapon. Primary fire mode shots time fused and touch sensitive plasma grenade. These grenades are slow moving, but are not affected by gravity and can stick to surfaces. The secondary fire is the same as primary. Sorry. The AGGL is perfect for laying traps for fast moving vehicles or blocking doorways.||DEK Invasion Version."
     EffectOffset=(X=30.000000,Y=10.000000,Z=-10.000000)
     Priority=200
     HudColor=(B=230,G=150,R=220)
     SmallViewOffset=(X=23.000000,Y=6.000000,Z=-6.000000)
     CustomCrosshair=15
     CustomCrossHairTextureName="ONSInterface-TX.grenadeLauncherReticle"
     InventoryGroup=3
     GroupOffset=1
     //PickupClass=Class'DEKWeapons209B.PlasmaGrenadePickup'
     PlayerViewOffset=(X=11.000000)
     PlayerViewPivot=(Pitch=-1000)
     BobDamping=2.200000
     AttachmentClass=Class'XWeapons.BallAttachment'
     IconMaterial=Texture'HUDContent.Generic.HUD'
     IconCoords=(X1=434,Y1=253,X2=506,Y2=292)
     ItemName="Anti Gravity Grenade Launcher"
     Mesh=SkeletalMesh'Weapons.BallLauncher_1st'
     DrawScale=0.400000
     AmbientGlow=64
     DisplayFOV=60.000000
}
