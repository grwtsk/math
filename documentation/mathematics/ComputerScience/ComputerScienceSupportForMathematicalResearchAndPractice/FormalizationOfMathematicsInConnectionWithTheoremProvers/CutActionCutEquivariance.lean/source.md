# Cut Action Cut Equivariance — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `202e56aba8a6dbcc5c42a03f81ed5bed3596ca1f` · SHA-256 `c6083f040931711aa131977af7c4c6319aa72359e292dfdb43db71f7f37c364f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.ConnesBitfield.Equivariance
import Mathematics.StratifiedBoundary.Boundary.FiniteCut

/-!
# Finite-cut automorphism action

The stratum layer reuses the exact equivariant kernel certificate already
carried by each Connes--bitfield closure package.
-/

namespace Mathematics.StratifiedBoundary.Symmetry

open Mathematics.ConnesBitfield
open Mathematics.StratifiedBoundary.Boundary
open Mathematics.StratifiedBoundary.OrdinalTally

universe uScale uTest uSchedule

abbrev CutEquivariance
    {limits : LimitSemantics}
    {Scale : Type uScale}
    {TestFunction : Type uTest}
    {Schedule : Type uSchedule}
    (cut :
      FiniteReflectiveCut
        limits Scale TestFunction Schedule) :=
  EquivariantScheduleKernelCertificate
    cut.closure.crossedProduct
    cut.closure.dynamics

def FiniteReflectiveCut.cutEquivariance
    {limits : LimitSemantics}
    {Scale : Type uScale}
    {TestFunction : Type uTest}
    {Schedule : Type uSchedule}
    (cut :
      FiniteReflectiveCut
        limits Scale TestFunction Schedule) :
    CutEquivariance cut :=
  cut.closure.equivariance

theorem finite_cut_boundary_law_automorphism_invariant
    {limits : LimitSemantics}
    {Scale : Type uScale}
    {TestFunction : Type uTest}
    {Schedule : Type uSchedule}
    (cut :
      FiniteReflectiveCut
        limits Scale TestFunction Schedule)
    (automorphism : cut.Automorphism) :
    cut.cutEquivariance.lawAction
        automorphism
        cut.closure.dynamics.invariantLaw =
      cut.closure.dynamics.invariantLaw :=
  invariantLaw_automorphism_invariant
    cut.cutEquivariance automorphism

end Mathematics.StratifiedBoundary.Symmetry
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f5b2c430164fc7ac32d88294ccac3db90d6c31570a501898c52f9a8130a65688 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CutAction/Variantc6083f040931711aa131977af7c4c6319aa72359e292dfdb43db71f7f37c364f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
