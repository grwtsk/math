# Complete source: GRWTSK.Interfaces.FreyThreePortCore

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6003f56948fc83c721c1c7ed462133b5a8336c61` · SHA-256 `bc3705a27e91c5f9ba1c4fabf848d3af05bd29db9e03d1314a3184d4a2319f71`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
OpenAI formalization assistance.

Isolated source root for Frey models, observations, local reduction, heights,
finite jets, integral charts, formal series and source-faithful coefficient transport.
No global section-space atlas, arithmetic coefficient completion or ABC proof.
This file remains outside GRWTSK.lean pending replay and trust checks. -/
import GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyThreePortFrame
import GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyThreePortSaturation
import GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyCurveGeometry
import GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyAffineEvaluation
import GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyIntegralModel
import GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyLocalInvariants
import GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyThreePortBounds
import GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyDVRReduction
import GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyProjectiveHeight
import GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyRationalHeight
import GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyABCObservation
import GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyQuadraticJet
import GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyJetRankGrowth
import GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyJetRecursion
import GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyHigherJet
import GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyFormalNeighborhood
import GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyIntegralJetCharts
import GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyJetQuotient
import GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreySectionJetEquiv
import GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyParameterSeries
import GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyJetCompletion

import GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyJetBaseChange
import GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyCompletionBaseChange

import GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyAdicQuotients
import GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyCanonicalCompletion

import GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyCanonicalTransport

import GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyCompletionTopology

namespace GRWTSK.Interfaces.FreyThreePortCore

/-- Legacy trivial marker retained for signature compatibility. It supplies no
mathematical coverage, elaboration evidence, axiom audit, or replay acceptance.
The actual public mathematical statements live in the imported source modules. -/
def sourceOnlyBoundary : Prop := True

theorem sourceOnlyBoundary_true : sourceOnlyBoundary := trivial

end GRWTSK.Interfaces.FreyThreePortCore
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e7c3dc5b43052e5290ea82916ba27b2ed9a3ee3fde01fa2c5f55ff366db04ae0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyThreePortCore.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
