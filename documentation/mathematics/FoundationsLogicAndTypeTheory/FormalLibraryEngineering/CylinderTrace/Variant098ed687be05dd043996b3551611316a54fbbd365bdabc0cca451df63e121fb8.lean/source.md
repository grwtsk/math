# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CylinderTrace.Variant098ed687be05dd043996b3551611316a54fbbd365bdabc0cca451df63e121fb8

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `899c8c6f1521e9e373eda28ffbe5afff3b59c89f` · SHA-256 `098ed687be05dd043996b3551611316a54fbbd365bdabc0cca451df63e121fb8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.StratifiedBoundary.Trace.CylinderAlgebra

/-!
# Stage-independent cylinder trace
-/

namespace Mathematics.StratifiedBoundary

structure CylinderTraceCertificate
    (Observable : Type u) where
  algebra : CylinderAlgebraPresentation Observable
  stageTrace : Nat → Observable → Int
  positiveCone : CylinderObservable Observable → Prop
  multiply :
    CylinderObservable Observable →
      CylinderObservable Observable →
      CylinderObservable Observable
  wellDefined :
    ∀ {left right},
      algebra.sameObservable left right →
        stageTrace left.stage left.observable =
          stageTrace right.stage right.observable
  positive :
    ∀ observable,
      positiveCone observable →
        0 ≤ stageTrace observable.stage observable.observable
  tracial :
    ∀ left right,
      stageTrace
          (multiply left right).stage
          (multiply left right).observable =
        stageTrace
          (multiply right left).stage
          (multiply right left).observable

def cylinderTraceValue
    {Observable : Type u}
    (certificate : CylinderTraceCertificate Observable)
    (observable : CylinderObservable Observable) : Int :=
  certificate.stageTrace observable.stage observable.observable

theorem cylinder_trace_well_defined
    {Observable : Type u}
    (certificate : CylinderTraceCertificate Observable)
    {left right : CylinderObservable Observable}
    (same : certificate.algebra.sameObservable left right) :
    cylinderTraceValue certificate left =
      cylinderTraceValue certificate right :=
  certificate.wellDefined same

theorem cylinder_trace_positive
    {Observable : Type u}
    (certificate : CylinderTraceCertificate Observable)
    (observable : CylinderObservable Observable)
    (positive : certificate.positiveCone observable) :
    0 ≤ cylinderTraceValue certificate observable :=
  certificate.positive observable positive

theorem cylinder_trace_tracial
    {Observable : Type u}
    (certificate : CylinderTraceCertificate Observable)
    (left right : CylinderObservable Observable) :
    cylinderTraceValue certificate
        (certificate.multiply left right) =
      cylinderTraceValue certificate
        (certificate.multiply right left) :=
  certificate.tracial left right

end Mathematics.StratifiedBoundary
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3cecdaa0c3568f99fd65e29a0ef44665b9a7963905a00e85faf62389037b7a4c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CylinderTrace/Variant098ed687be05dd043996b3551611316a54fbbd365bdabc0cca451df63e121fb8.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
