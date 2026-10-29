# Mobius Interaction — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c2e5c4aab2c204ce484eccc9f1854aaeca3069c3` · SHA-256 `acc529a6695cbccde8240a3a370da835a67faa0e36d7adbf608ed695c9f4e265`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.SemiLocalDefect.PlaceInteraction

/-!
# Operator Möbius interaction

Higher differences are defined independently of first-order monotonicity.
Positivity of every Möbius coefficient is a strictly stronger certificate.
-/

namespace Mathematics.SemiLocalDefect

open scoped BigOperators

universe uPrime

def mobiusSign (degree : Nat) : ℚ :=
  if Even degree then 1 else -1

def higherDifference
    {model : OperatorModel}
    {Prime : Type uPrime}
    [DecidableEq Prime]
    (capacity :
      PrimeCutDefectCapacity model Prime)
    (base directions : Finset Prime) :
    model.Operator :=
  ∑ subset ∈ directions.powerset,
    mobiusSign
      (directions.card - subset.card) •
      capacity.defect (base ∪ subset)

def mobiusInteraction
    {model : OperatorModel}
    {Prime : Type uPrime}
    [DecidableEq Prime]
    (capacity :
      PrimeCutDefectCapacity model Prime)
    (directions : Finset Prime) :
    model.Operator :=
  higherDifference capacity ∅ directions

structure MobiusReconstructionCertificate
    {model : OperatorModel}
    {Prime : Type uPrime}
    [DecidableEq Prime]
    (capacity :
      PrimeCutDefectCapacity model Prime) where
  reconstruct :
    ∀ cut,
      capacity.defect cut =
        ∑ subset ∈ cut.powerset,
          mobiusInteraction capacity subset

structure CompletelyPositiveInteraction
    {model : OperatorModel}
    {Prime : Type uPrime}
    [DecidableEq Prime]
    (capacity :
      PrimeCutDefectCapacity model Prime) : Prop where
  positive :
    ∀ directions,
      model.Nonnegative
        (mobiusInteraction
          capacity directions)

end Mathematics.SemiLocalDefect
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d7f792e2439a833df80b01d48380582c64f90682c9d3d65a034548b4a578b998 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/MobiusInteraction/Variantacc529a6695cbccde8240a3a370da835a67faa0e36d7adbf608ed695c9f4e265.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
