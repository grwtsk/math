# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CT06Sheafiness.Variant61beb2cf3ac647f39df73172ddf2996ff78cdb4cad5bfcc82a56f3e2e495be1d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6801bad5bc34beb7f5eaa56e45567f848febd0ff` · SHA-256 `61beb2cf3ac647f39df73172ddf2996ff78cdb4cad5bfcc82a56f3e2e495be1d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FCRS.Foundations

namespace FCRS.Theorems

/--
CT-06: strongly Noetherian sheafiness and rational acyclicity.

This theorem is a proof-producing projection from the explicit external
`TheoremRegistry`; it introduces no global axiom.
-/
theorem ct06_sheafiness
    (S : RealizationSystem) (registry : TheoremRegistry S) :
    CT06Claim S :=
  registry.ct06

end FCRS.Theorems
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7fb7d7a6c1eb89f19dc9ca2a5e1a2dbf173bcdd702498f6d9390d01cc316b1a4 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CT06Sheafiness/Variant61beb2cf3ac647f39df73172ddf2996ff78cdb4cad5bfcc82a56f3e2e495be1d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
