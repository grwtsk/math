# Audit Radiation Audit Entry — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8f9e02d2c2c6b5d5e5f310221c1224befea97c19` · SHA-256 `1c73df188c44ce972f1e9142e64cc8b60c644a28390a5060ff152687b1c534a3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.BinaryMatrix.Radiation

/-!
# Folder.BinaryMatrix.Audit

Radiation role: core-carrier
BinaryMatrix spine: This module sits on or immediately beside Folder.Carrier.BinaryMatrix as finite carrier infrastructure for the radiation program.
Ontology: bm.audit
Pivot role: none
Zero typology: none
Contract boundary: definition
Composite stack role: carrier
-/


namespace Folder
namespace BinaryMatrix

structure RadiationAuditEntry where
  moduleName : String
  role : String
  importsChanged : Bool
  notes : String

def auditPurpose : String :=
  "Records BinaryMatrix radiation roles for Lean modules without introducing import cycles."

end BinaryMatrix
end Folder
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ba25a1fe714c1cacd3b1b058ce3f6b8b1fbaa9c90226a90f70f4115f32382d01 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Audit/Variant1c73df188c44ce972f1e9142e64cc8b60c644a28390a5060ff152687b1c534a3.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
