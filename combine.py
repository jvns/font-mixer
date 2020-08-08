#!/usr/bin/env python3
from fontTools.ttLib import TTFont
from fontTools.feaLib.builder import addOpenTypeFeatures, Builder
import random
import os

ft_font = TTFont('merged.ttf')
with open('./generated.fea', 'w') as f:
    alphabet = 'abcdefghijklmnopqrstuvwxyz'
    f.write("feature liga { # I'm just a comment\n")
    for i in alphabet:
        for j in alphabet:
            num = random.choice([1,2,3])
            if num == 1:
                f.write(f"sub {i}' {j} by {i}X1;\n")
            elif num == 2:
                f.write(f"sub {i}' {j} by {i}X2;\n")
    f.write("} liga;")
addOpenTypeFeatures(ft_font, 'generated.fea', tables=['GSUB'])
ft_font.save('mixed.ttf')
