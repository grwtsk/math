# Involutive Prismatic Move Namespaced Edition1 — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7d34aae4cdf56d1a55a99b4808780c762ec8661c` · SHA-256 `135750ee57755060fafd7b5b3caa93c98c8cdd55849c817225ec269aa63a563a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.IntegralDeterminantInterpretation.Variant508c834045d39b008c184278d4fd824998477f1612a7be6f63986e63cf3d4802","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"508c834045d39b008c184278d4fd824998477f1612a7be6f63986e63cf3d4802","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.IntegralDeterminantInterpretation.Variant508c834045d39b008c184278d4fd824998477f1612a7be6f63986e63cf3d4802","mathematical_subject":"Analysis.Integration","original_sha256":"508c834045d39b008c184278d4fd824998477f1612a7be6f63986e63cf3d4802","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/DAF/Integration/InvolutivePrismaticMove.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import BitMatrix.Network.IntegralPermutationLift
import DAF.Comparison.Coefficients
import DAF.Prismatic.SourceRealizationFunctoriality
import DAF.Terrain.Legality

/-!
# Involutive finite moves with explicit arithmetic realization

This integration record keeps four claims separate: the finite involution,
its Boolean/`GF(2)` action matrix, terrain-local legality, and a selected
arithmetic source morphism.  None implies the others.  Integral determinant
parity is packaged as an applicability record over the explicitly named
integral coefficient context; it is not complete move legality.
-/


namespace GRWTSK.Analysis.RealAnalysis.Integration.IntegralDeterminantInterpretation.Variant508c834045d39b008c184278d4fd824998477f1612a7be6f63986e63cf3d4802

namespace DAF.Integration

open FinitePermutationDynamics

universe uState uV

/-- The permitted interpretation of an integral determinant certificate. -/
inductive IntegralDeterminantInterpretation
  | permutationParity
  | nondegeneracy
  | determinantLineInput
  deriving DecidableEq, Repr

/-- Determinant applicability for one exact integral permutation lift. -/
structure IntegralDeterminantApplicability
    {X : Type uV} [Fintype X] [DecidableEq X]
    (matrix : BitMatrix.Algebra.InvolutionProjection X) where
  coefficientContext : DAF.Comparison.CoefficientContext
  coefficient_is_integral :
    coefficientContext = DAF.Comparison.CoefficientContext.integral
  expectedDeterminant : ℤ
  determinant_eq : matrix.integralMatrix.det = expectedDeterminant
  determinant_unit : expectedDeterminant = 1 ∨ expectedDeterminant = -1
  interpretation : IntegralDeterminantInterpretation
  appliesTo : String

/--
One globally located terrain move backed by a certified finite involution and
an explicit arithmetic source change.
-/
structure InvolutivePrismaticMove
    {State : Type uState}
    (G : DAF.Terrain.KnownMaximalState State)
    (V : Type uV) [Fintype V] [DecidableEq V]
    (F : DAF.Fabric.Fabric)
    (P : DAF.Prismatic.Theory)
    (before after : DAF.Prismatic.SourceRealization F P) where
  terrainMove : DAF.Terrain.TerrainMove G V
  terrainLegality : DAF.Terrain.TerrainMoveLegality terrainMove
  involution : CertifiedInvolution V
  supportInsideLocus :
    letI := G.coordDecEq
    ∀ v, v ∈ involution.support →
      terrainMove.vertexGlobal v ∈ terrainMove.locus.coordinates
  matrix : BitMatrix.Algebra.InvolutionProjection V
  matrix_source : matrix.source = involution
  orientationAgreement : Prop
  orientationAgreement_proof : orientationAgreement
  sourceChange : DAF.Prismatic.SourceRealization.Hom before after
  realizationSquare : Prop
  realizationSquare_proof : realizationSquare
  determinant : IntegralDeterminantApplicability matrix

namespace InvolutivePrismaticMove

variable
    {State : Type uState}
    {G : DAF.Terrain.KnownMaximalState State}
    {V : Type uV} [Fintype V] [DecidableEq V]
    {F : DAF.Fabric.Fabric}
    {P : DAF.Prismatic.Theory}
    {before after : DAF.Prismatic.SourceRealization F P}

/-- Every moved finite vertex belongs to the exact terrain locus. -/
theorem moved_vertex_in_locus
    (move : InvolutivePrismaticMove G V F P before after)
    {v : V} (hv : v ∈ move.involution.support) :
    move.terrainMove.vertexGlobal v ∈
      move.terrainMove.locus.coordinates := by
  letI : DecidableEq G.Coord := G.coordDecEq
  exact move.supportInsideLocus v hv

/-- The Boolean matrix is exactly the realization of the stored involution. -/
theorem matrix_action_agrees
    (move : InvolutivePrismaticMove G V F P before after) :
    move.matrix.source = move.involution :=
  move.matrix_source

/-- The integral lift is nondegenerate with determinant `+1` or `-1`. -/
theorem determinant_eq_one_or_neg_one
    (move : InvolutivePrismaticMove G V F P before after) :
    move.matrix.integralMatrix.det = 1 ∨
      move.matrix.integralMatrix.det = -1 :=
  move.matrix.det_integralMatrix_eq_one_or_neg_one

/-- The terrain-owned obligations remain available as one explicit conjunction. -/
theorem terrain_conditions
    (move : InvolutivePrismaticMove G V F P before after) :
    move.terrainLegality.exactGlobalLocus ∧
    move.terrainLegality.adjacencyCompliant ∧
    move.terrainLegality.boundaryCompliant ∧
    move.terrainLegality.obstacleCompliant ∧
    move.terrainLegality.capacityCompliant ∧
    move.terrainLegality.conservative ∧
    move.terrainLegality.globalRulesetCompatible :=
  move.terrainLegality.conjunction

end InvolutivePrismaticMove

end DAF.Integration
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=45500c133aeccbb0881b34896a13b3ccaa1d70270ff4635ba2715c0392cbc9e7 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/InvolutivePrismaticMove/Variant55bf5aa01417a40e3a186872ce59800b1412cdc58cedb788a83c908b2f9e97fc.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
