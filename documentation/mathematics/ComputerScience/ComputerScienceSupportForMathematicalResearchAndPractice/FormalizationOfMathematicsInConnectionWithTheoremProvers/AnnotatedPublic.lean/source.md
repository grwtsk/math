# Annotated Public — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0d803ab3aea7b45d78409ecd835e01d8efe44ee9` · SHA-256 `f97f6812920667e07b4a87b9ea95ece44f5f5f6920de3f6c7170207e419d6984`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

````lean
/-
Copyright (c) 2025 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kim Morrison
-/
module
prelude
public import Init.Notation

public section
namespace Lean.Parser.Command

/--
`grind_annotated "YYYY-MM-DD"` marks the current file as having been manually annotated for `grind`.

When the LibrarySuggestion framework is called with `caller := "grind"` (as happens when using
`grind +suggestions`), theorems from grind-annotated files are excluded from premise selection.
This is because these files have already been manually reviewed and annotated with appropriate
`@[grind]` attributes.

The date argument (in YYYY-MM-DD format) records when the file was annotated. This is currently
informational only, but may be used in the future to detect files that have been significantly
modified since annotation and may need re-review.

Example:
```
grind_annotated "2025-01-15"
```

This command should typically appear near the top of a file, after imports.
-/
syntax (name := grindAnnotated) "grind_annotated" str : command

end Lean.Parser.Command
````

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f41061849366a7251c20abaf6bd8850b74e8a5ca6db47fb78ad20dc2ca0fe78b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Annotated/Variantf97f6812920667e07b4a87b9ea95ece44f5f5f6920de3f6c7170207e419d6984.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
