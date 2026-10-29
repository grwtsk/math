-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.HomologicalAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.HomologicalAlgebra.TorsionRoundedState.Varianta8d531a8b68e0872c0f55181c6fa283a7fb7b558ca36fa4565135cbedc18b42d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a8d531a8b68e0872c0f55181c6fa283a7fb7b558ca36fa4565135cbedc18b42d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.MixedSubjects.SourceCorpus.TorsionRoundedState.Varianta8d531a8b68e0872c0f55181c6fa283a7fb7b558ca36fa4565135cbedc18b42d","mathematical_subject":"Foundations.MixedSubjects","original_sha256":"a8d531a8b68e0872c0f55181c6fa283a7fb7b558ca36fa4565135cbedc18b42d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Homology/TorsionRoundedState.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Homology.PhaseSplitting
import Mathematics.Homology.TorsionLedger

/-!
# Torsion-rounded cohomology state

The authoritative state retains the complete finite rounding certificate, one
explicitly selected branch, the total phase class, and its next-degree
Bockstein torsion.  The total phase is proof-coupled to the continuous residue
and one explicit torsion lift.  Its finite phase is explicitly identified
with the UCT character module of a certified Smith ledger.  A global splitting
remains optional extra data.
-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.HomologicalAlgebra.TorsionRoundedState.Varianta8d531a8b68e0872c0f55181c6fa283a7fb7b558ca36fa4565135cbedc18b42d

namespace Mathematics.Homology

universe u v w x y

noncomputable section

/-- One branch of a complete two-channel cohomological state. -/
structure TorsionRoundedState
    {IntegralCohomology : Type u}
    {RealCohomology : Type v}
    [AddCommGroup IntegralCohomology]
    [NormedAddCommGroup RealCohomology]
    [NormedSpace ℝ RealCohomology]
    [FiniteDimensional ℝ RealCohomology]
    {ContinuousTorus : Type w}
    {Phase : Type x}
    {PhaseTorsion : Type y}
    [AddCommGroup ContinuousTorus]
    [AddCommGroup Phase]
    [AddCommGroup PhaseTorsion]
    (lattice :
      FreeCohomologyLattice IntegralCohomology RealCohomology)
    (gram : PositiveGram RealCohomology)
    (extension :
      BocksteinExtension ContinuousTorus Phase PhaseTorsion) where
  point : RealCohomology
  rounding :
    FiniteRoundingCertificate lattice gram point
  branch :
    RoundedBranch lattice gram point
  branchRetained :
    branch.integral ∈ rounding.minimizers
  /-- Quotient the continuous residue into `V / Λ`. -/
  continuousQuotient : RealCohomology →+ ContinuousTorus
  /-- The exact homology degree whose Smith coordinates model this phase. -/
  torsionChain : FiniteIntegralChain
  torsionDegree : Nat
  torsionLedger :
    TorsionLedger torsionChain torsionDegree
  /--
  Executable finiteness and the exact UCT/Smith coordinate equivalence for the
  Bockstein target.  This channel is independent of the free Gram geometry.
  -/
  torsionRepresentation :
    UCTBocksteinTorsionRepresentation
      torsionLedger PhaseTorsion
  totalPhase : Phase
  phaseTorsion : PhaseTorsion
  /-- A per-state lift is enough; no global splitting is inferred. -/
  torsionLift : Phase
  torsionLift_bockstein :
    extension.bockstein torsionLift = phaseTorsion
  /--
  The phase class is exactly the included continuous residue plus its finite
  torsion lift.
  -/
  phase_decomposition :
    totalPhase =
      extension.inclusion (continuousQuotient branch.residue) +
        torsionLift
  splitting :
    Option (BocksteinSplitting extension)
  splitting_agrees :
    ∀ selected,
      splitting = some selected →
        torsionLift = selected.lift phaseTorsion
  stateDigest : Digest
  stateCertificate : ObjectAddress

namespace TorsionRoundedState

variable
    {IntegralCohomology : Type u}
    {RealCohomology : Type v}
    [AddCommGroup IntegralCohomology]
    [NormedAddCommGroup RealCohomology]
    [NormedSpace ℝ RealCohomology]
    [FiniteDimensional ℝ RealCohomology]
    {ContinuousTorus : Type w}
    {Phase : Type x}
    {PhaseTorsion : Type y}
    [AddCommGroup ContinuousTorus]
    [AddCommGroup Phase]
    [AddCommGroup PhaseTorsion]
    {lattice :
      FreeCohomologyLattice IntegralCohomology RealCohomology}
    {gram : PositiveGram RealCohomology}
    {extension :
      BocksteinExtension ContinuousTorus Phase PhaseTorsion}
    (state : TorsionRoundedState lattice gram extension)

/-- The selected branch still reconstructs the original real class exactly. -/
theorem exact_continuous_split :
    (state.branch.integral : RealCohomology) +
        state.branch.residue =
      state.point :=
  state.branch.integral_add_residue

/-- The branch belongs to the exact retained minimizer set. -/
theorem branch_is_exact_minimizer :
    state.branch.integral ∈
      RoundingSet lattice gram state.point :=
  state.branch.minimizes

/-- The coupled decomposition has exactly the recorded finite phase. -/
theorem bockstein_agrees :
    extension.bockstein state.totalPhase =
      state.phaseTorsion := by
  rw [state.phase_decomposition, map_add]
  rw [extension.bockstein_include_zero]
  simp [state.torsionLift_bockstein]

include state

/-- The phase-torsion carrier retained by the state is genuinely finite. -/
theorem phaseTorsionFinite :
    Finite PhaseTorsion :=
  state.torsionRepresentation.finite

/--
The Bockstein map expressed in the certified Smith/UCT coordinate model.
No Gram or free-lattice datum occurs in this map.
-/
def bocksteinCoordinates :
    Phase →+
      CharacterModule state.torsionLedger.Coordinate :=
  state.torsionRepresentation.coordinates.toAddMonoidHom.comp
    extension.bockstein

/-- The total phase has exactly the retained certified torsion coordinates. -/
theorem bocksteinCoordinates_agree :
    state.bocksteinCoordinates state.totalPhase =
      state.torsionRepresentation.coordinates state.phaseTorsion := by
  change
    state.torsionRepresentation.coordinates
        (extension.bockstein state.totalPhase) =
      state.torsionRepresentation.coordinates state.phaseTorsion
  rw [state.bockstein_agrees]

/-- A supplied global splitting agrees with the retained per-state lift. -/
theorem torsionLift_eq_splitting
    (selected : BocksteinSplitting extension)
    (selected_eq : state.splitting = some selected) :
    state.torsionLift = selected.lift state.phaseTorsion :=
  state.splitting_agrees selected selected_eq

end TorsionRoundedState

end

end Mathematics.Homology
