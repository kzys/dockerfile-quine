all: ruby-simple.out python-simple.out

%.out: %.dockerfile
	docker build -t quine -f $< .
	docker run quine > $@
	diff $< $@

clean:
	rm *.out

