VAR reportWriterId = 0
=== Mission_Field ===
We need to choose a place to plant a field.
+<Science>{isActive("Ruth"):I need to|We should} test the soils first and find the best place.
    ~reportWriterId = lastChoiceId
    -> Science_report
+<Leader>The valley to the north could be a good place.
    -> Plant_what
+<Combat>Let's plant trees to protect ourselves against the potential tornados
    -> Weird_trees
+<Survive>Food is important, let's plant the field right next to the room.
    -> Plant_what
+<Lazy>The rations at the room will suffice.
    <$Science>{isActive("Ruth"):Ok, but I really need to|Ok, but we really should} write a report about the soils on this planet. {isActive("Ruth"):Let me|Let's} study them anyway.
    -> Science_report


= Science_report
(...later...)
    ~reportWriterId = lastLineId
<CharId{reportWriterId}>After studying the planet for a few years, {isActive("Ruth"):I came to the conclusion|it seems} that we could never durably grow any kind of earth plant there. We will try anyway but {isActive("Ruth"):I have to say} I'm not very confident.
    ~knowledge = knowledge + 1
-> Back_to_the_room


= Plant_what
<Survive>So, what do we want to plant there ?
+<Survive>An orchard.
    -> Plant_few
+<Science>{isActive("Ruth"):I|We} have brought seeds of many different plants, let's try a bit of everything.
    -> Plant_few
+<Leader>Potatoes! Please!
    -> Plant_few
+<Talk>Either strawberries or tulips[]
    <$Survive>I'm starving, we'll go for strawberries, ok?
    -> Plant_few
+<Combat>I said trees.
    -> Weird_trees
+<Lazy>I'm sure we can find edible vegetation somewhere without any need for us to plant anything.
    -> Find_vegetation


= Find_vegetation
We find weird vegetation.
Who wants to eat ?
+<Survive>Me
+<Science>Me
+<Leader>Me
+<Talk>Me
+<Combat>Me
+<Lazy>Me
-
~kill("active",lastChoiceId)
{charName("active",lastChoiceId)} eats the fruits and dies
~cp_vegetation = max(cp_vegetation,2)
-> Back_to_the_room


= Plant_few
(...later...)
<Survive>We've spent years growing fruits on a very large field and could only rip a few straws of grass... Better than nothing I suppose. But I'm starting to think this planet might not be the right choice as an alternative to earth...
~resources = resources + 1
~cp_vegetation = max(cp_vegetation,1)
-> Back_to_the_room


= Weird_trees
After two years, the trees turn out to be extremely strange and poisonous.
<Combat>Hmm... that's not what I expected.
{isActive("Suzie"):
    <$Lazy>That's perfect! Those could be very useful!
    <$Leader>Useful for what? I think they're dangerous we should remove those trees and never plant them again.
    <$Lazy>No! Please let's keep them. 
    <$Leader>But... why ?
    <$Lazy>Just trust me. They could be part of the plan.
    <$Leader>Well ok, if you say so.
    -else: 
    <Lazy>Better than nothing I guess. 
    <$Leader>Better than nothing ? I think they're dangerous we should remove those trees and never plant them again.
    <$Combat>I don't know.. They could prove to be a good defence.
    <$Leader>Whatever. Okay let's keep them.
}
~military = military + 1
-> Back_to_the_room


= Back_to_the_room
<Leader>That was definitely not a success. I guess we'll not be able to rely on agriculture if we expect to make this planet profitable.
->Ellipse

