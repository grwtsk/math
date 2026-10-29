# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Profile.Variantbf76342b155cafa66aab9b5ad4cad8998d2ef6301fda639645fc5410e12d2637

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9123bde054d01e78325df2dbf82b2fd434d3eaa8` · SHA-256 `6597af6d73173aefc2f357df69cb395087e53dde4e7e5c10aba32f3292801bda`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ImplementationPolicy.Variant038ab5b72842b442acd61848692d4ddeb92844696195b175a7d07f6a035aed94","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"038ab5b72842b442acd61848692d4ddeb92844696195b175a7d07f6a035aed94","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.ImplementationPolicy.Variant038ab5b72842b442acd61848692d4ddeb92844696195b175a7d07f6a035aed94","mathematical_subject":"Foundations.Unclassified","original_sha256":"038ab5b72842b442acd61848692d4ddeb92844696195b175a7d07f6a035aed94","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/.surface/revoked-artifacts/source-structure/2487c9da77d9d8ececb8ffd882948a360b9125bba2b28ca69972182b0e8e2352/failed-candidates/post-application-e89443c73810dcdf/MathDiscovery/Refactor/Profile.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import MathDiscovery.Atom.All

/-! # Governed refactoring profiles -/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ImplementationPolicy.Variant038ab5b72842b442acd61848692d4ddeb92844696195b175a7d07f6a035aed94

namespace MathDiscovery.Refactor

open MathDiscovery

inductive ImplementationPolicy
  | exact
  | relocationMap
  deriving DecidableEq, Repr, Inhabited

structure Profile where
  id : RefactorProfileId
  implementationPolicy : ImplementationPolicy := .exact
  preservePublicNames : Bool := true
  preserveStatements : Bool := true
  preserveTrustClosures : Bool := true
  preserveSafety : Bool := true
  preserveProofText : Bool := true
  learnedEvidenceEnabled : Bool := false
  requireCleanTree : Bool := true
  profileDigest : Digest
  deriving DecidableEq, Repr

end MathDiscovery.Refactor
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=91afa00766c11ec21e363041eb548b75bdacba1eff1ef92369b619372698c11a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Profile/Variantbf76342b155cafa66aab9b5ad4cad8998d2ef6301fda639645fc5410e12d2637.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
