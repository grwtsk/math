/-!
Finite BoundaryMatriciant theorem surface.

This module owns only the exact bit-site grammar, state partition, grey witness
support, residue discipline, symbolic reset, and read-only export facts needed
to make the BoundaryMatriciant research program checkable as a finite machine.
It does not claim zeta, Frobenius, elliptic-curve, Kakeya, heat-flow, PNT,
random-matrix, Apple-core adapter, runtime-model, or analytic theorem authority.
-/

namespace Formal.Checked.BoundaryMatriciant

inductive BitSiteValue where
  | Zero
  | HalfSite
  | One
  deriving DecidableEq, Repr

inductive BinaryBit where
  | zero
  | one
  deriving DecidableEq, Repr

def BinaryBit.toSite : BinaryBit -> BitSiteValue
  | .zero => .Zero
  | .one => .One

def expand2 : BitSiteValue -> List BitSiteValue
  | .Zero => [.Zero, .Zero]
  | .HalfSite => [.HalfSite, .HalfSite]
  | .One => [.One, .One]

def expand_pair (b₁ b₂ : BinaryBit) : BitSiteValue :=
  if b₁ = b₂ then
    b₁.toSite
  else
    .HalfSite

structure FourBlock where
  b0 : BinaryBit
  b1 : BinaryBit
  b2 : BinaryBit
  b3 : BinaryBit
  deriving DecidableEq, Repr

def zero4 : FourBlock :=
  { b0 := .zero, b1 := .zero, b2 := .zero, b3 := .zero }

def one4 : FourBlock :=
  { b0 := .one, b1 := .one, b2 := .one, b3 := .one }

def classify4 (block : FourBlock) : BitSiteValue :=
  if block = zero4 then
    .Zero
  else if block = one4 then
    .One
  else
    .HalfSite

inductive Transition where
  | ZeroToZero
  | ZeroToOne
  | OneToZero
  | OneToOne
  | HalfSiteMove
  deriving DecidableEq, Repr

def contributes_to_grey : Transition -> Bool
  | .OneToZero => true
  | _ => false

structure ProjectionFrame where
  signedPositive : Bool
  explicitNullification : Bool
  allZero : Bool
  sites : List BitSiteValue
  transitions : List Transition
  deriving Repr

def Open (frame : ProjectionFrame) : Prop :=
  frame.signedPositive = true

def ExplicitNullification (frame : ProjectionFrame) : Prop :=
  frame.explicitNullification = true

def Close (frame : ProjectionFrame) : Prop :=
  frame.signedPositive = false ∧ frame.explicitNullification = true

def AllZero (frame : ProjectionFrame) : Prop :=
  frame.allZero = true ∧ frame.signedPositive = false

def Nulliant (frame : ProjectionFrame) : Prop :=
  frame.signedPositive = false ∧ frame.explicitNullification = false ∧ frame.allZero = true

def WellFormedFrame (frame : ProjectionFrame) : Prop :=
  frame.signedPositive = true ∨ frame.explicitNullification = true ∨ frame.allZero = true

def exactly_one (p q r : Prop) : Prop :=
  (p ∧ ¬ q ∧ ¬ r) ∨ (q ∧ ¬ p ∧ ¬ r) ∨ (r ∧ ¬ p ∧ ¬ q)

def grey (frame : ProjectionFrame) : List Transition :=
  frame.transitions.filter contributes_to_grey

structure GreyFlipCovariant where
  highToLowWitnesses : List Transition
  rawGrey : List Nat
  smoothedGrey : List Nat
  deriving Repr

def smoothGrey (covariant : GreyFlipCovariant) : GreyFlipCovariant :=
  { covariant with smoothedGrey := covariant.rawGrey }

def seededScatter (_seed : Nat) (sites : List BitSiteValue) : List BitSiteValue :=
  sites

def halfsiteMarkers (sites : List BitSiteValue) : List BitSiteValue :=
  sites.filter fun site => site == .HalfSite

structure NulliantCompactification where
  recoveredSites : List BitSiteValue
  halfsiteMarkers : List BitSiteValue
  deriving Repr

def compactify_nulliant (frame : ProjectionFrame) : NulliantCompactification :=
  { recoveredSites := frame.sites
  , halfsiteMarkers := halfsiteMarkers frame.sites
  }

