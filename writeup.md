# Bad Apple in LaTeX writeup

## Why
Based on the popularity of running bad apple on ANYTHING that can display at least 2 seperate colors in a somewhat acceptable resolution, I had the *brilliant* idea to try playing the video in a pdf generated from LaTeX.

## How

1) Download the video file using youtube-dl as mp4
2) Extract the individual frames from the video file using `ffmpeg -r 1 -i file.mp4 -r 1 "frame_%04d.png"`
3) 

