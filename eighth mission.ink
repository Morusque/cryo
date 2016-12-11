
// secrets, relations, knowledge, resources, military, aliveCount

=== Mission_Leave ===
The ship comes for us to go back...
Check what happens...
{
    - decision == 0 :
    {
        - secrets >= 2 : ->a
        - else : ->b
    }
    - decision == 1 :
    {
        - relations >= 2 : ->a
        - else : ->b
    }
    - decision == 2 :
    {
        - knowledge >= 2 : ->a
        - else : ->b
    }
    - decision == 3 :
    {
        - resources >= 2 : ->a
        - else : ->b
    }
    - decision == 4 :
    {
        - military >= 2 : ->a
        - else : ->b
    }
    - decision == 5 :
    {
        - aliveCount >= 2 : ->a
        - else : ->b
    }
}
-> END


= a
SUCCESS
->END


= b
SUCCESS
->END

