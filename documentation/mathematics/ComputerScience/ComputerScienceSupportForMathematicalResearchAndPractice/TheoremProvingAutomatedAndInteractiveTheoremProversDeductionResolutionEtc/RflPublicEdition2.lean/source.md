# Rfl Public Edition2 — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e6f95243d433f833a48e81014f3d2c4ce8950e58` · SHA-256 `f72f8008d4080b2f9984e74b1b989e464f39ff48b5ab2cc481b2d1041dfe8d60`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/
module

public import Aesop.Frontend.Attribute

public section

open Lean Lean.Elab.Tactic

namespace Aesop.BuiltinRules

@[aesop safe 0 (rule_sets := [builtin])]
meta def rfl : RuleTac :=
  RuleTac.ofTacticSyntax λ _ => `(tactic| rfl)

end Aesop.BuiltinRules
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a8ef5d5861c7c7bfd2478378b894039667e62d3e41778f8d4e5c506faa8e530c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rfl/Variantf72f8008d4080b2f9984e74b1b989e464f39ff48b5ab2cc481b2d1041dfe8d60.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
