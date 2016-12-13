VAR reportWriterId = -1
VAR locationChooserId = -1
VAR planterId = -1
VAR plantkillerId = -1
=== Mission_Field ===
#image:Mission00_exterieur
~planterId = lastChoiceId
As we start making plans to cultivate this new land, we decide where to start :
+<Science>{isActive("Ruth"):I need to|We should} test the soils first and find the best place.
    ~reportWriterId = lastChoiceId
    <$Science>Good idea.
    -> Science_report
+<Leader>The valley to the north could be a good place to grow crops.
    -> Plant_what
+<Combat>Let's plant trees to protect ourselves against the potential tornados
    -> Weird_trees
+<Survive>Food is important, let's plant the field right next to the room.
    -> Plant_what
+<Lazy>Or, we could just be careful, and the rations of the room would be enough.
    <$Science>{isActive("Ruth"):Ok, but I really need to|Ok, but we really should} write a report about the soils on this planet.
    <same>{isActive("Ruth"):Let me|Let's} study them anyway.
    -> Science_report

= Science_report
#image:Mission02-champ
{reportWriterId==-1: 
    ~reportWriterId = lastLineId
}
{charName("active",reportWriterId)} spends half of the cycle sampling soil data in various sites with the help of {charName("active",(reportWriterId + 1)%awakeCount)}.
However the results are disappointing.
<CharId{reportWriterId}>After studying the planet for a few years, {isActive("Ruth"):I came to the conclusion|it seems} that we could never durably grow any kind of earth plant there. We will try anyway but {isActive("Ruth"):I have to say} I'm not very confident.
    ~knowledge = knowledge + 1
-> Back_to_the_room


= Plant_what
#image:Mission02-champ
~locationChooserId = lastChoiceId
<Survive>So, what do we want to plant there ?
+<Survive>I would recommend an orchard.
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
#image:Mission02-champ
~plantkillerId = lastChoiceId
We find weird vegetation.
Who wants to eat ?
+<Survive>Me
+<Science>Me
+<Leader>Me
+<Talk>Me
+<Combat>Me
+<Lazy>Me
-
{charName("active",lastChoiceId)} eats the fruits and dies.
~temp deadGuy = convertListId("active","all",lastChoiceId)
~kill("active",lastChoiceId)
~temp killerActiveId = convertListId("all","active",plantkillerId)
{killerActiveId>=0:
    <CharId{killerActiveId}>...My god... that wasn't the best idea I ever had. I'm so sorry...
-else:
    <Survive>...Damn... that wasn't the best idea {charPronoun("all",deadGuy)} ever had.
}
~cp_vegetation = max(cp_vegetation,2)
-> Back_to_the_room


= Plant_few
~temp helperId = -1
{
-not (lastChoiceId == planterId):
    ~helperId = lastChoiceId
-not (locationChooserId == planterId):
    ~helperId = locationChooserId 
}
{charName("active",planterId)} {helperId==-1:spends all {charPossessive("active",planterId)}|and {charName("active",helperId)} spend all their} time and energy on sowing, planting and cultivating the fields
However the results are meager.
<Survive>We've spent years growing fruits on a very large field and could only reap a few straws of grass... Better than nothing I suppose. But I'm starting to think this planet might not be the right choice as an alternative to earth...
~resources = resources + 1
~cp_vegetation = max(cp_vegetation,1)
-> Back_to_the_room


= Weird_trees
#image:Mission02-champ
After two years, the trees turn out to be extremely strange and poisonous.
<Combat>Hmm... that's not what I expected.
~temp traitorId = getTraitor("active")
{traitorId>=0:
    <CharId{traitorId}>That's perfect! Those could be very useful!
    <$Leader>Useful for what? I think they're dangerous we should remove those trees and never plant them again.
    <CharId{traitorId}>No! Please let's keep them. 
    <$Leader>But... why ?
    <CharId{traitorId}>Just trust me. They could be part of the plan.
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
#image:00_room
->Ellipse

