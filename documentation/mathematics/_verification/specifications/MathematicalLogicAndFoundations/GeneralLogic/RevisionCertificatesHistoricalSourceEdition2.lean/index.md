# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Locality.RevisionCertificates

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "54a2506878a5fd4c04fbf13ac0e3a99550d077fd",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Locality/RevisionCertificates.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/GeneralLogic/RevisionCertificatesHistoricalSourceEdition2.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/GeneralLogic/RevisionCertificatesHistoricalSourceEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `54a2506878a5fd4c04fbf13ac0e3a99550d077fd`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Locality/RevisionCertificates.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Locality/RevisionCertificates.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Certificates.ProofCoverage`](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ProofCoverage.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [SourceSnapshot](../../../../../MathematicalLogicAndFoundations/GeneralLogic/RevisionCertificatesHistoricalSourceEdition2.lean/declarations/sourcesnapshot.md) | 25 | `declaration-track:a6bb4d7a993d2c88a49596c0d7b02e8d092da2d988583e7c4641832c37eb6bfe` |
| 2 | `def` | [SnapshotAgreesOn](../../../../../MathematicalLogicAndFoundations/GeneralLogic/RevisionCertificatesHistoricalSourceEdition2.lean/declarations/snapshotagreeson.md) | 28 | `declaration-track:b1469abc6930d3cbc2c5cad16f9f68de45231a8b1ba913183ab431fe5b91a004` |
| 3 | `theorem` | [snapshot_agrees_refl](../../../../../MathematicalLogicAndFoundations/GeneralLogic/RevisionCertificatesHistoricalSourceEdition2.lean/declarations/snapshot-agrees-refl.md) | 32 | `result-track:7ec984bc51220d84d1f661396efb6c91b2d46c2505030738f0b7f91968fea61a` |
| 4 | `theorem` | [snapshot_agrees_symm](../../../../../MathematicalLogicAndFoundations/GeneralLogic/RevisionCertificatesHistoricalSourceEdition2.lean/declarations/snapshot-agrees-symm.md) | 37 | `result-track:4e9371e4e47b9686cffe9c98147303a5f1d2ac2af59ffaa2ef39951b1dc376b0` |
| 5 | `theorem` | [snapshot_agrees_trans](../../../../../MathematicalLogicAndFoundations/GeneralLogic/RevisionCertificatesHistoricalSourceEdition2.lean/declarations/snapshot-agrees-trans.md) | 43 | `result-track:faef6a1fbb4f342358eb6ec58139d1b4b0c766f582bf830f6cd4de5ac4f9d4d6` |
| 6 | `structure` | [RevisionCertificate](../../../../../MathematicalLogicAndFoundations/GeneralLogic/RevisionCertificatesHistoricalSourceEdition2.lean/declarations/revisioncertificate.md) | 53 | `declaration-track:2660cf74b912306118001bca3c9d05be8a9de1fa41482edcf69dba4296e2c9bc` |
| 7 | `def` | [RevisionCertificate.Fresh](../../../../../MathematicalLogicAndFoundations/GeneralLogic/RevisionCertificatesHistoricalSourceEdition2.lean/declarations/revisioncertificate-fresh.md) | 62 | `declaration-track:047f49e3a0d57a739b2df942be717867a23c8bf1c9fb323fa6d6e6c81dcd45e3` |
| 8 | `def` | [RevisionCertificate.Accepted](../../../../../MathematicalLogicAndFoundations/GeneralLogic/RevisionCertificatesHistoricalSourceEdition2.lean/declarations/revisioncertificate-accepted.md) | 69 | `declaration-track:87a53f54f61c9649f1254dbc931569b85042858fe45d7434234482938c9509ef` |
| 9 | `theorem` | [RevisionCertificate.current_target](../../../../../MathematicalLogicAndFoundations/GeneralLogic/RevisionCertificatesHistoricalSourceEdition2.lean/declarations/revisioncertificate-current-target.md) | 75 | `result-track:833d6a2a4ba72ee41430487682ea9fa8ccf140fb9ad3bb2ca1eece6aade3b6ba` |
| 10 | `theorem` | [RevisionCertificate.fresh_accepts](../../../../../MathematicalLogicAndFoundations/GeneralLogic/RevisionCertificatesHistoricalSourceEdition2.lean/declarations/revisioncertificate-fresh-accepts.md) | 82 | `result-track:f7dba7985327a70d237cc6fd85c52a08641b228e4c2e434cba158a97218f0b5f` |
| 11 | `theorem` | [RevisionCertificate.accepted_iff_fresh](../../../../../MathematicalLogicAndFoundations/GeneralLogic/RevisionCertificatesHistoricalSourceEdition2.lean/declarations/revisioncertificate-accepted-iff-fresh.md) | 89 | `result-track:8f092d16f05ea90af977e600ca790bd717af43aaf57ef30aa05340399ebb2028` |
| 12 | `theorem` | [RevisionCertificate.recorded_accepted](../../../../../MathematicalLogicAndFoundations/GeneralLogic/RevisionCertificatesHistoricalSourceEdition2.lean/declarations/revisioncertificate-recorded-accepted.md) | 96 | `result-track:7493ad427143d67c16c828ebcba3c118a821fcd0cad3e7df40b2e6a15a4b3f7b` |
| 13 | `theorem` | [RevisionCertificate.stale_read_rejects](../../../../../MathematicalLogicAndFoundations/GeneralLogic/RevisionCertificatesHistoricalSourceEdition2.lean/declarations/revisioncertificate-stale-read-rejects.md) | 104 | `result-track:f30d8bdf228222181e9911eec8de8925f40f25bee54f2f5668039dff33a92335` |
| 14 | `theorem` | [RevisionCertificate.to_terminal](../../../../../MathematicalLogicAndFoundations/GeneralLogic/RevisionCertificatesHistoricalSourceEdition2.lean/declarations/revisioncertificate-to-terminal.md) | 116 | `result-track:270741fcdb406529fb39fbd063716cf8a2ba963c827ccb30ad8b49b9d240a37f` |
| 15 | `def` | [oneReadCertificate](../../../../../MathematicalLogicAndFoundations/GeneralLogic/RevisionCertificatesHistoricalSourceEdition2.lean/declarations/onereadcertificate.md) | 126 | `declaration-track:86649bfa482915eaf752ff893e45de8c79568445502b3dde53b2dc46592623e7` |
| 16 | `theorem` | [fresh_current_claim](../../../../../MathematicalLogicAndFoundations/GeneralLogic/RevisionCertificatesHistoricalSourceEdition2.lean/declarations/fresh-current-claim.md) | 135 | `result-track:e8a0a6dbc1282333d3898bd6f1395db2b79ec8f160e531b9e90c2eb298edc283` |
| 17 | `theorem` | [stale_read_history_retained](../../../../../MathematicalLogicAndFoundations/GeneralLogic/RevisionCertificatesHistoricalSourceEdition2.lean/declarations/stale-read-history-retained.md) | 144 | `result-track:0a895f23336a2d57eee046d63ee8b08386572a01c1bda809474b4b9d30f74529` |
| 18 | `def` | [trueCertificate](../../../../../MathematicalLogicAndFoundations/GeneralLogic/RevisionCertificatesHistoricalSourceEdition2.lean/declarations/truecertificate.md) | 153 | `declaration-track:ecf487b8f1ff6d292abc4cb3f971ecdcd3f8e2004b121e9e0983df90ac85ecd6` |
| 19 | `theorem` | [stale_true_claim_rejected](../../../../../MathematicalLogicAndFoundations/GeneralLogic/RevisionCertificatesHistoricalSourceEdition2.lean/declarations/stale-true-claim-rejected.md) | 159 | `result-track:120f7cc4b1edb430aee479ae490297f3d97e2e77e1feb2cfa7fe27dbd019d697` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=15f16e2717e0f3e7cd27dccd1dcac15b018a6a5ab3ccfc0a067f1a421b299a8e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Locality/RevisionCertificates.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/Locality/RevisionCertificates__SourceOccurrencef6b41b1e3cfad5b603e054a5.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
