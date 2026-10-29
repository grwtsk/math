# Project Specifications — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `420adcb0d2a462eaa51c251876c3cdb479f9f3ed` · SHA-256 `e7cc3f3cb6c1610c1f64e267d88d9d1371fcd05654684cd428f8d78782893d37`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=39cc255f736c301782785f524bfa0095520087578d198fdbce5d0d00e95c568b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/ElementaryNumberTheory/ProjectSpecifications/Variante7cc3f3cb6c1610c1f64e267d88d9d1371fcd05654684cd428f8d78782893d37.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
