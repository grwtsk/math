# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Tally.Variante6123caba1862bca4150708eba89e66fd39f36952d9a7e2e770a7e7ea14c9c0a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `63afe8458c3929dcb0fea26b4c653d8e2a138c59` · SHA-256 `e6123caba1862bca4150708eba89e66fd39f36952d9a7e2e770a7e7ea14c9c0a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Logic.Equiv.Basic

/-!
# Exact tally carrier

A tally is a natural count with a canonical constructor.  Certified tallies
retain one immutable mark per counted operation.
-/

namespace Mathematics.AbelReynolds

structure Tally where
  count : Nat
  deriving DecidableEq, Repr

def Tally.empty : Tally :=
  ⟨0⟩

def Tally.ofNat (count : Nat) : Tally :=
  ⟨count⟩

def Tally.append (left right : Tally) : Tally :=
  ⟨left.count + right.count⟩

@[simp] theorem Tally.count_ofNat (count : Nat) :
    (Tally.ofNat count).count = count :=
  rfl

@[simp] theorem Tally.ofNat_count (tally : Tally) :
    Tally.ofNat tally.count = tally := by
  cases tally
  rfl

@[simp] theorem Tally.count_append (left right : Tally) :
    (left.append right).count = left.count + right.count :=
  rfl

def tallyEquivNat : Tally ≃ Nat where
  toFun := Tally.count
  invFun := Tally.ofNat
  left_inv := Tally.ofNat_count
  right_inv := Tally.count_ofNat

structure CertifiedMark where
  markId : String
  fieldId : String
  operationId : String
  dependencyDigest : String
  boundaryDigest : String
  evidenceDigest : String
  costWitness : Nat
  deriving DecidableEq, Repr

abbrev CertifiedTally := List CertifiedMark

def CertifiedTally.appendMark
    (tally : CertifiedTally)
    (mark : CertifiedMark) : CertifiedTally :=
  tally ++ [mark]

@[simp] theorem CertifiedTally.length_appendMark
    (tally : CertifiedTally)
    (mark : CertifiedMark) :
    (tally.appendMark mark).length = tally.length + 1 := by
  simp [CertifiedTally.appendMark]

theorem CertifiedTally.prefix_appendMark
    (tally : CertifiedTally)
    (mark : CertifiedMark) :
    tally.IsPrefix (tally.appendMark mark) := by
  refine ⟨[mark], ?_⟩
  simp [CertifiedTally.appendMark]

def fieldOrdinal (index : Nat) : Tally :=
  Tally.ofNat (index + 1)

@[simp] theorem fieldOrdinal_count (index : Nat) :
    (fieldOrdinal index).count = index + 1 :=
  rfl

end Mathematics.AbelReynolds
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d482bc3d9e69071dfe21e404fc0889ea2ff49784ea1d284860eea66c21a69d5c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Tally/Variante6123caba1862bca4150708eba89e66fd39f36952d9a7e2e770a7e7ea14c9c0a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
