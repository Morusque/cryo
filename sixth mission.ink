
=== Mission_Talk_to_inhabitants ===
<Leader>Let's go find those humans... Surely it will help us to understand what is going on here.
We finally find the other humans. The top of their bodies is fully covered by a translucent and slimy lump that seems to be moving on its own. 
They great us in english, but their voice is eerily muffled by their unusual headwear.
A bit shaken by the encounter, we hesitate on the question to ask :

+<Talk>Please, tell us everything you know.->Everything
+<Science>How can you survive in such an azotic environment ?->AzoticEnvironment
+<Survive>Where do you come from ?->WhereDoYouComeFrom
+<Leader>Do you have any advice for us ?->Advice
+<Combat>(Whispering) Are you prisonners ? ->KindOfWeapon
+<Lazy>They don't seem so happy to see us. We should leave them alone or something bad will happen.->Nothing
-
-> Back_to_the_room

= Advice
One of the humans steps forward and speaks : 
HUMAN : You want advice, let me tell you our story. I'm sure you will know what to do once you know the whole truth.
->HumansStory->
<CharId{lastChoiceId}>Wow. I think I'm even more confused that before.
<CharId{lastChoiceId+1}>I agree for once.
We are baffled by the revelations, and head back to the room while trying to make sense of the recent events.
-> Back_to_the_room

= Everything
One of the humans steps forward and speaks : 
HUMAN : You want to know everything ! Let's start with the beginning then...
->HumansStory->
HUMAN : And that's where things get interesting.
<CharId{lastChoiceId}> You mean there is more ?
<CharId{lastChoiceId+1}> Let him finish, {charName("active",lastChoiceId)}.
->Symbiots->
<CharId{lastChoiceId}>Wow. That was something.
We are completely stunned by the amount of information, and we head back to the room with our head full of new questions.
-> Back_to_the_room

= AzoticEnvironment
HUMAN : That is a very good question. Let me explain.
->Symbiots->
<CharId{lastChoiceId+1}>Wow that was intense.
<CharId{lastChoiceId}> Don't listen to him. This was probably the most enlightening moment of my life. Thank you very much.
We are stunned by the human's speech. After some more questions about symbiosis, we decide head back to the room, our head full with new perspectives.
-> Back_to_the_room

= WhereDoYouComeFrom
HUMAN : That is a good question. Let me tell you our story.
->HumansStory->
<CharId{lastChoiceId+1}> Wow...
<CharId{lastChoiceId}> That was one hell of a story. Thank you. We have a lot to think on now.
We are baffled by the revelations, and head back to the room while trying to make sense of the recent events.
-> Back_to_the_room

= KindOfWeapon
The humans burst into a frank laugh.
HUMAN : That is a very legitimate question, as I can understand that our appearance must be quite destabilizing.
HUMAN : Rest assured, the situation is far more pleasant that it might seem,
HUMAN : but I will need to go a bit into details, and I apologize in advance for the technobabble.
->Symbiots->
<$Combat>Wow that was intense.
<$Science>You mean that was the most enlightening I ever heard.
<$Combat>I'm still having a hard time trusting guys that wear space blobs as hats.
<$Science>Please just keep quiet.
We are a bit reassured by the human's speech. However we still aren't totally comfortable with them and quickly make our way back to the room.
-> Back_to_the_room

= Nothing
-> Back_to_the_room

= HumansStory
HUMAN : 200 years ago, we were just like you, sent on an expedition by the Government of Earth to initiate the colonization of this planet. 
HUMAN : However, as we analyzed the atmosphere we understood something was off.
<$Science> I knew it !
<$Leader> Let him finish, for earth's sake.
HUMAN : I don't mind. We then met and befriended this azotic people who explained us everything.
HUMAN : The terraformation plan is a masquerade. 
HUMAN : Our Azotean friends have been hiding on this rock for the last centuries, trying to hide from the GOE. 
HUMAN : Their people witnessed a long time ago the very worst of human deeds, a genocide of unprecedented scale. 
HUMAN : Now the President is trying to silence them once and for all, by poisoning their atmosphere in secret.
HUMAN :But he never consider that we would be able to communicate with the Azoteans and to understand the workings of all this.
HUMAN : We played dead and they bought it. Now you're here and you're welcome to do the same.
->->

=Symbiots
HUMAN : With our human lifestyle, surviving here would be impossible. But the Azoteans have a deep knowledge of life and metabolism, so they offered us a way to stay. 
HUMAN : The being that you see on top of us is a very special kind of azotic lichen.
HUMAN : It survives by associating with other species that can help him meet its metabolic needs.
HUMAN : They can hook themselves on our lymphatic and respiratory systems, transforming azote into fresh air and boosting our immune system.
<Science>Amazing.
HUMAN : In exchange, we sustain them with carbon dioxyde and complex proteins that they can't assimilate on their own.
HUMAN : Symbioting is a long process but we feel it is the start of something that is bigger than all of us.
HUMAN : It has the potential to offer a bright new future for mankind, where the survival of the specie is a peaceful reach for new forms of life.
->->
TODO ici expliquer a quoi sert vraiment le changement d atmosphere
TODO le principe de symbiose

= Back_to_the_room
<Leader>The night falls. It's time to head back to the room.
->Ellipse
