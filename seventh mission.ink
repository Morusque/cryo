
VAR decision = -1
// secrets, relations, knowledge, resources, military, aliveCount

=== Mission_Decide ===
The support ship will arrive in ten years...
What should we do ?
+<Leader>Denounce the earth president.
    decision = 0
+<Talk>Try to find a good compromise.
    decision = 1
+<Science>Convert the atmosphere.
    decision = 2
+<Survive>Hide there and become symbiots.
    decision = 3
+<Combat>Fight !
    decision = 4
+<Lazy>Nothing.
    decision = 5
-
-> Back_to_the_room


= Fight
<Combat>We fight !
<Leader>Ok, fine, we fight !
<Combat>Yes we fight !
<Leader>So whose side are we on ?
+We're with the earth president
+We're with the azotean people
-
-> Back_to_the_room

= Back_to_the_room
<Leader>The night falls. It's time to head back to the room.
->Ellipse
