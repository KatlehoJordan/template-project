# Template

The purpose of this is to be a template for easy copying and creating of new projects.

## Dependencies

It is presumed that you have `pyenv` and `poetry` installed. See your `dot-files` repository for more information on how to install these.

## Setup of new project

Follow these steps to create a new project:

1. From the root of the directory, run `sh scripts/setup-poetry.sh`.
2. Then update this readme and other files as needed.

Alternatively:

1. Copy this folder into its own directory.
2. Remove the `.git` directory (and run `git init` to start a new repository if desired).
3. Open `pyproject.toml` and rename the project according to your needs.
4. If you are on Windows, use `poetry env use python.bat` to create the virtual environment. If/when prompted by VS Code, allow it to use the locally-installed virtual environment.
5. Run `poetry install` to install the dependencies.
6. Then update this readme and other files as needed.

### Troubleshooting setup

If you run into problems because it does not detect a compatible version of python, check that `pyenv` has the correct version available with:

```sh
pyenv versions
```

If it does not, you can install the correct version with:

```sh
pyenv install <version>
```

Then you can set the local version of python for the project with:

```sh
pyenv local <version>
```

This should create a `.python-version` file in the project directory.

Then you can run `poetry install` again.

If you are still running into issues and are on a Windows machine, try to see if you need to modify the Windows Path, which may default to the Windows version of python instead of using those you installed with `pyenv`. Find the default python version used with:

```sh
which python
```

If it's not one specified by your `pyenv` installation, you may need to modify the path or remove `python.exe` and `python3.exe` from the WindowsApps folder:

```sh
cd ~/AppData/Local/Microsoft/WindowsApps
rm python.exe
rm python3.exe
```

## Verifying virtual environment is set up

After using `poetry install`, you may want to restart VS Code and waiting for the "Reactivating terminal..." message in the bottom-left of the VS Code window to resolve.

Thereafter, every new terminal you launch should automatically use the correct virtual environment and the shell prompt should indicate this.

You should be able to verify your virtual environment is activated by running `which python` and seeing that it points to the `.venv` directory in the project folder. Another way to verify is to see if you can start `ipython`, since it should be in the virtual environment but not installed system-wide. Running `echo $POETRY_ACTIVE` does not seem to reliably return `1`, as expected, however.

To use the environment in scripts and notebooks, you will probably need to specify the correct interpreter. Launch the command palette and select `Python: Select Interpreter`. This may also need to be done the first time you activate any Jupyter notebooks by selecting the correct kernel.

## Getting started with python

Explore these files to get a quick introduction to how `python` can be used in a copy of this project:

- `main.py`
- `test_add_numbers.py`
- `notebooks/quickstart.ipynb`

### External links

These links provide information on getting started with python:

- [Download for Windows](https://www.python.org/downloads/windows/)
- [Tutorial](https://docs.python.org/3.12/tutorial/index.html)
- [Python documentation](https://docs.python.org/3.12/index.html)
- [What's new in 3.12](https://docs.python.org/3.12/whatsnew/3.12.html)
- [Using Windows](https://docs.python.org/3.12/using/windows.html)
