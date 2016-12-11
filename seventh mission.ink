
VAR decision = -1
// secrets, relations, knowledge, resources, military, aliveCount

=== Mission_Decide ===
<Leader> I'm not sure what to think about this mission anymore.
+ <Leader>Let's sum up the situation.

<Leader>The support ship will arrive in ten years...
What should we do ?
+<Leader>Denounce the earth president.
    decision = 0// sercets
+<Talk>Try to find a good compromise.
    decision = 1// relations
+<Science>Convert the atmosphere.
    decision = 2// knowledge
+<Survive>Hide there and become symbiots.
    decision = 3// resources
+<Combat>Fight !
    decision = 4// military
+<Lazy>Nothing.
    decision = 5// aliveCount
-
-> Back_to_the_room

= Fight
<Combat>We fight !
<Leader>Ok, fine, we fight !
<Combat>Yes we fight !
<Leader>So whose side are we on ?
+We're with the earth president
    <Leader> Are you sure ?
    <Combat> No, I changed my mind... We'll fight with the azoteans
+We're with the azotean people

-
-> Back_to_the_room

= Back_to_the_room
<Leader>The night falls. It's time to head back to the room.
->Ellipse
