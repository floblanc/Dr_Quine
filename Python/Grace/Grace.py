# Comment
EXEC = exec
STR = '# Comment\nEXEC = exec\nSTR = %r\nMAIN = """f = open("Grace_kid.py", "w")\\nf.write(STR %% STR)\\nf.close()"""\nEXEC(MAIN)\n'
MAIN = """f = open("Grace_kid.py", "w")\nf.write(STR % STR)\nf.close()"""
EXEC(MAIN)
