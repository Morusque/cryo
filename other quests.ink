
// checkpoints :

// 1 the player has heard about water
// 2 the player has seen water once
VAR cp_water = 0

// 1 the player has started the map
VAR cp_map = 0

// 1 knows that it's hard to grow something on this planet
// 2 knows that plants are poisonous
VAR cp_vegetation = 0

// 1 knows that there is womething weith somewhere (on the map)
// 2 knows that there are other creatures
// 3 has heard a creature speak english
// 4 knows the name of the creatures
// 5 knows that the azoteans were a long time ago part of the affair that caused the holocaust
VAR cp_azoteans = 0

// 1 knows that there are other humans
// 2 knows the location of the other humans
// 3 has talked with the humans
// 4 knows that the other human inhabitants are the previous science team
// 5 knows that if we fail there will be a next expedition
VAR cp_inhabitants = 0

// 1 knows that changing the atmosphere will kill the azoteans
// 2 knows that this mission was a hidden plan from the government
// 3 knows that the real goal of the GOE is to delete every witness from the holocaust
// 4 knows that there is a traitor
// 5 knows who is the traitor
VAR cp_mission = 0


TODO put the following lines somewhere
// 3 has talked with the humans
~cp_inhabitants = max(cp_inhabitants,3)
// 4 knows that the other human inhabitants are the previous science team
~cp_inhabitants = max(cp_inhabitants,4)
// 5 knows that if we fail there will be a next expedition
~cp_inhabitants = max(cp_inhabitants,5)
// 1 knows that changing the atmosphere will kill the azoteans
~cp_mission = max(cp_mission,1)
// 2 knows that this mission was a hidden plan from the government
~cp_mission = max(cp_mission,2)
// 3 knows that the real goal of the GOE is to delete every witness from the holocaust
~cp_mission = max(cp_mission,3)
// 4 knows that there is a traitor
~cp_mission = max(cp_mission,4)
// 5 knows who is the traitor
~cp_mission = max(cp_mission,5)


=== Other_Quests ===

TODO un enfant ?
TODO quelqu'un est bien vieux maintenant
TODO vous ne m'écoutez jamais de toute façon
TODO parler du président de la terre
TODO une quête quand quelqu'un est tout seul (il ne se sent pas en sécurité, devient fou, etc ?)
TODO le traître a débranché l'un des scaphandres
TODO rajouter des changements des variables de réussite/echecs
TODO parler de pourquoi il y a eu l'holocauste à l'époque (on nous envoie trafiquer cette planète de la même manière qu'ils avaient envoyé il y a longtemps des équipes piller les minerais, ça a fait beaucoup de grabuge il paraît, etc...)
TODO parler de pourquoi on nous envoie chercher une deuxième terre (il n'y a pas de besoin urgent, il y a des terres plus proches etc)
TODO parler de pourquoi exactement les azoteens doivent être tués (pour qu'il ne reste aucun témoin de l'holocauste)
