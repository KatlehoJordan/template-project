# Template

The purpose of this is to be a template for easy copying and creating of new projects.

## Dependencies

It is presumed that you have `pyenv` and `poetry` installed. See your `dot-files` repository for more information on how to install these.

## Setup of new project

Follow these steps to create a new project:

1. Copy this folder into its own directory.
2. Open `pyproject.toml` and rename the project according to your needs.
3. Run `poetry install` to install the dependencies.

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

If you still fail to get `poetry` to use the `pyenv local <version>` when trying `poetry install`, modify `poetry` to use the `bat` files instead:

```sh
poetry env use python.bat
```

This will create a `.venv` directory in the project directory with a local `python` installation that should be compatible with the project.

Now `poetry install` should work successfully.

If/when prompted by VS Code, allow it to use the locally-installed virtual environment. You may need to do this also by launching the command palette with and selecting `Python: Select Interpreter`. This may also need to be done the first time you activate any Jupyter notebooks by selecting the correct kernel.

Thereafter, every new terminal you launch should automatically use the correct virtual environment and the shell prompt should indicate this and running `echo $POETRY_ACTIVE` should return `1`.

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
