import argparse
import pathlib
import os

def build_parser() -> argparse.ArgumentParser:
    parse = argparse.ArgumentParser()
    parse.add_argument("--root", default="", type=str)
    parse.add_argument("--glob", default="**/*.tex", type=str)
    return parse

if __name__ == "__main__":
    arg = build_parser().parse_args()
    cwd = os.getcwd()
    cmd = "latexmk -xelatex -file-line-error -halt-on-error -interaction=nonstopmode -shell-escape -jobname={0} -usepretex=\'{1}\' {2}"
    rootpath = pathlib.Path(arg.root)
    for f in rootpath.glob(arg.glob):
        basename = os.path.dirname(f)
        sourcename = f.name

        os.chdir(f.parent)

        status = os.system(cmd.format(basename+"-slide", "", sourcename))
        if os.WEXITSTATUS(status) != 0:
            exit(1)
        status = os.system(cmd.format(basename+"-handout", "\\PassOptionsToClass{handout}{beamer}", sourcename))
        if os.WEXITSTATUS(status) != 0:
            exit(1)

        os.chdir(cwd)
