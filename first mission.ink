VAR killedByGrenade = ""
=== Mission_Releves ===
~temp gotSamples = false
We pack the geologic tools and some rations, and head east, looking for the chasm.
It's only a few hours before we reach the place. 
We couldn't have missed it. The thing is huge.
<$Science> Wow what a big scary hole! Can you hear the strange gargling sound coming from inside ?
<$Combat> It almost seems something lives in there...
- (chasmChoice)
+ <Science>Let's go there and take a few samples. -> fondDuGouffre
+ <Science>Let's record that noise and figure out what it is.[] It really sounds like underground water currents.
    ~knowledge ++
    ~cp_water=max(cp_water,1)
    -> Back_to_the_room
* <Talk>I'll shout loudly, if there's someone they will answer.[]
    "Hello !"...
    Nobody answers. {charName("active",lastChoiceId)} seems disappointed.
    <Leader> Ok what now ?
    -> chasmChoice
    We spend an hour making observations in the surroundings of the chasm. 
+ <Combat>{isActive("Brandon"):I'll drop a grenade. Just in case.|I wouldn't risk a bad encounter. Let's throw some explosives in there}
    --(firstGrenade)
    A big explosion reveals a large cave of rocks and running waterfalls.
    -> fondDuGouffre
+ <Survive>There must be water down there, let me go and grab a few bottles.[] 
    The whole group follows.
    -> fondDuGouffre
+ <Lazy>That's 100% scary, let's go back to the room now.
    ->Scared


= fondDuGouffre
<Leader>We reach the bottom of the chasm. The noise was indeed water.
~cp_water=max(cp_water,2)
+ <Science>{isActive("Ruth"):Yay samples !|Ok this seem like good geological data.}[] 
    We gather various interesting looking minerals for further examination.
    ~gotSamples = true
    ~knowledge = knowledge + 2
    -> Back_to_the_room
+ <Survive>Water ! Let me grab some, we'll need it for sure.
    ~resources ++
    -> Back_to_the_room
+ <Combat>That's not only water... I can hear something else, I can smell danger...[]{isActive("Brandon"):Let me run through this corridor and throw {firstGrenade:another|a} grenade !}
    {not isActive("Brandon"):{charName("active",lastChoiceId)} throws a grenade in an obscure tunnel but the|The} grenade bounces randomly on the cave's walls.
    Screams, then an explosion.
    ~killedByGrenade = charName("active",(lastChoiceId+1) %awakeCount)
    When we regain our spirits {killedByGrenade} is dead.
    ~kill("active",(lastChoiceId+1)%awakeCount)
    <CharId{lastChoiceId}>Oh my god I.....{killedByGrenade}.... I'm so sorry......
    -> Check_awake -> Back_to_the_room
+ <Lazy>Ok, I'm actually very scared, please let me go back to the top.[]
    We all climb back to the surface.
    ~knowledge ++
    -> Scared

=Scared
<Leader> Ok fine let's wrap it up. We're going back to the room.
We have done some more observations of the surroundings but a bad presentiment is hurrying our way back.
->Outro

= Back_to_the_room
{not (killedByGrenade==""):
    We are very shaken by this dreadful accident. 
    This is not a good omen for the mission. However this is bigger than us, we need to stay focused and carry on.
}
<$Leader>The night falls.{not (killedByGrenade==""):...}It's time to head back to the room.{not (killedByGrenade==""):...}
{not (killedByGrenade==""):
    <CharId{lastChoiceId}>...{killedByGrenade}....
}
->Outro

=Outro
{gotSamples:The geological surveys make great data.}
After this first expedition, we continue to do field observations on a weekly basis.
We use the rest of the time for data analysis.
After ten years we manage to have {gotSamples:good results|decent results}.
->Ellipse

