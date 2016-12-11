
VAR firstSpeaker = 0

=== Mission_Observe_Azoteans ===
{
-cp_map==0:
One night, we hear strange noises outside
It turns out to be weird angry creatures!
~relations=relations-1
-cp_map>=1:
We walk to the spot on the map...
It turns out to be weird creatures!
}
~cp_azoteans = max(cp_azoteans,2)
+<Talk>Let me approach them alone!
    ~firstSpeaker = lastChoiceId
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
We let {charName("active",firstSpeaker)} approach them alone.
-> Azotean_confidence

= Approach_Azotean_Together
We approach and scare the azotean, they flee
+<Combat>Let's chase them!
    -> Fight_Azotean
+<Talk>Let me approach them alone!
    -> Approach_Azotean_Alone

= Bring_Azotean_home
Capture azotean.
<Leader>So what do we do with it?
+<Survive>Cook it!
    -> Kill_captive_Azotean
+<Science>An autopsy!
    -> Kill_captive_Azotean
+<Combat>Train it to fight!
    -> Kill_captive_Azotean
+<Talk>Let me deal with it![]<charId{lastChoiceId}> spends a lot of time alone with the creature. 
    -> Azotean_confidence
+<Lazy>That was a mistake, let him free.
    -> Leave_Azotean_alone
-> Back_to_the_room

= Azotean_confidence
<{charName("active",firstSpeaker)}>The creature told me many secrets.
~cp_azoteans = max(cp_azoteans,3)
<{charName("active",firstSpeaker)}>Is is an azoteans creature
~cp_azoteans = max(cp_azoteans,4)
-> Back_to_the_room

= Leave_Azotean_alone
Leave azotean alone, you hear "thank you"
~cp_azoteans = max(cp_azoteans,3)
-> Back_to_the_room

= Kill_captive_Azotean
We kill the azotean and try to cook it.
~relations=relations-1
Who wants to eat the azotean meat first?
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
{
    -cp_azoteans>=3 :
    <Leader>So... Do you really think these creatures can speak english? How could that be.
    <Science>Yes, we're so far from earth here, that makes no sense...
}
<Survive>One thing is bugging me though... our orders of mission mentionned fauna. 
<Leader>True, i just said the planet was almost empty, that's probably a mistake or an undiscovered form of life... We'll have to investigate that later.
->Ellipse
