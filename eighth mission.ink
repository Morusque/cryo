
// secrets, relations, knowledge, resources, military, aliveCount

=== Mission_Leave ===
#image:Mission08_exterieur
#loop:cryogénie 5
{
    - decision == 0 : -> Decision_0
    - decision == 1 : -> Decision_1
    - decision == 2 : -> Decision_2
    - decision == 3 : -> Decision_3
    - decision == 4 : -> Decision_4
    - decision == 5 : -> Decision_5
}
-> END


= Decision_0
    {
        - secrets >= 1 : -> Secrets_success
        - else : -> Secrets_fail
    }


= Decision_1
    {
        - relations >= 1 : -> Relations_success
        - else : -> Relations_fail
    }


= Decision_2
    {
        - knowledge >= 5 : -> Knowledge_success
        - else : -> Knowledge_fail
    }


= Decision_3
    {
        - resources >= 3 : -> Resources_success
        - else : -> Resources_fail
    }


= Decision_4
    {
        - military >= 1 : -> Military_success
        - else : -> Military_fail
    }


= Decision_5
    {
        - aliveCount >= 5 : -> AliveCount_Success
        - else : -> AliveCount_fail
    }


= Secrets_success
(... later ...)
Here we are, back on earth.
I'm writing the very last lines of our mission report and lifetime story.
We've explained in detail why we refused to obey our orders.
All the secrets about our mission will be revealed.
I'm confident this report contains enough to launch a claim against the president.
The politics of the GOE will likely change forever, thanks to us.
->The_end


= Secrets_fail
(... later ...)
Here we are, back on earth.
I'm writing the very last lines of our mission report and lifetime story.
Sadly, I know most of it will never leave our lab, and we'll have to remain silent.
The justice on earth has become even weirder and we failed to gather enough evidence against the GOE.
I guess all these secrets will stay in our memories and, someday, disappear with us.
->The_end


= Relations_success
(... later ...)
We will try to reason both Azoteans and earth politicians that they could forgive each other and live in peace.
End of report.
->The_end


= Relations_fail
(... later ...)
We failed to find an agreement.
End of report.
->The_end


= Knowledge_success
(... later ...)
As a conclusion of the report, I can say we successfully converted the planet to a new one where humans could live.
I'm actually writing those lines from outside the room, without my helmet.
The nitrogen has completely disappeared, it's only a matter of days before all azoteans disappear.
This mission leaves me a bitter taste.
We've dedicated our whole life and sacrificed a whole specie just for our own confort...
Or did we ?
Was this really useful or just a pretext? 
What's the GOE's plan from now? Will the people from the earth actually travel to this place and live here?
I guess I'll never grow old enough to know, but if I come to die soon my last wish for this place would be to become new peaceful home for all humans.
->The_end


= Knowledge_fail
(... later ...)
As a conclusion of the report, we will say this mission leaves us a strange impression.
We failed to convert the atmosphere of the planet.
We came to the conclusion that it's probably not possible.
We know that there was a previous team and that they probably came to the same conclusion.
Still we know other teams will come and waste their lifes on this endless project.
The GOE will continue to waste his money on it.
We came here with a hope for the people of the earth.
But I guess the GOE doesn't care either about human life after all.
->The_end


= Resources_success
(... later ...)
I'm now writing the very last lines of this mission report.
I intend to hand it to the rescue ship leader, and announce that we've all decided to stay here.
We don't want to go back to earth.
The Azoteans have agreed to become symbiots with us so we could stay here until our death.
->The_end


= Resources_fail
(... later ...)
I'm close to the end of this mission report.
I now have no idea what to do.
We're now all too afraid of the GOE to go back to earth.
But we lack resources to stay here.
The atmosphere plan failed.
And sadly the Azoteans have refused to get in symbiosis with us.
No matter what happens now, we'll all likely die here within the next few years.
->The_end


= Military_success
(... later ...)
This is the end of the report.
I only write it to get my head rid of this mission.
I'll never hand out the report. Just keep it here as a proof of the GOE's actions.
We now wait for the next rescue team.
When they arrive, we'll simply shoot their ship, then continue to live for years in the room.
->The_end


= Military_fail
(... later ...)
This is the last lines of this report and possibly the last hours of our lifes.
Apparently for some reason the government knows about our plans.
We've received a long-distance message from the GOE.
They know we know and they don't want anybody else to know.
A chemical missile is currently directed from the earth to here.
It's scheduled to crash right here whithin the next ten years.
I know it will not directly destroy us, only poison the atmosphere once for good.
And once again the GOE will not be accused. They'll find a way to hide their reasons, I'm sure...
I don't know about the Azoteans but we humans are sure doomed.
->The_end


= AliveCount_Success
(... later ...)
This is the end of this mission report.
I'm writing it from the eath, on which we returned safely.
I'll now close this file and try to pretend none of this ever happened.
We've decided to forget about all this story to live a happy life here on earth.
->The_end


= AliveCount_fail
(... later ...)
This is the end of this mission report.
Most of us are dead now. And the others aren't in a very good shape.
The rescue ship will probably arrive is time to find this file.
But even if I'm still alive by then, I don't think I could make it all the way back.
Although I don't regret this mission...
I wish I could see the earth just one more time.
->The_end


=== The_end ===
#loop:cryogénie 1
#image:
THE END
...
Are you still there ?
<teamRuth>Well by the way...
<teamRuth>The team is 4 people
<teamValet>The art is by William David
<teamLucien>The music is by Anne Laplantine
<teamBrandon>And the design and story are by Morusque and Clément Duquesne
<nameAzotean>And we used the open source language Ink by Inkle as a narrative scripting tool
<nameSymbiot>That's it folks. You can go now. Or replay.
.
->END
// end of ending part
