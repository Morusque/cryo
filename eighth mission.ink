
// secrets, relations, knowledge, resources, military, aliveCount

=== Mission_Leave ===
The ship comes for us to go back...
Check what happens...
{
    - decision == 0 :
    {
        - secrets >= 2 : -> Secrets_success
        - else : -> Secrets_fail
    }

    - decision == 1 :
    {
        - relations >= 2 : -> Relations_success
        - else : -> Relations_fail
    }
    
    - decision == 2 :
    {
        - knowledge >= 2 : -> Knowledge_success
        - else : -> Knowledge_fail
    }
    
    - decision == 3 :
    {
        - resources >= 2 : -> Resources_success
        - else : -> Resources_fail
    }
    
    - decision == 4 :
    {
        - military >= 2 : -> Military_success
        - else : -> Military_fail
    }
    
    - decision == 5 :
    {
        - aliveCount >= 2 : -> AliveCount_Success
        - else : -> AliveCount_Success
    }
}
-> END


= Secrets_success
SUCCESS
->END


= Secrets_fail
FAILURE
->END

= Relations_success
SUCCESS
->END


= Relations_fail
FAILURE
->END

= Knowledge_success
SUCCESS
->END


= Knowledge_fail
FAILURE
->END

= Resources_success
SUCCESS
->END


= Resources_fail
FAILURE
->END

= Military_success
SUCCESS
->END


= Military_fail
FAILURE
->END

= AliveCount_Success
SUCCESS
->END


= AliveCount_Fail
FAILURE
->END


