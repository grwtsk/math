-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TwistedPsiConductorThreeCharacter.Variant17e26c8ed78f46dbae2cc48805d0cc5dee1a5be06d5ea3a56b5bdef51a46e8e1","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"17e26c8ed78f46dbae2cc48805d0cc5dee1a5be06d5ea3a56b5bdef51a46e8e1","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.TwistedPsiConductorThreeCharacter.Variant17e26c8ed78f46dbae2cc48805d0cc5dee1a5be06d5ea3a56b5bdef51a46e8e1","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"17e26c8ed78f46dbae2cc48805d0cc5dee1a5be06d5ea3a56b5bdef51a46e8e1","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:b56c6247d3e3c522b9b49498/workspace/lib/Surface/Core/ConductorThreeCarlesonToGRH.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
module

public meta import Surface.Core.Classification
public import Surface.Core.DirichletGRH.Assembly
public import Surface.Core.ConductorThreeHyperbolicCarleson
public import Surface.Core.ConductorThreeMellinLogDerivative
import Mathlib.Tactic

/-!
# Conductor-three specialization of the centered Dirichlet criterion

The conductor-three character is nonprincipal, so its centered generic
summatory function is exactly the already-checked real conductor-three
twisted Chebyshev sum after casting to `ℂ`.  This file proves that adapter and
reuses the existing kernel-checked Mellin theorem.

The geometric Carleson-to-arithmetic edge remains an explicit proposition.
No unconditional `conductorThree_grh` declaration is introduced.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TwistedPsiConductorThreeCharacter.Variant17e26c8ed78f46dbae2cc48805d0cc5dee1a5be06d5ea3a56b5bdef51a46e8e1

public section

namespace Surface.Core.ConductorThreeCarlesonToGRH

noncomputable section

open Surface.Core.AnalyticPrimeWalk
open Surface.Core.ConductorThreeHalfPlusEpsilon
open Surface.Core.ConductorThreeHyperbolicCarleson
open Surface.Core.ConductorThreeMellinLogDerivative
open Surface.Core.ConductorThreeVonMangoldt
open Surface.Core.DirichletGRH

/-- The generic twisted sum specializes exactly to the existing
conductor-three sum. -/
@[surface_adapter, surface_published]
theorem twistedPsi_conductorThreeCharacter (x : ℕ) :
    twistedPsi conductorThreeCharacter x = (conductorThreePsi x : ℂ) := by
  unfold twistedPsi
  change (∑ n ∈ Finset.Icc 1 x,
      conductorThreeComplexVonMangoldt n) = _
  exact sum_Icc_conductorThreeComplexVonMangoldt x

/-- Centering vanishes because the conductor-three character is
nonprincipal. -/
@[surface_adapter, surface_published]
theorem centeredTwistedPsi_conductorThreeCharacter (x : ℕ) :
    centeredTwistedPsi conductorThreeCharacter x =
      (conductorThreePsi x : ℂ) := by
  rw [centeredTwistedPsi_eq_twistedPsi_of_ne_one
    conductorThreeCharacter_ne_one]
  exact twistedPsi_conductorThreeCharacter x

/-- The generic centered half-plus-epsilon criterion is exactly the existing
conductor-three real criterion. -/
@[surface_adapter, surface_published]
theorem centeredTwistedPsiHalfPlusEpsilon_conductorThree_iff :
    CenteredTwistedPsiHalfPlusEpsilon conductorThreeCharacter ↔
      TwistedPsiHalfPlusEpsilon := by
  constructor
  · intro h ε hε
    obtain ⟨C, hC, hBound⟩ := h ε hε
    refine ⟨C, hC, ?_⟩
    intro x hx
    have hxBound := hBound x hx
    rw [centeredTwistedPsi_conductorThreeCharacter,
      Complex.norm_real, Real.norm_eq_abs] at hxBound
    exact hxBound
  · intro h ε hε
    obtain ⟨C, hC, hBound⟩ := h ε hε
    refine ⟨C, hC, ?_⟩
    intro x hx
    rw [centeredTwistedPsi_conductorThreeCharacter,
      Complex.norm_real, Real.norm_eq_abs]
    exact hBound x hx

/-- The generic and existing conductor-three GRH predicates are literally
the same zero-location statement. -/
@[surface_adapter, surface_published]
theorem grhForPrimitiveCharacter_conductorThree_iff :
    GRHForPrimitiveCharacter conductorThreeCharacter ↔
      GRHForConductorThreeCharacter :=
  Iff.rfl

/-- Generic centered control reaches the already checked conductor-three GRH
endpoint. -/
@[surface_novel, surface_published]
theorem centeredTwistedPsiHalfPlusEpsilon_implies_conductorThreeGRH :
    CenteredTwistedPsiHalfPlusEpsilon conductorThreeCharacter →
      GRHForConductorThreeCharacter := by
  intro h
  exact halfPlusEpsilon_implies_grh
    (centeredTwistedPsiHalfPlusEpsilon_conductorThree_iff.mp h)

/-- Honest missing geometric-to-arithmetic edge.  An inhabitant must derive
the half-plus-epsilon estimate from the block Carleson theorem; it cannot be
supplied by the definitions in this file. -/
@[expose]
def ConductorThreeBlockCarlesonToHalfPlusEpsilon : Prop :=
  ConductorThreeBlockHyperbolicCarleson → TwistedPsiHalfPlusEpsilon

/-- Conditional conductor-three geometric specialization.  The explicit
bridge argument prevents the unproved Carleson-to-maximal aggregation from
being hidden in the theorem declaration. -/
@[surface_novel, surface_published]
theorem conductorThreeGRH_of_blockHyperbolicCarleson_of_bridge
    (hBridge : ConductorThreeBlockCarlesonToHalfPlusEpsilon)
    (hCarleson : ConductorThreeBlockHyperbolicCarleson) :
    GRHForConductorThreeCharacter :=
  halfPlusEpsilon_implies_grh (hBridge hCarleson)

end

end Surface.Core.ConductorThreeCarlesonToGRH

