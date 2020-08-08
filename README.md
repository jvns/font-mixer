### what's this?

This is a very barebones & hacky demo of using OpenType to mix glyphs from 3 different
fonts. It's basically just one file (`combine.py`). `fontname.py` is something
I just copied in from [here](https://github.com/chrissimpkins/fontname.py/blob/880152731626fe32f5d437617cd6a66c8f0ab213/fontname.py) to rename the font.

To use it, you can edit `run.sh` to have the actual fonts you want to mix in it.

it's bring-your-own-fonts.

### How to run it

```
virtualenv venv
source venv/bin/activate
pip install -r requirements.txt
bash run.sh
```
