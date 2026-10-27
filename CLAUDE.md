# Task-BeLike-GETTY

A CPAN Task: it has no code, only a list of distributions, each with a
paragraph on why it is there. The work here is choosing entries and writing
POD, so the main session does it directly — there is no agent team and no
karr board.

## Map

| File | Role |
|---|---|
| `lib/Task/BeLike/GETTY.pm` | the list: `=pkgroup` / `=pkg` entries, the only source |
| `README.md` | GitHub page; its table is written by `misc/readme` |
| `misc/fingerprint` | counts what the sibling distributions under `~/dev` use, compares with the list |
| `misc/readme` | writes the README table from the list; `--check` for CI |
| `Changes` | `{{$NEXT}}` entries, stamped at release |

Curating, the format and the release: skill `task-belike-getty-curation`.

## Automatic

After every file change a hook (`.claude/settings.json`) runs `misc/readme`,
so the README table follows the `=pkg` list without a second edit. Edit the
list, not the table.

## Build and test

```bash
dzil build
dzil test --release
misc/readme --check
misc/fingerprint
```

`[@Author::GETTY]` with `task = 1`: date versions, TaskWeaver, NextRelease.
Releasing, pushing and tagging wait for Getty's go.
