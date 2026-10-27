---
name: task-belike-getty-curation
description: Use when adding, dropping or rewording an entry of Task::BeLike::GETTY, reading misc/fingerprint output, or releasing the Task.
---

# Curating Task::BeLike::GETTY

The Task is one POD file, `lib/Task/BeLike/GETTY.pm`. Its `=pkg` entries are
the runtime requirements; everything else is generated from them.

## What earns a place

An entry is a **choice**: something Getty's distributions picked where there
was something else to pick. The list holds:

- **Patterns across the fleet** — a distribution used on purpose by several
  units in `misc/fingerprint` (start looking at 3; a family counts once).
- **Getty's own pillars on CPAN** — Langertha, DBIO, Net::Async::MCP,
  Kubernetes::REST, IO::K8s, Locale::Simple, App::karr and the plugin bundle.
  (MCP itself is SRI's; it is on the list because the MCP servers use it.)
- **Daily tools** no `cpanfile` names: Data::Printer, Devel::NYTProf,
  App::cpanminus.
- **The stack of the newest web application** (Catalyst, Xslate,
  Locale::Simple), described by what it does, never by the private project's
  name.

It leaves to its dependencies what arrives through another entry, to perl
what is core (unless choosing it is the point, like Test::More), and to
`cpanm` on demand what needs a system library (DBD::Pg) or belongs to one
repository only. Every entry is in the CPAN index — `misc/fingerprint` exits
1 otherwise.

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
2. Decide, then edit the `=pkg` list. A hook runs `misc/readme`, which
   rewrites the README table from the list; CI runs `misc/readme --check`.
3. Add the change to `Changes` under `{{$NEXT}}`.
4. `dzil build && dzil test --release`, then commit (skill
   `getty-git-commit-style`).

## Release

Date versions: `20261027.000`; a second release that day is `N=1 dzil
release` → `.001`. NextRelease stamps `Changes`. The Task goes out after the
distributions it names, so every entry resolves on CPAN. Releasing is under
the publish gate.
