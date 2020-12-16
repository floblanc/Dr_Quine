# comment OUT main
def useless():
	return


if __name__ == "__main__":
	# comment IN main
	useless()
	a = '# comment OUT main\ndef useless():\n\treturn\n\n\nif __name__ == "__main__":\n\t# comment IN main\n\tuseless()\n\ta = %r\n\tprint(a %% a)'
	print(a % a)
