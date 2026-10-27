package Task::BeLike::GETTY;
# ABSTRACT: be like GETTY (without the insanity hopefully) -- use what drives his gears

use strict;
use warnings;

1;

__END__

=head1 SYNOPSIS

  cpanm Task::BeLike::GETTY

=head1 DESCRIPTION

This Task installs what my distributions are made of. Not everything they
depend on: the choices that make a distribution of mine look like one, picked
where there was something else to pick.

The list comes from counting. I go through the F<cpanfile> of every
distribution I maintain and keep what several of them chose on purpose. Core
modules stay out, and so does whatever only arrives as the dependency of
something else on this list.

A few patterns run through all of it:

=over 4

=item *

Classes are L<Moo> with L<Type::Tiny> types, JSON goes through
L<JSON::MaybeXS>, every file through L<Path::Tiny>.

=item *

API clients come as twins: a blocking C<WWW::Something> on
L<LWP::UserAgent>, and a non-blocking C<Net::Async::Something> on L<IO::Async>
and L<Future::AsyncAwait>. Both speak the request and response classes of
L<HTTP::Message>, and both log through L<Log::Any>.

=item *

Command-line tools are L<MooX::Cmd> subcommands with L<MooX::Options>.

=item *

Everything is built and released with L<Dist::Zilla> and
L<my plugin bundle|Dist::Zilla::PluginBundle::Author::GETTY> - this Task too.

=back

=pkgroup Perl itself

=pkg perl 5.020

My distributions declare 5.20 as their floor. Develop on a current perl
anyway.

=pkgroup Objects and types

=pkg Moo

My default object system. Cheap to load, and it turns into a L<Moose> class
the moment something asks for the meta-object. A Moo class ends its imports
with L<namespace::clean>.

=pkg namespace::clean

Keeps the imported functions of a L<Moo> class from turning into methods.

=pkg Type::Tiny

Types for attributes and parameters, mostly through L<Types::Standard>.
Where a type pins down something real - not on every attribute by reflex.

=pkg Moose

The ultimate power in the universe to make classes. I reach for it when the
meta-object protocol earns its keep: L<Dist::Zilla> plugins, DSLs built with
L<Moose::Exporter>, L<Langertha> and L<DBIO>. A Moose class uses
L<namespace::autoclean> and ends with C<make_immutable>.

=pkg namespace::autoclean

The L<Moose> side of L<namespace::clean>.

=pkg MooseX::NonMoose

Sometimes something else wants to be a Moose! For Moose classes that inherit
from a class that is not one, like the result classes of L<DBIO>.

=pkg Module::Runtime

Loading a class whose name comes from configuration: engines, plugins,
generated classes. A class name known while writing the code gets a plain
C<use>.

=pkgroup Data and files

=pkg JSON::MaybeXS

JSON, always through this one - never L<JSON::PP> or L<JSON::XS> directly.
Encoders get C<canonical> and C<convert_blessed>, so the same data gives the
same bytes on every run.

=pkg Cpanel::JSON::XS

... and make it quick! The backend L<JSON::MaybeXS> picks first.

=pkg YAML::PP

YAML that humans write, read by a parser that follows the spec.

=pkg YAML::XS

YAML that machines write, by the megabyte - Kubernetes manifests.

=pkg Path::Tiny

Every file operation. Not L<File::Spec>, not a bare C<open>.

=pkg File::ShareDir::ProjectDistDir

Essential for working sane with the share directory of a distribution: the
same code finds F<share/> in a checkout and after installation.

=pkg DateTime

Working with timestamps is just wrong, so let somebody else get it right.

=pkgroup Logging and debugging

=pkg Log::Any

Libraries log through Log::Any and leave the output to the application that
uses them.

=pkg Data::Printer

Nicest debugging output ever: C<use DDP; p $thing;>. Never L<Data::Dumper> in
shipped code - a commented-out C<p> stays behind as a marker where debugging
was needed.

=pkg Devel::NYTProf

The heaviest debugging possible. When something is slow, measure before
guessing.

=pkgroup Command-line applications

=pkg MooX::Cmd

Subcommands as classes, so a tool with ten commands stays ten small files.

=pkg MooX::Options

Options as attributes. Together with L<MooX::Cmd> that is the whole
command line.

