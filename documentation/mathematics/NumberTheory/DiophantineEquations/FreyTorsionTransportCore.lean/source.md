# Complete source: GRWTSK.Interfaces.FreyTorsionTransportCore

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `27575d72e2a99c65218fccbf9a755bc3f1a86132` · SHA-256 `aeb979345ed8006883991c7fe373896d838cbfa4f406b043e5d0e9aa6d975765`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Formalization assistance: OpenAI.

Narrow isolated root for actual rational two-torsion point translation and its
source-bound finite jets, completion pullbacks and weighted coefficient metrics, integral lattices, exact cokernels and rational-to-real realization. Earlier replay
targets and FreyThreePortCore are unchanged. Importing this root is not proof of verification coverage.
-/
import GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyTorsionTranslation
import GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyTorsionContact
import GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyTorsionOpenJets
import GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyTorsionUnlocalizedJets
import GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyTorsionCompletion
import GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyWeightedSections
import GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyWeightedBasis
import GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyWeightedEnergy
import GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyWeightedLattice
import GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyWeightedCokernel
import GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyArchimedeanRealization
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=18468aed0619d066df123960ab6d84ce5cf1e9a3d783daa06e181cdb3bc7afd3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTorsionTransportCore.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
