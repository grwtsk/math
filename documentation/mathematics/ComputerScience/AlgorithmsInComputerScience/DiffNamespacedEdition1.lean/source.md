# Diff Namespaced Edition1 — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d616b35f9a4cdac32c9fee77bf7129aed2df054f` · SHA-256 `baf70bd8acf905b692e32d5d072e28abf5f618c7308ec43be6ecdef59d88f2ba`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.DeclarationChange.Variantae3032ad09b754e14e3f25e9f528e76b6e9822e1b1206ca56f267c77910f178e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ae3032ad09b754e14e3f25e9f528e76b6e9822e1b1206ca56f267c77910f178e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.DeclarationChange.Variantae3032ad09b754e14e3f25e9f528e76b6e9822e1b1206ca56f267c77910f178e","mathematical_subject":"Computation.DataStructures","original_sha256":"ae3032ad09b754e14e3f25e9f528e76b6e9822e1b1206ca56f267c77910f178e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/.surface/revoked-artifacts/source-structure/2487c9da77d9d8ececb8ffd882948a360b9125bba2b28ca69972182b0e8e2352/failed-candidates/post-application-e89443c73810dcdf/MathDiscovery/Extractor/Diff.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import MathDiscovery.Extractor.Core

/-!
# Environment-diff classifications
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.DeclarationChange.Variantae3032ad09b754e14e3f25e9f528e76b6e9822e1b1206ca56f267c77910f178e

namespace MathDiscovery.Extractor

inductive DeclarationChange
  | added
  | removed
  | renamed
  | movedModule
  | typeChanged
  | valueChanged
  | proofChanged
  | dependencyChanged
  | trustClosureChanged
  | visibilityChanged
  | attributeChanged
  | documentationChanged
  | sourceOnlyChanged
  | unchanged
  deriving DecidableEq, Repr, Inhabited

structure DeclarationDiff where
  before : Option DeclarationId
  after : Option DeclarationId
  beforeName : Option Lean.Name
  afterName : Option Lean.Name
  changes : Array DeclarationChange
  statementIdentityStable : Bool
  implementationIdentityStable : Bool
  deriving DecidableEq, Repr, Inhabited

end MathDiscovery.Extractor
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=431784d23e87f57831fc866541b393d67e47367d01fb1c7afc0d0e8bb59d12f9 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Diff/Variant0bc9e4411a8cfc86d57291f253723c4b32a72395a183251bb7777c954ce922d8.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
