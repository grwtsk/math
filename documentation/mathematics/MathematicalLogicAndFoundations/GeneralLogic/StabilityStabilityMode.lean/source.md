# Stability Stability Mode — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8a1fcd819811f54bd138cb772a4dbe8d35d05096` · SHA-256 `eb8e91ac159a7a8bb4f168927fe35ce15601130d8f28a69dc2f42dfae9d4707c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Surface.Legacy.Ricci.Topology

namespace Surface
namespace Legacy

inductive StabilityMode where
  | finiteTimeExtinction
  | eventualConstant
  | convergesToSoliton
  | convergesToConstantCurvature
  | recurrent
  | homologyStable
  | unknown
deriving DecidableEq, Repr

structure FlowConvergenceCertificate
    (trajectory : RicciFlowTrajectory)
    (metric : trajectory.model.metric) where
  convergenceSound : Prop

structure RicciSolitonCertificate where
  trajectory : RicciFlowTrajectory
  solitonMetric : trajectory.model.metric
  asymptoticMode : StabilityMode
  convergence : FlowConvergenceCertificate trajectory solitonMetric

end Legacy
end Surface
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d579b0e9bfb1e91538c275f6f382c139b0f0e739706480ac8f53692f8c47c8f3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Stability/Varianteb8e91ac159a7a8bb4f168927fe35ce15601130d8f28a69dc2f42dfae9d4707c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
