/-
# Uncompiled individually reviewed candidate: Abstract damping and fixed-point equivalence

Status: SOURCE_READ_SEAMS_REVIEWED_STATIC_ONLY.
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED.
Shared clarification issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional computation: OpenAI/Codex — composite search, probabilistic symbolic
recombination, and linearized diffusive computation.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are provisional user-specified roles, not independently established
model mechanisms or final per-declaration authorship. Existing notices remain
preserved in the exact source archives and copied source documentation.
Source original SHA256: b765050c419260da34cf2dfca3bc5c460d96ea52c0eded36c76687e211c796be
Organized source SHA256: dc7dae43ca9e4b90726511b25ff411bc9a23e4d4f48d52acfd15168b082c02d9
Review: attribution-254-review-000015.
PMD: 510.5.160.010 fixed point theory; editorial navigation only.
The equivalence assumes the explicit blendEqLeftIff law; no scalar division,
nonzero parameter, contractivity, convergence, rollback or runtime authority is inferred.
Workflow admission/rollback/owner records from the source remain archive-only.
Original source documentation describes the complete unsplit source context.
No Lean compilation, proof acceptance or public umbrella admission is asserted.
-/

import Mathematics.Stability.PeriodicOrbit

/-! # Semantics-preserving damping -/

namespace GRWTSK.Analysis.NonlinearAnalysis.FixedPointTheory.Damping.FixedPointEquivalence

open Mathematics.Stability (IsFixedPoint)

/-!
`blend_eq_left_iff` is the abstract nonzero-weight law corresponding to
`(1-α)x + αy = x ↔ y = x`.  It makes the reverse fixed-point implication
explicit instead of silently dividing by an unrecorded scalar.
-/
structure DampingLaw (X : Type) where
  blend : X → X → X
  blendSelf : ∀ x, blend x x = x
  blendEqLeftIff : ∀ x y, blend x y = x ↔ y = x

def dampedMap
    {X : Type}
    (law : DampingLaw X)
    (construction : X → X)
    (x : X) : X :=
  law.blend x (construction x)

theorem damping_preserves_fixed_points
    {X : Type}
    (law : DampingLaw X)
    (construction : X → X)
    (point : X) :
    IsFixedPoint (dampedMap law construction) point ↔
      IsFixedPoint construction point := by
  constructor
  · intro dampedFixed
    change law.blend point (construction point) = point at dampedFixed
    exact (law.blendEqLeftIff point (construction point)).mp
      dampedFixed
  · intro fixed
    change law.blend point (construction point) = point
    exact (law.blendEqLeftIff point (construction point)).mpr fixed

end GRWTSK.Analysis.NonlinearAnalysis.FixedPointTheory.Damping.FixedPointEquivalence
