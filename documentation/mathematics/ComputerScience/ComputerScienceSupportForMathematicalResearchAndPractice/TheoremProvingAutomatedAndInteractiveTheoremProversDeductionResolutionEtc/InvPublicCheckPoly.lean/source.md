# Inv Public Check Poly — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `636885c6cb6fdd8e3a240e2b0653414da77de4bf` · SHA-256 `c1fbdd79e2fefb15243a756fa8c1886d5e1f360f327ef5653ba122cf21c7bb2a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Amazon.com, Inc. or its affiliates. All Rights Reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module
prelude
public import Lean.Meta.Tactic.Grind.Arith.CommRing.RingM
import Lean.Meta.Sym.Arith.Poly
public section
namespace Lean.Meta.Grind.Arith.CommRing

private def checkVars : RingM Unit := do
  let s ← getRing
  let mut num := 0
  for ({ expr }, var) in s.varMap do
    if h : var < s.vars.size then
      let expr' := s.vars[var]
      assert! isSameExpr expr expr'
    else
      unreachable!
    num := num + 1
  assert! s.vars.size == num

private def checkPoly (p : Poly) : RingM Unit := do
  assert! p.isSorted
  assert! p.checkCoeffs
  assert! p.checkNoUnitMon
  assert! !(p matches .num _)

private def checkBasis : RingM Unit := do
  let mut x := 0
  for c in (← getCommRing).basis do
    checkPoly c.p
    x := x + 1

private def checkQueue : RingM Unit := do
  for c in (← getCommRing).queue do
    checkPoly c.p

private def checkDiseqs : RingM Unit := do
  for c in (← getCommRing).diseqs do
    checkPoly c.d.p

private def checkRingInvs : RingM Unit := do
  checkVars
  checkBasis
  checkQueue
  checkDiseqs

def checkInvariants : GoalM Unit := do
  if (← isDebugEnabled) then
  for ringId in *...(← get').rings.size do
    RingM.run ringId do
      assert! (← getRingId) == ringId
      checkRingInvs

end Lean.Meta.Grind.Arith.CommRing
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9e158bc253c454c81bd301fda4e9afa97404b0d8ce6293e0f3d37d54ba58cdbb -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inv/Variantc1fbdd79e2fefb15243a756fa8c1886d5e1f360f327ef5653ba122cf21c7bb2a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
