# A, B
print("\nA,B\n")
from turtle import *
import time

bakgrunnsfarge = input("Skriv inn ønsket bakgrunnsfarge som heltall mellom 0 og 16777215, HEX farge med #: ")
firkantfarge =  input("Skriv inn ønsket firkantensfarge som heltall mellom 0 og 16777215, HEX farge med #: ")
if (bakgrunnsfarge[0] == "#"):
    rgb1 = bakgrunnsfarge
else:
    bakgrunnsfarge = int(bakgrunnsfarge)
    rgb1 = ((bakgrunnsfarge//(256**2))%256, (bakgrunnsfarge//256)%256, bakgrunnsfarge%256);
if (firkantfarge[0] == "#"):
    rgb2 = firkantfarge
else:
    firkantfarge = int(firkantfarge)
    rgb2 = ((firkantfarge//(256**2))%256, (firkantfarge//256)%256, firkantfarge%256);

# setter opp tegnevinduet
setup(330, 330, 0, 0)
screensize(315, 315)
goto(-60, 150)
colormode(255)

# velger farger
bgcolor(rgb1)
color(rgb2)

#tegner den indre firkanten
begin_fill()
right(10) # tilter den 10 grader nedover
forward(200)
right(90)
forward(200)
right(90)
forward(200)
right(90)
forward(200)
end_fill()

time.sleep(10) # Gjør at vinduet med tegningen ikke lukkes med én gang, men er oppe i 10 sekunder
