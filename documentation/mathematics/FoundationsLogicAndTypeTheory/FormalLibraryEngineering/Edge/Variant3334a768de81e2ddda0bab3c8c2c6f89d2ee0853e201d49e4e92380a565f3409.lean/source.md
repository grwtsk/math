# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Edge.Variant3334a768de81e2ddda0bab3c8c2c6f89d2ee0853e201d49e4e92380a565f3409

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1f23f1f972630bdeab23cf70dca49781f8bf442e` · SHA-256 `3f1de8d53bbfed641d8d5b87597e7cb5aeca63900c36701740b2590aef2a9559`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SourceEdgeKind.Variante58f2797793261d12693e4a0f95589ceac677082b0d42eba5fa756f2fe72e3d4","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e58f2797793261d12693e4a0f95589ceac677082b0d42eba5fa756f2fe72e3d4","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.SourceEdgeKind.Variante58f2797793261d12693e4a0f95589ceac677082b0d42eba5fa756f2fe72e3d4","mathematical_subject":"Foundations.Unclassified","original_sha256":"e58f2797793261d12693e4a0f95589ceac677082b0d42eba5fa756f2fe72e3d4","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/.surface/revoked-artifacts/source-structure/2487c9da77d9d8ececb8ffd882948a360b9125bba2b28ca69972182b0e8e2352/failed-candidates/post-application-e89443c73810dcdf/MathDiscovery/Atom/Edge.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import MathDiscovery.Atom.State

/-! # Typed source-support edges -/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SourceEdgeKind.Variante58f2797793261d12693e4a0f95589ceac677082b0d42eba5fa756f2fe72e3d4

namespace MathDiscovery.Atom

open MathDiscovery

inductive SourceEdgeKind
  | kernelDependency
  | earlierSourceDeclaration
  | syntaxProvider
  | macroProvider
  | notationProvider
  | namespaceContext
  | sectionVariableContext
  | optionProvider
  | attributeProvider
  | localInstanceProvider
  | scopedInstanceProvider
  | commandElaborator
  | privateClusterCoupling
  | sourceGeneration
  | generatedCompanion
  deriving DecidableEq, Repr, Inhabited

structure SourceEdge where
  id : SourceEdgeId
  provider : SourceCommandId
  consumer : SourceCommandId
  kind : SourceEdgeKind
  evidenceDigest : Digest
  mandatory : Bool
  deriving DecidableEq, Repr

end MathDiscovery.Atom
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a1555180fe1b732552c53f77fd9a9d06151164b5af7dcf980a8a4d9a2b753059 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Edge/Variant3334a768de81e2ddda0bab3c8c2c6f89d2ee0853e201d49e4e92380a565f3409.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