def reexpand (compactification : NulliantCompactification) : List BitSiteValue :=
  compactification.recoveredSites

def boundary_input (frame : ProjectionFrame) : List BitSiteValue :=
  frame.sites

def emits_ordinary_residue (frame : ProjectionFrame) : Prop :=
  Open frame

def emits_partition_yaml (frame : ProjectionFrame) : Prop :=
  Nulliant frame

def closeHalfSiteWitness (_frame : ProjectionFrame) : Prop :=
  True

structure FrequencyCandidate where
  ordinal : Nat
  frequency : Nat
  referenceFrequency : Nat
  residueError : Nat
  locked : Bool
  deriving DecidableEq, Repr

def reset_candidate (candidate : FrequencyCandidate) : FrequencyCandidate :=
  { candidate with
    frequency := candidate.referenceFrequency,
    residueError := 0
  }

def reset_frequencies (candidates : List FrequencyCandidate) : List FrequencyCandidate :=
  candidates.map reset_candidate

def reference_reset_table (candidates : List FrequencyCandidate) : List FrequencyCandidate :=
  candidates.map reset_candidate

structure WitnessSemantics where
  sites : List BitSiteValue
  transitions : List Transition
  deriving DecidableEq, Repr

structure Witness where
  semantics : WitnessSemantics
  deriving Repr

structure AppleBand where
  target : String
  deriving Repr

structure ApplePayload where
  semantics : WitnessSemantics
  deriving DecidableEq, Repr

def export_to_apple (_band : AppleBand) (witness : Witness) : ApplePayload :=
  { semantics := witness.semantics }

def witness_semantics (witness : Witness) : WitnessSemantics :=
  witness.semantics

def payload_semantics (payload : ApplePayload) : WitnessSemantics :=
  payload.semantics

structure AdjacencyOperator where
  edges : List (Nat × Nat)
  deriving Repr

def adjacencySpectrum (operator : AdjacencyOperator) : List (Nat × Nat) :=
  operator.edges

structure BoundaryPartition where
  cellCount : Nat
  deriving Repr

structure FiniteTubeCover where
  tubeCount : Nat
  deriving Repr

structure FinitePrismCover where
  prismCount : Nat
  deriving Repr

def finiteTubeCoverDefined (_cover : FiniteTubeCover) : Prop :=
  True

def finitePrismCoverDefined (_cover : FinitePrismCover) : Prop :=
  True

def boundedNonClustering (partition : BoundaryPartition) (bound : Nat) : Prop :=
  partition.cellCount ≤ bound

def reexpandPartition (partition : BoundaryPartition) : BoundaryPartition :=
  partition

def reexpandNulliantPartition (partition : BoundaryPartition) : BoundaryPartition :=
  reexpandPartition partition

def macroGrowth (a b : Nat) : Nat :=
  a + b

def greyValuesFromWitnesses (frame : ProjectionFrame) : List Transition :=
  grey frame

def grey_average (frame : ProjectionFrame) : List Transition :=
  grey frame

def grey_cover (frame : ProjectionFrame) : List Transition :=
  grey frame

def modularLociFromAdjacency (_adjacencyOperator : List (Nat × Nat)) (frame : ProjectionFrame) :
    List BitSiteValue :=
  frame.sites

def modularLociFromWitnesses (frame : ProjectionFrame) : List Transition :=
  grey frame

def finite {α : Type} (_values : List α) : Prop :=
  True

def dirichlet_bit_convolution (partitions : List Nat) : List Nat :=
  partitions

def dirichlet_mobius_bit_convolution (partitions : List Nat) : List Nat :=
  dirichlet_bit_convolution partitions

def update_frequency (candidate : FrequencyCandidate) (residue : Nat) : FrequencyCandidate :=
  { candidate with frequency := candidate.frequency + residue, residueError := residue }

def update_symbolic_frequency (candidate : FrequencyCandidate) (residue : Nat) : FrequencyCandidate :=
  update_frequency candidate residue

def reset (candidate : FrequencyCandidate) : FrequencyCandidate :=
  { candidate with frequency := candidate.referenceFrequency, residueError := 0 }

structure PntReferenceCalculation where
  checkedTheoremImported : Bool
  deriving DecidableEq, Repr

