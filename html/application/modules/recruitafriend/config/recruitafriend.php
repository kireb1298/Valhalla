<?php
/*
Realm id to check time played
Default : 0 (Check all realms)
Value can be realmId (Realm to check played time)
*/
$config['recruit_realm_id'] = 0;

/*
Column name to check for time in characters database
Required because FusionCMS doesn't have support for it yet
Default : "totaltime" for TrinityCore
Values can be
"totaltime" (TrinityCore)
"playedtime" (ArcEmu)
Unknown for the others
*/ 
$config['characters_totaltime_column'] = "totaltime"; 

/*
Minimum played time required to claim the reward
In seconds
Default : 36000 (10 hours)
*/
$config['recruit_min_time'] = 36000;

/*
Reward type
"dp" = Donate Points
"vp" = Vote Points
Default : "dp"
*/
$config['recruit_reward_type'] = "vp";

/*
Reward amount
Default : 5
*/
$config['recruit_reward_amount'] = 5;