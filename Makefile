.venv:
	python3 -m venv .venv
	source .venv/bin/activate
	pip install -r test_requirements.txt

# .venv is a prerequisite for the run-tests target
run-tests: .venv
	pytest
