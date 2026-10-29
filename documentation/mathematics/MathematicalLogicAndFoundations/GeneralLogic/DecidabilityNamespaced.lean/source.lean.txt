-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.MathematicalLogic
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.CompleteOrientedHomeomorphismDecision.Variant91b4d48012bb970c202e153624555a8af1749c78ff66a222bc0c373377479ad5","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"91b4d48012bb970c202e153624555a8af1749c78ff66a222bc0c373377479ad5","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Logic.Foundations.SourceCorpus.CompleteOrientedHomeomorphismDecision.Variant91b4d48012bb970c202e153624555a8af1749c78ff66a222bc0c373377479ad5","mathematical_subject":"Logic.Foundations","original_sha256":"91b4d48012bb970c202e153624555a8af1749c78ff66a222bc0c373377479ad5","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Surface/CosmeticSurgery/Decidability.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Surface.CosmeticSurgery.Reduction

/-!
# Fixed-knot decidability

The residual universal conjecture ranges over knots of unbounded complexity,
but the question for one fixed nontrivial knot is decidable once two explicit
capabilities are supplied:

* certified decisions for the residual knot invariants; and
* a complete decision procedure for oriented homeomorphism of the modeled
  closed three-manifolds.

`CompleteOrientedHomeomorphismDecision` is intentionally stronger than a
finite slope-screening program.  In particular, this module does **not** claim
that the Futer--Purcell--Schleimer software is a complete general
three-manifold homeomorphism solver.  Such software may provide useful
external evidence, while the decision values used here must decide both the
positive and negative cases in the abstract model.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.CompleteOrientedHomeomorphismDecision.Variant91b4d48012bb970c202e153624555a8af1749c78ff66a222bc0c373377479ad5

namespace Surface.CosmeticSurgery

universe u

open OrientedKnotFillingTheory

/--
A proof-bearing complete decision capability for oriented homeomorphism of
the closed manifolds in `T`.

Returning `Decidable` records a certified yes/no result: a positive branch
contains an actual oriented homeomorphism, while a negative branch contains a
proof that none exists.
-/
structure CompleteOrientedHomeomorphismDecision
    (T : OrientedKnotFillingTheory.{u}) where
  decide : ∀ M N : T.ClosedManifold,
    Decidable (Nonempty (T.OrientedHomeomorphism M N))

namespace CompleteOrientedHomeomorphismDecision

variable {T : OrientedKnotFillingTheory.{u}}

/-- Specialize the complete closed-manifold decision to two knot fillings. -/
def decideFillingsHomeomorphic
    (D : CompleteOrientedHomeomorphismDecision T)
    (K : T.Knot)
    (r s : T.Slope K) :
    Decidable (T.FillingsHomeomorphic K r s) :=
  D.decide (T.Filling K r) (T.Filling K s)

end CompleteOrientedHomeomorphismDecision

/--
All certified decision ingredients needed by the fixed-knot reduction.

The first field models the initial unknot/nontriviality check.  The second
packages computations of genus and the residual polynomial, Floer, and Jones
conditions into a decision for their exact conjunction.  The last field is a
complete oriented-homeomorphism decision, not merely a heuristic or finite
candidate generator.
-/
structure FixedKnotDecisionCapability
    (T : OrientedKnotFillingTheory.{u}) where
  decideNontrivial : ∀ K : T.Knot, Decidable (T.Nontrivial K)
  decideResidualProfile : ∀ K : T.Knot,
    Decidable (T.FixedKnotResidualProfile K)
  orientedHomeomorphism : CompleteOrientedHomeomorphismDecision T

namespace FixedKnotDecisionCapability

variable {T : OrientedKnotFillingTheory.{u}}

/-- Decide the residual profile together with the `2` and `-2` filling pair. -/
def decideFixedKnotResidualCounterexample
    (D : FixedKnotDecisionCapability T)
    (K : T.Knot) :
    Decidable (T.FixedKnotResidualCounterexample K) := by
  unfold OrientedKnotFillingTheory.FixedKnotResidualCounterexample
  exact @instDecidableAnd
    (T.FixedKnotResidualProfile K)
    (T.FillingsHomeomorphic K (T.plusTwo K) (T.minusTwo K))
    (D.decideResidualProfile K)
    (D.orientedHomeomorphism.decideFillingsHomeomorphic
      K (T.plusTwo K) (T.minusTwo K))

/--
For a fixed knot already certified nontrivial, decide whether it is a purely
cosmetic surgery counterexample.
-/
def decideKnotCounterexample
    (D : FixedKnotDecisionCapability T)
    (R : CurrentReduction T)
    (K : T.Knot)
    (hK : T.Nontrivial K) :
    Decidable (T.KnotCounterexample K) :=
  match D.decideFixedKnotResidualCounterexample K with
  | isTrue hResidual =>
      isTrue
        ((R.knotCounterexample_iff_fixedKnotResidualCounterexample hK).2
          hResidual)
  | isFalse hResidual =>
      isFalse fun hCounterexample =>
        hResidual
          ((R.knotCounterexample_iff_fixedKnotResidualCounterexample hK).1
            hCounterexample)

/-- The fixed-knot problem is the nontrivial-knot counterexample proposition. -/
def FixedKnotProblem
    (T : OrientedKnotFillingTheory.{u})
    (K : T.Knot) : Prop :=
  T.Nontrivial K ∧ T.KnotCounterexample K

/--
The full fixed-knot decision first decides nontriviality and, only in the
nontrivial branch, invokes the exact residual and homeomorphism decisions.
-/
def decideFixedKnotProblem
    (D : FixedKnotDecisionCapability T)
    (R : CurrentReduction T)
    (K : T.Knot) :
    Decidable (FixedKnotProblem T K) :=
  match D.decideNontrivial K with
  | isFalse hTrivial =>
      isFalse fun hProblem => hTrivial hProblem.1
  | isTrue hNontrivial =>
      match D.decideKnotCounterexample R K hNontrivial with
      | isTrue hCounterexample =>
          isTrue ⟨hNontrivial, hCounterexample⟩
      | isFalse hCounterexample =>
          isFalse fun hProblem => hCounterexample hProblem.2

/-- Every fixed knot receives a certified yes/no answer under the capabilities. -/
def fixedKnotProblem_decidable
    (D : FixedKnotDecisionCapability T)
    (R : CurrentReduction T)
    (K : T.Knot) :
    Decidable (FixedKnotProblem T K) :=
  D.decideFixedKnotProblem R K

end FixedKnotDecisionCapability

end Surface.CosmeticSurgery
