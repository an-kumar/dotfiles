import argparse


dotfiles = {"vimrc": "~/.vimrc" ,"bashrc": "~/.bashrc"}

parser = argparse.ArgumentParser()

parser.add_argument("--list", action="store_true")
for df in dotfiles:
    parser.add_argument("--%s" % df, action="store_true")

parser.add_argument("--all", action="store_true")

args = parser.parse_args()
var = vars(args)

import os


def Copy(fp, to):
    os.system("cp %s %s" % (fp,to))
    print "Copied %s to %s" % (fp, to)


if args.list:
    for df in dotfiles:
        print "Name: %s\t\tfilepath: %s" % (df, dotfiles[df])
else:
    for df in dotfiles:
        if var[df] or args.all:
            Copy(dotfiles[df], df)
