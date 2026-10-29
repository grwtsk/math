# Relation Planes Namespaced — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9dc7fc342451269be9f2d98237d967b269ece767` · SHA-256 `efa7de56646cecc39638170eee2ec60195f7568030bbbdf7fd55dbd1617f14e0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.CompositeRelations.Variantfea1b7f84801e33c12d75849d6ddfd148ce6e13fb4ffc5c140f06e84e30fbc68","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"fea1b7f84801e33c12d75849d6ddfd148ce6e13fb4ffc5c140f06e84e30fbc68","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.CompositeRelations.Variantfea1b7f84801e33c12d75849d6ddfd148ce6e13fb4ffc5c140f06e84e30fbc68","mathematical_subject":"Foundations.Unclassified","original_sha256":"fea1b7f84801e33c12d75849d6ddfd148ce6e13fb4ffc5c140f06e84e30fbc68","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/lean/bridge/BridgeElements/RelationPlanes.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import BitMatrix
import Mathematics.Export.Project
import URSMContracts

/-!
# Project relation surface

The bridge accepts explicit finite relations.  It does not infer exact bridges
from similarity or convert missing conflict analysis into a negative bit.
-/


namespace GRWTSK.Algebra.LinearAlgebra.CompositeRelations.Variantfea1b7f84801e33c12d75849d6ddfd148ce6e13fb4ffc5c140f06e84e30fbc68

namespace URSM.Bridge

open URSM.Contracts

structure CompositeRelations (n : Nat) where
  imports : BitMatrix n n
  transport : BitMatrix n n
  exactBridge : BitMatrix n n
  conflict : BitMatrix n n
  propertyNaturality : BitMatrix n n
  exactBridgeSymmetric :
    ∀ i j, exactBridge i j = exactBridge j i
  conflictSymmetric :
    ∀ i j, conflict i j = conflict j i
  exactBridgeImpliesTransport :
    ∀ i j, exactBridge i j = true →
      transport i j = true ∧ transport j i = true

def formalPlane
    (descriptor : PlaneDescriptor)
    (matrix : BitMatrix n n)
    (certificateRoot : String) :
    FormalPlane n (fun i j ↦ matrix i j = true) :=
  FormalPlane.ofBits descriptor matrix certificateRoot

end URSM.Bridge
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=71b703b230b2d5b24d3e772773faf377252c2f6aa4e2ea02f594bb9903891663 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/RelationPlanes/Variantf975626ebb39b8bccbc73a87a0e1dffdc5a8373022ee9e80681f04c8dd774d5d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
