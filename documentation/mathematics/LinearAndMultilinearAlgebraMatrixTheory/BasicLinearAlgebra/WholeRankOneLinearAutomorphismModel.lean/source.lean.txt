/-
WholeRankOneLinearAutomorphismModel — individual source review
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: 16233d524f75fbe2533c207eb185e2d618b5ce2c8da1fb3c925f9dce96f477dd
Organized SHA-256: caf23cc8f3c513dab533cd4f8645fbad17b8cc6409ea9baaa0f61912104700e7
PMD: 510.1.070 linear algebra (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

/- The whole seven-field determinant-line transport theory preserves the selected perfect-complex model, coefficient context, both equivalence families and four exact coherence equations, with both application proofs. The complete rank-one finite-free model/theory/negation construction preserves every categorical law and embedded proof. It uses linear automorphisms and isQuasiIso=True in this small explicit model; it does not construct determinant transport for arbitrary state maps or all perfect complexes. -/

import DAF.Comparison.Coefficients
import DAF.PerfectComplex.Comparison
import Mathlib.LinearAlgebra.Determinant

import GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.DependentTypeTheory.SuppliedDeterminantLineTransport.Variant16233d524f75fbe2.WholeDeterminantLineTransportTheory

/-!
# Composition-preserving determinant theories

A determinant theory is separate data over a selected perfect-complex model
and a selected coefficient context.  It can transport determinant lines only
along the model's supported isomorphisms and certified quasi-isomorphisms.
Nothing here assigns determinant transport to an arbitrary state map.

The concrete `FiniteFreeRankOne` model below is deliberately small: it models
the complex consisting of one rank-one finite free module in degree zero and
uses its linear automorphisms.  In rank one the top exterior power is the
module itself, so its determinant line is represented by the coefficient
carrier.  This witnesses that the abstract interface is nonempty without
claiming a determinant functor for all perfect complexes.
-/

namespace DAF.Determinant

open DAF.Comparison
open DAF.PerfectComplex

universe uObj uHom uIso uCoeff uLine

/-! ## A concrete rank-one finite-free model -/

namespace FiniteFreeRankOne

/--
The model of one finite-free rank-one module, viewed as a complex concentrated
in degree zero.  Morphisms and supported isomorphisms are linear
automorphisms; hence every represented morphism is a quasi-isomorphism in this
small model.
-/
def model (R : CoefficientContext.{uCoeff}) :
    PerfectComplex.Model where
  Object := Unit
  Hom := fun _ _ ↦ R.Carrier ≃ₗ[R.Carrier] R.Carrier
  id := LinearEquiv.refl R.Carrier R.Carrier
  comp := fun f g ↦ f.trans g
  id_comp := by
    intro _ _ f
    ext x
    rfl
  comp_id := by
    intro _ _ f
    ext x
    rfl
  comp_assoc := by
    intro _ _ _ _ f g h
    ext x
    rfl
  Iso := fun _ _ ↦ R.Carrier ≃ₗ[R.Carrier] R.Carrier
  isoRefl := fun _ ↦ LinearEquiv.refl R.Carrier R.Carrier
  isoTrans := fun f g ↦ f.trans g
  isoTrans_refl_left := by
    intro _ _ f
    ext x
    rfl
  isoTrans_refl_right := by
    intro _ _ f
    ext x
    rfl
  isoTrans_assoc := by
    intro _ _ _ _ f g h
    ext x
    rfl
  isQuasiIso := fun _ ↦ True
  isQuasiIso_id := by
    intro
    trivial
  isQuasiIso_comp := by
    intros
    trivial

/--
The determinant theory of the supported rank-one finite-free model.  The
determinant line is the rank-one carrier itself.
-/
def theory (R : CoefficientContext.{uCoeff}) :
    Theory (model R) R where
  Line := fun _ ↦ R.Carrier
  lineEquiv := fun e ↦ e.toEquiv
  lineEquiv_refl := by
    intro
    rfl
  lineEquiv_trans := by
    intro _ _ _ e f
    rfl
  quasiIsoEquiv := fun f ↦ f.hom.toEquiv
  quasiIsoEquiv_id := by
    intro
    rfl
  quasiIsoEquiv_comp := by
    intro _ _ _ f g
    rfl

/-- A concrete, generally nonidentity, certified rank-one automorphism. -/
def negQuasiIso (R : CoefficientContext.{uCoeff}) :
    CertifiedQuasiIso (model R) () () where
  hom := LinearEquiv.neg R.Carrier
  proof := trivial

@[simp]
theorem negQuasiIso_apply
    (R : CoefficientContext.{uCoeff})
    (x : R.Carrier) :
    (theory R).quasiIsoEquiv (negQuasiIso R) x = -x :=
  rfl

end FiniteFreeRankOne

end DAF.Determinant
