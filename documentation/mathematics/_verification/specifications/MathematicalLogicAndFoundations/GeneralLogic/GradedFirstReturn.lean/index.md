# Verification target: Graded First Return

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "406dc1320343cc8e0c1edc73520aa1b3d66b6595",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/GradedFirstReturn/Variantd996964d43041ab68360e5d748840975a3203668a148874798b7775c977a208c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/GeneralLogic/GradedFirstReturn.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/GeneralLogic/GradedFirstReturn.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `406dc1320343cc8e0c1edc73520aa1b3d66b6595`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/GradedFirstReturn/Variantd996964d43041ab68360e5d748840975a3203668a148874798b7775c977a208c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/GradedFirstReturn/Variantd996964d43041ab68360e5d748840975a3203668a148874798b7775c977a208c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `DAF.FiniteDynamics.FirstReturn` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [GradedValid](../../../../../MathematicalLogicAndFoundations/GeneralLogic/GradedFirstReturn.lean/declarations/gradedvalid.md) | 33 | `declaration-track:81d8c75073bb9a6c8ab56d13ca9466671eb510258c15a10ca5686d261c8c77e9` |
| 2 | `def` | [gradedFirstReturnPerm](../../../../../MathematicalLogicAndFoundations/GeneralLogic/GradedFirstReturn.lean/declarations/gradedfirstreturnperm.md) | 37 | `declaration-track:81321e144f1910b616fa82ce0ecb9ab195d88e236d456076df1e2ba7f70df8a0` |
| 3 | `theorem` | [gradedFirstReturnPerm_grade](../../../../../MathematicalLogicAndFoundations/GeneralLogic/GradedFirstReturn.lean/declarations/gradedfirstreturnperm-grade.md) | 43 | `result-track:e4c51d51392e9c35b5c8f55006614895c99a189fb9e40bc7b6107c92b5f07ba6` |
| 4 | `theorem` | [gradedFirstReturnPerm_value](../../../../../MathematicalLogicAndFoundations/GeneralLogic/GradedFirstReturn.lean/declarations/gradedfirstreturnperm-value.md) | 50 | `result-track:0b8d89a18b4eb5e0948d7a59d96904fcb9b32bee9a6c310c548425c2af089233` |
| 5 | `theorem` | [gradedFirstReturnPerm_bijective](../../../../../MathematicalLogicAndFoundations/GeneralLogic/GradedFirstReturn.lean/declarations/gradedfirstreturnperm-bijective.md) | 58 | `result-track:d7bd63d7eedb7bd7aff7747cb5b7ced5e4c66fd2afe8a9e86e3323f8288df013` |
| 6 | `theorem` | [gradedFirstReturnPerm_symm](../../../../../MathematicalLogicAndFoundations/GeneralLogic/GradedFirstReturn.lean/declarations/gradedfirstreturnperm-symm.md) | 63 | `result-track:94ba0145e4eba2540ceca234f3000cbdae5ebb12b48fc1d8097d12451f7791a5` |
| 7 | `def` | [transportGradedFirstReturn](../../../../../MathematicalLogicAndFoundations/GeneralLogic/GradedFirstReturn.lean/declarations/transportgradedfirstreturn.md) | 73 | `declaration-track:4db1a5d50476c53103b56833d3b513e7eafef8d0e18d7ca24477ad3d72281f51` |
| 8 | `theorem` | [transportGradedFirstReturn_apply](../../../../../MathematicalLogicAndFoundations/GeneralLogic/GradedFirstReturn.lean/declarations/transportgradedfirstreturn-apply.md) | 80 | `result-track:688670d855821c32cb4b1aaca719355155a59d6fa66e2c1a3027713da3fd21d0` |
| 9 | `theorem` | [transportGradedFirstReturn_bijective](../../../../../MathematicalLogicAndFoundations/GeneralLogic/GradedFirstReturn.lean/declarations/transportgradedfirstreturn-bijective.md) | 88 | `result-track:068d0d243dd124198592193791094282cae77a7547a310f4019939498b8a4341` |
| 10 | `theorem` | [transportGradedFirstReturn_preserves_grade](../../../../../MathematicalLogicAndFoundations/GeneralLogic/GradedFirstReturn.lean/declarations/transportgradedfirstreturn-preserves-grade.md) | 95 | `result-track:32f59cea82fa8cc65188bdf37b0c50b62e90d1b395fbcda038978d946e938f03` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f31b1d07472a063dcfb9215866d147de1c09ad6dc9c789d69dda0661580fdf71 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/GradedFirstReturn/Variantd996964d43041ab68360e5d748840975a3203668a148874798b7775c977a208c.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/GradedFirstReturn/Variantd996964d43041ab68360e5d748840975a3203668a148874798b7775c977a208c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
