all: download frames main move

download:
	@if [ ! -d video ]; then mkdir video; fi && youtube-dl --format mp4 -o "video/badapple.mp4" https://www.youtube.com/watch?v=FtutLA63Cp8
frames: video/badapple.mp4
	@if [ ! -d frames ]; then mkdir frames; fi && ffmpeg -r 1 -i 'video/badapple.mp4' -r 1 "frames/frame_%04d.png"	
main: main.tex 
	@latexmk --lualatex -bibtex- $< -output-directory=tmp | grep -A3 '^!' || :
clean:
	@latexmk -c && rm -f main.pdf && rm -f main.bbl && rm -f main.run.xml && rm -rf tmp pdf
move:
	@if [ -d pdf ]; then mv tmp/*.pdf pdf/.; else mkdir pdf; mv tmp/*.pdf pdf/.; fi
