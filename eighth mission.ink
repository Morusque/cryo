
// secrets, relations, knowledge, resources, military, aliveCount

=== Mission_Leave ===
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
        - else : -> AliveCount_Success
    }


= Secrets_success
(... later ...)
Here we are, back on earth.
I'm writing the very last lines of our mission report and lifetime story.
We've explained in detail why we refused to obey our orders.
All the secrets about our mission will be revealed.
I'm confident this report contains enough to launch a claim against the president.
The politics of the GOE will likely change forever, thanks to us.
->END


= Secrets_fail
(... later ...)
Here we are, back on earth.
I'm writing the very last lines of our mission report and lifetime story.
Sadly, I know most of it will never leave our lab, and we'll have to remain silent.
The justice on earth has become even weirder and we failed to gather enough evidence against the GOE.
I guess all these secrets will stay in our memories and, someday, disappear with us.
->END


= Relations_success
We try to reason both Azoteans and earth politicians that they could forgive each other and live in peace.
->END


= Relations_fail
We fail to find an agreement.
->END


= Knowledge_success
As we leave the planet the nitrogen has completely disappeared, it's only a matter of days before all azoteans disappear.
->END


= Knowledge_fail
We fail to convert the atmosphere of the planet, another team will try.
->END


= Resources_success
We become symbiots with the Azoteans.
->END


= Resources_fail
The Azoteans don't trust us and refuse to get in symbiosis with you.
->END


= Military_success
We wait for the next rescue team and shoot their ship, then continue to live for years in the room.
->END


= Military_fail
For some reason the government know about our plans, one day a missile arrives and destroys the room, we are now dommed.
->END


= AliveCount_Success
Unfortunately most of us are dead when the rescue ship arrives.
->END


= AliveCount_Fail
We decide to forget about all this story, we return to earth and live a happy life.
->The_end

=== The_end ===
THE END
->END
// end of ending part
