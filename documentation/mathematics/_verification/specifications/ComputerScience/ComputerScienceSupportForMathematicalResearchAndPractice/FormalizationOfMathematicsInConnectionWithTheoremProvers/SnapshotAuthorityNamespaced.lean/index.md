# Verification target: Snapshot Authority Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b851e6deb9b4e409c6fc7f8ff6e4be20a81e7c8e",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SnapshotAuthority/Variante725558593ba7807e0896b07045048e9d60f2e8efb0be7dd2783319bebb86869.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SnapshotAuthorityNamespaced.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SnapshotAuthorityNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b851e6deb9b4e409c6fc7f8ff6e4be20a81e7c8e`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SnapshotAuthority/Variante725558593ba7807e0896b07045048e9d60f2e8efb0be7dd2783319bebb86869.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SnapshotAuthority/Variante725558593ba7807e0896b07045048e9d60f2e8efb0be7dd2783319bebb86869.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.Core.SemanticIdentity` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [SnapshotStatus](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SnapshotAuthorityNamespaced.lean/declarations/snapshotstatus.md) | 28 | `declaration-track:1c2e8539c492599e7de96d0386ec3154e081d677ed2d632d8656b76d4a1a448f` |
| 2 | `structure` | [ProjectionSnapshot](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SnapshotAuthorityNamespaced.lean/declarations/projectionsnapshot.md) | 36 | `declaration-track:156bc98c963c21ca8f8f782d7eb6a5170ba3c1a4f3d2acfc3aeb157ed6571212` |
| 3 | `inductive` | [SnapshotEventKind](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SnapshotAuthorityNamespaced.lean/declarations/snapshoteventkind.md) | 48 | `declaration-track:7c652c71b1e4570b17077bcef21a6815a474ede5c8d25773cbb387b2bbc9d4f3` |
| 4 | `structure` | [SnapshotAuthorityEvent](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SnapshotAuthorityNamespaced.lean/declarations/snapshotauthorityevent.md) | 56 | `declaration-track:3ebf6191a7a792f9662b4460c3a87200d5d14757315d01fdef760694cbce1a2e` |
| 5 | `structure` | [CommittedSnapshotRoot](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SnapshotAuthorityNamespaced.lean/declarations/committedsnapshotroot.md) | 69 | `declaration-track:cea3bcea5c2f1d98a33ff70ce4caec54e686e8e837506932de42f845e80ccf98` |
| 6 | `inductive` | [SnapshotStatusTransition](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SnapshotAuthorityNamespaced.lean/declarations/snapshotstatustransition.md) | 77 | `declaration-track:6d96390e83054cf7f728e893784b310657834e4c9833ddd0b5c719784e7f693b` |
| 7 | `inductive` | [SnapshotEventTransition](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SnapshotAuthorityNamespaced.lean/declarations/snapshoteventtransition.md) | 96 | `declaration-track:8ce7e5dda414a1003596c211fe7c44f5a967acca65568e69f6b92723a639aef0` |
| 8 | `theorem` | [statusTransition](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SnapshotAuthorityNamespaced.lean/declarations/statustransition.md) | 114 | `result-track:4431b451d535c3ebdb8eb6b48033fc1805a7a4604329a149bc2fcc50341e2cda` |
| 9 | `theorem` | [into_active_is_activation](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SnapshotAuthorityNamespaced.lean/declarations/into-active-is-activation.md) | 128 | `result-track:1f5ae969c0a0123de310a5d1cd23a709aaf417a441fa83b0bf735eb5bc0705ed` |
| 10 | `theorem` | [revokedStale_terminal](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SnapshotAuthorityNamespaced.lean/declarations/revokedstale-terminal.md) | 137 | `result-track:6f518d61e3bb6dca63424f72df0eb00783f80585ac4673168fa6aaa62ad7adec` |
| 11 | `theorem` | [superseded_terminal](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SnapshotAuthorityNamespaced.lean/declarations/superseded-terminal.md) | 145 | `result-track:057debdf1d323fa2be469d27fe87519e75419b6b4c44861d7fca88b328d13c0f` |
| 12 | `theorem` | [revokedStale_cannot_reactivate](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SnapshotAuthorityNamespaced.lean/declarations/revokedstale-cannot-reactivate.md) | 155 | `result-track:8c9a44dec1641460492b8b92e53bad96c21681744f47cf86c1417fbaeb72b73e` |
| 13 | `theorem` | [superseded_cannot_reactivate](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SnapshotAuthorityNamespaced.lean/declarations/superseded-cannot-reactivate.md) | 161 | `result-track:bd5d4358773066a2f6eec8b9b0e159a8e466c0298deca47bd97b02e16a72b4cc` |
| 14 | `inductive` | [CommittedSnapshotReplay](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SnapshotAuthorityNamespaced.lean/declarations/committedsnapshotreplay.md) | 174 | `declaration-track:d54fb5769888e1fe9842ba9bcd0aa1d22a1060d76b10b32c0e3929c1238f71ac` |
| 15 | `theorem` | [targets_snapshot](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SnapshotAuthorityNamespaced.lean/declarations/targets-snapshot.md) | 202 | `result-track:027aabcde7e5a9b73b5d63cca19fefa00510008484ca49c48fdd8ae24d4a219e` |
| 16 | `theorem` | [active_head_is_activation](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SnapshotAuthorityNamespaced.lean/declarations/active-head-is-activation.md) | 215 | `result-track:90f1d39687ae1965cd61976bc1eb9601a9f0f310925746660c8b36d2fabf3382` |
| 17 | `theorem` | [revokedStale_has_no_extension](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SnapshotAuthorityNamespaced.lean/declarations/revokedstale-has-no-extension.md) | 228 | `result-track:1c6b02ac08bc34807d2d83f676e02ae7b0262c533e1e5f902e56d44c62b617a5` |
| 18 | `theorem` | [superseded_has_no_extension](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SnapshotAuthorityNamespaced.lean/declarations/superseded-has-no-extension.md) | 238 | `result-track:7ca92ad1f2108a351efb80f15767db58d95c6822ac1cb985fab0196c87bf0872` |
| 19 | `structure` | [VerifiedActiveSnapshot](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SnapshotAuthorityNamespaced.lean/declarations/verifiedactivesnapshot.md) | 253 | `declaration-track:c47eceefbaf1af6cb8f91f86ed865e7c5b3d598f8bd7af670504a22540bd6adc` |
| 20 | `def` | [head](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SnapshotAuthorityNamespaced.lean/declarations/head.md) | 270 | `declaration-track:e4a58c551190dbcda0c44d26a832aba1a8dfe974cf240cdf3776abcabeebe4d7` |
| 21 | `def` | [sequence](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SnapshotAuthorityNamespaced.lean/declarations/sequence.md) | 276 | `declaration-track:8e9afadd1f6bb66abef96a7e58408f1c62927e9a8b37858bd0e1252337cb1e49` |
| 22 | `def` | [epoch](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SnapshotAuthorityNamespaced.lean/declarations/epoch.md) | 282 | `declaration-track:5c4ee5b41eba2a263e7ef4f3a0d39f1b450cb31b1ca31da4dba3f6969658045d` |
| 23 | `def` | [event](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SnapshotAuthorityNamespaced.lean/declarations/event.md) | 288 | `declaration-track:79e356bc3dff19e6f5529913bd9eedefd4094da45a22474c583261827cc4b939` |
| 24 | `theorem` | [replay](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SnapshotAuthorityNamespaced.lean/declarations/replay.md) | 294 | `result-track:83241d22294258d6b543ff2b8306c59c56910cff51e36f0eaf9755cfa49fa680` |
| 25 | `theorem` | [event_targets_snapshot](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SnapshotAuthorityNamespaced.lean/declarations/event-targets-snapshot.md) | 301 | `result-track:5ccdd42c8a41dd8b6bf92538b0b095086eff3a1a50ab137be9c86d509ed248de` |
| 26 | `theorem` | [event_is_activation](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SnapshotAuthorityNamespaced.lean/declarations/event-is-activation.md) | 308 | `result-track:5507b8cb8626f16c0a106640a12e6606e437a7307742c5bbff11e113f101b6cc` |
| 27 | `structure` | [SnapshotSuccessor](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SnapshotAuthorityNamespaced.lean/declarations/snapshotsuccessor.md) | 320 | `declaration-track:fa9edb34b900f6347142da56b4ac8c2703cabaf00858d1edd9f9b56eef231ed0` |
| 28 | `structure` | [HistoricallyValidAtCreation](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SnapshotAuthorityNamespaced.lean/declarations/historicallyvalidatcreation.md) | 328 | `declaration-track:a4b60086f1d20fb0cd09428ea32167df3071fd8b21a6a0e06eca492b3e14a0ed` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=11df96d66f94c987df9a42bbdc168831a5c425c835c2641eb1f93f57d984072b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SnapshotAuthority/Variante725558593ba7807e0896b07045048e9d60f2e8efb0be7dd2783319bebb86869.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SnapshotAuthority/Variante725558593ba7807e0896b07045048e9d60f2e8efb0be7dd2783319bebb86869.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
