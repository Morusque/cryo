
VAR wentAlone = 0


=== Mission_Talk_to_Azoteans ===
<Leader>So, if those creature really speak english, we need to talk with them. We sure have many things to lean from them.
+<Leader>Let's go together.
    -> Talk_to_Azoteans
+<Talk>I can do the talk alone.
    wentAlone = lastChoiceId;
    -> Talk_to_Azoteans_Alone
+<Survive>Should we move the room next to them ?
    -> Talk_to_Azoteans
+<Combat>Ok... But let's bring some weapons.
    -> Approach_Azoteans_with_weapons
+<Lazy>Leave those guys alone.
    -> Back_to_the_room

= Talk_to_Azoteans_Alone
{charName("active",(wentAlone)%awakeCount)} goes and speaks with the creatures.
+(...later...)
-
{charName("active",(wentAlone)%awakeCount)} comes back.
Everything seems to be ok. They seem to trust us.
~relations=relations+1
It's ok, we can all come now.
-> Talk_to_Azoteans


= Talk_to_Azoteans
We approach a group of creatures, talk to them, and learn many things.
<Azotean>We cam from a distant planet but had to seek refuge here since the war...
+<Talk>[We'll be nice with you]From now on we'll consult you if we plan to make any change on this planet
    -> Nice_with_Azoteans
+<Lazy>Ok, let's go back home
    -> Back_to_the_room
+<Combat>Did you take part of that war ?
    -> War_history
+<Leader>Where do the humans live?
    -> Inhabitants_Location
-
-> Back_to_the_room


= War_history
Not directly but we were chased by people from the earth because of...
Apparently there are other humans there.
The creatures call them portmanteau for some reason!
-> Back_to_the_room


= Inhabitants_Location
<Azotean>The other humans live right there.
(the creature shoes the location on your map)
~knowledge=knowledge+1
-> Back_to_the_room


= Nice_with_Azoteans
~relations=relations+1
<Azotean>I hope you will.
-> Back_to_the_room


= Approach_Azoteans_with_weapons
They are very scared, 
~relations=relations-1
but accept tot talk with us
-> Talk_to_Azoteans


= Back_to_the_room
<Leader>We're starting to be short on oxygen.
<Leader>And it takes some time to produce more of it.
<Leader>It's time to head back to the room, but...
<Leader>One day we'll come back here and talk to those humans.
->Ellipse

