
=== Mission_Observe_Azoteans ===
We walk to the spot on the map...
It turns out to be weird creatures!
~cp_azoteans = max(cp_azoteans,2)
+<Talk>Let me approach them alone!
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
We let this person approach them alone.
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
TODO whoever spoke
<whoeverSpoke>The creature told me many secrets.
~cp_azoteans = max(cp_azoteans,3)
<whoeverSpoke>Is is an azoteans creature
~cp_azoteans = max(cp_azoteans,4)
-> Back_to_the_room

= Leave_Azotean_alone
Leave azotean alone, you hear "thank you"
~cp_azoteans = max(cp_azoteans,3)
-> Back_to_the_room

= Kill_captive_Azotean
    As we kill it, we hear it whisper "Please, no..."
    ~cp_azoteans = max(cp_azoteans,3)
-> Back_to_the_room

= Fight_Azotean
Fight !
-> Back_to_the_room

= Back_to_the_room
TODO make it so that you may not have heard english yet
<Leader>So... Do you really think these creatures speak english? How could that be.
->Ellipse
