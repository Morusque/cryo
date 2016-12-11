INCLUDE first mission.ink
INCLUDE second mission.ink
INCLUDE third mission.ink
INCLUDE fourth mission.ink
INCLUDE fifth mission.ink
INCLUDE sixth mission.ink
INCLUDE seventh mission.ink
INCLUDE eighth mission.ink
INCLUDE functions.ink
INCLUDE other quests.ink
INCLUDE casual discussions



VAR aliveCount = 6
VAR year = 1
VAR lastChoiceId = -1

VAR awakeCount = 3
VAR knowledge = 0
VAR relations = 0
VAR resources = 0
VAR military = 0
VAR secrets = 0


-> Introduction


=== Introduction ===
<Leader>Captain Madeleine speaking.
<Leader>After a long journey, here we are, on this unfriendly azotic planet.
<Leader>The ship that will take us home is scheduled in 80 years. 
<Leader>By then, if we succeed in our mission, this planet could become a second habitable earth with a brand new atmosphere.
<Leader>For now we'll have to carry masks and spend about half of our life frozen in the room.
<Leader>Our first mission will be to analyze the soil and look for exploitable fields.
<Leader>Then the second part of the mission will be to completely remove the azote from the air and fill it with oxygen. We brought the necessary equipment here with us for that task.
<Leader>To last as long as possible, we will take turns in the cryopods. Only a few of us will be on the field of operations at the same time.
<Leader>We will do cryopod shifts every ten years.
<Leader>So, who wants to be on the first one ?
-> Cryopreservation


=== Cryopreservation ===
(...Cryopreservation choice...)
+[<Cryo>Cryo]
-
-> Check_awake ->
{
- aliveCount == 1 : 
I'm never going outside alone !
-> Ellipse
- else :
+ ... Ok, time to go on a mission together now.
-> Choix_mission
}


=== Check_awake ===
{
- awakeCount == 0 : -> Nobody_awake
}
->->


=== Nobody_awake ===
{
- aliveCount > 0 : After 80 years, when the ship comes too fetch the last survivors, they only find a few cryogenic slots still there in the room.
- else : Everyone is dead
}
-> END


=== Choix_mission ===
<Leader>So what do we dow now ?
~temp firstChoice = "{~Look on the map there is|Over there it seems there is|Have a look at the map there is} {~a gulf|a creek|a cliff} {~not far from there|close from the base|a few miles away} {~to the east|in the north|in the west}, let's go and have a look."
~temp secondChoice = "{~We really need to|We should|It would be wise to} plant vegetables and gather food."
~temp thirdChoice = "{~We should investigate|I want to understand|I want to know more about} why we were sent on this particular planet."
*<Science>{firstChoice}
    -> Mission_Releves
*<Survive>{secondChoice}
    -> Mission_Field
*<Leader>{thirdChoice}
    -> Mission_Map
+[]
    ->Mission_advanced


=== Mission_advanced ===
*That spot on the map...
    -> Mission_Observe_Azoteans
*{Mission_Observe_Azoteans}Let's go back to these creatures
    -> Mission_Talk_to_Azoteans
*{Mission_Talk_to_Azoteans}The previous expedition...
    -> Mission_Talk_to_inhabitants
*{Mission_Talk_to_inhabitants}So, what do we do ?
    -> Mission_Decide
*{Mission_Decide}Soon, the ship will arrive
    -> Mission_Leave


=== Ellipse ===
+ Ten years later...
-
-> Check_dead(lifeCycle(),0) ->
-> Check_awake ->
+ <Leader> Ok, it's time to switch, so... Who will be awake for the next ten years ?
-
-> Cryopreservation


=== Check_dead(_nbNewlyDead, _deadIndex) ===
{
- _deadIndex < _nbNewlyDead : 
    ~_deadIndex = _deadIndex +1
    {charName("newlyDead",_deadIndex)} is dead
    -> Check_dead(_nbNewlyDead, _deadIndex) ->
}
->->

