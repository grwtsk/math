# Verification target: Test Stress Multivar

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "699effbc2d2fae7e88b3f55cb297615d71407d18",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TestStressMultivar/Variant59d9c813be4bb8b8ec83f81234d0285d2f028c6745267571c6e556cbf6aae7f9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/TestStressMultivar.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/TestStressMultivar.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `699effbc2d2fae7e88b3f55cb297615d71407d18`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TestStressMultivar/Variant59d9c813be4bb8b8ec83f81234d0285d2f028c6745267571c6e556cbf6aae7f9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TestStressMultivar/Variant59d9c813be4bb8b8ec83f81234d0285d2f028c6745267571c6e556cbf6aae7f9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `LeanCert` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [I01](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/TestStressMultivar.lean/declarations/i01.md) | 9 | `declaration-track:3af6b96381d56164c64f6097fdcb97ae88fa8d42cdaff8adc984e893cc848494` |
| 2 | `def` | [B01_2D](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/TestStressMultivar.lean/declarations/b01-2d.md) | 10 | `declaration-track:ce83e4adb728f84aaa193dd944a642275bb9a8d10a9471db203b6b16a3f712d2` |
| 3 | `def` | [B01_3D](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/TestStressMultivar.lean/declarations/b01-3d.md) | 11 | `declaration-track:6beeb47b25a7fd07eea8e0944790649d21f5fe103ea9eb211f184ae3c4965e84` |
| 4 | `theorem` | [stress_opt_2d_sum_sq](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/TestStressMultivar.lean/declarations/stress-opt-2d-sum-sq.md) | 14 | `result-track:44f45e1450809d09e887c64a15319562028beb756d45a0dcfa1a6c0e62959504` |
| 5 | `theorem` | [stress_opt_2d_xy_nonneg](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/TestStressMultivar.lean/declarations/stress-opt-2d-xy-nonneg.md) | 26 | `result-track:2b4b949083ad61bcaa334b131776a3c0e488c1de1864313af0574be5edb36d3a` |
| 6 | `theorem` | [stress_opt_3d_sum_sq](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/TestStressMultivar.lean/declarations/stress-opt-3d-sum-sq.md) | 35 | `result-track:c0c57556bd81fce868cde5888e7cca2542d2e296a9f9294dc90b79e9cbdfffd6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ef3e1f438bd763849df4719dbc6cb398e8365396695d205b6b7c08f4828dc088 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TestStressMultivar/Variant59d9c813be4bb8b8ec83f81234d0285d2f028c6745267571c6e556cbf6aae7f9.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TestStressMultivar/Variant59d9c813be4bb8b8ec83f81234d0285d2f028c6745267571c6e556cbf6aae7f9.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
