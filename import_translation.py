#!/usr/bin/env python
# -*- coding: utf-8 -*-

import os

WFID = 'waiting_for_msgid'
CLLID = 'collecting_msgid'
CLLSTR = 'collecting_msgstr'


def at_eof(f):
    'return True if there is nothing more to read from f'

    if f.read(1):
        f.seek(-1, 1)
        return False
    return True


def getdefs(filename):
    '''parse po file into dictionary, msgid->msgstr

    it starts in status waiting_for_msgid.

    if in status waiting_for_msgid it meets msgid, it goes into
    collecting_msgid, and starts collecting strings and putting them
    into the msgid.

    if in status collecting_msgid it meets msgstr, it goes into
    collecting msgstr, and starts collecting strings and putting them
    into the msgid.

    if in status collecting_msgstr it meets an empty line, it associates
    msgstr to msgid and goes into status waiting_for_msgid.

    '''

    import codecs
    status = WFID
    result = {}
    with codecs.open(filename, 'r', 'utf-8') as input_file:
        for line in input_file.readlines():
            if status == WFID and line.startswith('msgid'):
                status = CLLID
                line = line[6:]
                msgid = []
            if status == CLLID and line.startswith('msgstr'):
                status = CLLSTR
                line = line[7:]
                msgstr = []
            if status == CLLID:
                msgid.append(line)
            if status == CLLSTR:
                msgstr.append(line)
            if status == CLLSTR and (line.strip() == '' or
                                     at_eof(input_file)):
                status = WFID
                msgid = "\n".join(msgid).strip()
                msgstr = "\n".join(msgstr).strip()
                if msgstr != '""':
                    result[msgid] = msgstr
    return result


def putdefs(filename, defs):
    '''modify po file using a msgid->msgstr dictionary

    as getdefs, it is centred on a loop with a status.

    most of what is being read goes through the filter without change.
    when in CLLSTR though, nothing is written to the output until the
    msgstr has been completely collected. then either the collected
    msgstr is repeated, or it is replaced with the one coming from the
    defs passed as input parametre.
    '''

    import codecs
    status = WFID
    try:
        os.unlink(filename + '~')
    except:
        pass
    os.rename(filename, filename + '~')
    with codecs.open(filename + '~', 'r', 'utf-8') as input_file, \
            codecs.open(filename, 'w', 'utf-8') as output_file:
        for line in input_file.readlines():
            content = line
            if status == WFID and line.startswith('msgid'):
                status = CLLID
                content = line[6:]
                msgid = []
            if status == CLLID and line.startswith('msgstr'):
                status = CLLSTR
                content = line[7:]
                msgstr = []
            if status == CLLSTR:
                pass
            else:
                output_file.write(line)
            if status == CLLID:
                msgid.append(content)
            if status == CLLSTR:
                msgstr.append(content)
            if status == CLLSTR and (line.strip() == '' or
                                     at_eof(input_file)):
                status = WFID
                msgid = "\n".join(msgid).strip()
                if msgid in defs:
                    msgstr = defs[msgid].split('\n')
                output_file.write('msgstr ')
                output_file.write('\n'.join(msgstr).strip() + '\n')

def safemkdir(path):
    try:
        os.mkdir(path)
    except OSError:
        pass


def main(*args, **kwargs):
    podir = '/home/mario/Local/github/Bauble/bauble.classic/po/'
    languages = [i.split('.')[0]
                 for i in os.listdir(podir)
                 if i.endswith('.po')]
    defs = {}
    for language in languages:
        defs[language] = getdefs(podir + language + '.po')

    ## make sure the translation folder is already there
    safemkdir('locale')
    for language in languages:
        safemkdir('locale/%s' % language)
        safemkdir('locale/%s/LC_MESSAGES' % language)

        podir = 'locale/%s/LC_MESSAGES/' % language
        for filename in [i for i in os.listdir(podir)
                         if i.endswith('.po')]:

            putdefs(podir + filename, defs[language])


if __name__ == '__main__':
    main()
