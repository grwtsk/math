# Complete source: GRWTSK.Logic.CanonicalPortWeakToStrong

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3c0d321e0dd9b66fbf0aaf19905cc995689436db` · SHA-256 `99671eb19cc70e255de143ffee82db4e7b9b85a3c1f6fcd4bdad4a338631a695`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Logic.ExternalPTSSystemTransport

namespace GRWTSK.Logic.ExternalPTSBridge

universe u v

namespace ReductionEquiv

/-- Identity equivalence of one reduction system. -/
def refl (X : Type u) (step : X → X → Prop) :
    ReductionEquiv X X step step where
  mapEquiv := Equiv.refl X
  step_iff _ _ := Iff.rfl

end ReductionEquiv

namespace SystemEquiv

/-- Identity equivalence of one legal reduction system. -/
def refl (X : Type u) (Legal : X → Prop) (step : X → X → Prop) :
    SystemEquiv X X Legal Legal step step where
  mapEquiv := Equiv.refl X
  step_iff _ _ := Iff.rfl
  legal_iff _ := Iff.rfl

end SystemEquiv

open GRWTSK.Logic.TypedPortNormalization

section CanonicalPortAdmission

variable {Obj : Type u}
variable {Port : Obj → Obj → Type v}
variable {a b : Obj}

/-- Local source identity for the directly proved canonical port normalization theorem. -/
def canonicalPortSource : TheoremSource where
  repository := "grwtsk/math"
  revision := "canonical-port-reduction"
  path := "GRWTSK/Logic/ExternalPTSBridge.lean"
  declaration := "canonicalSystemStronglyNormalizing"
  exactStatement :=
    "Every endpoint-fixed typed port expression is strongly normalizing for CanonicalStep"

/-- The directly proved canonical port reduction supplies a proof-carrying weak-to-strong theorem.

The hypothesis is retained to match the general interface, although this local system is proved
strongly normalizing independently of it. -/
def canonicalPortWeakToStrong :
    WeakToStrongTheorem (Expr Port a b)
      (fun _ => True) CanonicalStep where
  source := canonicalPortSource
  weakToStrong := by
    intro _
    exact canonicalSystemStronglyNormalizing

/-- Applying the local proof-carrying theorem yields the established strong-normalization result. -/
theorem canonicalPortStrong_of_weak
    (h : SystemWeaklyNormalizing (fun _ : Expr Port a b => True) CanonicalStep) :
    SystemStronglyNormalizing (fun _ : Expr Port a b => True) CanonicalStep :=
  systemStrong_of_bridge canonicalPortWeakToStrong h

/-- Transporting the local theorem across the identity system equivalence is definitionally sound. -/
def canonicalPortWeakToStrong_identityTransport :
    WeakToStrongTheorem (Expr Port a b)
      (fun _ => True) CanonicalStep :=
  (SystemEquiv.refl (Expr Port a b) (fun _ => True) CanonicalStep).transportWeakToStrong
    canonicalPortWeakToStrong

end CanonicalPortAdmission

end GRWTSK.Logic.ExternalPTSBridge
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=29b7b06bf63a961540817daa7a547596a6a3c00bbaa25b3bf41f6f3ead92696b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/CanonicalPortWeakToStrong.lean","GRWTSK/Logic/ExternalPTSBridge.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
