-- corpus-organization-transform:v1
-- Mathematical subject: Topology.MetricTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.MetricTopology.ZeroHoleExample.Variant142f71fef5a23b925eb7bbd0721fc0e3632bc5afb914b9bba08b9ff86c96a875","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"142f71fef5a23b925eb7bbd0721fc0e3632bc5afb914b9bba08b9ff86c96a875","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.MetricSpaces.SourceCorpus.ZeroHoleExample.Variant142f71fef5a23b925eb7bbd0721fc0e3632bc5afb914b9bba08b9ff86c96a875","mathematical_subject":"Topology.MetricSpaces","original_sha256":"142f71fef5a23b925eb7bbd0721fc0e3632bc5afb914b9bba08b9ff86c96a875","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/Audit/ComplexAnalysisFiniteHoleExamples.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Surface.Core.ComplexAnalysis.FiniteHoleGeometry
import Mathlib.Tactic

/-!
# Finite-hole geometry examples

These coefficient-free examples exercise the private CA-02 geometry layer.
They assert no contour, residue, explicit-formula, positivity, RH, or GRH
theorem.
-/


namespace GRWTSK.Topology.MetricTopology.ZeroHoleExample.Variant142f71fef5a23b925eb7bbd0721fc0e3632bc5afb914b9bba08b9ff86c96a875

namespace Surface.Audit.ComplexAnalysisFiniteHoleExamples

open Set Complex Metric
open Surface.Core.ComplexAnalysis

noncomputable section

/-- No holes in a nondegenerate rectangle. -/
def zeroHoleExample :
    RectangleHoleConfiguration ((-3 : ℂ) - 3 * I) (3 + 3 * I) :=
  RectangleHoleConfiguration.empty _ _

/-- One radius-one disk centered at the origin. -/
def oneCentralHoleExample :
    RectangleHoleConfiguration ((-3 : ℂ) - 3 * I) (3 + 3 * I) :=
  RectangleHoleConfiguration.singleton _ _ 0 1 (by norm_num) (by
    apply closedBall_subset_openRectangle_of_coordinateMargin <;> norm_num)

/-- Two separated radius-one-half disks centered at `-1` and `1`. -/
def twoSeparatedHolesExample :
    RectangleHoleConfiguration ((-3 : ℂ) - 3 * I) (3 + 3 * I) :=
  RectangleHoleConfiguration.pair _ _ (-1) 1 (1 / 2) (1 / 2)
    (by norm_num) (by norm_num) (by norm_num)
    (by apply closedBall_subset_openRectangle_of_coordinateMargin <;> norm_num)
    (by apply closedBall_subset_openRectangle_of_coordinateMargin <;> norm_num)
    (by
      rw [disjoint_closedBall_closedBall_iff (by norm_num) (by norm_num)]
      norm_num [Complex.dist_eq, Complex.norm_def])

/-- Translation of the one-hole configuration away from the origin. -/
def translatedHoleExample :
    RectangleHoleConfiguration ((-1 : ℂ) - 2 * I) (5 + 4 * I) :=
  RectangleHoleConfiguration.singleton _ _ (2 + I) 1 (by norm_num) (by
    apply closedBall_subset_openRectangle_of_coordinateMargin <;> norm_num)

/-- A uniformly enlarged rectangle and central disk. -/
def scaledHoleExample :
    RectangleHoleConfiguration ((-6 : ℂ) - 6 * I) (6 + 6 * I) :=
  RectangleHoleConfiguration.singleton _ _ 0 2 (by norm_num) (by
    apply closedBall_subset_openRectangle_of_coordinateMargin <;> norm_num)

example : zeroHoleExample.centers = ∅ := rfl
example : oneCentralHoleExample.centers = {0} := rfl
example : twoSeparatedHolesExample.centers = {-1, 1} := rfl

end

end Surface.Audit.ComplexAnalysisFiniteHoleExamples
