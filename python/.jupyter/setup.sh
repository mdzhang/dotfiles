
pip install jupyter_contrib_nbextensions
jupyter contrib nbextension install --user
jupyter nbextension enable execute_time/ExecuteTime

jupyter nbextension enable --py --sys-prefix widgetsnbextension
jupyter nbextension enable --py --sys-prefix qgrid

# view entire dataframe in notebook
# pd.set_option('display.max_colwidth', -1)
# pd.set_option('display.max_rows', len(df))
