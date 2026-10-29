import Mathlib

namespace Mathematics.Attention

universe uX uPrev uNow uY uZ uR

/--
A fully typed sequence-depth comparison square.

`PrevSources`, `PrevAggregate`, `NowSources`, and `Compare` are intentionally
independent carriers. The only comparison occurs after both paths reach
`Compare`.
-/
structure InterchangeSquare
    (PrevSources : Type uX)
    (PrevAggregate : Type uPrev)
    (NowSources : Type uNow)
    (Compare : Type uY) where
  retrievePrev : PrevSources → PrevAggregate
  transportAggregate : PrevAggregate → Compare
  transportSources : PrevSources → NowSources
  retrieveNow : NowSources → Compare

namespace InterchangeSquare

variable {PrevSources : Type uX}
variable {PrevAggregate : Type uPrev}
variable {NowSources : Type uNow}
variable {Compare : Type uY}

/-- Retrieve first, then transport the aggregate. -/
def leftPath
    (square : InterchangeSquare PrevSources PrevAggregate NowSources Compare) :
    PrevSources → Compare :=
  square.transportAggregate ∘ square.retrievePrev

/-- Transport all sources first, then retrieve at the new token cut. -/
def rightPath
    (square : InterchangeSquare PrevSources PrevAggregate NowSources Compare) :
    PrevSources → Compare :=
  square.retrieveNow ∘ square.transportSources

/-- Metric interchange defect; valid even when subtraction is unavailable. -/
def metricDefect [PseudoMetricSpace Compare]
    (square : InterchangeSquare PrevSources PrevAggregate NowSources Compare)
    (input : PrevSources) : ℝ≥0 :=
  nndist (leftPath square input) (rightPath square input)

/-- Exact commutation certificate. -/
structure ExactCertificate
    (square : InterchangeSquare PrevSources PrevAggregate NowSources Compare) : Prop where
  commutes : ∀ input, leftPath square input = rightPath square input

/-- Sound uniform bound on the metric interchange defect. -/
structure Certificate [PseudoMetricSpace Compare]
    (square : InterchangeSquare PrevSources PrevAggregate NowSources Compare) where
  bound : ℝ≥0
  sound : ∀ input, metricDefect square input ≤ bound

/-- Sound bound at one committed, snapshot-bound input. -/
structure SnapshotCertificate [PseudoMetricSpace Compare]
    (square : InterchangeSquare PrevSources PrevAggregate NowSources Compare) where
  input : PrevSources
  bound : ℝ≥0
  sound : metricDefect square input ≤ bound

/-- Exact commutation induces a zero-defect certificate. -/
def ExactCertificate.toCertificate [PseudoMetricSpace Compare]
    {square : InterchangeSquare PrevSources PrevAggregate NowSources Compare}
    (certificate : ExactCertificate square) : Certificate square where
  bound := 0
  sound input := by
    simp [metricDefect, certificate.commutes input]

/-- In a genuine metric space, a zero uniform bound forces exact commutation. -/
theorem Certificate.exact_of_bound_eq_zero [MetricSpace Compare]
    {square : InterchangeSquare PrevSources PrevAggregate NowSources Compare}
    (certificate : Certificate square)
    (hBound : certificate.bound = 0) : ExactCertificate square := by
  refine ⟨fun input => nndist_eq_zero.mp ?_⟩
  apply le_antisymm
  · simpa [hBound] using certificate.sound input
  · exact bot_le

/-- Postcompose both comparison paths by the same downstream map. -/
def postcompose
    {Z : Type uZ}
    (square : InterchangeSquare PrevSources PrevAggregate NowSources Compare)
    (post : Compare → Z) :
    InterchangeSquare PrevSources PrevAggregate NowSources Z where
  retrievePrev := square.retrievePrev
  transportAggregate := post ∘ square.transportAggregate
  transportSources := square.transportSources
  retrieveNow := post ∘ square.retrieveNow

/-- A downstream `K`-Lipschitz map amplifies the defect by at most `K`. -/
theorem metricDefect_postcompose_le
    {Z : Type uZ} [PseudoMetricSpace Compare] [PseudoMetricSpace Z]
    {K : ℝ≥0}
    (square : InterchangeSquare PrevSources PrevAggregate NowSources Compare)
    (post : Compare → Z)
    (hPost : LipschitzWith K post)
    (input : PrevSources) :
    metricDefect (postcompose square post) input ≤
      K * metricDefect square input := by
  simpa [metricDefect, leftPath, rightPath, postcompose, Function.comp_apply] using
    hPost.nndist_le (leftPath square input) (rightPath square input)

/-- Transport a defect certificate through a downstream Lipschitz map. -/
def Certificate.postcompose
    {Z : Type uZ} [PseudoMetricSpace Compare] [PseudoMetricSpace Z]
    {K : ℝ≥0}
    {square : InterchangeSquare PrevSources PrevAggregate NowSources Compare}
    (certificate : Certificate square)
    (post : Compare → Z)
    (hPost : LipschitzWith K post) :
    Certificate (postcompose square post) where
  bound := K * certificate.bound
  sound input := by
    calc
      metricDefect (postcompose square post) input
          ≤ K * metricDefect square input :=
            metricDefect_postcompose_le square post hPost input
      _ ≤ K * certificate.bound :=
            mul_le_mul_left' (certificate.sound input) K

section Additive

variable [SeminormedAddCommGroup Compare]

