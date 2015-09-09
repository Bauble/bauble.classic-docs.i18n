# Bauble Classic : documentation internationalization

## how does this work

Bauble and its documentation are translated making use of ``gettext``.

``gettext`` relies on the presence of so called ``po`` files, which contain easy to edit string-by-string translation. ``po`` files get compiled into ``mo`` files (this happens during program installation), the ``mo`` files are then used by the program while running. Depending on the currently configured system language, Bauble will use ``gettext`` in order to find the translation of any string before displaying it to the user.

Something similar can be done for producing translated documentation. The difference is that a documentation, be it in file, site, archive, or whatever container form, it is a static object, non a dynamic program, so it has to be translated before you start reading it. The active translation task, equally relying on ``gettext`` and ``mo`` files, is taken over by ``sphinx``, you then enjoy the static translated documentation.

Weblate is hosting our ``po`` files and any change to them will trigger saving them along with their compiled corresponding ``mo`` files to this project.

Translators can also edit ``po`` files manually, but in this case it is important that they also compile them to ``mo`` and they commit both source and generated files to github.

A commit to github will trigger actions on readthedocs, not just one: several actions. point is: on Readthedocs we have registered several projects, all referring to the same repository here, but each of them specifying a different language.

All Bauble documentation projects on Readthedocs are linked with each other: the English version is the central one, all others are marked as translation of it. All are reachable from each other on our Readthedocs pages, by choosing the language you want to read.

## what did we do to organize it

Bauble-the.software contains a script you would invoke every time changes in the sources include changes in translatable strings. Translatable strings are either the ones passed as parameter to the ``_`` function, or are the textual content of a glade element that has attribute ``translatable="True"``. You edit the software, you realize you changed things having effect on the translation, you run ``scripts/i18n.sh``, you complete the translations as far as you can, you hope someone else will help you out with the languages you do not master.

Bauble-the.documentation is part of Bauble-the.software as far as English documentation is concerned. The translated docs are in bauble.classic-docs.i18n. Whenever someone edits the English documentation, readthedocs is notified of the fact and updates the generated English documentation site.

Bauble-docs.i18n (this project) is the place where we keep ``po`` and ``mo`` files relative to the documentation in the Bauble-the.software repository.

The script for initializing this repository is the same we use for keeping it up-to-date.

## which way do we keep it up to date
