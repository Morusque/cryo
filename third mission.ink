
VAR mapDesigner = -1


=== Mission_Map ===
<Leader>So...
{
    -cp_water==0:<Leader>We haven't found any water here yet.
    -cp_water==1:<Leader>The water here seems to be very sparse...
    -cp_water>=2:<Leader>We have found water in the gulf to the east, which is good, but...
}
{cp_vegetation>=2:<Leader>The native plants are almost always poinsonnous.}
{cp_vegetation>=1:<Leader>It's impossible to grow anything else.}
<Leader>Next step for us would be to convert the atmosphere but... 
<$Science>Is there really no better choice? 
<$Survive>There has to be a reason why they sent us here...
<$Leader>We have to better understand our surrounding. Does one of you want to draw a map of the areas around ?
+<Leader>I can handle it myself if nobody wants to.
    -> Map_design
+<Science>I can do it, a map is good item to have for the report.
    -> Map_design
+<Survive>I can do it, it could even be an occasion to find a better place for the room.
    -> Map_design
+<Combat>I can do it, I love running around.
    -> Map_design
+<Lazy>We don't need a map.[]There's no need to question our mission or handle additional work, let's just proceed to the atmosphere thing and chill.
    -> Map_refuse


= Map_design
~cp_map = max(cp_map,1)
~mapDesigner = lastChoiceId
(...later...)
<CharId{mapDesigner}>While designing the map, I found something, come with me !
~knowledge = knowledge + 1
~cp_azoteans = max(cp_azoteans,1)
-> Creatures_encounter


= Map_refuse
<Leader>Ok, no map then...
<Leader>So how should we spend our time then ?
+<Combat>Maybe we could build fundations under that big gulf and use it as a bunker if needed.
    ~military=military+1
+<Survive>I want to double check and update the GOE reports about this planet.
    ~secrets=secrets+1
-> Back_to_the_room


= Creatures_encounter
<CharId{mapDesigner+1}>What is this symbol on the map ?
<CharId{mapDesigner}>Oh... you really need to see this on the next mission...
~cp_azoteans = max(cp_azoteans,1)
-> Back_to_the_room


= Back_to_the_room
<Leader>This is really a crappy planet. There has to be a better one.
<$Science>I've actually studied the spectral composition of the planets around here and at least two of them, CLX-23 or UVA-54, seems to be really good candidates... Nothing prevents us to go there. What do you think about leaving this place and start again elsewhere ?
<$Lazy>Sorry but we have to stick to the orders.
<$Leader>Well, if our goal is ultimately to find a good place for human people to go, I guess prospecting the planets around us should also be considered part of it. Why don't we vote together ?
->Ellipse
