c = get_config()

# vim shortcuts
c.TerminalInteractiveShell.editing_mode = 'vi'

c.InteractiveShellApp.exec_lines = [
    'import re',
    'import numpy as np',
    'import pandas as pd',
    'import matplotlib as mpl',
    "mpl.use('TkAgg')",
    'import matplotlib.pyplot as plt',
    'import seaborn as sns',
    'sns.set()',
]
c.InteractiveShell.autoindent = True
c.InteractiveShell.confirm_exit = False
c.InteractiveShell.editor = 'vim'

c.AliasManager.user_aliases = [
    (
        'la',
        'ls -al',
    ),
]
