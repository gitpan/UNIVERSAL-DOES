use strict;
use inc::Module::Install;

all_from 'lib/UNIVERSAL/DOES.pm';

test_requires 'Test::More' => 0.47;

tests 't/*.t';
author_tests 'xt';

auto_set_repository() if -d '.git';

clean_files qw(
	UNIVERSAL-DOES-* *.stackdump
	cover_db
	nytprof
	*.out
);

WriteAll check_nmake => 0;
