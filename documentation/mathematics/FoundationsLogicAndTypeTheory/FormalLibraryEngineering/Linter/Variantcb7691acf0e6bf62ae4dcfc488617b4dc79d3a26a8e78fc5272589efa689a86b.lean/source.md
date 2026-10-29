# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Linter.Variantcb7691acf0e6bf62ae4dcfc488617b4dc79d3a26a8e78fc5272589efa689a86b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `11d69b241852d29edeb3170b54e9376fbee903ee` · SHA-256 `cb7691acf0e6bf62ae4dcfc488617b4dc79d3a26a8e78fc5272589efa689a86b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2022 Lars König. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Lars König
-/
module

prelude
public import Lean.Linter.Util
public import Lean.Linter.AmbiguousOpen
public import Lean.Linter.Builtin
public import Lean.Linter.CheckUnivs
public import Lean.Linter.ConstructorAsVariable
public import Lean.Linter.DefProp
public import Lean.Linter.Deprecated
public import Lean.Linter.DocsOnAlt
public import Lean.Linter.UnusedVariables
public import Lean.Linter.MissingDocs
public import Lean.Linter.Omit
public import Lean.Linter.List
public import Lean.Linter.Sets
public import Lean.Linter.UnusedSimpArgs
public import Lean.Linter.Coe
public import Lean.Linter.GlobalAttributeIn
public import Lean.Linter.EnvLinter
public import Lean.Linter.PersistentLintLog
public import Lean.Linter.Extra
public import Lean.Linter.TacticTypeCheck
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=389795e732dda431d817b5af06f913e3606963919a8fb0315cc13c496d20be33 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Linter/Variantcb7691acf0e6bf62ae4dcfc488617b4dc79d3a26a8e78fc5272589efa689a86b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
