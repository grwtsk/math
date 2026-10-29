# Util Trans Imports — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `701b77fbf8bc32e034411742ee08b9fbea06dce0` · SHA-256 `48508703b9e0ae29ca609832990f7e916190719d83d18d1ae8c097432dac6804`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Damiano Testa. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Damiano Testa
-/

import Mathlib.Init

/-! # The `#trans_imports` command

`#trans_imports` reports how many transitive imports the current module has.
The command takes an optional string input: `#trans_imports str` also shows the transitively
imported modules whose name begins with `str`.
-/

/--
`#trans_imports` reports how many transitive imports the current module has.
The command takes an optional string input: `#trans_imports str` also shows the transitively
imported modules whose name begins with `str`.

Mostly for the sake of tests, the command also takes an optional `at_most x` input:
if the number of imports does not exceed `x`, then the message involves `x`, rather than the
actual, possibly varying, number of imports.
-/
syntax (name := transImportsStx) "#trans_imports" (ppSpace str)? (&" at_most " num)? : command

open Lean in
@[inherit_doc transImportsStx]
elab_rules : command
| `(command| #trans_imports $(stx)? $[at_most $le:num]?) => do
  let imports := (← getEnv).allImportedModuleNames
  let currMod := if let mod@(.str _ _) := ← getMainModule then m!"'{mod}' has " else ""
  let rest := match stx with
      | none => m!""
      | some str =>
        let imps := imports.filterMap fun (i : Name) =>
          if i.toString.startsWith str.getString then some i else none
        m!"\n\n{imps.size} starting with {str}:\n{imps.qsort (·.toString < ·.toString)}"
  match le with
    | none => logInfo m!"{currMod}{imports.size} transitive imports{rest}"
    | some bd =>
      if imports.size ≤ bd.getNat then
        logInfo m!"{currMod}at most {bd} transitive imports{rest}"
      else
        logWarningAt bd
          m!"{currMod}{imports.size} transitive imports, exceeding the expected bound of {bd}{rest}"
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=43120a2c0b4ead6e9d3e165c2c4b3e02f89cdbe98c2b5b0f6baa5c9789836c53 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TransImports/Variant48508703b9e0ae29ca609832990f7e916190719d83d18d1ae8c097432dac6804.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
