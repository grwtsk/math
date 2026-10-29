# Frame Namespaced — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `45e8bede6d8325d661b5e1f6c78d342a227b6af3` · SHA-256 `65067b9d83849d6126ac7595a622c6ab87d7bb84fb5cfda0de3dc4fa9f713ae2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Frame.Variant5c521608eee20e53ab54a516874580fc1dbc14b788f46ec8c28b5a241005e4db","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"5c521608eee20e53ab54a516874580fc1dbc14b788f46ec8c28b5a241005e4db","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.Frame.Variant5c521608eee20e53ab54a516874580fc1dbc14b788f46ec8c28b5a241005e4db","mathematical_subject":"Computation.DataStructures","original_sha256":"5c521608eee20e53ab54a516874580fc1dbc14b788f46ec8c28b5a241005e4db","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/Surface/Legacy/BinaryLogicMatrix/Stream/Frame.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Surface.Legacy.BinaryLogicMatrix.Stream.Core


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Frame.Variant5c521608eee20e53ab54a516874580fc1dbc14b788f46ec8c28b5a241005e4db

namespace Surface.Legacy
namespace BinaryLogicMatrix
namespace Stream

structure Frame where
  frameIndex : Nat
  payload : SomeBinaryLogicMatrix
  rowMajorPayload : List Bool
  payloadMatchesMatrix :
    rowMajorPayload =
      BinaryLogicMatrix.rowMajorBits payload.matrix
  roundTripMatrix :
    BinaryLogicMatrix.fromBoolList
      payload.rows
      payload.cols
      rowMajorPayload =
        payload.matrix
  matrixHash : String
  previousHash? : Option String
  boundaryHash : String
  claimBoundary : List String

theorem frame_payload_is_BinaryLogicMatrix
    (F : Frame) :
    Nonempty (BinaryLogicMatrix F.payload.rows F.payload.cols) :=
  ⟨F.payload.matrix⟩

end Stream
end BinaryLogicMatrix
end Surface.Legacy
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ff31498d0a24da9e67ef799271c5342a394f26f9e660ba656fb55e0159b5cfad -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Frame/Variant261bca5a9bb2cd146d71f6bc664b379b070c1cdca593675616b343d0092b7d8e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
