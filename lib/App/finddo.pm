package App::finddo;

# DATE
# VERSION

use strict;
use warnings;

our %SPEC;

$SPEC{finddo} = {
    v => 1.1,
    summary => 'Search for files/directories and run command',
    'description.alt.env.cmdline' => <<'_',


_
    'description.alt.env.perl' => <<'_',


_
    args => {
        smallest => {
            schema => 'bool*',
        },
        largest => {
            schema => 'bool*',
        },
        oldest => {
            schema => 'bool*',
        },
        newest => {
            schema => 'bool*',
        },

        files => {
            schema => 'bool*',
        },
        dirs => {
            schema => 'bool*',
        },

        # XXX add arg: recursive (-r)
        # XXX add arg:
        # XXX add arg: max_depth
        max_result => {
            schema => 'int*',
            cmdline_aliases => {n=>{}},
        },
    },
    args_rels => {
        'choose_one&' => [
            [qw/sort newest oldest smallest largest/],
            [qw/files dirs/],
        ],
    },
    links => [
        {url=>'prog:find', summary => 'Unix command'},
    ],
};
sub finddo {
}

1;
# ABSTRACT:

=head1 DESCRIPTION

See included script L<finddo>.
