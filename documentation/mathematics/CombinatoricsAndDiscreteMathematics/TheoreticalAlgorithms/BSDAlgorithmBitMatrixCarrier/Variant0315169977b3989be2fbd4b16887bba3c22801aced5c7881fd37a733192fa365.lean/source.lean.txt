import Think.SourceTree.Legacy.Analysis.BitMatrixCarrierPadding
import Think.SourceTree.Legacy.Analysis.ZetaSpinFlipDuality

set_option autoImplicit false

namespace Think.Analysis

universe u

/-
BSD algorithm bitmatrix carrier.

This module records a finite algorithm-witness carrier for computations around
the Birch and Swinnerton-Dyer conjecture. It is not a proof of BSD. It packages
finite local Euler data, analytic-side data, arithmetic-side data, and a central
comparison gate as a bitmatrix-compatible witness surface.

The ambient square carrier is the padding carrier from
`BitMatrixCarrierPadding`: for a finite size parameter `n`, the certificate bits
plus `2n+1` padding bits fit the square carrier of side `n+2`.
-/

/-- Rows of a finite BSD algorithm witness matrix. -/
inductive BSDWitnessRow where
  | curveModel
  | reductionProfile
  | localPointCounts
  | eulerFactors
  | rootNumber
  | analyticRankEstimate
  | selmerRankBound
  | torsionSubgroup
  | tamagawaFactors
  | heightPairing
  | regulator
  | leadingCoefficientComparison
  | shaSquareClass
  | comparisonGate
deriving Repr, DecidableEq

/-- Finite list of all BSD witness rows. -/
def allBSDWitnessRows : List BSDWitnessRow :=
  [ .curveModel
  , .reductionProfile
  , .localPointCounts
  , .eulerFactors
  , .rootNumber
  , .analyticRankEstimate
  , .selmerRankBound
  , .torsionSubgroup
  , .tamagawaFactors
  , .heightPairing
  , .regulator
  , .leadingCoefficientComparison
  , .shaSquareClass
  , .comparisonGate
  ]

theorem all_bsd_witness_rows_length :
    allBSDWitnessRows.length = 14 := by
  rfl

theorem all_bsd_witness_rows_complete
    (r : BSDWitnessRow) :
    r ∈ allBSDWitnessRows := by
  cases r <;> simp [allBSDWitnessRows]

/-- A finite local Euler datum slot for a sampled prime/index. -/
structure BSDLocalEulerDatum where
  index : Nat
  pointCountComputed : Bool
  traceComputed : Bool
  eulerFactorComputed : Bool
  goodReduction : Bool
deriving Repr, DecidableEq

/-- Finite analytic-side data used by BSD algorithms. -/
structure BSDAnalyticDatum where
  centralPointChecked : Bool
  rootNumberComputed : Bool
  analyticRankEstimated : Bool
  leadingCoefficientEstimated : Bool
deriving Repr, DecidableEq

/-- Finite arithmetic-side data used by BSD algorithms. -/
structure BSDArithmeticDatum where
  selmerBoundComputed : Bool
  torsionComputed : Bool
  tamagawaComputed : Bool
  heightPairingComputed : Bool
  regulatorComputed : Bool
  shaSquareClassRecorded : Bool
deriving Repr, DecidableEq

/-- Finite comparison datum between analytic and arithmetic BSD sides. -/
structure BSDComparisonDatum where
  analyticSideReady : Bool
  arithmeticSideReady : Bool
  comparisonFormed : Bool
  comparisonMatched : Bool
deriving Repr, DecidableEq

/-- A finite BSD algorithm witness for an abstract curve object. -/
structure BSDAlgorithmWitness (Curve : Type u) where
  curve : Curve
  localData : List BSDLocalEulerDatum
  analyticData : BSDAnalyticDatum
  arithmeticData : BSDArithmeticDatum
  comparisonData : BSDComparisonDatum

/-- A row/column bitmatrix encoding of a BSD algorithm witness. -/
structure BSDAlgorithmBitMatrixCarrier (Curve : Type u) (n : Nat) where
  witness : BSDAlgorithmWitness Curve
  rowBit : BSDWitnessRow → Bool
  localColumnBit : Fin n → Bool
  certificateBits : Nat
  certificateBits_eq : certificateBits = certificateBitCountAllOverlaps n
  paddingBits : Nat
  paddingBits_eq : paddingBits = carrierPaddingDelta n
  squareSide : Nat
  squareSide_eq : squareSide = squareCarrierSide n
  squareBits : Nat
  squareBits_eq : squareBits = squareCarrierBitCount n
  carrierCoverage : certificateBits + paddingBits = squareBits

