# Verification target: Critical Center Normalization Critical Center Normalization

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "69ae9da44a17fdd837efefacaadc66d39eb4c56f",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CriticalCenterNormalization/Variant52c3c305378004ccaf5994b4696333b6fec3b77036fc581eeaec6443814244c4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/CriticalCenterNormalizationCriticalCenterNormalization.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/CriticalCenterNormalizationCriticalCenterNormalization.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `69ae9da44a17fdd837efefacaadc66d39eb4c56f`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CriticalCenterNormalization/Variant52c3c305378004ccaf5994b4696333b6fec3b77036fc581eeaec6443814244c4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CriticalCenterNormalization/Variant52c3c305378004ccaf5994b4696333b6fec3b77036fc581eeaec6443814244c4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.DerivedSheaf.BaseCaseLFunction` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [CriticalCenterNormalization](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/CriticalCenterNormalizationCriticalCenterNormalization.lean/declarations/criticalcenternormalization.md) | 22 | `declaration-track:201891a56b7e17e33af0a191d88a8cb352297062aba08ebaabf15ef4132a4f5d` |
| 2 | `theorem` | [normalization_sends_raw_to_spectral](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/CriticalCenterNormalizationCriticalCenterNormalization.lean/declarations/normalization-sends-raw-to-spectral.md) | 31 | `result-track:1052d46218ac86963258c42aba48cdc8655c47c4ed701c9e815c9c5ebe46a695` |
| 3 | `theorem` | [normalization_matches_declared_center](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/CriticalCenterNormalizationCriticalCenterNormalization.lean/declarations/normalization-matches-declared-center.md) | 37 | `result-track:1edac00f586a81502faa90c2a4e28db3e565d4a50d13a2486d14b423ca03484f` |
| 4 | `structure` | [AffineCriticalShift](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/CriticalCenterNormalizationCriticalCenterNormalization.lean/declarations/affinecriticalshift.md) | 47 | `declaration-track:5b338fb0c1ccba360ba7d3a290bb99b4ecff4bb3ff6bdb36f5a9ed925885a343` |
| 5 | `def` | [AffineCriticalShift.normalize](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/CriticalCenterNormalizationCriticalCenterNormalization.lean/declarations/affinecriticalshift-normalize.md) | 53 | `declaration-track:3408da12fdc530baebedaacf10bcf5cbd19c0823b361aa1baf41cf1d5ea4f149` |
| 6 | `theorem` | [affine_shift_sends_raw_to_spectral](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/CriticalCenterNormalizationCriticalCenterNormalization.lean/declarations/affine-shift-sends-raw-to-spectral.md) | 59 | `result-track:7275d0f1974d450af4a4eb1ab509e6bf89069f51816ccb5353846dca002bf393` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5398b699806c333473815ca7513a1181ab9bc23d031ac23c8cf04ba0426eb7f5 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CriticalCenterNormalization/Variant52c3c305378004ccaf5994b4696333b6fec3b77036fc581eeaec6443814244c4.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CriticalCenterNormalization/Variant52c3c305378004ccaf5994b4696333b6fec3b77036fc581eeaec6443814244c4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
