# Bauble Classic : documentation internationalization

## how does this work

Bauble and its documentation are translated making use of ``gettext``.

``gettext`` relies on the presence of so called ``po`` files, which get compiled into ``mo`` files, which are then used by the program while running. Depending on the currently configured system language, Bauble will use ``gettext`` in order to find the translation of any string before displaying it to the user.

Something similar can be done for producing translated documentation. The difference is that a documentation, be it in file, site, archive, or whatever container form, it is a static object, non a dynamic program, so it has to be translated before you start reading it. The translation task, equally relying on ``gettext`` and ``mo`` files, is taken over by ``sphinx``.

Weblate is hosting our ``po`` files and any change to them will trigger saving them along with their compiled corresponding ``mo`` files to this project.

Translators can also edit ``po`` files manually, but in this case it is important that they also compile them to ``mo`` and they commit both source and generated files to github.

A commit to github will trigger actions on readthedocs, not just one: several actions. point is: on Readthedocs we have registered several projects, all referring to the same repository here, but each of them specifying a different language.

## what did we do to organize it

## which way do we keep it up to date
