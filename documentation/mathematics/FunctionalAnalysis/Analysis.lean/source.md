# Analysis — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `762c0bcac9d792aad1ef39da30cc50b3ae752f92` · SHA-256 `60ee2153b1c425dc26d3fd5f663afdbc28ba4fdd694c36f4fc991071e046b9a9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-!
Mathlib analysis patch boundary.

This marker records local analysis-shaped Mathlib patches without importing
the patch corpus.
-/

namespace Formal.Patches.Mathlib.Analysis

def conceptualSubdirectories : List String :=
  [ "Asymptotics"
  , "Calculus"
  , "Complex"
  , "SpecialFunctions"
  ]

theorem conceptualSubdirectories_count :
    conceptualSubdirectories.length = 4 := by
  rfl

end Formal.Patches.Mathlib.Analysis
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4bcef0ac62de5c291ee87f4503f4bf24591d010a131669ac98fb55c4383d305d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Analysis/Variant60ee2153b1c425dc26d3fd5f663afdbc28ba4fdd694c36f4fc991071e046b9a9.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
