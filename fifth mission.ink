
VAR wentAlone = 0


=== Mission_Talk_to_Azoteans ===
<Leader>So, if those creature really speak english, we need to talk with them. We sure have many things to lean from them.
+<Leader>Let's go together.
    -> Talk_to_Azoteans
+<Talk>I can do the talk alone.
    TODO wentAlone
    -> Talk_to_Azoteans_Alone
+<Survive>Should we move the room next to them ?
    -> Talk_to_Azoteans
+<Combat>Ok... But let's bring some weapons.
    -> Approach_Azoteans_with_weapons
+<Lazy>Leave those guys alone.
    -> Back_to_the_room


= Talk_to_Azoteans_Alone
(...Comes back)
It's ok, you can all come now
-> Talk_to_Azoteans


= Talk_to_Azoteans
We learn many things.
Apparently there are other humans there.
They call them portmanteau!
+<Talk>Where do they leave?
+<Lazy>Ok, let's go back home
+<Combat>Rivals!
-
-> Back_to_the_room


= Approach_Azoteans_with_weapons
They are scared, 
but accept tot talk
-> Talk_to_Azoteans


= Back_to_the_room
<Leader>The night falls. It's time to head back to the room.
<Leader>Next time we talk to the humans.
->Ellipse
