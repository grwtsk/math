# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.TacticBundle.Variantb179cdae89f28f2dab07453c8c4fab28594302e1640a2df1d80836bd047872f8

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ca26e8d70d4aec59f70aeb5c4cc26af0dac63bfa` · SHA-256 `b179cdae89f28f2dab07453c8c4fab28594302e1640a2df1d80836bd047872f8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
  TacticBundle.lean — Kernel verification for tactic bundles.
  Elaborates and type-checks embedded tactics without executing them.
-/
import Lean
import Kernel.Core

namespace Kernel.TacticBundle

open Lean Elab Meta Kernel

/-- Internal structure matching the JSON `TacticBundle`. -/
structure TacticBundle where
  name  : String
  code  : String  -- Lean tactic code (as text)
  descr : String
  deriving Repr

/-- Result of attempting to elaborate a tactic script. -/
structure TacticCertResult where
  success : Bool
  message : Option String
  deriving Repr

/-- Elaborate the tactic string and check syntactic + semantic correctness. -/
def certify (b : TacticBundle) : IO Bool := do
  let env ← mkEmptyEnvironment
  let opts := Options.empty
  let input := b.code

  try
    -- Attempt to parse and elaborate the tactic code (not executed)
    let cmdStx ← Parser.runParserCategory input `tactic
    let _ ← Elab.Command.elabCommandTopLevel cmdStx
    return true
  catch e =>
    IO.println s!"[TacticCert] failed for '{b.name}': {e.toString}"
    return false

/-- Kernel-internal feature flag table for known certified tactics. -/
def KernelTactics : IO.Ref (Std.HashSet String) := unsafe unsafeIO (IO.mkRef {})

/-- Register a certified tactic bundle by name. Gated by feature flag. -/
def register (b : TacticBundle) : IO Unit := do
  if ← certify b then
    let h ← KernelTactics.get
    KernelTactics.set (h.insert b.name)
    IO.println s!"[TacticCert] tactic '{b.name}' registered"
  else
    throw <| IO.userError s!"Tactic '{b.name}' failed certification."

/-- Query registered tactic names. -/
def known : IO (List String) := do
  let h ← KernelTactics.get
  return h.toList

end Kernel.TacticBundle
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=86e46f305502488f7921b1e4fcf69ac17e5d5a0b22b6e251132fdb9c32f42046 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TacticBundle/Variantb179cdae89f28f2dab07453c8c4fab28594302e1640a2df1d80836bd047872f8.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
