# Matrix Row Op — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2489e6cd2e43d79c33d4a2cbb691a9a5289bb9bf` · SHA-256 `085007721fd0a0ea9fa095c8f7ecf106bfd82e013bbc975aacdfa09842a6f3ae`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.Basic

/-!
# Folder.Linear.Matrix

Radiation role: boolean-linear-analysis
BinaryMatrix spine: This module contains auxiliary Boolean, linear, or analytic mathematics adjacent to the BinaryMatrix spine.
Ontology: linear.matrix
Pivot role: none
Zero typology: none
Contract boundary: definition
Composite stack role: infrastructure
-/


namespace Folder
namespace Linear

abbrev Matrix (m n : Nat) (α : Type _) := Fin m → Fin n → α

inductive RowOp (m : Nat) (α : Type _) where
  | swap : Fin m → Fin m → RowOp m α
  | scale : Fin m → α → RowOp m α
  | addScaled : Fin m → Fin m → α → RowOp m α
deriving Repr

end Linear
end Folder
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c33c84fc37b8e9ac1290e6b8f2a1fac24b630b0db6d80e63793caaf14a5b6506 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/MatrixTheory/Variant085007721fd0a0ea9fa095c8f7ecf106bfd82e013bbc975aacdfa09842a6f3ae.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
