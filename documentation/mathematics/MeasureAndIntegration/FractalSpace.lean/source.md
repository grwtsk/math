# Fractal Space — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9832a43b445fb1805f1634c77276996b3a1abd3e` · SHA-256 `343192bd71fd5287ea5aff7a18715814a0756dc24c0cb1e514fe11dc7d62e08f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Surface.Legacy.BinaryLogicMatrix.Measurable

namespace Surface.Legacy

abbrev Real := Rat

structure TopologicalSpace (α : Type) where
  isOpen : MeasurableSet α -> Prop

def DifferentiableAt (_K : Type) {α β : Type} (_f : α -> β) (_x : α) : Prop :=
  False

structure FractalDomain where
  Carrier : Type
  topologicalSpace : TopologicalSpace Carrier
  measurableSpace : MeasurableSpace Carrier

namespace FractalDomain

def toCertifiedMeasurableSpace (Ω : FractalDomain) : CertifiedMeasurableSpace where
  Carrier := Ω.Carrier
  measurableSpace := Ω.measurableSpace

end FractalDomain

structure NowhereDifferentiableCertificate
    (Ω : FractalDomain) (f : Ω.Carrier -> Real) where
  domainSet : MeasurableSet Ω.Carrier
  noDerivative : ∀ x, domainSet x -> ¬ DifferentiableAt Real f x

inductive FractalScaleLaw where
  | arbitraryCertified
  | zetaWeighted : Rat -> FractalScaleLaw
  | mobiusWeighted : Rat -> FractalScaleLaw
  | eulerPrimeProduct : Rat -> FractalScaleLaw
  | zetaMobiusHybrid : Rat -> Bool -> FractalScaleLaw
deriving DecidableEq, Repr

structure FractalDescriptor where
  name : String
  scaleLaw : FractalScaleLaw
  dimensionClaim : ClaimStatus
  roughnessClaim : ClaimStatus
  selfSimilarityClaim : ClaimStatus
deriving Repr

structure CertifiedNowhereDifferentiableFractalFunction where
  Ω : FractalDomain
  value : Ω.Carrier -> Real
  measurable : Measurable value
  nowhereDifferentiable : NowhereDifferentiableCertificate Ω value
  descriptor : FractalDescriptor
  approximation? : Option (CertifiedSimpleApproximation Ω.toCertifiedMeasurableSpace)

theorem nowhereDifferentiableFractal_is_certifiedMeasurable :
    ∀ f : CertifiedNowhereDifferentiableFractalFunction,
      ∃ m : CertifiedMeasurableFunction,
        HEq m.value f.value := by
  intro f
  let m : CertifiedMeasurableFunction := {
    Ω := f.Ω.toCertifiedMeasurableSpace
    codomain := Real
    codomainMeasurable := { isMeasurableSet := fun _ => True }
    value := f.value
    measurable := f.measurable
    approximation? := f.approximation?
  }
  exact ⟨m, HEq.rfl⟩

end Surface.Legacy
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=462503b240d14abd8bafd10121528ae307ad6c6f24db485a78a6ab566db7f6ef -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/FractalSpace/Variant343192bd71fd5287ea5aff7a18715814a0756dc24c0cb1e514fe11dc7d62e08f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
