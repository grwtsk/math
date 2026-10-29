# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.IntroQ.Variant461c31bc84defba6601904493d90c2216c071017ab2c90b397484e9fd2cfc2b2

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ece67901e03e973d4abc2d6839eedbffc00a4f53` · SHA-256 `461c31bc84defba6601904493d90c2216c071017ab2c90b397484e9fd2cfc2b2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Qq
open Qq Lean

def introQ {α : Q(Sort u)} {β : Q($α → Sort v)} (mvar : Q(∀ a, $β a)) (n : Name) :
    MetaM ((a : Q($α)) × Q($β $a)) := do
  let (f, v) ← mvar.mvarId!.intro n
  pure ⟨.fvar f, .mvar v⟩

def assignQ {α : Q(Sort u)} (mvar : Q($α)) (val : Q($α)) : MetaM Unit :=
  mvar.mvarId!.assign val

elab "demo" : term => do
  let P ← mkFreshExprMVarQ q(∀ {n : Nat}, n = 1)
  let ⟨_, m⟩ ← introQ q(@$P) `n
  m.mvarId!.withContext do
  assignQ q($m) q(sorry)
  instantiateMVars P

/--
info: fun {n} => sorry : ∀ {n : Nat}, n = 1
-/
#guard_msgs in
#check demo
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=515bf45d275dc3c34c99841d7dc91e4f3f154b3d042c6ac9e203aff2d5e1b0af -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntroQ/Variant461c31bc84defba6601904493d90c2216c071017ab2c90b397484e9fd2cfc2b2.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
