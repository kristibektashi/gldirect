# Makefile for core library for VMS
# contributed by Jouk Jansen  joukj@hrem.stm.tudelft.nl
# Last revision : 16 June 2003

.first
	define gl [---.include.gl]
	define math [-.math]

.include [---]mms-config.

##### MACROS #####

VPATH = RCS

INCDIR = [---.include],[-.glapi]
LIBDIR = [---.lib]
CFLAGS = /include=($(INCDIR),[])/define=(PTHREADS=1)/name=(as_is,short)

SOURCES =accum.c \
	api_arrayelt.c \
	api_loopback.c \
	api_noop.c \
	api_validate.c \
	arbparse.c \
	arbfragparse.c \
	arbprogram.c \
	arbvertparse.c \
 	attrib.c \
	blend.c \
	bufferobj.c \
	buffers.c \
	clip.c \
	colortab.c \
	context.c \
	convolve.c \
	debug.c \
	depth.c \
	dispatch.c \
	dlist.c \
	drawpix.c \
	enable.c \
	enums.c \
	eval.c \
	extensions.c \
	feedback.c \
	fog.c \
	get.c \
	hash.c \
	hint.c \
	histogram.c \
	image.c \
	imports.c \
	light.c \
	lines.c \
	matrix.c \
	nvprogram.c \
	nvfragparse.c \
	nvvertexec.c \
	nvvertparse.c \
	occlude.c \
	pixel.c \
	points.c \
	polygon.c \
	program.c \
	rastpos.c \
	state.c \
	stencil.c \
	texcompress.c \
	texformat.c \
	teximage.c \
	texobj.c \
	texstate.c \
	texstore.c \
	texutil.c \
	varray.c \
	vtxfmt.c

OBJECTS=accum.obj,\
api_arrayelt.obj,\
api_loopback.obj,\
api_noop.obj,\
api_validate.obj,\
arbparse.obj,\
arbfragparse.obj,\
arbprogram.obj,\
arbvertparse.obj,\
attrib.obj,\
blend.obj,\
bufferobj.obj,\
buffers.obj,\
clip.obj,\
colortab.obj,\
context.obj,\
convolve.obj,\
debug.obj,\
depth.obj,\
dispatch.obj,\
dlist.obj,\
drawpix.obj,\
enable.obj,\
enums.obj,\
eval.obj,\
extensions.obj,\
feedback.obj,\
fog.obj,\
get.obj,\
hash.obj,\
hint.obj,\
histogram.obj,\
image.obj,\
imports.obj,\
light.obj,\
lines.obj,\
matrix.obj,\
nvprogram.obj,\
nvfragparse.obj,\
nvvertexec.obj,\
nvvertparse.obj,\
occlude.obj,\
pixel.obj,\
points.obj,\
polygon.obj,\
program.obj,\
rastpos.obj,\
state.obj,\
stencil.obj,\
texcompress.obj,\
texformat.obj,\
teximage.obj,\
texobj.obj,\
texstate.obj,\
texstore.obj,\
texutil.obj,\
varray.obj,\
vtxfmt.obj

##### RULES #####

VERSION=Mesa V3.4

##### TARGETS #####
# Make the library
$(LIBDIR)$(GL_LIB) : $(OBJECTS)
  @ $(MAKELIB) $(GL_LIB) $(OBJECTS)
  @ rename $(GL_LIB)* $(LIBDIR)

clean :
	purge
	delete *.obj;*

accum.obj : accum.c
api_arrayelt.obj : api_arrayelt.c
api_loopback.obj : api_loopback.c
api_noop.obj : api_noop.c
api_validate.obj : api_validate.c
arbparse.obj : arbparse.c
arbfragparse.obj : arbfragparse.c
arbprogram.obj : arbprogram.c
arbvertparse.obj : arbvertparse.c
attrib.obj : attrib.c
blend.obj : blend.c
bufferobj.obj : bufferobj.c
buffers.obj : buffers.c
clip.obj : clip.c
colortab.obj : colortab.c
context.obj : context.c
convolve.obj : convolve.c
debug.obj : debug.c
depth.obj : depth.c
dispatch.obj : dispatch.c
dlist.obj : dlist.c
drawpix.obj : drawpix.c
enable.obj : enable.c
enums.obj : enums.c
eval.obj : eval.c
extensions.obj : extensions.c
feedback.obj : feedback.c
fog.obj : fog.c
get.obj : get.c
hash.obj : hash.c
hint.obj : hint.c
histogram.obj : histogram.c
image.obj : image.c
imports.obj : imports.c vsnprintf.c
light.obj : light.c
lines.obj : lines.c
matrix.obj : matrix.c
nvprogram.obj : nvprogram.c
nvfragparse.obj : nvfragparse.c
nvvertexec.obj : nvvertexec.c
nvvertparse.obj : nvvertparse.c
occlude.obj : occlude.c
pixel.obj : pixel.c
points.obj : points.c
polygon.obj : polygon.c
program.obj : program.c
rastpos.obj : rastpos.c
state.obj : state.c
stencil.obj : stencil.c
texcompress.obj : texcompress.c
texformat.obj : texformat.c
teximage.obj : teximage.c
texobj.obj : texobj.c
texstate.obj : texstate.c
texstore.obj : texstore.c
texutil.obj : texutil.c
varray.obj : varray.c
vtxfmt.obj : vtxfmt.c
