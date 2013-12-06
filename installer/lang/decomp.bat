@echo off

ren "Chinese Simplified.resources" Chinese.resources
resgen /compile Chinese.resources,Chinese.txt
del "Chinese Simplified.txt"
ren Chinese.txt "Chinese Simplified.txt"
ren Chinese.resources "Chinese Simplified.resources"

resgen /compile English.resources,English.txt
resgen /compile Japanese.resources,Japanese.txt
resgen /compile Thai.resources,Thai.txt

pause