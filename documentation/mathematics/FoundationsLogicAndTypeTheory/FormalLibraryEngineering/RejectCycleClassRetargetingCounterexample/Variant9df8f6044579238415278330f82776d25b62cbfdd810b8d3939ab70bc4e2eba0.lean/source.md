# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RejectCycleClassRetargetingCounterexample.Variant9df8f6044579238415278330f82776d25b62cbfdd810b8d3939ab70bc4e2eba0

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1a1c9b8ab44fb70def7ef5b4e184871b9654839a` · SHA-256 `9df8f6044579238415278330f82776d25b62cbfdd810b8d3939ab70bc4e2eba0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Interfaces.GraphHodgePortCore

noncomputable section

open GRWTSK.Geometry.Hodge
open GRWTSK.Geometry.Hodge.RationalHodgeTransport
def zeroCycleClass : RationalHodgeData ℚ ℚ := ⟨0⟩
example : ¬ zeroCycleClass.IsSurjective := by
  intro h
  obtain ⟨z, hz⟩ := h 1
  norm_num [zeroCycleClass] at hz
example : ¬ Nonempty (CycleClassEquiv Examples.lineHodgeData zeroCycleClass) := by
  rintro ⟨E⟩
  obtain ⟨z, hz⟩ := E.surjective_forward Examples.lineHodgeData_surjective 1
  norm_num [zeroCycleClass] at hz
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=27ae776870bbe5523b103c4d9ccbb8999a085a53cd39ce507f5144a1aec49ccc -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RejectCycleClassRetargetingCounterexample/Variant9df8f6044579238415278330f82776d25b62cbfdd810b8d3939ab70bc4e2eba0.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
