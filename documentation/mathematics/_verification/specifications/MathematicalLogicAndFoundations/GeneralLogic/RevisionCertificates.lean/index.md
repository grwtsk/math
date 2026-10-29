# Verification target: GRWTSK.Logic.Locality.RevisionCertificates

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fd5a2469ce860ffd295f99717c5e64911fd0c16c",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Logic/Locality/RevisionCertificates.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/GeneralLogic/RevisionCertificates.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/GeneralLogic/RevisionCertificates.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fd5a2469ce860ffd295f99717c5e64911fd0c16c`.

Source path: `GRWTSK/Logic/Locality/RevisionCertificates.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Logic/Locality/RevisionCertificates.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Logic.Certificates.ProofCoverage`](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ProofCoverageHistoricalSourceEdition2.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [SourceSnapshot](../../../../../MathematicalLogicAndFoundations/GeneralLogic/RevisionCertificates.lean/declarations/sourcesnapshot.md) | 25 | `declaration-track:bc86519cbc775e2c0ad9210c897d38a77ba4ab4847e14c97942e661dc23fe697` |
| 2 | `def` | [SnapshotAgreesOn](../../../../../MathematicalLogicAndFoundations/GeneralLogic/RevisionCertificates.lean/declarations/snapshotagreeson.md) | 28 | `declaration-track:34634200a6b579c8922ab8d101fb81ab4e11274c38164a34e52cbc4d681082ca` |
| 3 | `theorem` | [snapshot_agrees_refl](../../../../../MathematicalLogicAndFoundations/GeneralLogic/RevisionCertificates.lean/declarations/snapshot-agrees-refl.md) | 32 | `result-track:515e69733a28687b0c0cb263236bb5f4f433c3d1b3593407bbb4eb9d89913d81` |
| 4 | `theorem` | [snapshot_agrees_symm](../../../../../MathematicalLogicAndFoundations/GeneralLogic/RevisionCertificates.lean/declarations/snapshot-agrees-symm.md) | 37 | `result-track:e32f36f502be13096d91390d0f1264f12fe58f652ed4cdbc382b037908cefaa0` |
| 5 | `theorem` | [snapshot_agrees_trans](../../../../../MathematicalLogicAndFoundations/GeneralLogic/RevisionCertificates.lean/declarations/snapshot-agrees-trans.md) | 43 | `result-track:b77537ca22d2318498a85683b905e42d503273dea29f8b165d7be19cbf236326` |
| 6 | `structure` | [RevisionCertificate](../../../../../MathematicalLogicAndFoundations/GeneralLogic/RevisionCertificates.lean/declarations/revisioncertificate.md) | 53 | `declaration-track:f83d254272176cf085358790cedddbfd5a5f835a50d66d5ccd5a576833a2b2b4` |
| 7 | `def` | [RevisionCertificate.Fresh](../../../../../MathematicalLogicAndFoundations/GeneralLogic/RevisionCertificates.lean/declarations/revisioncertificate-fresh.md) | 62 | `declaration-track:85871112c7a0976b6ac94392319f22eebbfc74c02d32ff00bc9b12c31c8a361c` |
| 8 | `def` | [RevisionCertificate.Accepted](../../../../../MathematicalLogicAndFoundations/GeneralLogic/RevisionCertificates.lean/declarations/revisioncertificate-accepted.md) | 69 | `declaration-track:90a2e062ac1cd1df9a54ecdbb76b5218c4c01562f607444db92db67a8b5c381a` |
| 9 | `theorem` | [RevisionCertificate.current_target](../../../../../MathematicalLogicAndFoundations/GeneralLogic/RevisionCertificates.lean/declarations/revisioncertificate-current-target.md) | 75 | `result-track:e2bd460cdbab4e97e2ec12553e459acf95bdcf4998278b3bf630e9d27a527ce3` |
| 10 | `theorem` | [RevisionCertificate.fresh_accepts](../../../../../MathematicalLogicAndFoundations/GeneralLogic/RevisionCertificates.lean/declarations/revisioncertificate-fresh-accepts.md) | 82 | `result-track:ebb235d92769f68d94394f693c505ae64442b9a4e021b44f6a75fe6b0cb3b408` |
| 11 | `theorem` | [RevisionCertificate.accepted_iff_fresh](../../../../../MathematicalLogicAndFoundations/GeneralLogic/RevisionCertificates.lean/declarations/revisioncertificate-accepted-iff-fresh.md) | 89 | `result-track:4527f9b2fb6ed483431b7b67e939a5651e3cf91ff90a8be04183d4ab854610a9` |
| 12 | `theorem` | [RevisionCertificate.recorded_accepted](../../../../../MathematicalLogicAndFoundations/GeneralLogic/RevisionCertificates.lean/declarations/revisioncertificate-recorded-accepted.md) | 96 | `result-track:cac28d837de2bc89892f61808a392028d84cdb2b76bc605d7ff072bdaed0cc33` |
| 13 | `theorem` | [RevisionCertificate.stale_read_rejects](../../../../../MathematicalLogicAndFoundations/GeneralLogic/RevisionCertificates.lean/declarations/revisioncertificate-stale-read-rejects.md) | 104 | `result-track:7ba5c507e33460665a2de3aba396512e6e2007a62980e54df464a14dc262f48a` |
| 14 | `theorem` | [RevisionCertificate.to_terminal](../../../../../MathematicalLogicAndFoundations/GeneralLogic/RevisionCertificates.lean/declarations/revisioncertificate-to-terminal.md) | 116 | `result-track:a955624680e81b3b3a686b43d662e49d7a8d54db026981dd59f70dfaaeb93932` |
| 15 | `def` | [oneReadCertificate](../../../../../MathematicalLogicAndFoundations/GeneralLogic/RevisionCertificates.lean/declarations/onereadcertificate.md) | 126 | `declaration-track:b3957d169edea665067e5b9fbd6c97edd948ffd2625afa7ba57e2d3663d97eaf` |
| 16 | `theorem` | [fresh_current_claim](../../../../../MathematicalLogicAndFoundations/GeneralLogic/RevisionCertificates.lean/declarations/fresh-current-claim.md) | 135 | `result-track:bdb1616e1ff0d44a4512c7bc5cacde5989f220e74bc3dc3346a5178dc8b0435f` |
| 17 | `theorem` | [stale_read_history_retained](../../../../../MathematicalLogicAndFoundations/GeneralLogic/RevisionCertificates.lean/declarations/stale-read-history-retained.md) | 144 | `result-track:3f34a4abce0304fb8d95e40490f1b9b6c211810c590dc9bb41771aa819098bff` |
| 18 | `def` | [trueCertificate](../../../../../MathematicalLogicAndFoundations/GeneralLogic/RevisionCertificates.lean/declarations/truecertificate.md) | 153 | `declaration-track:a09a5c8cd904af7bc92769d5eb0953caec2855840c15f1624b1cf2f0cff8664f` |
| 19 | `theorem` | [stale_true_claim_rejected](../../../../../MathematicalLogicAndFoundations/GeneralLogic/RevisionCertificates.lean/declarations/stale-true-claim-rejected.md) | 159 | `result-track:6d9e1c4c0e50814cb8fb2968085c8bd74359e3acf32e83c24c4b3e0d3dda8b6a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=62e201f0db98fea067c2d746b8639f7bd3f009805af5090de0f668a3ea8261ff -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Logic/Locality/RevisionCertificates.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/Locality/RevisionCertificates__SourceOccurrence6831ddf20c1704a4a19e59d5.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
