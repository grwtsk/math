# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ALG02ProperGAGA.Variantc34dda8a51b71516ff3793aead2fb9705c3a8e77098de4d2575306634319263d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9711b95b5f9813e1c593007f62fe37f6c5b39225` · SHA-256 `c34dda8a51b71516ff3793aead2fb9705c3a8e77098de4d2575306634319263d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FCRS.Algebraization.Foundations

namespace FCRS.Algebraization.Theorems

/-- ALG-2: proper GAGA supplies full faithfulness and algebraization of data. -/
theorem alg02_properGAGA
    (S : AlgebraizationSystem)
    (registry : AlgebraizationTheoremRegistry S) :
    ALG02Claim S :=
  registry.alg02

end FCRS.Algebraization.Theorems
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=65d2b82a6c8beba2c29da14890d2a2aca981702c94cfec9140521a1ab7f1cef7 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ALG02ProperGAGA/Variantc34dda8a51b71516ff3793aead2fb9705c3a8e77098de4d2575306634319263d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
