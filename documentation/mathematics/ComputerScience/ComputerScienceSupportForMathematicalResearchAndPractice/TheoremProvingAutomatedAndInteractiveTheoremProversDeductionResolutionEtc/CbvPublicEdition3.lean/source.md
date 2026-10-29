# Cbv Public Edition3 — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4d2ecd8800425b1d25d88bf62ef716896917fb66` · SHA-256 `c6e2b3d1524b94ebb452ce6a01f837a1b92ff6a6f8f944c7b1ba4d6f2d0ab1e0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Wojciech Różowski
-/

module

prelude
public import Lean.Meta.Tactic.Cbv
public import Lean.Elab.Tactic.Conv.Basic

section

namespace Lean.Elab.Tactic.Conv
open Lean.Meta.Tactic.Cbv


@[builtin_tactic Lean.Parser.Tactic.Conv.cbv] public def evalCbv : Tactic := fun stx => withMainContext do
  if cbv.warning.get (← getOptions) then
    logWarningAt stx "The `cbv` usage warning option is enabled. Disable it by setting `set_option cbv.warning false`."
  let lhs ← getLhs
  let evalResult ← cbvEntry lhs
  match evalResult with
  | .rfl .. => return ()
  | .step e' proof _ _ =>
    updateLhs e' proof

end Lean.Elab.Tactic.Conv
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=47afd6a15c441d017c810b41a8433576e19bdc24f44441751382efddbde54fca -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cbv/Variantc6e2b3d1524b94ebb452ce6a01f837a1b92ff6a6f8f944c7b1ba4d6f2d0ab1e0.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
