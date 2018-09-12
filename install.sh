#!/bin/sh

# Author : Valéry Bruniaux
# Modifié par ordinatous

# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.

# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.

# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <https://www.gnu.org/licenses/>.

echo "================================================"
echo "==> Copie du fichier md2htmlpdf dans /usr/bin/"
echo "================================================"

sudo cp md2htmlpdf /usr/bin/
sudo chmod 755 /usr/bin/md2htmlpdf

echo "================================================"
echo "==> Modification des liens default.template"
echo "==> et css.template"
echo "================================================"

ln -sfn $HOME/md2htmlpdf/templates/lesson.template ~/md2htmlpdf/templates/default.template
ln -sfn $HOME/md2htmlpdf/css/lesson.css ~/md2htmlpdf/css/default.css

echo "================================================"
echo "==> Creation du repertoire  ~/.config/md2htmlpdf/"
echo "================================================"

mkdir $HOME/.config/md2htmlpdf
cp -R -i css $HOME/.config/md2htmlpdf/
cp -R -i templates $HOME/.config/md2htmlpdf/

echo "================================================"
echo "==> Installation  terminée ..."
echo "================================================"
