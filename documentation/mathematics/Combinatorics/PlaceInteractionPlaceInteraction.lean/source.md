# Place Interaction Place Interaction — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `15579fb0a9513a635d1285123faa7f707a36891c` · SHA-256 `c85d0f5d5faf31cd3374b14553641717859d34b0cc7431658a4d4489e913b721`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.SemiLocalDefect.CochainReconstruction

/-!
# Higher place interaction

Closedness of the first cochain is automatic.  The second finite difference is
a new sign-bearing invariant.
-/

namespace Mathematics.SemiLocalDefect

universe uPrime

def placeInteraction
    {model : OperatorModel}
    {Prime : Type uPrime}
    [DecidableEq Prime]
    (capacity :
      PrimeCutDefectCapacity model Prime)
    (cut : Finset Prime)
    (left right : Prime) :
    model.Operator :=
  capacity.defect (insert left (insert right cut)) -
    capacity.defect (insert left cut) -
    capacity.defect (insert right cut) +
    capacity.defect cut

theorem placeInteraction_eq_incrementDifference
    {model : OperatorModel}
    {Prime : Type uPrime}
    [DecidableEq Prime]
    (capacity :
      PrimeCutDefectCapacity model Prime)
    (cut : Finset Prime)
    (left right : Prime) :
    placeInteraction capacity cut left right =
      capacity.increment (insert right cut) left -
        capacity.increment cut left := by
  simp only [placeInteraction,
    PrimeCutDefectCapacity.increment]
  abel

inductive InteractionSign
  | diminishing
  | additive
  | reinforcing
  | indefinite
deriving DecidableEq, Repr

structure PlaceInteractionCertificate
    {model : OperatorModel}
    {Prime : Type uPrime}
    [DecidableEq Prime]
    (capacity :
      PrimeCutDefectCapacity model Prime)
    (cut : Finset Prime)
    (left right : Prime) where
  sign : InteractionSign
  diminishing :
    sign = .diminishing →
      model.Nonnegative
        (-placeInteraction
          capacity cut left right)
  additive :
    sign = .additive →
      placeInteraction capacity cut left right = 0
  reinforcing :
    sign = .reinforcing →
      model.Nonnegative
        (placeInteraction
          capacity cut left right)

end Mathematics.SemiLocalDefect
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a1018df2e70db40fd8deb70a2ec21c85db66db1360485c38e6a3123a033a43e7 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/PlaceInteraction/Variantc85d0f5d5faf31cd3374b14553641717859d34b0cc7431658a4d4489e913b721.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
