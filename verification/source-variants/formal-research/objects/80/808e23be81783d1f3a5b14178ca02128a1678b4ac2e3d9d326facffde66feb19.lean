import Surface.Legacy.BinaryLogicMatrix.Gamma

namespace Surface.Legacy

abbrev MeasurableSet (α : Type) := α -> Prop

structure MeasurableSpace (α : Type) where
  isMeasurableSet : MeasurableSet α -> Prop

def Measurable {α β : Type} (_f : α -> β) : Prop := True

structure CertifiedMeasurableSpace where
  Carrier : Type
  measurableSpace : MeasurableSpace Carrier

inductive MeasurableConvergenceMode where
  | pointwise
  | almostEverywhere
  | inMeasure
  | Lp
  | uniform
deriving DecidableEq, Repr

structure CertifiedSimpleApproximation (Ω : CertifiedMeasurableSpace) where
  codomain : Type
  codomainMeasurable : MeasurableSpace codomain
  approximants : Nat -> Ω.Carrier -> codomain
  approximantsMeasurable : ∀ n, Measurable (approximants n)
  convergenceMode : MeasurableConvergenceMode
  convergenceCertificate : Prop

structure CertifiedMeasurableFunction where
  Ω : CertifiedMeasurableSpace
  codomain : Type
  codomainMeasurable : MeasurableSpace codomain
  value : Ω.Carrier -> codomain
  measurable : Measurable value
  approximation? : Option (CertifiedSimpleApproximation Ω)

structure CertifiedSimpleApproximationRef where
  id : String
  mode : MeasurableConvergenceMode

structure CertifiedMeasurableLimitRef where
  id : String
  mode : MeasurableConvergenceMode

theorem certifiedMeasurable_has_measurability (f : CertifiedMeasurableFunction) :
    Measurable f.value := by
  exact f.measurable

end Surface.Legacy
