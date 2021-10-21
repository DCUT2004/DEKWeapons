class DEKRailGunBoltChild extends ChildLightningBolt;

simulated function PostBeginPlay()
{
    Super.PostBeginPlay();
    // pass in +vect(0,0,2) to EffectIsRelevant() because this actor just spawned too (not valid to check if its been rendered)
	if( EffectIsRelevant(Location+vect(0,0,2),false) )
        Spawn(class'DEKRailGunBoltChildSparks',,,Location,Rotation);
}

defaultproperties
{
     Skins(0)=Texture'DEKRPGTexturesMaster209B.fX.TexLightningBeam'
}
