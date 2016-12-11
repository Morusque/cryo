
VAR decision = -1
// secrets, relations, knowledge, resources, military, aliveCount

=== Mission_Decide ===
<Leader> I'm not sure what to think about this mission anymore.
<Leader>Let's sum up the situation.
<Survive>We're supposed to make this planet friendly within ten years.
{
    -cp_vegetation >= 1 :
    <Survive>But we couldn't manage to grow any kind of vegetables.
    -cp_vegetation >= 2 :
    <Survive>And the plants that naturally grow here are poisonous for us humans.
}
<Combat>The order of mission said there was no form of life here.
{
    -cp_azoteans >= 1 :
    <Combat>But in addition to fungus and plants, we've met a few creatures there.
    -cp_azoteans >= 2 :
    <Combat>We can easily communicate with each other.
    -cp_azoteans >= 4 :
    <Combat>And since they were part of the mineral conflict years ago, it's safe to say the GOE knows about them.
}
<Talk>The mission orders described itself as the first human expedition on this planet.
{
    -cp_inhabitants >= 1 :
    <Talk>But we're now sure that this is not true.
    -cp_inhabitants >= 4 :
    <Talk>But we've met the survivors from a previous expedition with the same goal as ours, 80 years ago.
    -cp_inhabitants >= 5 :
    <Talk>So our mission is not the first... And if we fail to clean the atmosphere, it will obviously not be the last.
}
{
    -cp_mission >= 1 :
    <Science>We know that cleaning the atmosphere will be very likely to kill all the azotean creatures.
    -cp_mission >= 2 :
    <Science>I'm pretty sure the GOE doesn't care at all about this "second earth" project, it just wants to kill all the Azoteans.
    -cp_mission == 3 :
    <Science>And I have to say I'm pretty sure one of us knew about all of this.
}
<Leader>The support ship will arrive in ten years...
<Leader>What should we do ?
+<Leader>Denounce the GOE.
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
