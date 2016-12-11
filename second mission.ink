
=== Mission_Field ===
We need to choose a place to plant a field.
+<Science>I need to test the soils first and find the best place.
    -> Science_report
+<Leader>The valley to the north could be a good place.
    -> Plant_what
+<Combat>Let's plant trees to protect ourselves against the potential tornados
    -> Weird_trees
+<Survive>Food is important, let's plant the field right next to the room.
    -> Plant_what
+<Lazy>The rations at the room will suffice.
    <Science>Ok, but I really need to write a report about the soils on this planet. Let me study them anyway.
    -> Science_report


= Science_report
(...later...)
<Science>After studying the planet for a few years, I came to the conclusion that we could never durably grow any kind of earth plant there. We will try anyway but I have to say I'm not very confident.
    ~knowledge = knowledge + 1
-> Back_to_the_room


= Plant_what
<Survive>So, what do we want to plant there ?
+<Survive>An orchard.
    -> Plant_few
+<Science>I have brought seeds of many different plants, let's try a bit of everything.
    -> Plant_few
+<Leader>Potatoes! Please!
    -> Plant_few
+<Talk>Either strawberries or tulips[]
    <Survive>I'm starving, we'll go for strawberries, ok?
    -> Plant_few
+<Combat>I said trees.
    -> Weird_trees
+<Lazy>I'm sure we can find vegetations somewhere without any need for us to plant anything.
    TODO la suite?
    -> Back_to_the_room


= Plant_few
(...later...)
<Survive>I've spent month growing fruits on a very large field and could only rip a few straws of grass... Better than nothing I suppose. But I'm starting to think this planet might not be the right choice as an alternative to earth...
~resources = resources + 1
-> Back_to_the_room


= Weird_trees
After two years, the trees turn out to be extremely strange and poisonous.
<$Combat>Hmm... that's not what I expected.
<$Lazy>That's perfect! Those could be very useful!
<$Leader>Useful for what? I think they're dangerous we should remove those trees and never plant them again.
<$Lazy>No! Please let's keep them. 
<$Leader>But... why ?
<$Lazy>Just trust me. They could be part of the plan.
<$Leader>Well ok, if you say so.
~military = military + 1
-> Back_to_the_room


= Back_to_the_room
<Leader>That was definitely not a success. I guess we'll not be able to rely on agriculture if we expect to make this planet profitable.
->Ellipse

