# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LinearM.Variantb1242ad24d2ecafc1828f6d7708d3579a1749b5ed93ea5162d379a764237ad8d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e5f316e6297e75f26f79fefc988874d1d2eb0137` · SHA-256 `b1242ad24d2ecafc1828f6d7708d3579a1749b5ed93ea5162d379a764237ad8d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Amazon.com, Inc. or its affiliates. All Rights Reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module
prelude
public import Lean.Meta.Tactic.Grind.Arith.Linear.Types
public import Lean.Meta.Tactic.Grind.Arith.CommRing.RingM
public section
namespace Lean.Meta.Grind.Arith.Linear
open Sym.Arith (MonadCanon)

def get' : GoalM State := do
  linearExt.getState

@[inline] def modify' (f : State → State) : GoalM Unit := do
  linearExt.modifyState f

structure LinearM.Context where
  structId : Nat

class MonadGetStruct (m : Type → Type) where
  getStruct : m Struct

export MonadGetStruct (getStruct)

@[always_inline]
instance (m n) [MonadLift m n] [MonadGetStruct m] : MonadGetStruct n where
  getStruct    := liftM (getStruct : m Struct)

/-- We don't want to keep carrying the `StructId` around. -/
abbrev LinearM := ReaderT LinearM.Context GoalM

abbrev LinearM.run (structId : Nat) (x : LinearM α) : GoalM α :=
  x { structId }

abbrev getStructId : LinearM Nat :=
  return (← read).structId

protected def LinearM.getStruct : LinearM Struct := do
  let s ← get'
  let structId ← getStructId
  if h : structId < s.structs.size then
    return s.structs[structId]
  else
    throwError "`grind` internal error, invalid structure id"

instance : MonadGetStruct LinearM where
  getStruct := LinearM.getStruct

open CommRing

def getRingCore? (ringId? : Option Nat) : GoalM (Option Ring) := do
  let some ringId := ringId? | return none
  RingM.run ringId do return some (← getRing)

def throwNotRing : LinearM α :=
  throwError "`grind linarith` internal error, structure is not a ring"

def throwNotCommRing : LinearM α :=
  throwError "`grind linarith` internal error, structure is not a commutative ring"

def getRing? : LinearM (Option Ring) := do
  getRingCore? (← getStruct).ringId?

instance : MonadCanon LinearM where
  canonExpr e := do shareCommon (← canon e)
  synthInstance? e := Grind.synthInstance? e

def LinearM.getRing : LinearM Ring := do
  let some ring ← getRing?
    | throwNotCommRing
  return ring

instance : MonadRing LinearM where
  getRing := LinearM.getRing
  modifyRing f := do
    let some ringId := (← getStruct).ringId? | throwNotCommRing
    RingM.run ringId do modifyRing f

def withRingM (x : RingM α) : LinearM α := do
  let some ringId := (← getStruct).ringId?
    | throwNotCommRing
  RingM.run ringId x

@[inline] def modifyStruct (f : Struct → Struct) : LinearM Unit := do
  let structId ← getStructId
  modify' fun s => { s with structs := s.structs.modify structId f }

end Lean.Meta.Grind.Arith.Linear
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=bbb0bcaf77d98c6b7fd6e39b79f235e0acbe7da4861eb7146f34e004af72d040 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LinearM/Variantb1242ad24d2ecafc1828f6d7708d3579a1749b5ed93ea5162d379a764237ad8d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
