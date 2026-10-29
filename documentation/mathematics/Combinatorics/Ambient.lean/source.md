# Ambient — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a21ba8af7f04d6196a9f94cb87fe7c68115da9cf` · SHA-256 `ea10de3e79fa787a78f9833fae08230bafb099fdbd3e08432fe002cdd458f439`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.SemiLocalDefect.WP1.SoninHorizon.Carrier

/-!
# Common ambient-carrier primitive
-/

namespace Mathematics.SemiLocalDefect.SoninCore

abbrev FiniteSoninHorizon.Ambient
    {U : FinitePrimeHorizon}
    (H : FiniteSoninHorizon U) :=
  H.Sonin (topCut U)

def FiniteSoninHorizon.toTop
    {U : FinitePrimeHorizon}
    (H : FiniteSoninHorizon U)
    (S : PrimeCut U) :
    H.Sonin S →L[ℂ] H.Ambient :=
  H.connector
    (Finset.subset_univ S)

theorem FiniteSoninHorizon.toTop_injective
    {U : FinitePrimeHorizon}
    (H : FiniteSoninHorizon U)
    (S : PrimeCut U) :
    Function.Injective (H.toTop S) :=
  H.connector_injective
    (Finset.subset_univ S)

end Mathematics.SemiLocalDefect.SoninCore
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=71588704246b885cf828ecb3937c41c4bfa66bddbe53a20c64fd03317c5dcca0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Ambient/Variantea10de3e79fa787a78f9833fae08230bafb099fdbd3e08432fe002cdd458f439.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
