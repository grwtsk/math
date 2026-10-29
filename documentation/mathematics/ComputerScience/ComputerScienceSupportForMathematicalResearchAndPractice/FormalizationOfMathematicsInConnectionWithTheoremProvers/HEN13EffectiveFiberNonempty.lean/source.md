# HEN13 Effective Fiber Nonempty — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `dcf551bff40fc6e9c9bdbb20b5e39b7f560fe287` · SHA-256 `ec894f8b4e8e5fb31cc0f1701e2f525f56cf00a59ccf92a1755ddcde2a9ae5fe`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FCRS.Algebraization.Theorems.HEN03_EssentialImageCharacterization

namespace FCRS.Algebraization.Theorems

/-- Every algebraically generated target object has a nonempty algebraization fiber. -/
theorem hen13_effectiveFiberNonempty
    (S : AlgebraizationSystem)
    (registry : AlgebraizationTheoremRegistry S)
    (hProfile : S.P.henselianProfile)
    (hSource : SourceGenerated S.generators S.cohAlgEpi)
    {Y : S.categories.CohHen.Obj}
    (hGenerated :
      AlgebraicallyGenerated
        S.generators
        S.cohHenEpi
        Y) :
    Nonempty
      (AlgebraizationFiber
        S.functors.HenPullback
        Y) := by
  have hImage :=
    (hen03_essentialImageCharacterization
      S registry hProfile hSource Y).mp hGenerated
  rcases hImage with ⟨X, hIso⟩
  rcases hIso with ⟨e⟩
  exact ⟨{
    source := X
    comparison := e
  }⟩

end FCRS.Algebraization.Theorems
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=fcbd71da3a4ff9ca7b6eca8b371cf8c2f11c034dd3dea9358a37d2f0b9fa0815 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HEN13EffectiveFiberNonempty/Variantec894f8b4e8e5fb31cc0f1701e2f525f56cf00a59ccf92a1755ddcde2a9ae5fe.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