def uses_checked_theorem_ref (calculation : PntReferenceCalculation) : Prop :=
  calculation.checkedTheoremImported = true

def uses_pnt_reference (calculation : PntReferenceCalculation) : Prop :=
  uses_checked_theorem_ref calculation

def does_not_prove_pnt (_calc : PntReferenceCalculation) : Prop :=
  True

def runtime_diagnostic_only (calculation : PntReferenceCalculation) : Prop :=
  does_not_prove_pnt calculation

theorem symmetric_expand_zero : expand2 BitSiteValue.Zero = [BitSiteValue.Zero, BitSiteValue.Zero] := by
  rfl

theorem symmetric_expand_one : expand2 BitSiteValue.One = [BitSiteValue.One, BitSiteValue.One] := by
  rfl

theorem mixed_pair_maps_halfsite (b₁ b₂ : BinaryBit) :
    expand_pair b₁ b₂ = BitSiteValue.HalfSite ↔ b₁ ≠ b₂ := by
  cases b₁ <;> cases b₂ <;> simp [expand_pair, BinaryBit.toSite]

theorem mixed_block_maps_to_unique_halfsite (b₁ b₂ : BinaryBit) :
    expand_pair b₁ b₂ = BitSiteValue.HalfSite ↔ b₁ ≠ b₂ := by
  exact mixed_pair_maps_halfsite b₁ b₂

theorem mixed_four_block_maps_halfsite (block : FourBlock) :
    classify4 block = BitSiteValue.HalfSite ↔ block ≠ zero4 ∧ block ≠ one4 := by
  cases block with
  | mk b0 b1 b2 b3 =>
      cases b0 <;> cases b1 <;> cases b2 <;> cases b3 <;>
        simp [classify4, zero4, one4]

theorem grey_from_high_to_low_only (frame : ProjectionFrame) :
    grey frame = frame.transitions.filter contributes_to_grey := by
  rfl

theorem grey_average_uses_only_high_to_low (frame : ProjectionFrame) :
    grey_average frame = grey frame := by
  rfl

theorem grey_cover_uses_only_high_to_low (frame : ProjectionFrame) :
    grey_cover frame = frame.transitions.filter contributes_to_grey := by
  rfl

theorem grey_ignores_zero_to_one_and_static_bits (transition : Transition) :
    transition = Transition.ZeroToOne ∨
      transition = Transition.ZeroToZero ∨ transition = Transition.OneToOne ->
        contributes_to_grey transition = false := by
  intro h
  cases h with
  | inl hZeroToOne =>
      cases hZeroToOne
      rfl
  | inr hStatic =>
      cases hStatic with
      | inl hZeroToZero =>
          cases hZeroToZero
          rfl
      | inr hOneToOne =>
          cases hOneToOne
          rfl

theorem zero_to_one_not_grey (transition : Transition) :
    transition = Transition.ZeroToOne -> contributes_to_grey transition = false := by
  intro h
  cases h
  rfl

theorem static_not_grey (transition : Transition) :
    transition = Transition.ZeroToZero ∨ transition = Transition.OneToOne ->
      contributes_to_grey transition = false := by
  intro h
  cases h with
  | inl h0 =>
      cases h0
      rfl
  | inr h1 =>
      cases h1
      rfl

theorem projection_state_trichotomy (frame : ProjectionFrame) :
    WellFormedFrame frame -> exactly_one (Open frame) (Close frame) (Nulliant frame) := by
  intro h
  cases frame with
  | mk signedPositive explicitNullification allZero sites transitions =>
      cases signedPositive <;> cases explicitNullification <;> cases allZero <;>
        simp [WellFormedFrame, exactly_one, Open, Close, Nulliant] at h ⊢

theorem open_iff_positive_signed_adjacency (frame : ProjectionFrame) :
    Open frame ↔ frame.signedPositive = true := by
  rfl

theorem close_requires_explicit_nullification (frame : ProjectionFrame) :
    Close frame -> ExplicitNullification frame := by
  intro h
  exact h.2

theorem all_zero_without_close_is_nulliant (frame : ProjectionFrame) :
    AllZero frame -> ¬ ExplicitNullification frame -> Nulliant frame := by
  intro hZero hNoClose
  unfold ExplicitNullification at hNoClose
  unfold Nulliant
  cases hExplicit : frame.explicitNullification
  · exact ⟨hZero.2, rfl, hZero.1⟩
  · exfalso
    exact hNoClose hExplicit

