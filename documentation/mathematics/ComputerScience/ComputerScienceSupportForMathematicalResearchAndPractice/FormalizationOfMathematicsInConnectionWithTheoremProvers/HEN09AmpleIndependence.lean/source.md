# HEN09 Ample Independence — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e3bc6f361e75470b8df465523a380ca72e5889e2` · SHA-256 `e90abd6990d2e3a12ce70557d719e09d8eb69897aaddb22d7487e3a51d908eb2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FCRS.Algebraization.Foundations

universe uObj uHom

namespace FCRS.Algebraization.Theorems

/--
Any two designated ample-generator families define the same effective target
when each is independently characterized by the same essential image.
-/
theorem hen09_ampleIndependence
    {C D : CategoryLike.{uObj, uHom}}
    (F : FunctorLike C D)
    (epiD : EpiClass D)
    (B₁ B₂ : GeneratorBridge F)
    (h₁ :
      ∀ Y : D.Obj,
        AlgebraicallyGenerated B₁ epiD Y ↔
        EssentialImage F Y)
    (h₂ :
      ∀ Y : D.Obj,
        AlgebraicallyGenerated B₂ epiD Y ↔
        EssentialImage F Y) :
    ∀ Y : D.Obj,
      AlgebraicallyGenerated B₁ epiD Y ↔
      AlgebraicallyGenerated B₂ epiD Y := by
  intro Y
  exact (h₁ Y).trans (h₂ Y).symm

end FCRS.Algebraization.Theorems
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0ae45e9401275ad2c1ab0c74a72b66fc175211b77bb435b803fea8d95eedc597 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HEN09AmpleIndependence/Variante90abd6990d2e3a12ce70557d719e09d8eb69897aaddb22d7487e3a51d908eb2.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
