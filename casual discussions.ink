
TODO add those somewhere...

=== Next_expedition ===
<Leader>What will happen if we never convert the azote from the atmosphere?
{
-cp_inhabitants>=4:
    <Lazy>Well, I'm pretty sure a new expedition will come, and then another one...
    <Lazy>Every 80 years, until the mission is finally fulfilled.
    ~cp_inhabitants = max(cp_inhabitants,5)
    {
    -cp_mission>=5:
        <Lazy>That's a fact, I know about it.
    ~secrets=secrets+1
    }
-else:
    <Lazy>Well...1 I don't know.
    <Talk>You mean will we be sanctionned or something ?
    <Lazy>Our lifes will really have been purposeless I suppose. That's a sufficient sanction to me.
}



=== unplug_Box ===
TODO le traître a débranché l'un des scaphandres
// 4 knows that there is a traitor
~cp_mission = max(cp_mission,4)


=== Suzie_uncovered ===
// 5 knows who is the traitor
~cp_mission = max(cp_mission,5)


=== Minerals ===
TODO parler de pourquoi il y a eu l'holocauste à l'époque (on nous envoie trafiquer cette planète de la même manière qu'ils avaient envoyé il y a longtemps des équipes piller les minerais, ça a fait beaucoup de grabuge il paraît, etc...) if cp_azoteans=5 then cp_azoteans=5 et dans les deux cas secrets++
// 6 what was this conflict about ?
~cp_azoteans = max(cp_azoteans,6)


=== Earth_in_danger ===
TODO parler de pourquoi on nous envoie chercher une deuxième terre (il n'y a pas de besoin urgent, il y a des terres plus proches etc)
secrets++


=== Witnesses ===
TODO parler de pourquoi exactement les azoteens doivent être tués (pour qu'il ne reste aucun témoin de l'holocauste)
secrets++
