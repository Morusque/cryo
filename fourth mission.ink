
VAR firstSpeaker = 0

=== Mission_Observe_Azoteans ===
#image:Mission00_exterieur
{
-cp_map==0:
Life goes on as we explore further and further from the room vicinity.
One night, we hear strange noises outside.
It turns out to be weird angry creatures!#image:Mission04-azoteans
~relations=relations-1
-cp_map>=1:
We decide to walk towards the symbol on {charName("all",mapDesigner)}'s map...
After a few days trip, we arrive in the designated area.
It's not long before we spot something moving near a knarled redish tree.
It turns out to be weird creatures !#image:Mission04-azoteans
}
#music:cryogénie 3
~cp_azoteans = max(cp_azoteans,2)
+<Talk>Let me approach them alone !
    -> Approach_Azotean_Alone
+<Leader>Let's go and walk to them together.
    -> Approach_Azotean_Together
+<Science>Let me capture one of them and bring him to the room.
    -> Bring_Azotean_home
+<Survive>They look so tasty!
    -> Bring_Azotean_home
+<Combat>Be ready to fight.
    -> Fight_Azotean
+<Lazy>Leave them alone.
    -> Leave_Azotean_alone

= Approach_Azotean_Alone
~firstSpeaker = lastChoiceId
We let {charName("active",firstSpeaker)} approach them alone.
It seems {charPronoun("active",firstSpeaker)} slowly builds confidence with one creature and manages to go near it.
We dare not break this moment and let the situation unfold.
After a long hour spent with the creature, {charPronoun("active",firstSpeaker)} comes back with exalted eyes.
-> Azotean_confidence

= Approach_Azotean_Together
We approach and scare the slimy creatures, they flee.
+<Combat>Let's chase them!
    -> Fight_Azotean
+<Talk>Let me approach them alone !
    -> Approach_Azotean_Alone

= Bring_Azotean_home
We capture one of the creatures.
<Leader>So what do we do with it?
+<Survive>Cook it!
    -> Kill_captive_Azotean
+<Science>An autopsy!
    -> Autopsy
+<Combat>Train it to fight!
    -> Kill_captive_Azotean
+<Talk>Let me deal with it ![]<charId{lastChoiceId}> spends a lot of time alone with the creature.
    -> Azotean_confidence
+<Lazy>That was a mistake, let him free.
    -> Leave_Azotean_alone
-> Back_to_the_room

= Autopsy
(...later...)
The autopsy reveals a few things about the anatomy of this creature.
Particularly about the lymphatic system.
~cp_mission = max(cp_mission,1)
<Science>This creatures is immune to many toxic substances present in this planet.
<Science>Also its metabolism can convert nitrogen to energy using a complex mechanism.
<Science>It is very interesting and I'm pretty sur we could use it to our advantage here.
<Survive>Amesome!
<Science>Well... there is one drawback here.
<Leader>What is it?
<Science>The nitrogen-filled air seems very convenient to those creatures.
<Science>But if we clean the atmosphere and replace it with oxygen, that might kill their whole tribe at once...
<Leader>Hmmm... I see.
~knowledge=knowledge+1
-> Back_to_the_room

= Azotean_confidence
<CharId{firstSpeaker}>The creature told me many things.
~cp_azoteans = max(cp_azoteans,3)
<$Lazy>What on earth are you talking about ?
<CharId{firstSpeaker}>The creature told me many things - in perfect english.
<CharId{firstSpeaker}>They call themselves the 'Azoteans'.
<$Science>You have to be kidding me...
~cp_azoteans = max(cp_azoteans,4)
-> Back_to_the_room

= Leave_Azotean_alone
We leave the creature alone, and distinctively hear "thank you".
~cp_azoteans = max(cp_azoteans,3)
-> Back_to_the_room

= Kill_captive_Azotean
We kill the creature and try to cook it.
~relations=relations-1
Who wants to eat the meat first?
+<Survive>Me
+<Science>Me
+<Leader>Me
+<Talk>Me
+<Combat>Me
+<Lazy>Me
-
~resources=resources+1
{charName("active",lastChoiceId)} eats the meat.
It seems to be an edible kind of animal.
It's good to know we'll be able to hunt them for an additional supply if we run out of food.
-> Back_to_the_room

= Fight_Azotean
Fight !
-> Back_to_the_room

= Back_to_the_room
We went back to the room, troubled by this unusual encounter.
#image:00_room
{
    -cp_azoteans>=3 :
    <Leader>So... Do you really think these creatures can speak english? How could that be.
    <Science>Yes, we're so far from earth here, that makes no sense...
}
<Survive>One thing is bugging me though... our orders of mission mentioned basic flora and fauna, I expected grass and bacterias, not ... this...
<$Leader>True, i just said the planet was almost empty, that's probably a mistake or an undiscovered form of life... We'll have to investigate that later.
->Ellipse
