# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ALG03PolarizedCompleteness.Variant4da745df1509e0c05fa6ce9ae4197bfefa7b2e92d2f194fa3da3818e49808dc3

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `45622fb2bae3dbdd8e6518f7bae4a7132d6b172f` · SHA-256 `4da745df1509e0c05fa6ce9ae4197bfefa7b2e92d2f194fa3da3818e49808dc3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FCRS.Algebraization.Theorems.ALG01_PolarizedEffectivity
import FCRS.Algebraization.Theorems.ALG02_ProperGAGA

namespace FCRS.Algebraization.Theorems

/--
Polarized algebraization completeness:
fullness and faithfulness come from proper GAGA, while essential
surjectivity comes from polarized effectivity.
-/
theorem alg03_polarizedCompleteness
    (S : AlgebraizationSystem)
    (registry : AlgebraizationTheoremRegistry S)
    (hProfile : S.P.polarizedProfile) :
    EquivalenceWitness S.functors.PolAn := by
  have hEffectivity :=
    (alg01_polarizedEffectivity S registry) hProfile
  have hGAGA :=
    (alg02_properGAGA S registry) hProfile
  exact {
    full := hGAGA.full
    faithful := hGAGA.faithful
    essentiallySurjective := hEffectivity.essentiallySurjective
  }

end FCRS.Algebraization.Theorems
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a69573404a1464447d4f7a7675f03fc74eac95337fbef5408e33c60b4fd5b077 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ALG03PolarizedCompleteness/Variant4da745df1509e0c05fa6ce9ae4197bfefa7b2e92d2f194fa3da3818e49808dc3.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
