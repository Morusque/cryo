
=== Mission_Talk_to_inhabitants ===
{
-cp_azoteans>=1:
    <$Leader>Ok, let's set out on an expedition to find out {cp_inhabitants>=1:the truth about these other humans | more about these strange creatures}. 
    {cp_inhabitants>=1:<$Lazy>If they even exist. These creatures may have played us.}
    {cp_inhabitants>=1:<$Science>I'm sure they didn't. We need to clarify the whole situation here anyway. {cp_azoteans>=3:They didn't learn english by magic.}}
-else:
    <$Leader>Ok, let's set out on an expedition to find out more about this planet. 
}
#loop:cryogénie 3
After a year of stockpiling food and months of planification, we finally start the longest trip since we arrived on this planet.
We walk relentlessly, establishing temporary camps every week.
{
    -resources>1:
        Luckily, we were efficient enough in the previous years to travel quite comfortably. 
        Rations are generous and we have all the tools necessary to handle unexpected events.
    -else:
        Sadly, we may have not been farsighted enough in the previous years to make this trip comfortable.
        Rations are scarce and we have no tools for handling unexpected events.
        Morale in the group is not optimal.
}
At the third month of expedition, we arrive in a lush area with densely packed flora.
The progression gets slower.
After a few days, we spot structures in the distance that look like small huts.
{cp_inhabitants >=1: We believe we are getting close to finding the other humans.}
As we get close, we see odd silhouettes walking towards us.
{cp_inhabitants>=1:
    It's the humans ! 
-else :
    It seem.. they are humans ! 
}
The top of their bodies is fully covered by a translucent and slimy lump that seems to be moving on its own. 
They greet us in english, but their voice is eerily muffled by their unusual headwear.
A bit shaken by the encounter, we exchange formalities, but then we hesitate on the questions to ask :

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
<NameSymbiot>You want advice, let me tell you our story. I'm sure you will know what to do once you know the whole truth.
->HumansStory->
<CharId{lastChoiceId}>Wow. I think I'm even more confused that before.
<CharId{lastChoiceId+1}>I agree for once.
We are baffled by the revelations. After spending a few hours with them, we head back to our temporary camp while trying to make sense of the recent events.
-> Back_to_the_room

= Everything
One of the humans steps forward and speaks : 
<NameSymbiot>You want to know everything ! Let's start with the beginning then...
->HumansStory->
<NameSymbiot>And that's where things get interesting.
<CharId{lastChoiceId}> You mean there is more ?
<CharId{lastChoiceId+1}> Let him finish, {charName("active",lastChoiceId)}.
->Symbiots->
<CharId{lastChoiceId}>Wow. That was something.
We are completely stunned by the amount of information.
After spending a few hours with them we head back to our temporary camp, our head full with new questions.
-> Back_to_the_room

= AzoticEnvironment
<NameSymbiot>That is a very good question. Let me explain.
->Symbiots->
<CharId{lastChoiceId+1}>Wow that was intense.
<CharId{lastChoiceId}> Don't listen to him. This was probably the most enlightening moment of my life. Thank you very much.
We are stunned by the human's speech. After spending the evening with them, we decide to head back to our temporary camp, our head full with new perspectives.
-> Back_to_the_room

= WhereDoYouComeFrom
<NameSymbiot>That is a good question. Let me tell you our story.
->HumansStory->
<CharId{lastChoiceId+1}> Wow...
<CharId{lastChoiceId}> That was one hell of a story. Thank you. We have a lot to think on now.
We are baffled by the revelations, and head back to the room while trying to make sense of the recent events.
-> Back_to_the_room

= KindOfWeapon
The humans burst into a frank laugh.
<NameSymbiot>That is a very legitimate question, as I can understand that our appearance must be quite destabilizing.
<NameSymbiot>Rest assured, the situation is far more pleasant that it might seem,
<NameSymbiot>but I will need to go a bit into details, and I apologize in advance for the technobabble.
->Symbiots->
<$Combat>Wow that was intense.
<$Science>You mean that was the most enlightening I ever heard.
<$Combat>I'm still having a hard time trusting guys that wear space blobs as hats.
<$Science>Please just keep quiet.
We are a bit reassured by the human's speech. However we still aren't totally comfortable with them and after a few hours we make our way back to the temporary camp.
-> Back_to_the_room

= Nothing
Sensing danger, we quickly take leave of the humans. We observe them from a safe distance for a few hours, then head back to our temporary camp.
-> Back_to_the_room

= HumansStory
<NameSymbiot>200 years ago, we were just like you, sent on an expedition by the Government of Earth to initiate the colonization of this planet. 
<NameSymbiot>However, as we analyzed the atmosphere we understood something was off.
<$Science> I knew it !
<$Leader> Let him finish, for earth's sake.
<NameSymbiot>I don't mind. We then met and befriended this azotic people who explained us everything.
<NameSymbiot>The terraformation plan is a masquerade. 
<NameSymbiot>Our Azotean friends have been hiding on this rock for the last centuries, trying to hide from the GOE. 
<NameSymbiot>Their people witnessed a long time ago the very worst of human deeds, a genocide of unprecedented scale. 
<NameSymbiot>Now the President is trying to silence them once and for all, by poisoning their atmosphere in secret.
<NameSymbiot>But he never consider that we would be able to communicate with the Azoteans and to understand the workings of all this.
<NameSymbiot>We played dead and they bought it. Now you're here and you're welcome to do the same.
~cp_mission = max(cp_mission,3)
~cp_inhabitants = max(cp_inhabitants,4)
->->

=Symbiots
<NameSymbiot>With our human lifestyle, surviving here would be impossible. But the Azoteans have a deep knowledge of life and metabolism, so they offered us a way to stay. 
<NameSymbiot>The being that you see on top of us is a very special kind of azotic lichen.
<NameSymbiot>It survives by associating with other species that can help him meet its metabolic needs.
<NameSymbiot>They can hook themselves on our lymphatic and respiratory systems, transforming azote into fresh air and boosting our immune system.
<Science>Amazing.
<NameSymbiot>In exchange, we sustain them with carbon dioxyde and complex proteins that they can't assimilate on their own.
<NameSymbiot>Symbioting is a long process but we feel it is the start of something that is bigger than all of us.
<NameSymbiot>It has the potential to offer a bright new future for mankind, where the survival of the specie is a peaceful reach for new forms of life.
->->

= Back_to_the_room
#image:TheRoom01
~cp_inhabitants = max(cp_inhabitants,3)
The next day, a terrible storm rages and we are unable to leave the camp.
When the storm finally calms down, we try to go back to the humans' camp, but we turn in circles without seeing any huts.
It's unclear whether we lost the location, or if they left. 
We decide that the expedition was a success anyway, and start our way back.
<$Leader>Let's go. We have a long way home.
<$Talk>Home ? Not even close.
->Ellipse
