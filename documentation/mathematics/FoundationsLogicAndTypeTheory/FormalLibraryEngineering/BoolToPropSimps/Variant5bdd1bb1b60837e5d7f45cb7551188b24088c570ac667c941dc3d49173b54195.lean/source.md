# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.BoolToPropSimps.Variant5bdd1bb1b60837e5d7f45cb7551188b24088c570ac667c941dc3d49173b54195

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `cc75e0ba464bcb93958cb6bc67b380efe55f9971` · SHA-256 `5bdd1bb1b60837e5d7f45cb7551188b24088c570ac667c941dc3d49173b54195`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 University of Cambridge. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Tobias Grosser
-/

module

prelude
public import Lean.Meta.Tactic.Simp.Attr

public section

namespace Lean

builtin_initialize bool_to_prop : Lean.Meta.SimpExtension ←
  Lean.Meta.registerSimpAttr `bool_to_prop
    "simp lemmas converting boolean expressions in terms of `decide` into propositional statements"

end Lean
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3680a34b11090d045aa2772cfd850c211b83d052989356e5237cd17e721631ae -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BoolToPropSimps/Variant5bdd1bb1b60837e5d7f45cb7551188b24088c570ac667c941dc3d49173b54195.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
