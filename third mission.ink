
VAR mapDesigner = -1

=== Mission_Map ===
<Leader>So, the water here is very sparse, the native plants are almost always poinsonnous, and it's impossible to grow anything else. Next step for us would be to convert the atmosphere but... 
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
~mapDesigner = lastChoiceId
(...later...)
<CharId{mapDesigner}>While designing the map, I found something, come with me !
~knowledge = knowledge + 1
~cp_azoteans = max(cp_azoteans,1)
-> Creatures_encounter

= Map_refuse
For some reason somebody finds something and...
~cp_azoteans = max(cp_azoteans,1)
-> Creatures_encounter

= Creatures_encounter
<CharId{mapDesigner+1}>What is this symbol on the map ?
<CharId{mapDesigner}>Oh... you really need to see this on the next mission...
~cp_azoteans = max(cp_azoteans,1)
-> Back_to_the_room

= Back_to_the_room
<Leader>There has to be a better planet.
<$Science>I've actually studied the spectral composition of the planets around here and at least two of them, CLX-23 or UVA-54, seems to be really good candidates... Nothing prevents us to go there. What do you think about leaving this place and start again elsewhere ?
<$Lazy>Sorry but we have to stick to the orders.
<$Leader>Well, if our goal is ultimately to find a good place for human people to go, I guess prospecting the planets around us should also be considered part of it. Why don't we vote together ?
->Ellipse
