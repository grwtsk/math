# Shell Bijection — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `fe9320aa42df34cbcfa030a2d9593efd2ed56b17` · SHA-256 `ba383e27f327907edb201c1a22a29645971350f2fd0a7a8af3c58d6ad2c75c7a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.Expansion.ShellBijection

/-!
# Folder.Theorem.BinaryMatrix.ShellBijection

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports proved facts or contract exposures for the BinaryMatrix radiation program.
Ontology: proof.binary_matrix.shell_bijection
Pivot role: none
Zero typology: none
Contract boundary: theorem-wrapper
Composite stack role: infrastructure
-/


namespace Folder
namespace Theorem
namespace BinaryMatrix

theorem decode_encode_shell
    {s : Carrier.GridShape}
    (M : Carrier.BinaryMatrix)
    (hm : M.m = s.rows + 2)
    (hn : M.n = s.cols + 2) :
    Expansion.decodeShell (Expansion.encodeShell M hm hn) = M :=
  Expansion.decode_encode_shell M hm hn

end BinaryMatrix
end Theorem
end Folder
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2341409ae45a4b69d327dde0c0eefa54a2ea3571ddbe0c8654b68cc11601477c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/ShellBijection/Variantba383e27f327907edb201c1a22a29645971350f2fd0a7a8af3c58d6ad2c75c7a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
