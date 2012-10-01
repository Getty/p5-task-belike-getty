use strict;
use warnings;
package Task::BeLike::GETTY;
# ABSTRACT: be like GETTY (without the insanity hopefully) -- use what drives his gears

=pkgroup Perl itself

=pkg perl 5.010001

You should have at least 5.10.1

=pkgroup Useful Command-Line Tools

=pkg App::Ack 2.00

Because grep is outdated

=pkgroup Working with CPAN distributions

=pkg App::cpanminus

Because I dont want useless crap on my screen.

=pkg App::CPAN::Fresh 0.10

Installs latest version of the dist... for the people who cant wait to get
their own release on other machines ;)

=pkgroup Object orientated working

=pkg Moo 1.000003

Cause it cost nothing and makes the code nice.

=pkg MooX 0.101

An easier way to load Moo and MooX plugins for it.

=pkg Moose 2.0604

The ultimate power in the universe to make classes

=pkgroup Application Frameworks

=pkg MooX::Cmd 0.002

L<MooX::Cmd> together with L<MooX::Options> gives you the ability to make easy
multicommand application.

=pkg MooX::Options 3.71

=pkgroup Event driven, non-blocking environment

=pkg Reflex 0.098

Because L<POE> is really outdated (and too complex)

=pkg Reflexive::Client::HTTP 0.003

Never saw a non-blocking environment which not used some HTTP client
somewhere in the process hehe :).

=pkgroup Database

=pkg DBIx::Class

There is no other way to access a database

=pkg DBIx::Class::AlwaysUpdate

=pkgroup Tools for authoring CPAN Distributions

=pkg Dist::Zilla 4

=pkg Dist::Zilla::PluginBundle::GETTY 0.003

=pkg Pod::Weaver 3.101631 it understands PODNAME comments

=pkgroup Web frameworks

=pkg Catalyst

For serious web application development

=pkg Web::Simple

For the simple stuff

=pkg Plack

The base for all those frameworks, and the best way to make your own base
for a webframework, even tho, you normally should be happy with L<Web::Simple>
and L<Catalyst>, but it gives interesting background knowledge to know
L<Plack> and PSGI. See L<http://plackperl.org/>.

=pkgroup Other Libraries I Use

=pkg DateTime 0.51 provides CLDR support with fewest known bugs

Working with timestamps is just wrong.

=pkg Devel::NYTProf

The most heavy overall debugging possible. Try it out once, to know what you
have.

=pkg JSON 2.12 fixes unicode handling from ASCII JSON

The most effective data storage way.

=pkg Scalar::Util 1.18

Nice toolset, check it out and get it known.

=pkg Text::Markdown 1.0.24 has trust_list_start

For making nice GitHub README and wiki pages.

=pkgroup Sanity-Check

These are just here to make sure other things work properly.

=pkg Mozilla::CA

=pkg Crypt::SSLeay

=pkg LWP::Protocol::https

=pkg IO::Socket::SSL

=cut

1;
