# Riemann Hypothesis Boundary — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `abc8decfd64987c6ec8d7f8d24a29744ca5e782d` · SHA-256 `b54dc8d13e2b1994ed99ad599bc79ed759ed3aa15f5bcc93dffcfa0fb4d5c068`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.Research.RiemannHypothesisBoundary

/-!
# Folder.Theorem.Research.RiemannHypothesisBoundary

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports the conditional GRH/RH research-boundary theorem as contract composition.
Ontology: proof.research.riemann_hypothesis_boundary
Pivot role: dual
Zero typology: l-function
Contract boundary: theorem-wrapper
Composite stack role: research
-/

namespace Folder
namespace Theorem
namespace Research
namespace RiemannHypothesisBoundary

theorem conditional_grh_via_spectral_heat_contract
    (C : Folder.Research.RiemannHypothesisBoundary.GRHResearchContract) :
    Folder.Research.RiemannHypothesisBoundary.AllLFunctionZerosOnCriticalLine C :=
  Folder.Research.RiemannHypothesisBoundary.conditional_grh_via_spectral_heat_contract C

theorem grh_contract_has_analytic_continuation
    (C : Folder.Research.RiemannHypothesisBoundary.GRHResearchContract) :
    C.modularityBridge.hasseWeil.hasAnalyticContinuation :=
  Folder.Research.RiemannHypothesisBoundary.grh_contract_has_analytic_continuation C

theorem grh_contract_has_functional_equation
    (C : Folder.Research.RiemannHypothesisBoundary.GRHResearchContract) :
    C.modularityBridge.hasseWeil.hasFunctionalEquation :=
  Folder.Research.RiemannHypothesisBoundary.grh_contract_has_functional_equation C

end RiemannHypothesisBoundary
end Research
end Theorem
end Folder
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3bdf24bae74bff6c7b94a96d3b6d7571d3323d9543edc93eaa12fa910e47d91c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RiemannHypothesisBoundary/Variantb54dc8d13e2b1994ed99ad599bc79ed759ed3aa15f5bcc93dffcfa0fb4d5c068.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