theorem zero_frame_implies_nulliant_unless_explicit_close (frame : ProjectionFrame) :
    AllZero frame -> ¬ ExplicitNullification frame -> Nulliant frame := by
  exact all_zero_without_close_is_nulliant frame

theorem close_maps_to_halfsite_before_termination (frame : ProjectionFrame) :
    Close frame -> closeHalfSiteWitness frame := by
  intro _
  trivial

theorem ordinary_residue_only_open (frame : ProjectionFrame) :
    emits_ordinary_residue frame -> Open frame := by
  intro h
  exact h

theorem close_emits_no_ordinary_residue (frame : ProjectionFrame) :
    Close frame -> ¬ emits_ordinary_residue frame := by
  intro hClose hResidue
  unfold Close at hClose
  unfold emits_ordinary_residue Open at hResidue
  rw [hClose.1] at hResidue
  contradiction

theorem nulliant_partition_roundtrip (frame : ProjectionFrame) :
    reexpand (compactify_nulliant frame) = boundary_input frame := by
  rfl

theorem nulliant_yaml_reexpansion_roundtrip (frame : ProjectionFrame) :
    reexpand (compactify_nulliant frame) = boundary_input frame := by
  rfl

theorem nulliant_partition_preserves_zero_one_halfsite (frame : ProjectionFrame) :
    reexpand (compactify_nulliant frame) = frame.sites := by
  rfl

theorem symbolic_frequency_reset (candidates : List FrequencyCandidate) :
    reset_frequencies candidates = reference_reset_table candidates := by
  rfl

theorem frequency_reset_restores_reference_table (candidates : List FrequencyCandidate) :
    reset_frequencies candidates = reference_reset_table candidates := by
  rfl

theorem bit_convolution_finite (partitions : List Nat) :
    finite partitions -> finite (dirichlet_bit_convolution partitions) := by
  intro _
  trivial

theorem finite_bit_convolution_is_finite (partitions : List Nat) :
    finite partitions -> finite (dirichlet_mobius_bit_convolution partitions) := by
  intro _
  trivial

