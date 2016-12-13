
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
(... later ...)
I'm now writing the very last lines of this mission report.
I intend to hand it to the rescue ship leader, and announce that we've all decided to stay here.
We don't want to go back to earth.
The Azoteans have agreed to become symbiots with us so we could stay here until our death.
->END


= Resources_fail
(... later ...)
I'm close to the end of this mission report.
I now have no idea what to do.
We're now all too afraid of the GOE to go back to earth.
But we lack resources to stay here.
The atmosphere plan failed.
And sadly the Azoteans have refused to get in symbiosis with us.
No matter what happens now, we'll all likely die here within the next few years.
->END


= Military_success
We wait for the next rescue team and shoot their ship, then continue to live for years in the room.
->END


= Military_fail
For some reason the government know about our plans, one day a missile arrives and destroys the room, we are now dommed.
->END


= AliveCount_Success
(... later ...)
This is the end of this mission report.
I'm writing it from the eath, on which we returned safely.
I'll now close this file and try to pretend none of this ever happened.
We've decided to forget about all this story to live a happy life here on earth.
->END


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
THE END
->END
// end of ending part
