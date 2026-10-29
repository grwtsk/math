# Finite Stratum Namespaced — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `da8206760485728318730b4416fca4b21908eebb` · SHA-256 `d738becdacbefd22e7515c563b5762ad6ed56e1203f4fdb3b1a4f74dc59f9b11`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FiniteStratumSquareRootCertificate.Variant30c870c56210b7ee5b06f597030720eb3ebff992656e265700ea5b90773f129e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"30c870c56210b7ee5b06f597030720eb3ebff992656e265700ea5b90773f129e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.FiniteStratumSquareRootCertificate.Variant30c870c56210b7ee5b06f597030720eb3ebff992656e265700ea5b90773f129e","mathematical_subject":"Foundations.Unclassified","original_sha256":"30c870c56210b7ee5b06f597030720eb3ebff992656e265700ea5b90773f129e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Documents/N/formal/lean/Mathematics/StratifiedBoundary/SquareRoot/FiniteStratum.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.StratifiedBoundary.Arithmetic.FiniteCorrespondence

/-!
# Finite-stratum square-root certificate
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FiniteStratumSquareRootCertificate.Variant30c870c56210b7ee5b06f597030720eb3ebff992656e265700ea5b90773f129e

namespace Mathematics.StratifiedBoundary

structure FiniteStratumSquareRootCertificate where
  stratum : Nat
  unnormalizedDiscrepancy : Nat
  squareRootScale : Nat
  spectralMultiplicityScale : Nat
  bound :
    unnormalizedDiscrepancy ≤
      squareRootScale * spectralMultiplicityScale
  invariantBiasRemoved : Bool := true
  invariantBiasRemoved_exact :
    invariantBiasRemoved = true
  exactArithmeticCorrespondenceRef : String
  spectralBoundRef : String

end Mathematics.StratifiedBoundary
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8ff506802ecf1eb5af718bc62d1bc14875874100523819da72d63dd2c4e32daf -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FiniteStratum/Variant481c37061e0b444ed50b9573d7a56659abb4b5cd85922c5e322c411295b8018e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