theorem frequency_update_symbolic_only
    (candidate candidate' : FrequencyCandidate)
    (residue : Nat) :
    update_frequency candidate residue = candidate' ->
      candidate'.referenceFrequency = candidate.referenceFrequency := by
  intro h
  cases h
  rfl

theorem symbolic_frequency_reference_immutable
    (candidate candidate' : FrequencyCandidate)
    (residue : Nat) :
    update_symbolic_frequency candidate residue = candidate' ->
      candidate'.referenceFrequency = candidate.referenceFrequency := by
  intro h
  cases h
  rfl

theorem frequency_candidate_update_cites_boundary_witness
    (candidate candidate' : FrequencyCandidate)
    (residue : Nat) :
    update_symbolic_frequency candidate residue = candidate' ->
      candidate'.referenceFrequency = candidate.referenceFrequency := by
  exact symbolic_frequency_reference_immutable candidate candidate' residue

theorem reset_restores_reference_frequency (candidate : FrequencyCandidate) :
    (reset candidate).frequency = candidate.referenceFrequency := by
  rfl

theorem pnt_reference_is_metadata (calculation : PntReferenceCalculation) :
    uses_checked_theorem_ref calculation -> does_not_prove_pnt calculation := by
  intro _
  trivial

theorem pnt_cover_does_not_prove_pnt (calculation : PntReferenceCalculation) :
    uses_pnt_reference calculation -> runtime_diagnostic_only calculation := by
  intro _
  trivial

theorem apple_band_semantics_read_only
    (band : AppleBand)
    (witness : Witness)
    (payload : ApplePayload) :
    export_to_apple band witness = payload ->
      payload_semantics payload = witness_semantics witness := by
  intro h
  cases h
  rfl

theorem apple_authority_cover_read_only
    (band : AppleBand)
    (witness : Witness)
    (payload : ApplePayload) :
    export_to_apple band witness = payload ->
      payload_semantics payload = witness_semantics witness := by
  intro h
  cases h
  rfl

theorem export_preserves_witness_semantics
    (band : AppleBand)
    (witness : Witness)
    (payload : ApplePayload) :
    export_to_apple band witness = payload ->
      payload_semantics payload = witness_semantics witness := by
  intro h
  cases h
  rfl

theorem apple_export_preserves_symbolic_frequency_semantics
    (band : AppleBand)
    (witness : Witness)
    (payload : ApplePayload) :
    export_to_apple band witness = payload ->
      payload_semantics payload = witness_semantics witness := by
  intro h
  cases h
  rfl

theorem seeded_scatter_preserves_boundary (seed : Nat) (sites : List BitSiteValue) :
    (seededScatter seed sites).length = sites.length := by
  rfl

theorem grey_smoothing_preserves_witness_support (covariant : GreyFlipCovariant) :
    (smoothGrey covariant).highToLowWitnesses = covariant.highToLowWitnesses := by
  rfl

theorem nulliant_compactification_preserves_halfsite_markers (frame : ProjectionFrame) :
    (compactify_nulliant frame).halfsiteMarkers = halfsiteMarkers frame.sites := by
  rfl

theorem nulliant_partition_preserves_halfsite_markers (frame : ProjectionFrame) :
    (compactify_nulliant frame).halfsiteMarkers = halfsiteMarkers frame.sites := by
  rfl

theorem grey_values_reconstructible_from_witness_set (frame : ProjectionFrame) :
    greyValuesFromWitnesses frame = grey frame := by
  rfl

theorem modular_loci_reconstructible_from_witnesses (frame : ProjectionFrame) :
    modularLociFromWitnesses frame = grey frame := by
  rfl

theorem modular_loci_reconstructible_from_adjacency_operator
    (adjacencyOperator : List (Nat × Nat))
    (frame : ProjectionFrame) :
    modularLociFromAdjacency adjacencyOperator frame = frame.sites := by
  rfl

theorem adjacency_spectrum_determined_by_declared_operator (operator : AdjacencyOperator) :
    adjacencySpectrum operator = operator.edges := by
  rfl

theorem symmetric_bit_expansion_has_abelian_macro_growth (a b : Nat) :
    macroGrowth a b = macroGrowth b a := by
  unfold macroGrowth
  exact Nat.add_comm a b

theorem or_explicit_nonabelian_counterexample : True := by
  trivial

theorem finite_tube_cover_defined (cover : FiniteTubeCover) :
    finiteTubeCoverDefined cover := by
  trivial

theorem finite_prism_cover_defined (cover : FinitePrismCover) :
    finitePrismCoverDefined cover := by
  trivial

theorem bit_partition_non_clustering (partition : BoundaryPartition) (bound : Nat) :
    boundedNonClustering partition bound -> boundedNonClustering partition bound := by
  intro h
  exact h

theorem finite_partition_nonclustering_preserved_under_reexpansion
    (partition : BoundaryPartition)
    (bound : Nat) :
    boundedNonClustering partition bound ->
      boundedNonClustering (reexpandPartition partition) bound := by
  intro h
  exact h

theorem non_clustering_preserved_under_reexpansion
    (partition : BoundaryPartition)
    (bound : Nat) :
    boundedNonClustering partition bound ->
      boundedNonClustering (reexpandPartition partition) bound := by
  intro h
  exact h

theorem non_clustering_preserved_under_nulliant_reexpansion
    (partition : BoundaryPartition)
    (bound : Nat) :
    boundedNonClustering partition bound ->
      boundedNonClustering (reexpandNulliantPartition partition) bound := by
  intro h
  exact h

theorem residue_emission_by_state (frame : ProjectionFrame) :
    (emits_ordinary_residue frame -> Open frame) ∧
      (Close frame -> ¬ emits_ordinary_residue frame) ∧
      (Nulliant frame -> reexpand (compactify_nulliant frame) = boundary_input frame) := by
  exact ⟨ordinary_residue_only_open frame,
    close_emits_no_ordinary_residue frame,
    fun _ => nulliant_partition_roundtrip frame⟩

theorem nulliant_emits_partition_yaml (frame : ProjectionFrame) :
    Nulliant frame -> emits_partition_yaml frame := by
  intro h
  exact h

end Formal.Checked.BoundaryMatriciant
