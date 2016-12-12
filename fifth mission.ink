
VAR wentAlone = 0


=== Mission_Talk_to_Azoteans ===
~temp creaturesName = "those creatures"
{cp_azoteans>=4:
    ~creaturesName = "the Azoteans"
}
{cp_azoteans>3:
<Leader>So, if {creaturesName} really speak english, we need to talk with them. We sure have many things to learn from them.
}
#loop:cryogénie 3

+<Leader>Let's go together.
    -> Talk_to_Azoteans
+<Talk>I can do the talk alone.
    ~wentAlone = lastChoiceId
    -> Talk_to_Azoteans_Alone
+<Survive>Should we move the room next to them ?
    -> Talk_to_Azoteans
+<Combat>Ok... But let's bring some weapons.
    -> Approach_Azoteans_with_weapons
+<Lazy>Leave those guys alone.[]For some reason we shortly went back to the room.
    -> Back_to_the_room


= Talk_to_Azoteans_Alone
#image:Mission05-rencontre
{charName("active",(wentAlone)%awakeCount)} goes and speaks with the creatures.
+(...later...)
-
{charName("active",(wentAlone)%awakeCount)} comes back.
Everything seems to be ok. They seem to trust us.
~relations=relations+1
It's ok, we can all come now.
-> Talk_to_Azoteans


= Talk_to_Azoteans
#image:Mission05-rencontre
We approach a group of creatures, talk to them.
<Azotean>Hello.
TODO si on a na pas de bonnes relations avec les azoteens ici ils nous demandent de baisser les armes par prudence et on perd un point de military
<Science>I was pretty sure this planet was empty.
<NameAzotean>It used to be lifeless yes.
<Science>So how did you arrive there?
<NameAzotean>We came from a distant planet but had to seek refuge here since the war...
~cp_azoteans = max(cp_azoteans,5)
+<Talk>[We'll be nice with you]From now on we'll consult you if we plan to make any change on this planet
    -> Nice_with_Azoteans
+<Lazy>Ok, let's go back home
    -> Talk_on_the_way_back
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
<NameAzotean>You should know! It was a war against people like you.
~secrets=secrets+1
<Combat>Really? You mean a war between you and people from the earth? When?
<NameAzotean>More than a century ago.
<Combat>I've never heard of that war.
<Leader>Me neither.
<NameAzotean>I know, many things have been kept secret. The other humans we met had no clue either.
<Survive>The other humans? Who are you talking about?
<NameAzotean>I'm talking about the other crew that live here... I thought you knew.
<Leader>Who are those people? What do they look like?
<NameAzotean>When we first met them, years ago, they looked pretty much exactly like you.
<NameAzotean>I personnaly don't know much about them.
Apparently there are other humans there.
~cp_inhabitants = max(cp_inhabitants,1)
-> Lack_of_oxygen


= Inhabitants_Location
{
-cp_map==0:
<Leader>Where do those humans live ?
<NameAzotean>To that direction. You'll have to walk a long long way to reach their basement.
-cp_map>=1:
<Leader>Do you think you could point the location where those humans live on our map ?
<NameAzotean>Sure, let me see the map.
The azotean looks at the map... He looks very confused.
<NameAzotean>I'm sorry but the location is not on your map.
The azotean draws a mark on the sand, one meter away from the map, and points at it...
<NameAzotean>It's there! Good luck.
~knowledge=knowledge+1
}
~cp_inhabitants = max(cp_inhabitants,2)
~knowledge=knowledge+1
-> Lack_of_oxygen


= Nice_with_Azoteans
~relations=relations+1
<NameAzotean>I hope you will.
-> Lack_of_oxygen


= Approach_Azoteans_with_weapons
#image:Mission05-rencontre
They are extremely scared, 
TODO so history repeats again...
~relations=relations-1
but accept tot talk with us
-> Talk_to_Azoteans


= Talk_on_the_way_back
We left early and had a chance to talk on the way back home...
Many questions ran through our heads.
TODO check if the following lines work
{
-cp_mission>=1||stateOf("all", idOf("Suzie"))>=1:
    As we exposed our theories it became clear to everybody that the government had something in mind...
    This mission was not only to prepare the earth for potential upcoming humans, there was something else.
    ~cp_mission = max(cp_mission,2)
-else:
    Everybody has a different hypothesis about what we just saw, but nothing seems to make completely sense.
}
-> Back_to_the_room


= Lack_of_oxygen
<Leader>We're starting to be short on oxygen.
<Leader>And it takes some time to produce more of it.
<Leader>It's time to head back to the room, but...
<Leader>One day we'll come back here and talk to those humans.
~resources = resources-1
-> Back_to_the_room


= Back_to_the_room
#image:TheRoom01
(...Time passes...)
Producing oxygen in the rooms takes indeed a lot of time...
And as time passes slowly, we're starting to be very impatient to head back outside.
->Ellipse
