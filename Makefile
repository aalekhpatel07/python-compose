default:
	python setup.py sdist
	python setup.py bdist_wheel --python-tag py2.py30
	rm build/lib/compose.py
	python setup.py bdist_wheel --python-tag py35
	rm build/lib/compose.py
	python setup.py bdist_wheel --python-tag py38

clean:
	rm -rf __pycache__ build *.egg-info dist
	rm -f *.py[oc] MANIFEST compose.py
