
VAR mapDesigner = -1

=== Mission_Map ===
<Leader>So...
{
    -cp_water==0:<Leader>We haven't found any water here yet.
    -cp_water==1:<Leader>The water here seems to be very sparse...
    -cp_water>=2:<Leader>We have found water in the chasm to the east, which is good...
}
{
-cp_vegetation==2:
    <Leader>The native plants are almost always poisonous..
    <Leader>..and it's impossible to grow anything else.
-cp_vegetation>=1:
    <Leader>It's impossible to grow anything useful.
-else:
    <Leader>We still don't know if it's possible to grow anything here.
}

~temp traitorId = getTraitor("active")
~temp mapLeader = lastLineId
{mapLeader==traitorId:
    ~mapLeader = (mapLeader+1)%awakeCount
}
<Science>Next step for us would be to convert the atmosphere but... 
~temp mapScientist = lastLineId
{mapScientist==traitorId:
    ~mapScientist = (mapScientist+1)%awakeCount
}
<CharId{mapScientist}>Is there really no better choice for a new homeworld ? 
<$Survive>There has to be a reason why they sent us here...

<CharId{mapLeader}>We have to better understand this planet, so I suggest we start by charting our surroundings.
<CharId{mapLeader}>Who wants to be in charge of mapping this region ?
+<Leader>I can handle it myself if nobody wants to.
    -> Map_design
+<Science>I can do it, a map is good item to have for the report.
    -> Map_design
+<Survive>I can do it, it could even be an occasion to find a better place for the room.
    -> Find_energy
+<Combat>I can do it, I love running around.
    -> Map_design
+{traitorId>-1}<CharId{traitorId}>We don't need a map.[]There's no need to question our mission or handle additional work, let's just proceed to the atmosphere thing and chill.
    -> Map_refuse

= Find_energy
~cp_map = max(cp_map,1)
~mapDesigner = lastChoiceId
{charName("active",mapDesigner)}
{charName("active",mapDesigner)} travels the region up and down and starts charting the territory.
<CharId{mapDesigner}>This territory turns out to be very hard for me to map.
<CharId{mapDesigner}>The only interesting spot I found is this steam swamp.
<CharId{mapDesigner}>I marked a spot on the map that I think could be used as a catalysis bath.
<CharId{mapDesigner}>If we run out of energy someday we might want to move the room there...
~resources = resources + 1
-> Back_to_the_room


= Map_design
~cp_map = max(cp_map,1)
~mapDesigner = lastChoiceId
{charName("active",mapDesigner)} travels the region up and down and starts charting the territory.
One day, on the fourth year of exploration, the first version of the map is ready.
<CharId{mapDesigner}>Here it is ! Behold the great Map, from the northen rift to the southern plains.
~knowledge = knowledge + 1
-> Creatures_encounter


= Map_refuse
<CharId{mapLeader}>Ok, no map then...
<CharId{mapLeader}>So how should we spend our time then ?
+<Combat>Maybe we could build fundations under that big chasm and use it as a bunker if needed.
    We build an emergency bunker under the chasm.
    It's a long task but we now have somewhere to go in case things go bad.
    ~military=military+1
+<Survive>I want to double check and update the GOE reports about this planet.
    We spend our time reading the GOE reports and comparing with our own results.
    The errors we find are small but could have bigger repercussions on the ecosystem diagnostic.
    ~secrets=secrets+1
-
-> Back_to_the_room


= Creatures_encounter
<CharId{mapDesigner+1}>Wonderful {charName("active",mapDesigner)} ! But what is this symbol on the map ?
<CharId{mapDesigner}> Oh right ! It's something really strange I found a few days ago... I'm not even sure of what I saw, we really need to go back there on a next mission to analyze it properly.
~cp_azoteans = max(cp_azoteans,1)
-> Back_to_the_room


= Back_to_the_room
#image:TheRoom01
<CharId{mapLeader}>After all this is really a crappy planet. There has to be a better one.
<CharId{mapScientist}>I've actually studied the {idOf("Ruth")==convertListId("all","active",mapScientist):spectral composition of the} planets around here and at least two of them, CLX-23 or UVA-54, seems to be really good candidates... Nothing prevents us to go there. What do you think about leaving this place and start again elsewhere ?
<$Lazy>Sorry but we have to stick to the orders.
<CharId{mapLeader}>Well, if our goal is ultimately to find a good place for human people to go, I guess prospecting the planets around us should also be considered part of it. {awakeCount>2:Why don't we vote together ?}
~mapDesigner = convertListId("active","all",(mapDesigner+awakeCount)%awakeCount)
->Ellipse
