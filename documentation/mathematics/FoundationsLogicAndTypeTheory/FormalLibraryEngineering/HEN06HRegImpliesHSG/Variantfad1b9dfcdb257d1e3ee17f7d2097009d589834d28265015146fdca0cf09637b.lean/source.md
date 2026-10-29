# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.HEN06HRegImpliesHSG.Variantfad1b9dfcdb257d1e3ee17f7d2097009d589834d28265015146fdca0cf09637b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ccb064891ad7bd578946cd072ce0820b710f2e71` · SHA-256 `fad1b9dfcdb257d1e3ee17f7d2097009d589834d28265015146fdca0cf09637b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FCRS.Algebraization.Foundations

namespace FCRS.Algebraization.Theorems

/--
Proposed research implication: a verified Henselian regularity theorem
produces Henselian Serre generation.
-/
theorem hen06_hregImpliesHSG
    (S : AlgebraizationSystem)
    (registry : AlgebraizationTheoremRegistry S) :
    HEN06Claim S :=
  registry.hen06

end FCRS.Algebraization.Theorems
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=cbc631050244b97373365397d0b178bbb504191a1835472e40bfc80b78dbaf47 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HEN06HRegImpliesHSG/Variantfad1b9dfcdb257d1e3ee17f7d2097009d589834d28265015146fdca0cf09637b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
