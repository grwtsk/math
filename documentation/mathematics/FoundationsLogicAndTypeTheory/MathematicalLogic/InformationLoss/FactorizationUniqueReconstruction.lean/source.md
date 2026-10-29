# Complete source: GRWTSK.Logic.InformationLoss.FactorizationUniqueReconstruction

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `53916cc045ae969b09d86729f294cfd96561e6e6` · SHA-256 `8bb6d7560a3e11550b7d01daf7d6b0f5a4838fb76635fb50241cbf33e16f0aa0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 grwtsk contributors. MIT.
Formalization assistance: OpenAI.

SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
Standalone leaf, not imported by GRWTSK.lean.
-/
import GRWTSK.Logic.InformationLoss.FactorizationDecoderUniqueness

/-!
# Exact unique reconstruction on the observed image

Fiber constancy is equivalent to existence of a unique total decoder whose
domain is the actual range of the observable. The decoder is uniquely
determined as a function on this subtype, even when the original declared
observable codomain has unused elements.

Existence uses classical choice through the existing completeness supplier.
No computable inverse, regularity, norm bound, Weil positivity or RH follows.
-/

set_option autoImplicit false

universe u v w

namespace GRWTSK.Logic.InformationLoss

/-- Fiber constancy exactly characterizes unique reconstruction on the
attained observable subtype. Uniqueness is functional extensionality on
this subtype, not an inverse theorem for the original observable. -/
theorem existsUnique_decoder_observedProfile_iff
    {X : Type u} {Y : Type v} {Z : Type w}
    (profile : X → Y) (readout : X → Z) :
    (∃! decode : Set.range profile → Z,
      readout = decode ∘ observedProfile profile) ↔
      ∀ x y : X, profile x = profile y → readout x = readout y := by
  constructor
  · rintro ⟨decode, hdecode, _⟩
    exact (factorsThrough_observedProfile_iff profile readout).1
      ⟨decode, hdecode⟩
  · intro hconstant
    obtain ⟨decode, hdecode⟩ :=
      (factorsThrough_observedProfile_iff profile readout).2 hconstant
    refine ⟨decode, hdecode, ?_⟩
    intro other hother
    exact observedProfile_decoder_unique profile readout
      other decode hother hdecode

end GRWTSK.Logic.InformationLoss
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9b8b96f950e1f9e8011c9d594acd7de7671ba67bdbc44defa24adbdc92e172c9 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/InformationLoss/FactorizationUniqueReconstruction.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
