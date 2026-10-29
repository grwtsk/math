# Complete source: GRWTSK.Algebra.LinearAlgebra.JacobiCompression.Variante24b2110f03e18411d3efe1407ede06fa724f4471a6c6dc440949044b3cd8596

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `cad9000b5451ff9a8b149e4d59cf05ce8834716c` · SHA-256 `0e0703aeb77a1aa77692e8165c57b5262572d0fdaba9e885ff1e19c3c1d76226`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.JacobiCompression.Variant25151e7dbaac477fe9eaf3b1d22f83735908af9a490198ea94048a6b723cdcb1","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"25151e7dbaac477fe9eaf3b1d22f83735908af9a490198ea94048a6b723cdcb1","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.JacobiCompression.Variant25151e7dbaac477fe9eaf3b1d22f83735908af9a490198ea94048a6b723cdcb1","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"25151e7dbaac477fe9eaf3b1d22f83735908af9a490198ea94048a6b723cdcb1","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/SemiLocalDefect/QSeries/JacobiCompression.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.SemiLocalDefect.QSeries.OnePrimeMoment
import Mathlib.Data.Matrix.Basic

/-!
# Exact Jacobi compression data
-/


namespace GRWTSK.Algebra.LinearAlgebra.JacobiCompression.Variant25151e7dbaac477fe9eaf3b1d22f83735908af9a490198ea94048a6b723cdcb1

namespace Mathematics.SemiLocalDefect.QSeries

open scoped BigOperators

abbrev RationalMatrix (rank : Nat) :=
  Matrix (Fin rank) (Fin rank) ℚ

def rationalQuadraticForm
    {rank : Nat}
    (matrix : RationalMatrix rank)
    (vector : Fin rank → ℚ) : ℚ :=
  ∑ row, ∑ column,
    vector row * matrix row column * vector column

structure JacobiCompression
    (system : OnePrimeMomentSystem)
    (rank : Nat) where
  defect : RationalMatrix rank
  symmetric :
    ∀ row column,
      defect row column =
        defect column row
  exactEvaluation :
    ∀ row column,
      defect row column =
        (system.moment
          (row.val + column.val)).evaluateThrough
            rank system.q
  compressionDigest : CompressionId

end Mathematics.SemiLocalDefect.QSeries
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=94f1204a449fe268e241fe7c0f69ecbd7b3c0b9ce67136e71ef059114f0e7398 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/JacobiCompression/Variante24b2110f03e18411d3efe1407ede06fa724f4471a6c6dc440949044b3cd8596.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
