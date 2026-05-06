.PHONY: screenshots screenshots-clean

VARIANTS := tihea aukea syksy sumu
PNG_FILES := $(addprefix screenshots/,$(addsuffix .png,$(VARIANTS)))

screenshots: $(PNG_FILES)

# each .png depends on its .tape and the source file. vhs writes a .gif
# byproduct alongside the .png that we don't need; clean it up after.
screenshots/%.png: screenshots/%.tape screenshots/source/experiment.rb
	vhs $<
	@rm -f screenshots/$*.gif

screenshots-clean:
	rm -f $(PNG_FILES) screenshots/*.gif
