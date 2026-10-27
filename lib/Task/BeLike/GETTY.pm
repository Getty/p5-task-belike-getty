package Task::BeLike::GETTY;
# ABSTRACT: be like GETTY (without the insanity hopefully) -- use what drives his gears

use strict;
use warnings;

1;

__END__

=head1 SYNOPSIS

  cpanm Task::BeLike::GETTY

=head1 DESCRIPTION

This Task installs what my distributions are made of and what I stand for:
the choices that make a distribution of mine look like one, picked where there
was something else to pick, and the distributions of my own I want to see in
use.

The list starts with counting: F<misc/fingerprint>, shipped with this Task,
reads the F<cpanfile> of every distribution I maintain, and I keep what
several of them chose on purpose and what I would choose again. What every
distribution needs anyway comes with the dependencies, and so do core
modules, unless choosing one is the point. On top come the tools I work with
every day, which no F<cpanfile> names, the stack of my newest web application,
and my own distributions, each in its own right: the tools I run, the
foundations other distributions build on, and the agents and services around
L<Langertha>.

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

Where my distributions declare a minimum perl, it is 5.20 for most of them.
Develop on a current perl anyway.

=pkgroup Objects and types

=pkg Moo

My default object system. Cheap to load, and it turns into a L<Moose> class
the moment something asks for the meta-object.

=pkg Type::Tiny

Types for attributes and parameters, mostly through L<Types::Standard>.
Where a type pins down something real - not on every attribute by reflex.

=pkg Moose

The ultimate power in the universe to make classes. I reach for it when the
meta-object protocol earns its keep: L<Dist::Zilla> plugins, DSLs built with
L<Moose::Exporter>, L<Langertha> and L<DBIO>. A Moose class ends with
C<make_immutable>.

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
same bytes on every run. ... and make it quick! Wherever there is a compiler,
it brings L<Cpanel::JSON::XS> along and picks it first.

=pkg YAML::XS

YAML through libyaml, quick enough for Kubernetes manifests by the megabyte.

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

=pkg WWW::Chain

A login and the pages behind it, a paginated fetch: requests that depend on
the answers to earlier ones, as one object. The chain says which
L<HTTP::Request> comes next, and whoever runs it - L<LWP::UserAgent> or an
event loop - sends it.

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

=pkg Web::Simple

For the simple stuff (more for experienced users).

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

=pkgroup Databases

=pkg DBIO

Relational mapping on top of L<DBI>, a modern fork of L<DBIx::Class>, with a
distribution per database driver.

=pkgroup AI and agents

=pkg Langertha

One API for many LLM providers - OpenAI, Anthropic, Gemini, Ollama, vLLM
and more - with streaming, embeddings and MCP tool calls.

=pkg Langertha::Knarr

C<knarr>: one hub in front of any backend - a L<Langertha::Raider>, a plain
Langertha engine, a remote agent - speaking the wire protocols of OpenAI,
Anthropic, Ollama, A2A, ACP and AG-UI. Point Claude Code at it, and with
Langfuse keys every call is traced.

=pkg Langertha::Raider

C<raider>: an autonomous agent on the command line, with files, shell, web
search and MCP tools, on any provider Langertha speaks - and the agent engine
underneath, for building your own.

=pkg Langertha::Skeid

One process in front of many LLM nodes: it routes by model and load, speaks
OpenAI, Anthropic and Ollama to the clients, and writes a usage event for
every request, priced for billing.

=pkg MCP

Model Context Protocol servers in Perl, on L<Mojolicious>.

=pkg MCP::Run

C<mcp-run-bash>: an MCP server with one tool that runs shell commands, and
filters for more than thirty of them, so the model reads the essence instead
of 900 lines of noise. The same filters come as a Claude Code hook,
C<mcp-run-compress>.

=pkg Net::Async::MCP

The client side of MCP, on L<IO::Async> - for servers in Perl as well as for
external ones over stdio.

=pkg Net::Async::MCP::Server

The server side, on L<IO::Async>: a base class for MCP servers, speaking the
stateless revision of the spec.

=pkg Net::Async::WebSearch

One query to every search provider I register - DuckDuckGo, SearxNG, Brave,
Serper and more - with the results deduplicated and merged. The web search
of L<Langertha::Raider>.

=pkg WWW::Crawl4AI

A web page as Markdown for an agent, through Crawl4AI: it escalates from a
plain fetch to a browser and a proxy until the page comes back, and tells
which attempt won.

=pkg SQLite::VecDB

A vector database in one SQLite file, through sqlite-vec - with the
embeddings made by L<Langertha>, if you like.

=pkgroup Infrastructure

=pkg Kubernetes::REST

Talking to the Kubernetes API.

=pkg IO::K8s

The objects of the Kubernetes API as typed Perl classes, so what goes to the
cluster has the types Kubernetes insists on.

=pkg Net::Async::Kubernetes

The non-blocking twin of L<Kubernetes::REST>, on L<IO::Async>: watches that
reconnect on their own, exec, logs, port forwarding and a controller loop.

=pkg Rex

Deploying to machines, with the deployment written in Perl.

=pkg Rex::LibSSH

My connection for L<Rex>: plain SSH through libssh, so the other side needs
no SFTP.

=pkgroup Testing

=pkg Test::More

Simple, straightforward, that's what you need. Every test ends with
C<done_testing>.

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

=pkg Skilletor

The skills, agents and rules my repositories share, installed from their
sources and kept in sync - the Perl port of skilletor.

=pkg App::codefork

C<codefork>: renaming a project, a module or a namespace across a whole tree,
in file names and contents, from a three-line config. The full diff comes
first; nothing is written before C<apply>.

=cut
