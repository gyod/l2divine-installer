@echo off

cd C:\workspace\l2divine-installer\trunk\installer\lang

ren "Chinese Simplified.txt" Chinese.txt
resgen /compile Chinese.txt,Chinese.resources
del "Chinese Simplified.resources"
ren Chinese.txt "Chinese Simplified.txt"
ren Chinese.resources "Chinese Simplified.resources"

resgen /compile English.txt,English.resources
resgen /compile Japanese.txt,Japanese.resources
resgen /compile Thai.txt,Thai.resources

resgen /compile Russian.txt,Russian.resources
resgen /compile Spanish.txt,Spanish.resources

pause