/-- Algebraic defect, available only when the comparison carrier has subtraction. -/
def algebraicDefect
    (square : InterchangeSquare PrevSources PrevAggregate NowSources Compare)
    (input : PrevSources) : Compare :=
  leftPath square input - rightPath square input

/-- The algebraic and metric defects agree through the norm. -/
theorem nnnorm_algebraicDefect
    (square : InterchangeSquare PrevSources PrevAggregate NowSources Compare)
    (input : PrevSources) :
    ‖algebraicDefect square input‖₊ = metricDefect square input := by
  exact (nndist_eq_nnnorm_sub
    (leftPath square input) (rightPath square input)).symm

end Additive

end InterchangeSquare


/-- Snapshot metadata wrapper for a pointwise interchange certificate. -/
structure AttentionInterchangeReceipt
    (Digest LayerId TokenId : Type*)
    {PrevSources : Type uX}
    {PrevAggregate : Type uPrev}
    {NowSources : Type uNow}
    {Compare : Type uY} [PseudoMetricSpace Compare]
    (square : InterchangeSquare PrevSources PrevAggregate NowSources Compare) where
  layer : LayerId
  token : TokenId
  inputDigest : Digest
  transportDigest : Digest
  snapshotDigest : Digest
  certificate : InterchangeSquare.SnapshotCertificate square

/-- Public architecture name for the metric defect. -/
def interchangeDefect
    {PrevSources : Type uX}
    {PrevAggregate : Type uPrev}
    {NowSources : Type uNow}
    {Compare : Type uY} [PseudoMetricSpace Compare]
    (square : InterchangeSquare PrevSources PrevAggregate NowSources Compare)
    (input : PrevSources) : ℝ≥0 :=
  InterchangeSquare.metricDefect square input

/-- Public architecture name for a bounded interchange certificate. -/
abbrev AttentionInterchangeCertificate
    {PrevSources : Type uX}
    {PrevAggregate : Type uPrev}
    {NowSources : Type uNow}
    {Compare : Type uY} [PseudoMetricSpace Compare]
    (square : InterchangeSquare PrevSources PrevAggregate NowSources Compare) :=
  InterchangeSquare.Certificate square

/-- Linear specialization realizing `K ∘ D - D ∘ (⊕ K_i)`. -/
structure LinearInterchangeSquare
    (R : Type uR)
    (PrevSources : Type uX)
    (PrevAggregate : Type uPrev)
    (NowSources : Type uNow)
    (Compare : Type uY)
    [Ring R]
    [AddCommGroup PrevSources] [Module R PrevSources]
    [AddCommGroup PrevAggregate] [Module R PrevAggregate]
    [AddCommGroup NowSources] [Module R NowSources]
    [AddCommGroup Compare] [Module R Compare] where
  retrievePrev : PrevSources →ₗ[R] PrevAggregate
  transportAggregate : PrevAggregate →ₗ[R] Compare
  transportSources : PrevSources →ₗ[R] NowSources
  retrieveNow : NowSources →ₗ[R] Compare

namespace LinearInterchangeSquare

variable {R : Type uR}
variable {PrevSources : Type uX}
variable {PrevAggregate : Type uPrev}
variable {NowSources : Type uNow}
variable {Compare : Type uY}
variable [Ring R]
variable [AddCommGroup PrevSources] [Module R PrevSources]
variable [AddCommGroup PrevAggregate] [Module R PrevAggregate]
variable [AddCommGroup NowSources] [Module R NowSources]
variable [AddCommGroup Compare] [Module R Compare]

/-- Forget linear structure while retaining all carrier boundaries. -/
def toInterchangeSquare
    (square : LinearInterchangeSquare R PrevSources PrevAggregate NowSources Compare) :
    InterchangeSquare PrevSources PrevAggregate NowSources Compare where
  retrievePrev := square.retrievePrev
  transportAggregate := square.transportAggregate
  transportSources := square.transportSources
  retrieveNow := square.retrieveNow

/-- Linear-map-valued interchange defect. -/
def defect
    (square : LinearInterchangeSquare R PrevSources PrevAggregate NowSources Compare) :
    PrevSources →ₗ[R] Compare :=
  square.transportAggregate.comp square.retrievePrev -
    square.retrieveNow.comp square.transportSources

@[simp]
theorem defect_apply
    (square : LinearInterchangeSquare R PrevSources PrevAggregate NowSources Compare)
    (input : PrevSources) :
    defect square input =
      square.transportAggregate (square.retrievePrev input) -
        square.retrieveNow (square.transportSources input) := by
  simp [defect]

/-- Vanishing linear defect is equivalent to exact sequence-depth commutation. -/
theorem defect_eq_zero_iff
    (square : LinearInterchangeSquare R PrevSources PrevAggregate NowSources Compare) :
    defect square = 0 ↔
      ∀ input,
        square.transportAggregate (square.retrievePrev input) =
          square.retrieveNow (square.transportSources input) := by
  constructor
  · intro h input
    have hInput := congrArg
      (fun map : PrevSources →ₗ[R] Compare => map input) h
    have hSub :
        square.transportAggregate (square.retrievePrev input) -
            square.retrieveNow (square.transportSources input) = 0 := by
      simpa [defect] using hInput
    exact sub_eq_zero.mp hSub
  · intro h
    ext input
    simp [defect, h input]

end LinearInterchangeSquare

end Mathematics.Attention
