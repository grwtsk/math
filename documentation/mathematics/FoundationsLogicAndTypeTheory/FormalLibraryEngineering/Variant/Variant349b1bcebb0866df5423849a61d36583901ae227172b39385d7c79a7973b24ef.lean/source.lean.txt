namespace NoeoueueHodgeGate

inductive Variant where
  | rationalProjective
  | integralProjective
  | rationalKahler
  | originalGeneralized
  | tateArithmetic
  | motivatedCycle
  deriving DecidableEq, Repr

inductive Stage where
  | hc0Scope
  | hc1ProjectiveCarrier
  | hc2PrefixToHodge
  | hc3ChowExhaustion
  | hc4CycleClassNaturality
  | hc5aFixedClass
  | hc5bFixedVariety
  | hc5cUniversal
  deriving DecidableEq, Repr

inductive Status where
  | scopeCertified
  | projectiveCarrierCertified
  | rationalHodgeClassCertified
  | cycleCandidateOnly
  | fixedClassCycleMatched
  | prefixComparisonFaithful
  | fixedVarietySurjective
  | universalRationalProjectiveHc
  | refuted
  | unknown
  | unavailable
  | invalid
  deriving DecidableEq, Repr

def hodgeConjectureStatus : Status → Bool
  | .fixedClassCycleMatched => true
  | .fixedVarietySurjective => true
  | .universalRationalProjectiveHc => true
  | .refuted => true
  | _ => false

def variantAllowsStatus (variant : Variant) (status : Status) : Bool :=
  !hodgeConjectureStatus status || variant == .rationalProjective

example : variantAllowsStatus .integralProjective .universalRationalProjectiveHc = false := by
  decide

example : variantAllowsStatus .rationalProjective .fixedClassCycleMatched = true := by
  decide

end NoeoueueHodgeGate
