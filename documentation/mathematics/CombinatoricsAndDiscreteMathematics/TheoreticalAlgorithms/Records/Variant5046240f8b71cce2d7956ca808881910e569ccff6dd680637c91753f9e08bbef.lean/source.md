# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Records.Variant5046240f8b71cce2d7956ca808881910e569ccff6dd680637c91753f9e08bbef

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0923e41707b2c4f789369df5ca19ee5a3481c8e7` · SHA-256 `9233abf3198e02f8650290b9edecc7af2dd42b80cf66a596bb2a5a9554b461e5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.IndexedClaim.Variant8076e1569d0be5af039b3918042d6e766b6197388d5963f5ad60b143025977bf","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"8076e1569d0be5af039b3918042d6e766b6197388d5963f5ad60b143025977bf","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.IndexedClaim.Variant8076e1569d0be5af039b3918042d6e766b6197388d5963f5ad60b143025977bf","mathematical_subject":"Computation.DataStructures","original_sha256":"8076e1569d0be5af039b3918042d6e766b6197388d5963f5ad60b143025977bf","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Surface/ContinuousAssurance/Index/Records.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Surface.ContinuousAssurance.Claim
import Surface.ContinuousAssurance.Index.Core

/-!
# Typed canonical-index records

Aliases below remain distinct through their `IndexRecordKind` parameter.  This
prevents a raster record, review binding, or runtime observation from being
silently consumed where a theorem declaration is required.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.IndexedClaim.Variant8076e1569d0be5af039b3918042d6e766b6197388d5963f5ad60b143025977bf

namespace Surface.ContinuousAssurance

abbrev MathematicalObjectRecord := IndexRecord .mathematicalObject
abbrev FormalDeclarationRecord := IndexRecord .formalDeclaration
abbrev PropositionRecord := IndexRecord .proposition
abbrev GlobalReferenceRecord := IndexRecord .globalReference
abbrev AbsoluteRegionRecord := IndexRecord .absoluteRegion
abbrev WindowSystemRecord := IndexRecord .windowSystem
abbrev ConvolutionInvolutionCoreRecord := IndexRecord .convolutionInvolutionCore
abbrev HierarchyLevelRecord := IndexRecord .hierarchyLevel
abbrev BinaryChargeRecord := IndexRecord .binaryCharge
abbrev RasterRecord := IndexRecord .raster
abbrev MetricFlowRecord := IndexRecord .metricFlow
abbrev TorsionModelRecord := IndexRecord .torsionModel
abbrev ThresholdStateRecord := IndexRecord .thresholdState
abbrev AvalanchePartitionRecord := IndexRecord .avalanchePartition
abbrev SurgeryPatchRecord := IndexRecord .surgeryPatch
abbrev SubmatrixLocusRecord := IndexRecord .submatrixLocus
abbrev ImplementationRefinementRecord := IndexRecord .implementationRefinement
abbrev ExampleRecord := IndexRecord .example
abbrev CounterexampleRecord := IndexRecord .counterexample
abbrev DiagramRecord := IndexRecord .diagram
abbrev EvidenceEventRecord := IndexRecord .evidenceEvent
abbrev RepresentationChangeRecord := IndexRecord .representationChange
abbrev ObligationRecord := IndexRecord .obligation
abbrev ReviewBindingRecord := IndexRecord .reviewBinding
abbrev AuthorizationBindingRecord := IndexRecord .authorizationBinding

/-- Claims about the indexed payload must still name an authority class. -/
structure IndexedClaim where
  objectId : MathematicalObjectId
  declaration : Option FormalDeclarationId
  statement : String
  assumptions : List String
  proofAuthority : AuthorityClass
  evidenceClass : EvidenceClass
  status : ClaimStatus
  assuranceLevel : AssuranceLevel
  openObligations : List ObligationId
  deriving Repr

end Surface.ContinuousAssurance
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9f7bb2dd6c7cb7a5dd4e86b4e33ef99af0a4202929cb3fe05396b8874e22508e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Records/Variant5046240f8b71cce2d7956ca808881910e569ccff6dd680637c91753f9e08bbef.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
