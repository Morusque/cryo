
EXTERNAL lifeCycle()
EXTERNAL charName(list,id)
EXTERNAL kill(list, id)
EXTERNAL stateOf(list, id)
EXTERNAL convertListId(listA, listB, id)


== function lifeCycle()
~return 0


== function charName(list, id)
// newlyDead, dead, active, frozen, all, alive
~return 0


== function kill(list, id)
// newlyDead, dead, active, frozen, all, alive
~return 


== function idOf(name)
{
- name=="Suzie":~return 0
- name=="Ruth":~return 1
- name=="Madeleine":~return 2
- name=="The valet":~return 3
- name=="Brandon":~return 4
- name=="Lucien":~return 5
}
~return -1


== function stateOf(list, id)
// dead, frozen, awake
~return -1


== function convertListId(listA, listB, id)
~return -1


== function min(a,b)
{
-a<b:~return a
-else:~return b
}


== function max(a,b)
{
-a>b:~return a
-else:~return b
}
