# MOD06 Conditional Algebraization — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7608660fdedaaacd40c5866677b63f1c7de77ae4` · SHA-256 `ffab57327ce63af0f09541f927cd1f659e6240c4c970a0c9ec379a5da163e2df`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FCRS.Algebraization.Foundations

namespace FCRS.Algebraization.Theorems

/--
ME1--ME8 plus the type-specific pipeline theorem produce an algebraic
preimage of the Henselian semantic object.
-/
theorem mod06_conditionalAlgebraization
    (S : AlgebraizationSystem)
    (registry : AlgebraizationTheoremRegistry S)
    {Y : S.categories.SemanticHen.Obj}
    (certificate : ModuliEffectivityCertificate S.moduli Y) :
    EssentialImage S.functors.SemanticPullback Y :=
  registry.modPipeline Y certificate

end FCRS.Algebraization.Theorems
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1866b6a1f7ab0bb47a45fb4949f37002c870d2c56ee93ed76195f8e7ed6f9d5f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MOD06ConditionalAlgebraization/Variantffab57327ce63af0f09541f927cd1f659e6240c4c970a0c9ec379a5da163e2df.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
