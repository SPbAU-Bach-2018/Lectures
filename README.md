# Lectures

Build with XeLaTeX (build scripts are included, they're pretty straightforward).

If notes include code listings, <a href="https://github.com/gpoore/minted">minted</a> is required.
More precisely, it's probably already shipped with your favorite LaTeX distribution, 
but require some additional software to be installed: Python and Pygments (see minted's README).
Please note that minted >= 2.0 is required, you probably should install it manually in your local texmf directory.

You will also need additional fonts:
* Computer Modern Unicode: http://sourceforge.net/projects/cm-unicode/files/cm-unicode/0.7.0/cm-unicode-0.7.0-ttf.tar.xz/download
* Latin Modern Math: http://www.gust.org.pl/projects/e-foundry/lm-math/download/latinmodern-math-1959.zip

Some PDFs use images, we store them separately to avoid huge size of the repository, you should perform the following steps to make them available:
* Download https://yadi.sk/d/hyoCoEx0eptKS to some folder (you can also use Yandex.Disk's synchronization)
* Create environment variable named SPBAU_BACH_2018_DISK which points to this folder
* Make sure that there is a folder named `term2` under the directory which the variable points to
* Run build scripts as usual
