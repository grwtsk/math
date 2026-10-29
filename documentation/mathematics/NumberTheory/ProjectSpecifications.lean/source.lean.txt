import BitMatrix.Dynamics.EvolutionSurgeryRestart
import BitMatrix.Rhetorical.Coverage

/-! Compile-time conformance witnesses for concrete project specifications. -/

namespace BitMatrix.Tests.ProjectSpecifications

open BitMatrix.Dynamics.EvolutionSurgeryRestart

example (index : Nat) :
    Nat.Prime
      (BitMatrix.Carrier.SequentialPrimeSpecification.canonicalPrimeEnumeration.value
        index) :=
  BitMatrix.Carrier.SequentialPrimeSpecification.canonicalPrimeEnumeration.prime index

example (index : Nat) :
    BitMatrix.Carrier.rawCanonicalAddressEnumeration.code
      (BitMatrix.Carrier.rawCanonicalAddressEnumeration.enumerate index) = index := by
  simp

example (source : BitMatrix.Codec.CanonicalSource) :
    BitMatrix.Codec.oneHotSourceCodec.decode
      (BitMatrix.Codec.oneHotSourceCodec.encode source) = some source := by
  simp

example (source : BitMatrix.Codec.CanonicalSource) :
    (BitMatrix.Rhetorical.canonicalSourceSpecialization source).codec.encode source =
      (BitMatrix.Rhetorical.canonicalSourceTheory source).baseline :=
  rfl

example {rows columns : Nat}
    (cut : BitMatrix.Surgery.Digital.CutDatum rows columns) :
    (RasterSurgeryEvent.reconstruction cut).postEventState =
      (RasterSurgeryEvent.reconstruction cut).preEventState := by
  simp

example {rows columns : Nat}
    {cut : BitMatrix.Surgery.Digital.CutDatum rows columns}
    (repair : BitMatrix.Surgery.Digital.Repair cut) :
    repair.addedCells ⊆ cut.selected :=
  repair.addedCells_subset_selected

example {rows columns : Nat}
    {cut : BitMatrix.Surgery.Digital.CutDatum rows columns}
    (repair : BitMatrix.Surgery.Digital.Repair cut) :
    repair.deletedCells ⊆ cut.selected :=
  repair.deletedCells_subset_selected

example (left right : EvolutionStatus) :
    EvolutionStatus.LE (EvolutionStatus.meet left right) left :=
  EvolutionStatus.meet_le_left left right

end BitMatrix.Tests.ProjectSpecifications
