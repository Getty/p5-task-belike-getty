# Task-BeLike-GETTY

Be like GETTY (without the insanity hopefully) — use what drives his gears.

## Synopsis

```bash
cpanm Task::BeLike::GETTY
```

## Description

`Task::BeLike::GETTY` has no code of its own. Installing it installs what my
distributions are made of: not everything they depend on, but the choices that
make a distribution of mine look like one, picked where there was something
else to pick.

The list starts with counting: [`misc/fingerprint`](misc/fingerprint) reads
the `cpanfile` of every distribution I maintain, and I keep what several of
them chose on purpose. Whatever only arrives as the dependency of something
else on the list stays out, and so do core modules, unless choosing one is the
point. On top come the tools I work with every day, which no `cpanfile` names,
and the stack of my newest web application.

A few patterns run through all of it:

- Classes are [Moo](https://metacpan.org/pod/Moo) with
  [Type::Tiny](https://metacpan.org/pod/Type::Tiny) types, JSON goes through
  [JSON::MaybeXS](https://metacpan.org/pod/JSON::MaybeXS), every file through
  [Path::Tiny](https://metacpan.org/pod/Path::Tiny).
- API clients come as twins: a blocking `WWW::Something` on
  [LWP::UserAgent](https://metacpan.org/pod/LWP::UserAgent), and a
  non-blocking `Net::Async::Something` on
  [IO::Async](https://metacpan.org/pod/IO::Async) and
  [Future::AsyncAwait](https://metacpan.org/pod/Future::AsyncAwait). Both speak
  [HTTP::Message](https://metacpan.org/pod/HTTP::Message) and log through
  [Log::Any](https://metacpan.org/pod/Log::Any).
- Command-line tools are [MooX::Cmd](https://metacpan.org/pod/MooX::Cmd)
  subcommands with [MooX::Options](https://metacpan.org/pod/MooX::Options).
- Everything is built and released with
  [Dist::Zilla](https://metacpan.org/pod/Dist::Zilla) and
  [my plugin bundle](https://metacpan.org/pod/Dist::Zilla::PluginBundle::Author::GETTY)
  — this Task too.

## What it installs

The reason for every entry is in the
[documentation on MetaCPAN](https://metacpan.org/pod/Task::BeLike::GETTY).

<!-- misc/readme writes this table from the =pkg list -->
| Group | Modules |
|---|---|
| Perl itself | perl 5.20 or newer |
| Objects and types | Moo, namespace::clean, Type::Tiny, Moose, namespace::autoclean, MooseX::NonMoose, Module::Runtime |
| Data and files | JSON::MaybeXS, Cpanel::JSON::XS, YAML::PP, YAML::XS, Path::Tiny, File::ShareDir::ProjectDistDir, DateTime |
| Logging and debugging | Log::Any, Data::Printer, Devel::NYTProf |
| Command-line applications | MooX::Cmd, MooX::Options |
| HTTP and APIs | LWP::UserAgent, LWP::Protocol::https, HTTP::Message, URI, Crypt::JWT |
| Non-blocking | IO::Async, Future, Future::AsyncAwait, Net::Async::HTTP, IO::Async::SSL |
| Web applications | Plack, Catalyst::Runtime, Catalyst::Plugin::ChainedURI, Catalyst::Plugin::Session, Catalyst::Plugin::Session::State::Cookie, Catalyst::Plugin::Authentication, Catalyst::View::Xslate, Catalyst::View::JSON, Text::Xslate, Locale::Simple, Mojolicious |
| Databases | DBIO, DBD::SQLite |
| AI and agents | Langertha, MCP, Net::Async::MCP |
| Infrastructure | Kubernetes::REST, IO::K8s, Rex |
| Testing | Test::More, Test::Exception |
| Writing and releasing distributions | Dist::Zilla, Dist::Zilla::PluginBundle::Author::GETTY, App::cpanminus, App::karr |

## Keeping the list current

```bash
misc/fingerprint          # every =pkg with the number of projects using it,
                          # then what several projects use that is not listed
misc/fingerprint --cpan   # plus version, date and river from MetaCPAN
```

It reads the checkouts next to this one, counts a family of repositories
once, and groups modules by CPAN distribution. It exits with 1 when an entry
is not in the CPAN index. `misc/fingerprint --help` has the details.

## Versions

The version is the release date: `20261027.000` is the first release of
27 October 2026, a second one that day would be `20261027.001`.

## Author

Torsten Raudssus <torsten@raudssus.de>

## License

This is free software; you can redistribute it and/or modify it under the same terms as the Perl 5 programming language system itself.
