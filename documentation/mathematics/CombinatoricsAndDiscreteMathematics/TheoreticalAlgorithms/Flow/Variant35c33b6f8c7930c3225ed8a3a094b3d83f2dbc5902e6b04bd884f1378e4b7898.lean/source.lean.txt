-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.PointCountModuloFromCurve.Variant34ae62b5c8f66ad9f3033bbac3246ee824dbe44dd5ed1bf655e2464e33090721","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"34ae62b5c8f66ad9f3033bbac3246ee824dbe44dd5ed1bf655e2464e33090721","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.PointCountModuloFromCurve.Variant34ae62b5c8f66ad9f3033bbac3246ee824dbe44dd5ed1bf655e2464e33090721","mathematical_subject":"Computation.DataStructures","original_sha256":"34ae62b5c8f66ad9f3033bbac3246ee824dbe44dd5ed1bf655e2464e33090721","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/Surface/Arithmetic/EllipticCurve/BSD/Flow.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Surface.Flow.Arithmetic
import Surface.Arithmetic.FiniteField
import Surface.Arithmetic.EllipticCurve.PointCounting
import Surface.Arithmetic.EllipticCurve.LFunction


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.PointCountModuloFromCurve.Variant34ae62b5c8f66ad9f3033bbac3246ee824dbe44dd5ed1bf655e2464e33090721

namespace Surface.Arithmetic.EllipticCurve.BSD

/-!
# BSD-aware Boolean flow constructors

These constructors connect the symbolic Boolean flow grammar to the typed
arithmetic layer.  They do not assert BSD, analytic continuation, or rank-loop
equivalence.
-/

namespace Flow

open Surface.Arithmetic
open Surface.Arithmetic.EllipticCurve

/-- Build a local point-count flow datum from an actual finite enumeration count. -/
def pointCountModuloFromCurve
    (curveLabel : String)
    (F : FiniteFieldLike)
    (E : ShortWeierstrass F.field) :
    Flow.LocalPointCount where
  curve := curveLabel
  p := F.cardinality
  Np := PointCounting.pointCount F E

/-- Convert an arithmetic point count into a local factor flow node. -/
def localFactorFromPointCount
    (c : Flow.LocalPointCount) :
    Flow.Expression String :=
  Flow.localFactorOfCount c

/-- Euler-product approximation from arithmetic-backed local counts. -/
def eulerProductApproxFromCurve
    (bound : Nat)
    (counts : List Flow.LocalPointCount) :
    Flow.Expression String :=
  Flow.eulerProductApprox bound counts

/-- Log-scaling claim node; this is a comparison node, not an analytic theorem. -/
def logScalingClaim
    (bound rank : Nat)
    (counts : List Flow.LocalPointCount) :
    Flow.Expression String :=
  Flow.asymptoticLogScaling bound rank counts

/-- Analytic-rank comparison node gated by an order-of-vanishing certificate. -/
def analyticRankComparisonNode
    {K : FieldLike}
    {E : ShortWeierstrass K}
    {L : HasseWeilLFunction K E}
    (curveLabel : String)
    (C : OrderOfVanishingCertificate L) :
    Flow.Expression String :=
  Flow.analyticContinuationBridge
    curveLabel
    (orderOfVanishing C)

/-- A checked finite example node built from the F5 example point count. -/
def exampleF5PointCountNode : Flow.Expression String :=
  Flow.localFactorOfCount
    (pointCountModuloFromCurve
      "example F5 curve"
      F5
      exampleCurveF5)

theorem exampleF5PointCountNode_uses_checked_count :
    (pointCountModuloFromCurve
      "example F5 curve"
      F5
      exampleCurveF5).Np = 9 := by
  native_decide

end Flow
end Surface.Arithmetic.EllipticCurve.BSD
