#!/bin/env python3
## 
## ./fira_code_patch.py -o ~/.local/share/fonts/ /usr/share/fonts/OTF/Fira*.otf
##

import os
import sys
import argparse
from glob import glob
from itertools import chain

import fontforge

ADDITIONAL_LIGATURES = [
    'x.multiply',
    'colon.uc',
    'plus.lc',
    'plus.tosf2',
]


def run(fontpath, outpath, starting_point=0xe100):
    try:
        font = fontforge.open(fontpath)
        ligatures = list(filter(lambda x: x.glyphname.endswith('.liga'),
                                font.glyphs()))
        for i, glyph in enumerate(ligatures):
            point = starting_point + i
            # You could also create a reference instead of defining an
            # encoding, but I don't recommend that, as it causes some
            # problems with character width
            # name = glyph.glyphname
            # print("lg ", name)
            # newchar = font.createChar(point, name + '.private')
            # newchar.addReference(name)
            glyph.unicode = point
        print("Write ", outpath)
        font.generate(outpath)
    finally:
        font.close()


def main(argv):
    parser = argparse.ArgumentParser()
    parser.add_argument('--output-dir', '-o', type=str)
    parser.add_argument('fonts', nargs='+',
                        help='font files to process')
    argvals = parser.parse_args(argv)

    output = argvals.output_dir
    fonts = argvals.fonts

    os.makedirs(output, exist_ok=True)

    for f in chain.from_iterable(map(glob, fonts)):
        run(f, os.path.join(output, os.path.basename(f)))


if __name__ == '__main__':
    main(sys.argv[1:])
