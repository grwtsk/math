# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.SimpleFinitePole.Variant9ecb46043cc619d871e65f30ad435d562a80b829c434b49525671a15b86f2e5f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `92a9566406a352a16d7170e76ba58cace0dc9cac` · SHA-256 `d25c42f4458f1eed1f3de6609b2b2cef993af68bf6b6db25292145b0a3f99b53`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.SimpleFinitePoleDescriptor.Variant4883aa67098b2657017b18e857487927785fc9456b250a5c50fde4afa2ca0bd5","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"4883aa67098b2657017b18e857487927785fc9456b250a5c50fde4afa2ca0bd5","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.SimpleFinitePoleDescriptor.Variant4883aa67098b2657017b18e857487927785fc9456b250a5c50fde4afa2ca0bd5","mathematical_subject":"Computation.DataStructures","original_sha256":"4883aa67098b2657017b18e857487927785fc9456b250a5c50fde4afa2ca0bd5","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/Surface/Legacy/BinaryLogicMatrix/Stream/SimpleFinitePole.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Surface.Legacy.BinaryLogicMatrix.Stream.OrderedStream
import Surface.Legacy.BinaryLogicMatrix.Stream.TensorIntegrity


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.SimpleFinitePoleDescriptor.Variant4883aa67098b2657017b18e857487927785fc9456b250a5c50fde4afa2ca0bd5

namespace Surface.Legacy
namespace BinaryLogicMatrix
namespace Stream

structure SimpleFinitePoleDescriptor where
  poleName : String
  orderedStream : OrderedBinaryLogicMatrixStream
  poleOrder : Nat
  residueMatrix : SomeBinaryLogicMatrix
  defectResidues : List IntegrityDefect
  arithmeticDescriptor : FiniteArithmeticDescriptor
  noMeromorphicFunctionClaim : True
  noBSDClaim : True
  noCriticalLineClaim : True
  noDeBruijnNewmanDynamicsClaim : True
  claimBoundary : List String

theorem simpleFinitePole_has_matrix_residue
    (P : SimpleFinitePoleDescriptor) :
    Nonempty
      (BinaryLogicMatrix P.residueMatrix.rows P.residueMatrix.cols) :=
  ⟨P.residueMatrix.matrix⟩

end Stream
end BinaryLogicMatrix
end Surface.Legacy
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a349246f9fa3df0c1eab67d854b123af0bb5a380ad83557c6726b0a8a6950a07 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SimpleFinitePole/Variant9ecb46043cc619d871e65f30ad435d562a80b829c434b49525671a15b86f2e5f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
