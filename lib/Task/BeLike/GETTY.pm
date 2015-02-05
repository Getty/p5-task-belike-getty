use strict;
use warnings;
package Task::BeLike::GETTY;
# ABSTRACT: be like GETTY (without the insanity hopefully) -- use what drives his gears

=pkgroup Perl itself

=pkg perl 5.010001

You should have at least 5.10.1

=pkgroup Useful Command-Line Tools

=pkg App::Ack

Because grep is outdated

=pkgroup Working with CPAN distributions

=pkg App::cpanminus

Because I don't want useless crap on my screen.

=pkg App::CPAN::Fresh

Installs latest version of the dist... for the people who cant wait to get
their own release on other machines ;)

=pkgroup Object orientated working

=pkg Moo

Cause it cost nothing and makes the code nice.

=pkg MooX

An easier way to load Moo and MooX plugins for it.

=pkg Moose

The ultimate power in the universe to make classes

=pkg MooseX::NonMoose

Sometimes something else wanna be a Moose!

=pkgroup Application Frameworks

=pkg MooX::HasEnv

Depend attributes on environment variables in L<Moo>.

=pkg MooX::Cmd

L<MooX::Cmd> together with L<MooX::Options> gives you the ability to make easy
multicommand application.

=pkg MooX::Options

=pkg MooseX::Getopt

If you use L<Moose>, then you should go this way for making options possible
in your application.

=pkg String::ProgressBar

Make nice progress bars in your application.

=pkgroup Event driven, non-blocking environment

=pkg Reflex

Because L<POE> is really outdated (and too complex)

=pkg Reflexive::Client::HTTP

Never saw a non-blocking environment which not used some HTTP client
somewhere in the process hehe :).

=pkgroup Database

=pkg DBIx::Class

There is no other way to access a database

=pkg DBIx::Class::Candy

Use this to define your L<DBIx::Class> result classes.

=pkg DBIx::Class::AlwaysUpdate

=pkg DBIx::Class::TimeStamp

=pkg DBIx::Class::EncodedColumn

=pkg DBIx::Class::InflateColumn::DateTime

=pkg DBIx::Class::InflateColumn::Serializer

Very useful in combination with L<JSON> to get a simple random data storage
field. 

=pkg DBIx::Class::EncodedColumn::Crypt::Eksblowfish::Bcrypt

Best way to get a transparent (one way) encrypted field, like password.

=pkgroup Templating

=pkg Text::Xslate

The fastest template engine, but needs a bit more understandment, but can be
used with many template syntaxes (more or less identical of course).

=pkgroup Web frameworks

=pkg Catalyst::Runtime

For serious web application development

=pkg Catalyst::Plugin::ChainedURI

A more simple way to get a specific url in L<Catalyst> then with the given
tools inside of L<Catalyst>.

=pkg Catalyst::Plugin::CustomErrorMessage

An error should be nice.

=pkg Catalyst::Plugin::Session

=pkg Catalyst::Plugin::Session::State::Cookie

=pkg Catalyst::Plugin::Session::Store::File

=pkg Catalyst::Plugin::Unicode::Encoding

Never forget to load this. You want utf8.

=pkg Catalyst::Authentication::Store::DBIx::Class

=pkg Catalyst::Plugin::Authentication

=pkg Catalyst::Plugin::Captcha

=pkg Catalyst::Plugin::StackTrace

Make a crash more useful, show a stack trace.

=pkg Catalyst::View::TT

=pkg Catalyst::View::JSON

=pkg Catalyst::View::Email::Template

=pkg Yeb

A very simple straightforward Web DSL, perfect for beginners.s

=pkg Web::Simple

For the simple stuff (more for experienced users)

=pkg Plack

The base for all those frameworks, and the best way to make your own base
for a webframework, even tho, you normally should be happy with L<Web::Simple>
and L<Catalyst>, but it gives interesting background knowledge to know
L<Plack> and PSGI. See L<http://plackperl.org/>.

=pkg Plack::Middleware::Debug

The so far best debugging console from the author of L<Plack> directly.

=pkgroup Web Development Helper

=pkg CSS::Minifier::XS

=pkg JavaScript::Minifier

=pkg Twiggy::Server

An AnyEvent webserver which allows to make websocket servers.

=pkg PocketIO

socket.io compatible websocket implementation.

=pkgroup Validation

=pkg Syccess

A very simple concept to validate hashs based on any way you want.

=pkg Email::Valid

Best thing so far to check for a valid email.

=pkgroup Translation

=pkg Locale::Simple

A simple way to integrate B<gettext> translations into Javascript and Perl with
the same API. It has anything included you need, you just need to have the
B<gettext> tools installed. You can check for a tool C<msgfmt> that is inside
there, if you are unsure, if you installed the proper gettext package of your
distribution.

=pkgroup Installation Tools

=pkg Installer

Install a giant group of requirements (of any kind) automatically into one
directory.

=pkgroup Tools for authoring CPAN Distributions

=pkg Dist::Zilla

=pkg Dist::Zilla::PluginBundle::Author::GETTY

This pluginbundle gives you directly all L<Dist::Zilla> plugins I use. Its a
package that tries to be very efficient. Many people dislike that it generates
the changes out of the git log. It is btw also used to generate this Task.

=pkg File::ShareDir::ProjectDistDir

Essential for working sane with the share directory of a distribution in
development context.

=pkgroup Testing

=pkg Test::More

Simple, straightforward, thats what you need.

=pkg Test::Dirs

For comparing resulting directories.

=pkg File::Temp

For getting temporary directories. Very handy for tests.

=pkgroup Making your own DarkPAN / GreyPAN

=pkg CPAN::Repository

=pkg Dist::Data

=pkg Module::Data

=pkg Path::ScanINC

=pkgroup Other Libraries I Use

=pkg Data::Printer

Nicest debugging output ever.

=pkg DateTime 0.77 provides CLDR support with fewest known bugs

Working with timestamps is just wrong.

=pkg DateTime::Format::Epoch

As reference to remind that you can find YOUR specific L<DateTime> string
definition out of the many L<https://metacpan.org/search?q=DateTime%3A%3AFormat%3A%3A|DateTime::Format:: distributions>.

=pkg DateTime::Format::Strptime

A very flexible format handler, if you really cant find what you need.

=pkg DateTime::Format::Human::Duration

A good way to display a time duration to humans.

=pkg JSON

The most effective data storage way ...

=pkg JSON::MaybeXS

... and make it quick!

=pkg YAML

If you want the data in the worst case created or modified by humans, then
this is the way to go.

=pkg Path::Tiny

=pkg Path::Class

=pkg IO::All

The best sugar to access files and their data.

=pkg Config::INI

I like INI files.... dont hate me.

=pkg Devel::NYTProf

The most heavy overall debugging possible. Try it out once, to know what you
have.

=pkg Scalar::Util

Nice toolset, check it out and get it known.

=pkg Text::Markdown 1.0.24 has trust_list_start

For making nice GitHub README and wiki pages.

=pkg HTTP::Message

You will need L<HTTP::Request> and L<HTTP::Response>. Use it with
L<LWP::UserAgent> or L<Reflexive::Client::HTTP>.

=pkg LWP::UserAgent

A simple way to make a blocking HTTP request based on L<HTTP::Request>.

=pkg URL::Encode

URL encoding

=pkg URI

Handling URLs itself, making parameter and so on. Very useful, still dislike
the API somehow.

=pkgroup Sanity-Check

These are just here to make sure other things work properly.

=pkg Mozilla::CA

=pkg Crypt::SSLeay

=pkg LWP::Protocol::https

=pkg IO::Socket::SSL

=cut

1;
