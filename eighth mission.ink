
// secrets, relations, knowledge, resources, military, aliveCount

=== Mission_Leave ===
The ship comes for us to go back...
Check what happens...
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
        - secrets >= 2 : -> Secrets_success
        - else : -> Secrets_fail
    }


= Decision_1
    {
        - relations >= 2 : -> Relations_success
        - else : -> Relations_fail
    }


= Decision_2
    {
        - knowledge >= 2 : -> Knowledge_success
        - else : -> Knowledge_fail
    }


= Decision_3
    {
        - resources >= 2 : -> Resources_success
        - else : -> Resources_fail
    }


= Decision_4
    {
        - military >= 2 : -> Military_success
        - else : -> Military_fail
    }


= Decision_5
    {
        - aliveCount >= 5 : -> AliveCount_Success
        - else : -> AliveCount_Success
    }


= Secrets_success
We reveal all the secrets about the president's plans, he's imprisonned.
->END


= Secrets_fail
We come back to earth to launch a claim against the president, but didn't bring enough proofs against him.
->END


= Relations_success
We try to reason both Azoteans and earth politicians that they could forgive each other and live in peace.
->END


= Relations_fail
We fail to find an agreement.
->END


= Knowledge_success
As we leave the planet the azote has completely disappeared, it's only a matter of days before all azoteans disappear.
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
We wait for the next resuce team and shoot their ship, then continue to live for years in the room.
->END


= Military_fail
For some reason the government know about our plans, one day a missile arrives and destroys the room, we are now dommed.
->END


= AliveCount_Success
Unfortunately most of us are dead when the rescue ship arrives.
->END


= AliveCount_Fail
We decide to forget about all this story, we return to earth and live a happy life.
->END


