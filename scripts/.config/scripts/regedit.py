from os import listdir,	chdir
from os.path import isfile,	join,	expanduser
import eyed3
import re

# Regex: title|ARTIST.format
regex = '(.+)\|(.+)\.[a-z-0-9]+'
dir = expanduser('~/Music')
chdir(dir)

#	Get	files names
songs = [f for f in listdir(dir) if isfile(join(dir, f))]

for song in songs:
    try:
        audiofile = eyed3.load(song)
        result = re.search(regex, song)

        audiofile.tag.title = result.group(1)
        audiofile.tag.artist = result.group(2).title()
        audiofile.tag.save()

        print(audiofile.tag.title)
    except:
        print('An	error	occured')
