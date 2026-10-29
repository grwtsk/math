# Determinant Fiber Namespaced — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0296deddfa1366596031f0239910beea49413b4c` · SHA-256 `ece737d99cd2acb98b6b6922d23d473bafcc757140e50fdb508d859a27c2288c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ReductionCandidate.Variantf46302ffab3901c46771cea29132ac01026e6d355c493c940c83852772572f86","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f46302ffab3901c46771cea29132ac01026e6d355c493c940c83852772572f86","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.ReductionCandidate.Variantf46302ffab3901c46771cea29132ac01026e6d355c493c940c83852772572f86","mathematical_subject":"Computation.DataStructures","original_sha256":"f46302ffab3901c46771cea29132ac01026e6d355c493c940c83852772572f86","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/Surface/Legacy/PascalTree/DeterminantFiber.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Surface.Legacy.PascalTree.TensorExpression


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ReductionCandidate.Variantf46302ffab3901c46771cea29132ac01026e6d355c493c940c83852772572f86

namespace Surface
namespace Legacy
namespace PascalTree

structure ReductionCandidate where
  id : Nat
  expression : BinaryLogicMatrixTensorExpression
  payload : ReductionPayload
  claimBoundary : AffineTopos.AffineClaimBoundary

structure DeterminantFiber where
  determinant : DeterminantDescriptor
  candidates : List ReductionCandidate
  determinantAdmissible : determinant.admissible
  claimBoundary : AffineTopos.AffineClaimBoundary

theorem determinantFiber_square_required
    (fiber : DeterminantFiber) :
    fiber.determinant.kind = DeterminantDescriptorKind.actualSquare ∨
      fiber.determinant.kind = DeterminantDescriptorKind.boundedSurrogate := by
  exact fiber.determinantAdmissible

theorem determinantFiber_boundary_visible
    (fiber : DeterminantFiber) :
    fiber.claimBoundary = fiber.claimBoundary := by
  rfl

end PascalTree
end Legacy
end Surface
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c326ad83478341d747b64e7ed6163138f3fc434686086d217a903a42d988ada1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DeterminantFiber/Variant3d378b76eaf6dcd82ff2005be9ebe43be2cf4a8a0a83d370ba291365f6cf40c9.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
