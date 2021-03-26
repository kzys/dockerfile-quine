FROM ruby
ENV s='FROM ruby@ENV s=X@ENTRYPOINT ruby "-es=ENV[%q{s}];puts s.gsub(64.chr,10.chr).sub(/X/,39.chr+s+39.chr)"'
ENTRYPOINT ruby "-es=ENV[%q{s}];puts s.gsub(64.chr,10.chr).sub(/X/,39.chr+s+39.chr)"
