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

=pkg App::cpanminus 1.5018

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

=pkg MooseX::NonMoose

Sometimes something else wanna be a Moose!

=pkgroup Application Frameworks

=pkg MooX::HasEnv

Depend attributes on environment variables in L<Moo>.

=pkg MooX::Cmd 0.002

L<MooX::Cmd> together with L<MooX::Options> gives you the ability to make easy
multicommand application.

=pkg MooX::Options 3.71

=pkg MooseX::Getopt

If you use L<Moose>, then you should go this way for making options possible
in your application.

=pkg String::ProgressBar

Make nice progress bars in your application.

=pkgroup Event driven, non-blocking environment

=pkg Reflex 0.098

Because L<POE> is really outdated (and too complex)

=pkg Reflexive::Client::HTTP 0.003

Never saw a non-blocking environment which not used some HTTP client
somewhere in the process hehe :).

=pkgroup Database

=pkg DBIx::Class 0.08200

There is no other way to access a database

=pkg DBIx::Class::Candy 0.002101

Use this to define your L<DBIx::Class> result classes.

=pkg DBIx::Class::AlwaysUpdate

=pkg DBIx::Class::TimeStamp

=pkg DBIx::Class::EncodedColumn 0.00011

=pkg DBIx::Class::InflateColumn::DateTime

=pkg DBIx::Class::InflateColumn::Serializer 0.03

Very useful in combination with L<JSON> to get a simple random data storage
field. 

=pkg DBIx::Class::EncodedColumn::Crypt::Eksblowfish::Bcrypt

Best way to get a transparent (one way) encrypted field, like password.

=pkgroup Templating

=pkg Template 2.22

A very good easy to understand templating system. Its widly used and just be
prefered if speed is no relevance.

=pkg Template::Provider::Encoding

You will need this for utf8.

=pkg Template::Stash::XS

A faster stash for L<Template>, written in XS (so needs get compiled).

=pkg Text::Xslate 1.5018

The fastest template engine, but needs a bit more understandment, but can be
used with many template syntaxes (more or less identical of course).

=pkgroup Web frameworks

=pkg FCGI 0.74

Don't do CGI... please.... its dead.

=pkg Catalyst::Runtime 5.90016

For serious web application development

=pkg Catalyst::Plugin::AutoCRUD 2.122460

Giving an "auto of the box" SQL datamanager via a L<DBIx::Class> managed sql
source. Very cool.

=pkg Catalyst::Plugin::ChainedURI 0.002

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

=pkg Web::Simple 0.020

For the simple stuff

=pkg Plack 1.0004

The base for all those frameworks, and the best way to make your own base
for a webframework, even tho, you normally should be happy with L<Web::Simple>
and L<Catalyst>, but it gives interesting background knowledge to know
L<Plack> and PSGI. See L<http://plackperl.org/>.

=pkg Plack::Middleware::Debug

The so far best debugging console from the author of L<Plack> directly.

=pkgroup Validation

=pkg Email::Valid 0.185

Best thing so far to check for a valid email.

=pkgroup Translation

=pkg Locale::Simple 0.002

A simple way to integrate B<gettext> translations into Javascript and Perl with
the same API. It has anything included you need, you just need to have the
B<gettext> tools installed. You can check for a tool C<msgfmt> that is inside
there, if you are unsure, if you installed the proper gettext package of your
distribution.

=pkgroup Tools for authoring CPAN Distributions

=pkg Dist::Zilla 4

=pkg Dist::Zilla::PluginBundle::GETTY 0.003

This pluginbundle gives you directly all L<Dist::Zilla> plugins I use. Its a
package that tries to be very efficient. Many people dislike that it generates
the changes out of the git log. It is btw also used to generate this Task.

=pkg File::ShareDir::ProjectDistDir 0.3.2

Essential for working sane with the share directory of a distribution in
development context.

=pkgroup Testing

=pkg Test::More

Simple, straightforward, thats what you need.

=pkg Test::LoadAllModules

Easy way to have a test for checking that all modules compile at least.

=pkg Test::Dirs

For comparing resulting directories.

=pkg File::Temp

For getting temporary directories. Very handy for tests.

=pkgroup Making your own DarkPAN / GreyPAN

=pkg CPAN::Repository 0.007

=pkg Dist::Data 0.003

=pkg Module::Data 0.006

=pkg Path::ScanINC 0.002

=pkgroup Other Libraries I Use

=pkg Data::Printer 0.33

Nicest debugging output ever.

=pkg DateTime 0.77 provides CLDR support with fewest known bugs

Working with timestamps is just wrong.

=pkg DateTime::Format::Epoch 0.13

As reference to remind that you can find YOUR specific L<DateTime> string
definition out of the many L<https://metacpan.org/search?q=DateTime%3A%3AFormat%3A%3A|DateTime::Format:: distributions>.

=pkg DateTime::Format::Strptime 1.52

A very flexible format handler, if you really cant find what you need.

=pkg DateTime::Format::Human::Duration 0.60

A good way to display a time duration to humans.

=pkg JSON 2.53

The most effective data storage way ...

=pkg JSON::XS 2.33

... and make it quick!

=pkg YAML 0.84

If you want the data in the worst case created or modified by humans, then
this is the way to go.

=pkg Path::Class 0.26

The most simple way to work with path and file names. Highly recommended.

=pkg IO::All 0.46

The best sugar to access files and their data.

=pkg Config::INI 0.019

I like INI files.... dont hate me.

=pkg Devel::NYTProf

The most heavy overall debugging possible. Try it out once, to know what you
have.

=pkg Scalar::Util 1.18

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
