state("AlienShooter")
{
    int missionNumber: 0x00122C20, 0x178, 0x1510;
}

start
{
    if(current.missionNumber == 1 && old.missionNumber == 0){
        return true;
    }
}

split
{
    // Mission Splits
    if(current.missionNumber > 0 && old.missionNumber == 0){
        return true;
    }

    // Final Split
    if(old.missionNumber == 10 && current.missionNumber == 11){
        return true;
    }
}

reset
{
    if(current.missionNumber == 1 && old.missionNumber == 0){
        return true;
    }
}