
=== Mission_Releves ===
<Science> Wow what a big scary hole! Can you hear the strange gargling sound coming from inside ?
+ <Science>Let's go there and take a few samples. -> fondDuGouffre
+ <Science>Let's record that noise and figure out what it is.[] It really sounds like underground water currents.
    ~knowledge ++
    -> Back_to_the_room
+ <Talk>I'll shout loudly, I'm pretty sure somebody or something will answer.[] "Hello !"...
    ++Nobody answers-> Back_to_the_room
+ <Combat>I'll drop a grenade.[] A big explosion reveals a large cave of rocks and running waterfalls. -> fondDuGouffre
+ <Survive>There must be water downthere, let me go and grab a few bottles.[] The whole group follows. -> fondDuGouffre
+ <Lazy>That's 100% scary, let's go back top the room now.-> Back_to_the_room


= fondDuGouffre
<Leader>We reach the bottom of the gulf. The noise was indeed water.
+ <Science>Yay samples ![] We gather various interesting looking minerals for further examination.
    ~knowledge = knowledge + 2
    -> Back_to_the_room
+ <Survive>Water ! Let me grab some, we'll need it for sure.
    ~resources ++
    -> Back_to_the_room
+ <Combat>That's not only water... I can hear something else, I can smell danger...[]Let me run through this corridor and throw another grenade !
    ++ kill("active",lastChoiceId)
    charName("active",lastChoiceId) dies
    -> Check_awake -> Back_to_the_room
+ <Lazy>Ok, I'm still scared, please let me go back to the top.[]We all climb back to the surface. 
    ~knowledge ++
    -> Back_to_the_room


= Back_to_the_room
<Leader>The night falls. It's time to head back to the room.
->Ellipse

