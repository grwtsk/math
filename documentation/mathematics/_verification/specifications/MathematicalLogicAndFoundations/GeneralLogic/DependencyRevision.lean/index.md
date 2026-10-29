# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Certificates.DependencyRevision

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1f90223e0fed9002fe251d78f9c73f84044f2f46",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/DependencyRevision.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/GeneralLogic/DependencyRevision.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/GeneralLogic/DependencyRevision.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1f90223e0fed9002fe251d78f9c73f84044f2f46`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/DependencyRevision.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/DependencyRevision.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.DynamicalSystems.TransitionSystems.GuardedFiniteBudget`](../../../../../DynamicalSystemsAndErgodicTheory/GuardedFiniteBudget.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.FoundationsLogicAndTypeTheory.Order.Closure.FiniteDependencyClosure`](../../../../../Combinatorics/FiniteDependencyClosure.lean/index.md) — import line 5; pinned internal source present.
- [`GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Locality.RevisionCertificates`](../../../../../MathematicalLogicAndFoundations/GeneralLogic/RevisionCertificatesHistoricalSourceEdition2.lean/index.md) — import line 6; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [DependencySchema](../../../../../MathematicalLogicAndFoundations/GeneralLogic/DependencyRevision.lean/declarations/dependencyschema.md) | 33 | `declaration-track:d56ce8ecd1ce33dedf5e2dfc30c0eb9bf5ddd2e85a4867648bfe9f6addc6dbe0` |
| 2 | `structure` | [ArchivedClaim](../../../../../MathematicalLogicAndFoundations/GeneralLogic/DependencyRevision.lean/declarations/archivedclaim.md) | 38 | `declaration-track:4415d1f3e63b2533283e329a8a8cab463672c4bfd77003caa4f3d39a544ee859` |
| 3 | `structure` | [CorrectionRecord](../../../../../MathematicalLogicAndFoundations/GeneralLogic/DependencyRevision.lean/declarations/correctionrecord.md) | 44 | `declaration-track:370f5d5d1a6730b883cdfabb8e4cdd9866e2be391c256acce37f3e46b0051fd0` |
| 4 | `structure` | [RevisionLedger](../../../../../MathematicalLogicAndFoundations/GeneralLogic/DependencyRevision.lean/declarations/revisionledger.md) | 51 | `declaration-track:eaf91770ee614ad3c87ba2d76fcfed6348e8dc07417617fd88e5eb466f19c994` |
| 5 | `def` | [directChanged](../../../../../MathematicalLogicAndFoundations/GeneralLogic/DependencyRevision.lean/declarations/directchanged.md) | 73 | `declaration-track:5f5db65a09dc0c80f61a2dd07566c2dfbcb0f2a768209feb5e0668eb606f5876` |
| 6 | `theorem` | [mem_directChanged](../../../../../MathematicalLogicAndFoundations/GeneralLogic/DependencyRevision.lean/declarations/mem-directchanged.md) | 80 | `result-track:0fb8eaa6a77e6af9fa74aeea22eeda7c1c43978b9fec95e5091db0f8e5d3b830` |
| 7 | `def` | [correctionAffected](../../../../../MathematicalLogicAndFoundations/GeneralLogic/DependencyRevision.lean/declarations/correctionaffected.md) | 87 | `declaration-track:6c2a3559ca4af6d99c6f1926a09ade2ed94dfa91a0c4275ec9305bb56f95b136` |
| 8 | `theorem` | [directChanged_subset_correctionAffected](../../../../../MathematicalLogicAndFoundations/GeneralLogic/DependencyRevision.lean/declarations/directchanged-subset-correctionaffected.md) | 91 | `result-track:a95dfb247bf5b8093633481b3914ffac8971c11ab9605d02651c6dceb5317ebe` |
| 9 | `theorem` | [mem_correctionAffected_iff](../../../../../MathematicalLogicAndFoundations/GeneralLogic/DependencyRevision.lean/declarations/mem-correctionaffected-iff.md) | 97 | `result-track:0837942149d848ee3f345257f4dcc736263591c51d8da122d588f128d4a78af3` |
| 10 | `theorem` | [directChanged_self](../../../../../MathematicalLogicAndFoundations/GeneralLogic/DependencyRevision.lean/declarations/directchanged-self.md) | 106 | `result-track:b682dd87ae653ac0610596832c20cc06fb467ae417c53dc495ba7779027ff26c` |
| 11 | `theorem` | [correctionAffected_self](../../../../../MathematicalLogicAndFoundations/GeneralLogic/DependencyRevision.lean/declarations/correctionaffected-self.md) | 112 | `result-track:15486d4e7df2c55a7fe43801dffc5eac8b7480ebbd35f95486e6b0671f4f8449` |
| 12 | `theorem` | [unchanged_reads_of_unaffected](../../../../../MathematicalLogicAndFoundations/GeneralLogic/DependencyRevision.lean/declarations/unchanged-reads-of-unaffected.md) | 117 | `result-track:74d2c8e57de71c81cf5869738694ec9e5882075de4b105768fa091643180e236` |
| 13 | `structure` | [RevisionSafe](../../../../../MathematicalLogicAndFoundations/GeneralLogic/DependencyRevision.lean/declarations/revisionsafe.md) | 127 | `declaration-track:451fc3534f76d991ce494a575df5308f32612c19f8250b26b9d382648828bc57` |
| 14 | `def` | [RevisionLedger.correct](../../../../../MathematicalLogicAndFoundations/GeneralLogic/DependencyRevision.lean/declarations/revisionledger-correct.md) | 145 | `declaration-track:6c8a975488579dcf2a7a85ed783b6b1007db1fa0b1128a33de1e1a7535a67e3e` |
| 15 | `theorem` | [correction_same_snapshot_status](../../../../../MathematicalLogicAndFoundations/GeneralLogic/DependencyRevision.lean/declarations/correction-same-snapshot-status.md) | 162 | `result-track:0a66b41d45495c29350edb565f0f784c51d08da89994d5f7bca91e51ee70789a` |
| 16 | `theorem` | [correction_records_append](../../../../../MathematicalLogicAndFoundations/GeneralLogic/DependencyRevision.lean/declarations/correction-records-append.md) | 169 | `result-track:238877ee554fa64045faa073cb4e18789d0c82430de7fa63c9407caaa12f95ac` |
| 17 | `theorem` | [correction_archive_preserved](../../../../../MathematicalLogicAndFoundations/GeneralLogic/DependencyRevision.lean/declarations/correction-archive-preserved.md) | 180 | `result-track:e35114eae72ffe933633618c10cd1d6f4a7038c408ab9cc4c9005e253757bf91` |
| 18 | `theorem` | [correction_receipts_preserved](../../../../../MathematicalLogicAndFoundations/GeneralLogic/DependencyRevision.lean/declarations/correction-receipts-preserved.md) | 185 | `result-track:1f9c4ceb0e403fb1f4cd6177c787c54df191767bcfcc0353486bb78829baca71` |
| 19 | `theorem` | [correction_issued_preserved](../../../../../MathematicalLogicAndFoundations/GeneralLogic/DependencyRevision.lean/declarations/correction-issued-preserved.md) | 190 | `result-track:c3f2bbf24d4384b93a40c1a3d2991a0413540b7e217b2dd01960c18509bbebd5` |
| 20 | `theorem` | [correction_verified_iff](../../../../../MathematicalLogicAndFoundations/GeneralLogic/DependencyRevision.lean/declarations/correction-verified-iff.md) | 196 | `result-track:994ebaf7808353fd9c2a380c6cbc722d3307e4709438bf3c1c03d71a7390609a` |
| 21 | `theorem` | [affected_verified_reopened](../../../../../MathematicalLogicAndFoundations/GeneralLogic/DependencyRevision.lean/declarations/affected-verified-reopened.md) | 205 | `result-track:a1ea9307fa37df5b0877a29b7318c95b38e733371f0c75e1144f449a400f676d` |
| 22 | `theorem` | [correction_preserves_safe](../../../../../MathematicalLogicAndFoundations/GeneralLogic/DependencyRevision.lean/declarations/correction-preserves-safe.md) | 216 | `result-track:6d13abfa6c0a54eba5b033f4ae1f53e57eeafdd39932d4373fdc795872a3a8af` |
| 23 | `theorem` | [revision_verified_to_terminal](../../../../../MathematicalLogicAndFoundations/GeneralLogic/DependencyRevision.lean/declarations/revision-verified-to-terminal.md) | 271 | `result-track:d6515eb5f8a8b9b185b12ee49ca6b07b02aee77b5e47e19a4e9bcd50e03a04bb` |
| 24 | `def` | [CurrentReceiptValid](../../../../../MathematicalLogicAndFoundations/GeneralLogic/DependencyRevision.lean/declarations/currentreceiptvalid.md) | 280 | `declaration-track:caa01abb5de455becf471ac9bbba1f8e1c82cbf9975749e3af2dee9757affff7` |
| 25 | `theorem` | [changed_snapshot_receipt_not_current](../../../../../MathematicalLogicAndFoundations/GeneralLogic/DependencyRevision.lean/declarations/changed-snapshot-receipt-not-current.md) | 285 | `result-track:964c64c2e766f93d0aa52bfa4a7aca44da08cf1ad7c049cc3b584612360cc8c8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9c668a9eac8799158735f101a0cb9a489cbfaebdf6432587531d2b04d8b9d7a7 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/DependencyRevision.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/DependencyRevision__SourceOccurrence22718498a8106883d8613c60.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
