#!/usr/bin/php -q

<?php 
#################################################
# vidpicslideshow
# plays images and videos from a memory stick
# on a raspberry pi
#
# V0.1 Basic setup
# V0.2 was sh now php
#
#################################################


# future raspberry pi setup stuff could go here

# Location of video and jpg files
$directory = '.';

# Error if it isn't a valid directory
if (! is_dir($directory)) {
        exit('Invalid diretory path');
    }

# Create an array of specific files from a set of file suffixes
$files = glob($directory.'/*.{jpg,png,gif,mov,MOV,avi,mp4}', GLOB_BRACE);

foreach($files as $file) {
#do some stuff here
echo $file."\n";
}


# vlc IMG_1895.JPG --image-duration=5


?>
