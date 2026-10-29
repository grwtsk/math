/-
# Individually reviewed conditional candidate: Conditional surgery naturality and invariant transport

Status: SOURCE_READ_SEAMS_REVIEWED_STATIC_ONLY.
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED.
Shared clarification issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional computation: OpenAI/Codex — composite search, probabilistic symbolic
recombination, and linearized diffusive computation.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are provisional user-specified roles, not independently established
model mechanisms or final per-declaration authorship. Existing source notices
remain exact in the source archives and copied source documentation.
Original source SHA256: 5dff998f26b403a0643d34325280e114b565a6ab45d475c3ea86d924479db87f
Organized source SHA256: 3cfff07d632287e4fb5b99ebca7556f3f6a8912e9ce1719093a82f9238770d90
Review: attribution-254-review-000034.
PMD: 510.4.060.060.040 isotopy; secondary 510.4.060.030 surgery theory.
The taxonomy is editorial navigation only.
Surgery comparison and invariant transport require the full supplied extension interface; no ambient isotopy-extension existence theorem is asserted.
Legacy dependency Surface.SmoothFramedSurgery.CollaredGluing remains explicit
and unresolved for replay. Original module documentation covers the complete
unsplit source; no Lean compilation, proof acceptance or public admission is asserted.
-/

import Surface.SmoothFramedSurgery.CollaredGluing
import GRWTSK.Topology.GeometricTopology.EmbeddingProblems.Isotopy.AmbientExtension.Variant5dff998f.Theory

/-!
# Conditional ambient isotopy extension

An isotopy of framed attaching data yields a comparison of surgery outputs
only after an ambient isotopy-extension theorem with support and boundary
control is available.  Mathlib does not currently provide that theorem in the
generality required here.  `AmbientIsotopyExtensionTheory` therefore retains
the whole parameterized extension: a nondegenerate time object with named
endpoints, a jointly smooth ambient family, the framed-embedding path it
carries, and support, interiority, fixed-outside, and fixed-boundary control at
every time.  Its terminal ambient map is identified with the time-one member
of that family and induces the natural map on surgery.  Identity, reversal,
and concatenation laws make the endpoint assignment coherent.

This is a conditional port.  No ambient-extension capability is manufactured
from a proof of `FramedIsotopic`; callers must supply the whole record.
-/

open Surface.SmoothFramedSurgery

namespace GRWTSK.Topology.GeometricTopology.EmbeddingProblems.Isotopy.AmbientExtension.Variant5dff998f

universe uD uA

namespace AmbientIsotopyExtensionTheory

variable
    {T : SmoothFramedSurgeryTheory}
    {G : RelativeBoundaryDiffeomorphismTheory T}
    (A : AmbientIsotopyExtensionTheory T G)

include A G

/-- The surgery comparison is precisely the map induced by ambient extension. -/
theorem surgeryEnd_eq_induced
    {p q : Nat} {M : T.Manifold}
    {e₀ e₁ : T.FramedEmbedding p q M}
    (h : T.FramedIsotopic e₀ e₁) :
    A.surgeryEnd h =
      A.inducedOnSurgery (A.ambientEnd h) (A.ambient_carries_embedding h) :=
  A.surgery_naturality h

/-- Ambient extension supplies the relative-boundary surgery comparison. -/
theorem surgery_invariant
    {p q : Nat} {M : T.Manifold}
    {e₀ e₁ : T.FramedEmbedding p q M}
    (h : T.FramedIsotopic e₀ e₁) :
    T.RelBoundaryDiffeomorphic (T.surgery e₀) (T.surgery e₁) :=
  RelativeBoundaryDiffeomorphismTheory.sound G (A.surgeryEnd h)

/-- Reversing the isotopy reverses the bundled surgery comparison. -/
theorem surgeryEnd_reverse
    {p q : Nat} {M : T.Manifold}
    {e₀ e₁ : T.FramedEmbedding p q M}
    (h : T.FramedIsotopic e₀ e₁) :
    A.surgeryEnd (A.isotopySymm h) = G.symm (A.surgeryEnd h) :=
  A.surgery_symm h

/-- Concatenation is sent to composition, so the induced comparison is path coherent. -/
theorem surgeryEnd_concat
    {p q : Nat} {M : T.Manifold}
    {e₀ e₁ e₂ : T.FramedEmbedding p q M}
    (h₀₁ : T.FramedIsotopic e₀ e₁)
    (h₁₂ : T.FramedIsotopic e₁ e₂) :
    A.surgeryEnd (A.isotopyTrans h₀₁ h₁₂) =
      G.trans (A.surgeryEnd h₀₁) (A.surgeryEnd h₁₂) :=
  A.surgery_trans h₀₁ h₁₂

/-- The identity isotopy extends to the identity ambient comparison. -/
@[simp]
theorem ambientEnd_identity
    {p q : Nat} {M : T.Manifold}
    (e : T.FramedEmbedding p q M) :
    A.ambientEnd (A.isotopyRefl e) = G.refl M :=
  A.ambient_refl e

/-- The identity isotopy induces the identity comparison after surgery. -/
@[simp]
theorem surgeryEnd_identity
    {p q : Nat} {M : T.Manifold}
    (e : T.FramedEmbedding p q M) :
    A.surgeryEnd (A.isotopyRefl e) = G.refl (T.surgery e) :=
  A.surgery_refl e

/-- Ambient extension reverses coherently with reversal of the framed isotopy. -/
theorem ambientEnd_reverse
    {p q : Nat} {M : T.Manifold}
    {e₀ e₁ : T.FramedEmbedding p q M}
    (h : T.FramedIsotopic e₀ e₁) :
    A.ambientEnd (A.isotopySymm h) = G.symm (A.ambientEnd h) :=
  A.ambient_symm h

/-- Ambient extension carries isotopy concatenation to groupoid composition. -/
theorem ambientEnd_concat
    {p q : Nat} {M : T.Manifold}
    {e₀ e₁ e₂ : T.FramedEmbedding p q M}
    (h₀₁ : T.FramedIsotopic e₀ e₁)
    (h₁₂ : T.FramedIsotopic e₁ e₂) :
    A.ambientEnd (A.isotopyTrans h₀₁ h₁₂) =
      G.trans (A.ambientEnd h₀₁) (A.ambientEnd h₁₂) :=
  A.ambient_trans h₀₁ h₁₂

/-- Any invariant functorial under bundled relative diffeomorphisms is isotopy invariant. -/
theorem invariant_eq
    {p q : Nat} {M : T.Manifold}
    {e₀ e₁ : T.FramedEmbedding p q M}
    (h : T.FramedIsotopic e₀ e₁)
    {Invariant : Type uA}
    (value : T.Manifold → Invariant)
    (respects : ∀ {X Y}, G.Hom X Y → value X = value Y) :
    value (T.surgery e₀) = value (T.surgery e₁) :=
  respects (A.surgeryEnd h)

end AmbientIsotopyExtensionTheory

end GRWTSK.Topology.GeometricTopology.EmbeddingProblems.Isotopy.AmbientExtension.Variant5dff998f
