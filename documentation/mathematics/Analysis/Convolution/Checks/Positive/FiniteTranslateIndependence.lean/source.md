# Complete source: GRWTSK.Analysis.Convolution.Checks.Positive.FiniteTranslateIndependence

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7a779246fb26ff932830f664a2cde449507187bc` · SHA-256 `33534f8a9ffe3f91cfd02cfde2c497fe96fa835110871cb0594ea65320281ef7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Analysis.Convolution.FiniteTranslateIndependence

set_option linter.hashCommand false

namespace GRWTSK.Analysis.Convolution.FiniteTranslateIndependence

#print axioms isolate_rightmost_translate
#print axioms finite_translate_combination_ne_zero
#print axioms finite_translate_combination_eq_zero_iff
#print axioms finite_translates_linearIndependent

#check isolate_rightmost_translate
#check finite_translate_combination_ne_zero
#check finite_translate_combination_eq_zero_iff
#check finite_translates_linearIndependent

end GRWTSK.Analysis.Convolution.FiniteTranslateIndependence
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7bfeb84936d0583538b7eb0b20ec45a92ba985436033f7e681bcb547e425cf6c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/Convolution/Checks/Positive/FiniteTranslateIndependence.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
