# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Lang.Variante6ef4fbd7e71a3e3f61138ab0ac75a088236c2025f283284dbf7e8f5dfa306be

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f01fa0ea05bec413b75851d70a8ffb3bc25c28e3` · SHA-256 `e6ef4fbd7e71a3e3f61138ab0ac75a088236c2025f283284dbf7e8f5dfa306be`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Mac Malone. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mac Malone
-/
module

prelude
public import Init.Data.ToString.Basic

namespace Lake

/-- Lake configuration language identifier. -/
public inductive ConfigLang
| lean | toml
deriving Repr, DecidableEq

/-- Lake's default configuration language. -/
public abbrev ConfigLang.default : ConfigLang := .toml

public instance : Inhabited ConfigLang := ⟨.default⟩

public def ConfigLang.ofString? : String → Option ConfigLang
| "lean" => some .lean
| "toml" => some .toml
| _ => none

public def ConfigLang.fileExtension : ConfigLang → String
| .lean => "lean"
| .toml => "toml"

public instance : ToString ConfigLang := ⟨ConfigLang.fileExtension⟩
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=776bd6d0c5db58d47afd7bb4c08c25fc95522700e5316bbf97a08ba87384ccef -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lang/Variante6ef4fbd7e71a3e3f61138ab0ac75a088236c2025f283284dbf7e8f5dfa306be.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
