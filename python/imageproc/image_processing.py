import pygame as pg

# grayPixel: pixel -> pixel
# compute and return a gray pixel with the same intensity
# as the given pixel
def grayPixel(pixel):
    red_intensity = pixel[0]
    green_intensity = pixel[1]
    blue_intensity = pixel[2]
    ave_intensity = (red_intensity + green_intensity+ blue_intensity)//3
    return (ave_intensity, ave_intensity, ave_intensity)

# channel: pixel -> channel -> pixel
# return a gray pixel with intensity from given channel of given pixel
def channel(pixel,chan):
    return (pixel[chan],pixel[chan],pixel[chan])


# inverse: pixel -> pixel
# return the color negative of the given pixel
def inverse(pixel):
    return (255-pixel[0], 255-pixel[1], 255-pixel[2])


# intensify: pixel -> nat255 -> pixel
# brighten each channel of pixel by quantity
def intensify(pixel,quantity):
    x = pixel[0] + quantity
    if x > 255:
        x = 255
    if x < 0:
        x = 0
    y = pixel[1] + quantity
    if y > 255:
        y = 255
    if y < 0:
        y = 0
    z = pixel[2] + quantity
    if z > 255:
        z = 255
    if z < 0:
        z = 0
    return (x, y, z)


def invert(image_surf):

    # get pixel dimensions of image
    rows = image_surf.get_size()[0]
    cols = image_surf.get_size()[1]

    # get reference to and lock pixel array
    pixels3d = pg.surfarray.pixels3d(image_surf)

    # update pixels in place (side effect!)
    for x in range(rows):
        for y in range(cols):
            pixels3d[x,y] = inverse(pixels3d[x,y])


def helplighten(pixel):
    return (intensify(pixel, 10))

def lighten(image_surf):
    # get pixel dimensions of image
    rows = image_surf.get_size()[0]
    cols = image_surf.get_size()[1]
    # get reference to and lock pixel array
    pixels3d = pg.surfarray.pixels3d(image_surf)
    # update pixels in place (side effect!)
    for x in range(rows):
        for y in range(cols):
            pixels3d[x,y] = helplighten(pixels3d[x,y])

def helpdarken(pixel):
    return (intensify(pixel, -10))

def darken(image_surf):
    # get pixel dimensions of image
    rows = image_surf.get_size()[0]
    cols = image_surf.get_size()[1]
    # get reference to and lock pixel array
    pixels3d = pg.surfarray.pixels3d(image_surf)
    # update pixels in place (side effect!)
    for x in range(rows):
        for y in range(cols):
            pixels3d[x,y] = helpdarken(pixels3d[x,y])
