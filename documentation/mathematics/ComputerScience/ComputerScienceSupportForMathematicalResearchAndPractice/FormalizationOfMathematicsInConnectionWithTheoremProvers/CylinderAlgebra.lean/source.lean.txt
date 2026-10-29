/-!
# Finite-stage cylinder observables

Every cylinder observable names a finite representing stage.
-/

namespace Mathematics.StratifiedBoundary

structure CylinderObservable (Observable : Type u) where
  stage : Nat
  observable : Observable
  finiteRepresentationRef : String

structure CylinderAlgebraPresentation
    (Observable : Type u) where
  sameObservable :
    CylinderObservable Observable →
      CylinderObservable Observable →
      Prop
  equivalenceCertificateRef : String
  noCompletedRuntimeObject : Bool := true
  noCompletedRuntimeObject_exact :
    noCompletedRuntimeObject = true

end Mathematics.StratifiedBoundary
