# JackInit

## About

I use Ubuntu Studio a fair bit, but one of the issues is that Pulse Audio and Jack can sometimes fight with eachother. I've worked out a way around this by creating a script that can be run when your desktop session starts to fire up Jack, and make it the default for Pulse Audio.

I also like to apply an EQ when I'm listening to music from Spotify etc, so I've created a Jack Rack definition with that EQ, and a script to wire it in.

I have aspirations to build a system which can save and restore complete Jack graphs, including starting up the applications with the necessary start parameters to get them back to where they were last.

If you're using Ubuntu Studio you will already have all the dependencies you need. However, if you're on another distro, I don't know if the same is true. There's a handy link below which has some instructions on setting up the jack-to-pulseaudio bridge.

https://docs.fedoraproject.org/en-US/Fedora/17/html/Musicians_Guide/sect-Musicians_Guide-Integrating_PulseAudio_with_JACK.html

## License

All the contents of this repository are released under a Creative Commons Attribution 4.0 International license. See http://creativecommons.org/licenses/by/4.0/ for details.

The full contents of the license are also contained in the file LICENSE.md
