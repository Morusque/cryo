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
INCLUDE casual discussions.ink



VAR aliveCount = 6
VAR year = 1
VAR lastChoiceId = -1
VAR lastLineId = -1
VAR tempId = -1 //for knot transitions
VAR missionNumber = 0

VAR awakeCount = 3
VAR knowledge = 0
VAR relations = 0
VAR resources = 0
VAR military = 0
VAR secrets = 0

-> Introduction


=== Introduction ===
#image:TheRoom01
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
- awakeCount == 1 : 
<Leader>{I shouldn't go out there alone..|No way I go through this cycle alone ...|I won't make it through alone...}{~it's too dangerous !|imagine if something happens to me !|it's not safe at all !|it's neither safe nor efficient !}
    ++ {aliveCount>1}[Unbox other teammates.]
        ->Cryopreservation
    ++ {aliveCount==1}[Spend the whole cycle in the room.]
        {~I spend this cycle|I spend these ten years|For a decade, I live} {alone|on my own}, {~observing the planet|making observations} from inside the room and going over all the details of {~this expedition|the mission|this adventure}.
        -> Ellipse
- else :
<Leader> ... {~Ok|Alright|Ok folks|Very well} let's {get started then|do this together|get through this as a team|fulfill our mission together}.
Mission log n°{missionNumber + 1}
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
->Mission_intro->
<$Leader>{~So|Alright|Ok} what {~{~should|do} we {~do|plan to do}|will be our plan|will be our objective} {now|{~now|this time}}?
~temp firstChoice = "{On the map there is a|There is this|We've been talking for a while about this} chasm {~not far from there|close from the base|a few miles away} to the east, {it's a good place for geologic surveys.|we can do the geologic surveys there.|we should go do the geologic surveys there.}"
~temp secondChoice = "{~We really need to|We should|It would be wise to} plant vegetables and gather food."
~temp thirdChoice = "{~We should investigate|I want to understand|I want to know more about} why we were sent on this particular planet."
*<Science>{firstChoice}
    -> Mission_Releves
*<Survive>{secondChoice}
    -> Mission_Field
*{missionNumber>1}<Leader>{thirdChoice}
    -> Mission_Map
+[]->Mission_advanced

===Mission_intro===
{
    -missionNumber==0:
        After spending the first months setting up the camp and taking our bearings, we finally get ready to engage in the first step of our mission.
        #loop:cryogénie 1
    -missionNumber==1:
        #loop:cryogénie 2
        This time the camp is already up and functional. It's only a few weeks of planification before we start our next objective.
    -missionNumber==2:
        #loop:cryogénie 4
}
~missionNumber++
->->

=== Mission_advanced ===
~missionNumber++
{cp_azoteans>0:
~missionNumber--
~tempId = lastLineId
    *<CharId{tempId}>That symbol on the map that {tempId==convertListId("all","active",mapDesigner):I showed you last time...|{charName("all",mapDesigner)} showed us...}
        -> Mission_Observe_Azoteans
-else :
    *{not Mission_Observe_Azoteans}<Leader>I guess we'll explore some more the planet ?
        ->Mission_Observe_Azoteans
}
*{Mission_Observe_Azoteans}<Leader>Let's go back to these creatures.
    -> Mission_Talk_to_Azoteans
*{Mission_Talk_to_Azoteans}<Leader>The previous expedition...
    -> Mission_Talk_to_inhabitants
*{Mission_Talk_to_inhabitants}<Leader>So, what do we do ?
    -> Mission_Decide
*{Mission_Decide}<Leader>Soon, the ship will arrive
    -> Mission_Leave


=== Ellipse ===
(...Time goes by...)
-
{missionNumber<=3:
    #stop:10.0
}
~temp killcount = lifeCycle()
-> Check_dead(killcount,0) ->
-> Check_awake ->
~killcount = killcount+count("killed")
{killcount > 0:
    #loop:cryogénie 8
}
{
-killcount>1:
<Leader> We lost people of great value. They will not be forgotten.
<Leader>But the mission is still on track. The task we are here to do is greater than us all.
<Leader>It is now time to switch, so... who will be awake for the next ten years ?
-killcount>0:
<Leader> We lost someone great. {charName("killed",0)} will be forever in our hearts. 
<Leader> But the mission is still on, we have to continue, in {charPossessive("killed",0)} memory.
<Leader> It's now time to switch, so... who will be awake for the next ten years ?
-else:
<Leader> Ok, it's time to switch, so... who will be awake for the next ten years ?
}

-
-> Cryopreservation


=== Check_dead(_nbNewlyDead, _deadIndex) ===
{
- _deadIndex < _nbNewlyDead : 
    {charName("newlyDead",_deadIndex)} dies of old age.
    ~_deadIndex = _deadIndex +1
    -> Check_dead(_nbNewlyDead, _deadIndex) ->
}

->->

