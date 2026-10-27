---
name: task-belike-getty-curation
description: Use when adding, dropping or rewording an entry of Task::BeLike::GETTY, reading misc/fingerprint output, or releasing the Task.
---

# Curating Task::BeLike::GETTY

The Task is one POD file, `lib/Task/BeLike/GETTY.pm`. Its `=pkg` entries are
the runtime requirements; everything else is generated from them.

## What earns a place

An entry is something Getty **stands for**: a choice his distributions made
where there was something else to pick, or a distribution of his own he wants
in use. The list holds:

- **Getty's standard across the fleet** — `misc/fingerprint` shows where to
  look (start at 3 units; a family counts once), Getty decides what is his
  standard. What every distribution needs anyway — namespace cleaners, JSON
  backends, database drivers, test helpers — comes with the dependencies.
- **Getty's own distributions, each in its own right**, also when another
  entry brings it along:
  - pillars: Langertha, DBIO, Net::Async::MCP, Kubernetes::REST, IO::K8s,
    Locale::Simple, MooX::Cmd, the plugin bundle;
  - tools he runs: App::karr, Skilletor, App::codefork, MCP::Run,
    Langertha::Knarr, Langertha::Raider;
  - foundations others build on: Net::Async::MCP::Server,
    Net::Async::Kubernetes, Rex::LibSSH, WWW::Chain;
  - the AI ecosystem around Langertha: Langertha::Skeid,
    Net::Async::WebSearch, WWW::Crawl4AI, SQLite::VecDB.

  An API client for one service is installed by whoever talks to that
  service. (MCP itself is SRI's; it is on the list because the MCP servers
  use it.)
- **Daily tools** no `cpanfile` names: Data::Printer, Devel::NYTProf,
  App::cpanminus.
- **The stack of the newest web application** (Catalyst, Xslate,
  Locale::Simple), described by what it does, never by the private project's
  name.

Everything else that arrives through another entry comes with the
dependencies, perl brings what is core (unless choosing it is the point, like
Test::More), and `cpanm` on demand installs what needs a system library
(DBD::Pg) or belongs to one repository only. Every entry is in the CPAN
index — `misc/fingerprint` exits 1 otherwise.

## Format

TaskWeaver, not PodWeaver:

```pod
=pkgroup Group name

=pkg Module::Name [min_version]

Why it is here, in Getty's voice. Never empty.
```

The build turns this into `=head1 TASK CONTENTS` / `=head2` group /
`=head3 L<Module>`. `podchecker` on the source reports the `=pkg` commands as
errors; check the built file instead.

## Voice

First person, short, a reason rather than a summary of the module's docs.
Getty's original lines from 2012 stay where the entry stays ("The ultimate
power in the universe to make classes."). The `# ABSTRACT` stays ASCII.

## Workflow

1. `misc/fingerprint --cpan` (from the checkout, siblings under `~/dev`):
   counts per entry, then candidates.
2. Propose; Getty decides. The counts are evidence, the choice is his — a
   multi-select of candidates, grouped by kind, gets it in one round. Then
   edit the `=pkg` list. A hook runs `misc/readme`, which
   rewrites the README table from the list; CI runs `misc/readme --check`.
3. Add the change to `Changes` under `{{$NEXT}}`.
4. `dzil build && dzil test --release`, then commit (skill
   `getty-git-commit-style`).

## Release

Date versions: `20261027.000`; a second release that day is `N=1 dzil
release` → `.001`. NextRelease stamps `Changes`. The Task goes out after the
distributions it names, so every entry resolves on CPAN. Releasing is under
the publish gate.
