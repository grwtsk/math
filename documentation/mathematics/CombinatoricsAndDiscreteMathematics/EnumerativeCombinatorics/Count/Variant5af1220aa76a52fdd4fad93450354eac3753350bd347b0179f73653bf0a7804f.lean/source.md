# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.EnumerativeCombinatorics.Count.Variant5af1220aa76a52fdd4fad93450354eac3753350bd347b0179f73653bf0a7804f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4e9881d68e86d8b9ad5a235734d5339600c20e15` · SHA-256 `5af1220aa76a52fdd4fad93450354eac3753350bd347b0179f73653bf0a7804f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.Catalan.Count

/-!
# Folder.Theorem.Catalan.Count

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports proved facts or contract exposures for the BinaryMatrix radiation program.
Ontology: proof.catalan.count
Pivot role: none
Zero typology: none
Contract boundary: theorem-wrapper
Composite stack role: infrastructure
-/


namespace Folder
namespace Catalan

theorem catalan_count_zero :
    catalan 0 = 1 :=
  catalan_zero

theorem catalan_count_succ (n : Nat) :
    catalan (n + 1) =
      Finset.sum (Finset.range (n + 1))
        (fun i => catalan i * catalan (n - i)) :=
  catalan_succ n

end Catalan
end Folder
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=66fa6dce0cf9bf65f3c4c31aad519fa40c6afa9b8337df776e753413fc1ab78d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Count/Variant5af1220aa76a52fdd4fad93450354eac3753350bd347b0179f73653bf0a7804f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