=pkgroup HTTP and APIs

=pkg LWP::UserAgent

The blocking half of every API twin: C<WWW::Something> sends its requests
through LWP.

=pkg LWP::Protocol::https

Because an API without https is no API.

=pkg HTTP::Message

L<HTTP::Request> and L<HTTP::Response>, shared by both halves of a twin: the
blocking client hands them to L<LWP::UserAgent>, the non-blocking one to
L<Net::Async::HTTP>.

=pkg URI

Building URLs and query strings. Still dislike the API somehow, still use it
everywhere.

=pkg Crypt::JWT

Checking the tokens of OpenID Connect providers like Keycloak, Authentik and
Zitadel.

=pkgroup Non-blocking

=pkg IO::Async

The event loop under everything non-blocking. C<Net::Async::Something> is the
twin of C<WWW::Something>, written on IO::Async.

=pkg Future

What every non-blocking method returns.

=pkg Future::AsyncAwait

C<async> and C<await>, so a chain of futures reads like the blocking code it
replaces.

=pkg Net::Async::HTTP

HTTP for L<IO::Async>, speaking the same L<HTTP::Request> and
L<HTTP::Response> as the blocking twin.

=pkg IO::Async::SSL

TLS for L<IO::Async> and L<Net::Async::HTTP>.

=pkgroup Web applications

=pkg Plack

PSGI underneath everything that answers HTTP - middleware, small servers and
the applications below. See L<https://plackperl.org/>.

=pkg Catalyst::Runtime

For serious web application development. Still.

=pkg Catalyst::Plugin::ChainedURI

A simpler way to get the URL of a chained action than with the tools inside
L<Catalyst>.

=pkg Catalyst::Plugin::Session

Sessions, ...

=pkg Catalyst::Plugin::Session::State::Cookie

... kept in a cookie.

=pkg Catalyst::Plugin::Authentication

Logins, with the user store and the credential check as separate pieces.

=pkg Catalyst::View::Xslate

L<Text::Xslate> as the view.

=pkg Catalyst::View::JSON

For the actions that answer in JSON.

=pkg Text::Xslate

The fastest template engine, and it speaks more than one template syntax.

=pkg Locale::Simple

Translations with B<gettext>, with the same API in Perl, JavaScript and a few
more languages. It brings everything else it needs; only the B<gettext> tools
have to be installed - if C<msgfmt> runs, you are set.

=pkg Mojolicious

Where a server is built on Mojo - the L<MCP> servers are.

=pkgroup Databases

=pkg DBIO

Relational mapping on top of L<DBI>, a modern fork of L<DBIx::Class>, with a
distribution per database driver.

=pkg DBD::SQLite

The database that is always there - for tests and for small tools.
PostgreSQL is the other one I reach for, through L<DBD::Pg>; it needs the
PostgreSQL client library, so it stays off this list.

=pkgroup AI and agents

=pkg Langertha

One API for many LLM providers - OpenAI, Anthropic, Gemini, Ollama, vLLM
and more - with streaming, embeddings and MCP tool calls.

=pkg MCP

Model Context Protocol servers in Perl, on L<Mojolicious>.

=pkg Net::Async::MCP

The client side of MCP, on L<IO::Async> - for servers in Perl as well as for
external ones over stdio.

=pkgroup Infrastructure

=pkg Kubernetes::REST

Talking to the Kubernetes API.

=pkg IO::K8s

The objects of the Kubernetes API as typed Perl classes, so what goes to the
cluster has the types Kubernetes insists on.

=pkg Rex

Deploying to machines, with the deployment written in Perl.

=pkgroup Testing

=pkg Test::More

Simple, straightforward, that's what you need. Every test ends with
C<done_testing>.

=pkg Test::Exception

Proving that something croaks, and with what message.

=pkgroup Writing and releasing distributions

=pkg Dist::Zilla

Every distribution is built and released with it.

=pkg Dist::Zilla::PluginBundle::Author::GETTY

All the plugins I use, in one bundle. It builds this Task as well.

=pkg App::cpanminus

Because I don't want useless crap on my screen.

=pkg App::karr

A kanban board that lives in git refs: every repository carries its own, and
my agents and I take the cards from it.

=cut
