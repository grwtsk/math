# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MathlibAxioms.Variant8d4747c7ab2a3150a610dc2f35b778937251a7a04fb278fc3e0301c25b7cbc2e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ed655a5f8b7638438c42abafce6bd6d0583cb89f` · SHA-256 `8d4747c7ab2a3150a610dc2f35b778937251a7a04fb278fc3e0301c25b7cbc2e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import AnalyticNumberMathlib

/-!
# Axiom audit for the Mathlib-backed theorem surface

Run from the package root (`formal/`):

  lake env lean Audit/MathlibAxioms.lean

Expected output: each theorem depends only on the standard Lean/Mathlib
foundations (`Classical.choice`, `propext`, `Quot.sound`). No project-local
analytic postulate, `sorryAx`, or native-code reduction may appear.
-/

#print axioms AnalyticNumber.MathlibBridge.GeometricSeries.geometric_series_through_boundary_calculus
#print axioms AnalyticNumber.MathlibBridge.ExponentialSeries.exponential_series_through_boundary_calculus
#print axioms AnalyticNumber.MathlibBridge.Compactness.compactness_through_boundary_calculus
#print axioms AnalyticNumber.MathlibBridge.IntervalArithmetic.sqrt_two_interval_through_boundary_calculus
#print axioms AnalyticNumber.MathlibBridge.BaselSeries.basel_case_study_through_boundary_calculus
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e90a49d97db1ba3b4ae117d8e3cd0bd21a2eaa29e802bd9c493a839e24aa690e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MathlibAxioms/Variant8d4747c7ab2a3150a610dc2f35b778937251a7a04fb278fc3e0301c25b7cbc2e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
