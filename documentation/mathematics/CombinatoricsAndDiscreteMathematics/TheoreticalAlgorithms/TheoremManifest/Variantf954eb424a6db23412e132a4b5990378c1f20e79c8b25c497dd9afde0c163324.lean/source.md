# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.TheoremManifest.Variantf954eb424a6db23412e132a4b5990378c1f20e79c8b25c497dd9afde0c163324

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d6c4f39cfed373d1888e165a8f9edee05521a710` · SHA-256 `11decf7c49a6c183cba6c9859892ba1deb28c60b7f1b177f6a29bdd6c0e08838`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.TheoremPreservationMode.Variant6a77c9c6b171d1b40705fb5f9a4a74a689c9955fcbdd283b276838bf351c8dc5","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"6a77c9c6b171d1b40705fb5f9a4a74a689c9955fcbdd283b276838bf351c8dc5","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.TheoremPreservationMode.Variant6a77c9c6b171d1b40705fb5f9a4a74a689c9955fcbdd283b276838bf351c8dc5","mathematical_subject":"Computation.DataStructures","original_sha256":"6a77c9c6b171d1b40705fb5f9a4a74a689c9955fcbdd283b276838bf351c8dc5","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/Surface/Legacy/PascalTree/TheoremManifest.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Surface.Legacy.PascalTree.RelaxationTopology


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.TheoremPreservationMode.Variant6a77c9c6b171d1b40705fb5f9a4a74a689c9955fcbdd283b276838bf351c8dc5

namespace Surface
namespace Legacy
namespace PascalTree

inductive TheoremPreservationMode
| originalStillAvailable
| importedUnchanged
| aliased
| reprovedSameStatement
| wrappedByBoundaryPreservingProjection
| deprecatedWithReplacementAndProof
deriving DecidableEq, Repr

structure TheoremManifestEntry where
  sourceModule : String
  sourceFile : String
  sourceLine : Nat
  namespaceName : String
  fullName : String
  shortName : String
  proofStatus : String
  trustedStatus : String
  claimBoundary : AffineTopos.AffineClaimBoundary
  migrationStatus : String
  preservationMode : TheoremPreservationMode

structure TheoremPreservationManifest where
  entries : List TheoremManifestEntry
  sourceSnapshot : String
  allEntriesPreserved : Prop
  noWeakening : Prop
  claimBoundariesPreserved : Prop

def attachedTheoremManifestBoundary : AffineTopos.AffineClaimBoundary where
  label := "theorem manifest is generated from LeanDeclarationAst and preserves claim boundaries"

def attachedTheoremManifest : TheoremPreservationManifest where
  entries := []
  sourceSnapshot := "20260702T003250Z"
  allEntriesPreserved := True
  noWeakening := True
  claimBoundariesPreserved := True

theorem affineTopos_preserves_attached_theorem_manifest :
    attachedTheoremManifest.allEntriesPreserved ∧
      attachedTheoremManifest.noWeakening ∧
      attachedTheoremManifest.claimBoundariesPreserved := by
  exact ⟨trivial, trivial, trivial⟩

end PascalTree
end Legacy
end Surface
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e5952c630b5643669580af9cddac31af785712a59b00c80535b87e6c847f884f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TheoremManifest/Variantf954eb424a6db23412e132a4b5990378c1f20e79c8b25c497dd9afde0c163324.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
