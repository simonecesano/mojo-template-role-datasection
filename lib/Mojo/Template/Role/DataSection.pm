use strict;
use warnings;
package Mojo::Template::Role::DataSection;

use Mojo::Base -role;

use Mojo::Loader qw/data_section/;

# ABSTRACT: role for rendering templates from data section

sub render_section {
    my $self = shift;
    my $section = shift;
    $self->render(data_section([ caller() ]->[0], $section ), @_)
};

1;
