#!/usr/bin/env bash

set -oue pipefail

cd /usr/share/plymouth/themes
curl -L https://github.com/adi1090x/plymouth-themes/releases/download/v1.0/rings.tar.gz | tar xzvf -

cat <<EOF >> rings/rings.script

bazzite_image = Image("/usr/share/plymouth/themes/spinner/watermark.png");
bazzite_sprite = Sprite();

bazzite_sprite.SetImage(bazzite_image);
bazzite_sprite.SetX(Window.GetX() + (Window.GetWidth() / 2 - bazzite_image.GetWidth() / 2)); # center the image horizontally
bazzite_sprite.SetY(Window.GetHeight() - bazzite_image.GetHeight() - 50); # display just above the bottom of the screen
EOF

plymouth-set-default-theme rings