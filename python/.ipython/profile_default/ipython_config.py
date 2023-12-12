c = get_config()

# vim shortcuts
c.TerminalInteractiveShell.editing_mode = "vi"

c.InteractiveShellApp.exec_lines = [
    "import re",
    "import numpy as np",
    "import pandas as pd",
    "import matplotlib as mpl",
    "mpl.use('TkAgg')",
    "import matplotlib.pyplot as plt",
    "import seaborn as sns",
    "sns.set()",
    "pd.set_option('display.max_colwidth', 999)",
    "pd.set_option('expand_frame_repr', True)",
]
c.InteractiveShell.autoindent = True
c.InteractiveShell.confirm_exit = False
c.InteractiveShell.editor = "vim"
c.InteractiveShell.log_level = 0

c.AliasManager.user_aliases = [
    (
        "la",
        "ls -al",
    ),
]