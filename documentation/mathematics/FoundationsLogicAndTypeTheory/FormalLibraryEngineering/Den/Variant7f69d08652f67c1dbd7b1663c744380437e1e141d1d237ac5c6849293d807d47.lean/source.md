# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Den.Variant7f69d08652f67c1dbd7b1663c744380437e1e141d1d237ac5c6849293d807d47

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `731ad8cb8098fd64c1e2d69e87ff5f892d0cece5` · SHA-256 `7f69d08652f67c1dbd7b1663c744380437e1e141d1d237ac5c6849293d807d47`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Amazon.com, Inc. or its affiliates. All Rights Reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module
prelude
public import Lean.Meta.Tactic.Grind.Arith.Linear.LinearM
import Lean.Meta.Tactic.Grind.Arith.CommRing.SafePoly
namespace Lean.Meta.Grind.Arith.Linear

partial def cleanupDenominators' (c : α)
    (getPoly : α → CommRing.Poly)
    (updateCnstr : α → CommRing.Poly → Int → Var → Nat → α)
    : LinearM α := do
  let s ← getStruct
  if s.fieldInst?.isNone then return c
  let some (_, char) := s.charInst? | return c
  unless char == 0 do return c
  withRingM <| go c
where
  go (c : α) : CommRing.RingM α := do
    let p := getPoly c
    let some (val, x) ← p.findInvNumeralVar? | return c
    let n := p.maxDegreeOf x
    let p := p.mulConst (val ^ n)
    let p := p.cancelVar val x
    go (updateCnstr c p val x n)

public def RingIneqCnstr.cleanupDenominators (c : RingIneqCnstr) : LinearM RingIneqCnstr :=
  cleanupDenominators' c (·.p) fun c p val x n => { c with p, h := .cancelDen c val x n }

public def RingEqCnstr.cleanupDenominators (c : RingEqCnstr) : LinearM RingEqCnstr :=
  cleanupDenominators' c (·.p) fun c p val x n => { c with p, h := .cancelDen c val x n }

public def RingDiseqCnstr.cleanupDenominators (c : RingDiseqCnstr) : LinearM RingDiseqCnstr := do
  let s ← getStruct
  if s.noNatDivInst?.isNone then return c
  cleanupDenominators' c (·.p) fun c p val x n => { c with p, h := .cancelDen c val x n }

end Lean.Meta.Grind.Arith.Linear
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5730bb5b701c2e6d8516b5728efab6bea291b284891f6c2df94e867b5f48ccfb -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Den/Variant7f69d08652f67c1dbd7b1663c744380437e1e141d1d237ac5c6849293d807d47.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
