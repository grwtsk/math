# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CF03SieveAdmissibility.Variant4b8d7560649fe32a99002c3392184567dc4ee19fd1971409f539c21cc6d8dd20

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `90c4bfe51fef1399a04bf7966669a2536c7ff252` · SHA-256 `4b8d7560649fe32a99002c3392184567dc4ee19fd1971409f539c21cc6d8dd20`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FCRS.ControlledPlane.Registry

namespace FCRS.ControlledPlane.Theorems

/-- CF-03 follows from the sieve fields and the model's typed transport. -/
theorem cf03_sieveAdmissibility
    (S : RealizationSystem)
    (M : ControlledPlaneModel S) :
    CF03Claim M := by
  exact {
    factoringClosed := M.sieve.closedUnderFactor
    admissibilityExact := by
      intro e
      rfl
    factorMorphTransported := by
      intro c f
      exact (M.sieveTransport c).factorMorph_commutes f
    acceptanceCorrespondence := by
      intro c m
      exact (M.sieveTransport c).acceptance_iff m
    furtherFactorPreserved := by
      intro c f g hFactor
      exact (M.sieveTransport c).furtherFactor_preserved hFactor
    occurrenceCorrespondence := by
      intro c e f
      exact (M.sieveTransport c).occurrence_iff e f
    admissibilityPreserved := by
      intro c e hAdmissible
      exact admissibleEdge_preserved_of_sieveTransport
        (M.sieveTransport c) hAdmissible
  }

end FCRS.ControlledPlane.Theorems
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=86c0dfb458a8667b7412f7022b511856b25ba70a8a64629bcf7327850fd51c1d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CF03SieveAdmissibility/Variant4b8d7560649fe32a99002c3392184567dc4ee19fd1971409f539c21cc6d8dd20.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
