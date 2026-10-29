# Weierstrass — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5d010984af26459245184d9b248beddcd4b75d15` · SHA-256 `a4b12a4be8d42a930f372f4cea88347b6e99888aad05a64f07fd305bd1c1aa53`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.Basic

/-!
# Folder.Arithmetic.Weierstrass

Radiation role: elliptic-compatibility
BinaryMatrix spine: This module names arithmetic compatibility structures that may act on shell torsion without identifying it with BinaryMatrix data.
Ontology: arithmetic.weierstrass
Pivot role: none
Zero typology: elliptic
Contract boundary: definition
Composite stack role: torsion
-/


namespace Folder
namespace Arithmetic

structure WeierstrassCurve (K : Type _) [Field K] where
  a1 : K
  a2 : K
  a3 : K
  a4 : K
  a6 : K

structure ShortWeierstrass (K : Type _) [Field K] where
  A : K
  B : K

structure AffinePoint {K : Type _} [Field K]
    (E : ShortWeierstrass K) where
  x : K
  y : K
  on_curve : y ^ 2 = x ^ 3 + E.A * x + E.B

end Arithmetic
end Folder
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5f5c89b726e836a96de3b90af54dc4b0537e9bc9d9bf66037df8007cf9f4d481 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Weierstrass/Varianta4b12a4be8d42a930f372f4cea88347b6e99888aad05a64f07fd305bd1c1aa53.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
