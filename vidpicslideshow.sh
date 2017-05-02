#!/bin/sh

#################################################
# vidpicslideshow
# plays images and videos from a memory stick
# on a raspberry pi
#
# V0.1 Basic setup
#
#################################################


# future raspberry pi setup stuff could go here


# hide the the cursor so we don't see it
setterm -cursor off

# set here the path to the directory containing your images and vids
MEDIALOCAION="/mnt/media" 

# path to the player for images and videos
# future option could be to use two players, one for each type
# currently use vlc as it plays both
PLAYER="vlc"
PLAYER_OPTIONS=""

# check if player is running.  If it is then wait.
# can probably improve on this in case it crashes and zombifies
while true; do
        if ps ax | grep -v grep | grep $PLAYER > /dev/null
        then
        sleep 1;
        
# If isn't running then play each of the media items in turn
else
        for entry in $VIDEOPATH/*
        do
                clear
                $MEDIALOCAION $entry > /dev/null
        done
fi


done
