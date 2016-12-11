INCLUDE first mission.ink
INCLUDE second mission.ink
INCLUDE third mission.ink
INCLUDE fourth mission.ink
INCLUDE fifth mission.ink
INCLUDE sixth mission.ink
INCLUDE seventh mission.ink
INCLUDE eighth mission.ink

EXTERNAL lifeCycle()
EXTERNAL kill(list, id)
EXTERNAL stateOf(list, id)

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
<Leader>To last as long as possible, I'll only bring a few members of the crew.
<Leader>All the others will have to stay cryopreserved for the next ten years.
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
*<Science>Look on the map, there is a gulf not far from there to the east, let's go and have a look.
    -> Mission_Releves
*<Survive>We really need to plant vegetables and gather food.
    -> Mission_Field
*<Leader>I want to understand why we were sent on this particular planet.
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


== function lifeCycle()
~return 0


== function charName(list, id)
// newlyDead, dead, active, frozen, all, alive
~return 0


== function kill(list, id)
// newlyDead, dead, active, frozen, all, alive
~return 


== function idOf(name)
{
- name=="Suzie":~return 0
- name=="Ruth":~return 1
- name=="Madeleine":~return 2
- name=="The valet":~return 3
- name=="Brandon":~return 4
- name=="Lucien":~return 5
}
~return -1


== function stateOf(list, id)
// dead, frozen, awake
~return -1
