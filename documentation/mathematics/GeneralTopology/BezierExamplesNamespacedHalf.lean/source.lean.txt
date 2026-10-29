-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.WeightedLine.Variantb74519e2466b58ef209d96f6d7d148d51cdc8441b45077a22e8049b353558ed4","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b74519e2466b58ef209d96f6d7d148d51cdc8441b45077a22e8049b353558ed4","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.WeightedLine.Variantb74519e2466b58ef209d96f6d7d148d51cdc8441b45077a22e8049b353558ed4","mathematical_subject":"Topology.GeneralTopology","original_sha256":"b74519e2466b58ef209d96f6d7d148d51cdc8441b45077a22e8049b353558ed4","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/Audit/BezierExamples.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Surface.Core.Bezier.Subdivision

/-!
# Rational Bézier substrate examples

These noncanonical examples exercise endpoint, denominator, and reversal
behavior without granting theorem-cone authority.
-/


namespace GRWTSK.Topology.GeneralTopology.WeightedLine.Variantb74519e2466b58ef209d96f6d7d148d51cdc8441b45077a22e8049b353558ed4

namespace Surface.Audit.BezierExamples

open Surface.Core.Bezier

noncomputable section

/-- A nontrivial affine segment with unequal positive rational weights. -/
def weightedLine : RationalSegment ℝ 1 where
  control i := if i = 0 then 2 else 5
  weight i := if i = 0 then 1 else 3
  weight_pos i := by
    split_ifs <;> norm_num

/-- The midpoint parameter used by the exact subdivision regression. -/
def half : UnitInterval :=
  ⟨(1 : ℝ) / 2, by constructor <;> norm_num⟩

example : weightedLine.eval (0 : UnitInterval) = 2 := by
  simp [weightedLine]

example : weightedLine.eval (1 : UnitInterval) = 5 := by
  simp [weightedLine]

example (t : UnitInterval) : 0 < weightedLine.denominator t.1 :=
  weightedLine.denominator_pos t

example (t : UnitInterval) :
    weightedLine.reverse.eval t =
      weightedLine.eval (reverseParameter t) :=
  weightedLine.eval_reverse t

example (tau t : UnitInterval) :
    (weightedLine.splitAt tau).1.eval t =
      weightedLine.eval (RationalSegment.leftParameter tau t) :=
  weightedLine.eval_split_left tau t

example (tau t : UnitInterval) :
    (weightedLine.splitAt tau).2.eval t =
      weightedLine.eval (RationalSegment.rightParameter tau t) :=
  weightedLine.eval_split_right tau t

/-- Splitting the unequal-weight segment changes its control net while its
left endpoint-to-midpoint image remains exact. -/
example :
    (weightedLine.splitAt half).1.eval (1 : UnitInterval) = (17 : ℝ) / 4 := by
  rw [weightedLine.eval_split_left]
  norm_num [half, RationalSegment.leftParameter, weightedLine,
    RationalSegment.eval, RationalSegment.numerator,
    RationalSegment.denominator, Surface.Core.Bezier.bernstein,
    Fin.sum_univ_succ]

end

end Surface.Audit.BezierExamples

#print axioms Surface.Core.Bezier.RationalSegment.denominator_pos
#print axioms Surface.Core.Bezier.RationalSegment.eval_zero
#print axioms Surface.Core.Bezier.RationalSegment.eval_one
#print axioms Surface.Core.Bezier.RationalSegment.continuous_eval
#print axioms Surface.Core.Bezier.RationalSegment.eval_reverse
#print axioms Surface.Core.Bezier.RationalSegment.eval_split_left
#print axioms Surface.Core.Bezier.RationalSegment.eval_split_right
