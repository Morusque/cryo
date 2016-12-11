
VAR wentAlone = 0


=== Mission_Talk_to_Azoteans ===
TODO check what we know at this point about the creatures
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
We approach a group of creatures, talk to them.
<Azotean>Hello.
TODO si on a na pas de bonnes relations avec les azoteens ici ils nous demandent de baisser les armes par prudence et on perd un point de military
<Science>I was pretty sure this planet was empty.
<Azotean>It used to be lifeless yes.
<Science>So how did you arrive there?
<Azotean>We came from a distant planet but had to seek refuge here since the war...
~cp_azoteans = max(cp_azoteans,5)
+<Talk>[We'll be nice with you]From now on we'll consult you if we plan to make any change on this planet
    -> Nice_with_Azoteans
+<Lazy>Ok, let's go back home
    -> Back_to_the_room
+<Combat>What war are you talking about ?
    -> War_history
+<Leader>How did you learn our language?
    -> Language


= Language
<Azotean>At some point it just felt necessary for us to learn the english language.
<Azotean>So we could communicate with our human friends.
<Leader>Your human friends ?
<Azotean>Yes, I haven't seen them for ages though.
~cp_inhabitants = max(cp_inhabitants,1)
+<Leader>Could you introduce us to your friends please?
    <Azotean>Hmm, sorry but no, I can't. They live very far away from here.
    -> Inhabitants_Location
+<Lazy>Ok a storm is coming, let's go back home now please! Now!
    -> Back_to_the_room

= War_history
<Azotean>You should know! It was a war against people like you.
~secrets=secrets+1
<Combat>Really? You mean a war between you and people from the earth? When?
<Azotean>More than a century ago.
<Combat>I've never heard of that war.
<Leader>Me neither.
<Azotean>I know, many things have been kept secret. The other humans we met had no clue either.
<Survive>The other humans? Who are you talking about?
<Azotean>I'm talking about the other crew that live here... I thought you knew.
<Leader>Who are those people? What do they look like?
<Azotean>When we first met them, years ago, they looked pretty much exactly like you.
<Azotean>I personnaly don't know much about them.
Apparently there are other humans there.
~cp_inhabitants = max(cp_inhabitants,1)
-> Back_to_the_room


= Inhabitants_Location
{
-cp_map==0:
<Leader>Where do those humans live ?
<Azotean>To that direction. You'll have to walk a long long way to reach their basement.
-cp_map>=1:
<Leader>Do you think you could point the location where those humans live on our map ?
<Azotean>Sure, let me see the map.
The azotean looks at the map... He looks very confused.
<Azotean>I'm sorry but the location is not on your map.
The azotean draws a mark on the sand, one meter away from the map, and points at it...
<Azotean>It's there! Good luck.
~knowledge=knowledge+1
}
~cp_inhabitants = max(cp_inhabitants,2)
~knowledge=knowledge+1
-> Back_to_the_room


= Nice_with_Azoteans
~relations=relations+1
<Azotean>I hope you will.
-> Back_to_the_room


= Approach_Azoteans_with_weapons
They are extremely scared, 
TODO so history repeats again...
~relations=relations-1
but accept tot talk with us
-> Talk_to_Azoteans


= Back_to_the_room
<Leader>We're starting to be short on oxygen.
<Leader>And it takes some time to produce more of it.
<Leader>It's time to head back to the room, but...
<Leader>One day we'll come back here and talk to those humans.
->Ellipse

