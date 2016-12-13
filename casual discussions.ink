
TODO add those somewhere...

=== Next_expedition ===
*<Leader>Just wanted to ask ... What will happen if we never convert the nitrogen from the atmosphere?
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
    <Lazy>Well... I don't know.
    <Talk>You mean will we be sanctionned or something ?
    <Lazy>Our lives will really have been purposeless I suppose. That's a sufficient sanction to me.
    <Talk>Yep. We better put these 10 years to good use.
}
->Choix_mission.missionChoice


=== unplug_Box ===
TODO le traître a débranché l'un des scaphandres
// 4 knows that there is a traitor
~cp_mission = max(cp_mission,4)


=== Suzie_uncovered ===
// 5 knows who is the traitor
~cp_mission = max(cp_mission,5)


=== Minerals ===
{cp_azoteans>=5}*<Talk> Just wondering.. This azotean holocauste, what was it about anyway ?
    <Leader> I'm not sure but I heard a story -at the time I thought it was complotist rantings-..
    <Leader> They say the GOE had sent teams plunder whole planetary systems for rare minerals.
    <Leader> But they didn't expect that other forms of life were there.
    <Leader> Some of them had the gut to fight back.
    <Leader> So the GOE sent black ops orbital force to mess up the ecosystems of all their homeworlds.
    <Talk> Damn...
    <Leader> But we should get back to it I guess...
    ~cp_azoteans = max(cp_azoteans,6)
    ->Choix_mission.missionChoice


=== Earth_in_danger ===
TODO parler de pourquoi on nous envoie chercher une deuxième terre (il n'y a pas de besoin urgent, il y a des terres plus proches etc)
secrets++


=== Witnesses ===
TODO parler de pourquoi exactement les azoteens doivent être tués (pour qu'il ne reste aucun témoin de l'holocauste)
secrets++