/-- Constructor using the canonical carrier-padding equality. -/
def mkBSDAlgorithmBitMatrixCarrier
    {Curve : Type u} {n : Nat}
    (witness : BSDAlgorithmWitness Curve)
    (rowBit : BSDWitnessRow → Bool)
    (localColumnBit : Fin n → Bool) :
    BSDAlgorithmBitMatrixCarrier Curve n :=
  { witness := witness
    rowBit := rowBit
    localColumnBit := localColumnBit
    certificateBits := certificateBitCountAllOverlaps n
    certificateBits_eq := rfl
    paddingBits := carrierPaddingDelta n
    paddingBits_eq := rfl
    squareSide := squareCarrierSide n
    squareSide_eq := rfl
    squareBits := squareCarrierBitCount n
    squareBits_eq := rfl
    carrierCoverage := certificate_bits_plus_delta_eq_square_carrier n }

/-- The BSD bitmatrix carrier has exact square carrier coverage. -/
theorem bsd_algorithm_bitmatrix_carrier_coverage
    {Curve : Type u} {n : Nat}
    (B : BSDAlgorithmBitMatrixCarrier Curve n) :
    B.certificateBits + B.paddingBits = B.squareBits :=
  B.carrierCoverage

/-- The BSD bitmatrix carrier records the same bit count as the all-overlap certificate carrier. -/
theorem bsd_algorithm_bitmatrix_certificate_bits_eq
    {Curve : Type u} {n : Nat}
    (B : BSDAlgorithmBitMatrixCarrier Curve n) :
    B.certificateBits = certificateBitCountAllOverlaps n :=
  B.certificateBits_eq

/-- The BSD bitmatrix carrier records the same padding delta as the square carrier. -/
theorem bsd_algorithm_bitmatrix_padding_bits_eq
    {Curve : Type u} {n : Nat}
    (B : BSDAlgorithmBitMatrixCarrier Curve n) :
    B.paddingBits = carrierPaddingDelta n :=
  B.paddingBits_eq

/-- The BSD bitmatrix carrier records square side `n + 2`. -/
theorem bsd_algorithm_bitmatrix_square_side_eq
    {Curve : Type u} {n : Nat}
    (B : BSDAlgorithmBitMatrixCarrier Curve n) :
    B.squareSide = squareCarrierSide n :=
  B.squareSide_eq

/-- The BSD bitmatrix carrier records the square bit count. -/
theorem bsd_algorithm_bitmatrix_square_bits_eq
    {Curve : Type u} {n : Nat}
    (B : BSDAlgorithmBitMatrixCarrier Curve n) :
    B.squareBits = squareCarrierBitCount n :=
  B.squareBits_eq

/-- The BSD witness matrix can be read as a finite algorithm trace. -/
def BSDAlgorithmTraceReady
    {Curve : Type u} {n : Nat}
    (B : BSDAlgorithmBitMatrixCarrier Curve n) : Prop :=
  B.rowBit BSDWitnessRow.curveModel = true ∧
  B.rowBit BSDWitnessRow.eulerFactors = true ∧
  B.rowBit BSDWitnessRow.analyticRankEstimate = true ∧
  B.rowBit BSDWitnessRow.leadingCoefficientComparison = true ∧
  B.rowBit BSDWitnessRow.comparisonGate = true

/-- If a BSD bitmatrix trace is ready, its comparison gate is active. -/
theorem bsd_algorithm_trace_ready_comparison_gate
    {Curve : Type u} {n : Nat}
    {B : BSDAlgorithmBitMatrixCarrier Curve n}
    (h : BSDAlgorithmTraceReady B) :
    B.rowBit BSDWitnessRow.comparisonGate = true :=
  h.2.2.2.2

/-- Root-number sign as a spin control sector for finite BSD computations. -/
inductive BSDRootNumberSpin where
  | positive
  | negative
deriving Repr, DecidableEq

/-- Interpret the BSD root number spin as a zeta-style spin sector. -/
def BSDRootNumberSpin.toZetaSpin : BSDRootNumberSpin → ZetaSpin
  | .positive => .up
  | .negative => .down

@[simp] theorem bsd_positive_root_number_spin_to_zeta_spin :
    BSDRootNumberSpin.positive.toZetaSpin = ZetaSpin.up := by
  rfl

@[simp] theorem bsd_negative_root_number_spin_to_zeta_spin :
    BSDRootNumberSpin.negative.toZetaSpin = ZetaSpin.down := by
  rfl

/-- A finite BSD duality-control package using a spin/flip duality equation. -/
structure BSDSpinFlipControl (N : Nat) where
  rootSpin : BSDRootNumberSpin
  functionalEquation : ZetaSpinFlipFunctionalEquation N

/-- Projection of the internal finite duality equation used by the BSD spin/flip control. -/
theorem bsd_spin_flip_control_equation
    {N : Nat} (C : BSDSpinFlipControl N) :
    C.functionalEquation.duality.toFun C.functionalEquation.carrier =
      fun g : FlipCarrier N =>
        C.functionalEquation.eigenvalue * C.functionalEquation.carrier g :=
  zeta_spin_flip_functional_equation_law C.functionalEquation

end Think.Analysis
