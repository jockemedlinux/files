#!/usr/bin/env python3
import os

files = []
with open("movies.txt", "r") as movies:
	content = movies.readlines()
	for line in content:
		files.append(line.strip())

for movie in files:
#	print(movie)
	print("Downloading swedish subtitle for:"+ "\n" + "'%s'" % (movie))
	os.system("/root/go/bin/subify dl '%s' -l swe,eng" % (movie))
	print("\n")
