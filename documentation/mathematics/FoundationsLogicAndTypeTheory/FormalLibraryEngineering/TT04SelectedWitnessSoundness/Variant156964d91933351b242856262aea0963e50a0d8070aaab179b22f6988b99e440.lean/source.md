# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TT04SelectedWitnessSoundness.Variant156964d91933351b242856262aea0963e50a0d8070aaab179b22f6988b99e440

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `984af9cf9562bc04d7ee73a866ab1a0914703fb6` · SHA-256 `156964d91933351b242856262aea0963e50a0d8070aaab179b22f6988b99e440`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FCRS.Transport.Witness

universe uInput uWitness

namespace FCRS.Transport.Theorems

/-- Selection exposes only the admissibility already carried by its witness. -/
theorem tt04_selectedWitnessSound
    {Input : Type uInput} {Witness : Type uWitness}
    {profile : IntervalProfile Input Witness}
    {certified : CertifiedIntervalTheorem profile}
    {input : Input}
    {application : TheoremApplication certified input}
    {existence : ExistenceEvidence application}
    {kind : SelectionMethodKind}
    {method : SelectionMethod kind Input Witness}
    {selection : WitnessSelectionEvent existence method}
    (selected : SelectedWitness selection) :
    profile.admissible input selected.value :=
  selected.intervalWitness.evidence

end FCRS.Transport.Theorems
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=dfaf35161a99f3011e7c0cbecd29d92f5eded470d4d0feccb5caf36d4e24d0e9 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TT04SelectedWitnessSoundness/Variant156964d91933351b242856262aea0963e50a0d8070aaab179b22f6988b99e440.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
