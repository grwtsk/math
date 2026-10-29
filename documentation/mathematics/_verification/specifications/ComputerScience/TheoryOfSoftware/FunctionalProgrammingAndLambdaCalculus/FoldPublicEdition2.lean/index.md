# Verification target: Fold Public Edition2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "60b7649ee68d36fc9ae141f6bc43488e607f34cd",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Fold/Varianta8072fe3d015a9b9318cbcd2c49af11dfb5588bfa7298b1b9926b70177a17acc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FoldPublicEdition2.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FoldPublicEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `60b7649ee68d36fc9ae141f6bc43488e607f34cd`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Fold/Varianta8072fe3d015a9b9318cbcd2c49af11dfb5588bfa7298b1b9926b70177a17acc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Fold/Varianta8072fe3d015a9b9318cbcd2c49af11dfb5588bfa7298b1b9926b70177a17acc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [dfoldrM_loop_zero](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FoldPublicEdition2.lean/declarations/dfoldrm-loop-zero.md) | 17 | `result-track:48c829dac6fa63968030fa84464bca189479fea7e04ff635967993098d4bea40` |
| 2 | `theorem` | [dfoldrM_loop_succ](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FoldPublicEdition2.lean/declarations/dfoldrm-loop-succ.md) | 20 | `result-track:b3285a34a9fe705eb527ac6fa40ae6c0d247eb5b2bfc8b1b03a0649cdc49c505` |
| 3 | `theorem` | [dfoldrM_loop](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FoldPublicEdition2.lean/declarations/dfoldrm-loop.md) | 25 | `result-track:a14678e7a683749bff4900dbdac0a388c7ac5d342033a1e30d255c60d104e1d6` |
| 4 | `theorem` | [dfoldrM_zero](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FoldPublicEdition2.lean/declarations/dfoldrm-zero.md) | 37 | `result-track:a52ca9741314d81662d91a6ba0288ac3ed3fc67410b3c479c75eb57072473cf3` |
| 5 | `theorem` | [dfoldrM_succ](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FoldPublicEdition2.lean/declarations/dfoldrm-succ.md) | 40 | `result-track:133b5a72ac6eefe24d89085b81c4d112c16aaa52522b2d7a5b0c966cd752f233` |
| 6 | `theorem` | [dfoldrM_eq_foldrM](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FoldPublicEdition2.lean/declarations/dfoldrm-eq-foldrm.md) | 43 | `result-track:aa309c392b2559d9ff4c8eb9e03c3c803228cf33b38719facb9166139a2dd5b8` |
| 7 | `theorem` | [dfoldr_eq_dfoldrM](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FoldPublicEdition2.lean/declarations/dfoldr-eq-dfoldrm.md) | 49 | `result-track:ceef359ff00bc5fe32a861aaf706ccf522e29e00ecfb5a7dedd3d5b116270809` |
| 8 | `theorem` | [dfoldr_zero](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FoldPublicEdition2.lean/declarations/dfoldr-zero.md) | 54 | `result-track:79a814bc62236579d95a1c4bf8c4477e07c851c1d8d9850ab119b706f52249e6` |
| 9 | `theorem` | [dfoldr_succ](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FoldPublicEdition2.lean/declarations/dfoldr-succ.md) | 57 | `result-track:64f999db8602fbb9b264ec8dd60fd7408048d6cb57e4c683c729941386d42292` |
| 10 | `theorem` | [dfoldr_succ_last](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FoldPublicEdition2.lean/declarations/dfoldr-succ-last.md) | 61 | `result-track:3302c1c55c255439a28f07dc31ac86ddf95c50134314506129b033eba4145b5b` |
| 11 | `theorem` | [dfoldr_eq_foldr](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FoldPublicEdition2.lean/declarations/dfoldr-eq-foldr.md) | 68 | `result-track:bb767538fb4d63d89b32b57203631ee29dfd10b63f86dd629fc218f577026159` |
| 12 | `theorem` | [dfoldlM_loop_lt](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FoldPublicEdition2.lean/declarations/dfoldlm-loop-lt.md) | 76 | `result-track:b5a97f2dadb21dea363051db81bbf4952d0b2e2510f5d39c49e2b4650f88a84a` |
| 13 | `theorem` | [dfoldlM_loop_eq](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FoldPublicEdition2.lean/declarations/dfoldlm-loop-eq.md) | 81 | `result-track:8816e33216e7dfc477291d08b8be4340002e702d919461b3b8e08e3e015f6aec` |
| 14 | `theorem` | [dfoldlM_zero](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FoldPublicEdition2.lean/declarations/dfoldlm-zero.md) | 86 | `result-track:27a5922905f63d573f41eec684ea5f48c6fdd3054e34b559b4a4725646149c05` |
| 15 | `theorem` | [dfoldlM_loop](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FoldPublicEdition2.lean/declarations/dfoldlm-loop.md) | 89 | `result-track:7aeaeeb1cea6935cd146059500e020a4607617ff6465f74399bfa9a8008bf711` |
| 16 | `theorem` | [dfoldlM_succ](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FoldPublicEdition2.lean/declarations/dfoldlm-succ.md) | 102 | `result-track:a02e97249b4550387d551508d44caa862ab8e21b3eb6c660d355eb0937f0c05d` |
| 17 | `theorem` | [dfoldlM_eq_foldlM](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FoldPublicEdition2.lean/declarations/dfoldlm-eq-foldlm.md) | 106 | `result-track:4ca90f52bc37d52f23351f19a21ba49fd8e96c503d69d34936e7d42e0a00f8e8` |
| 18 | `theorem` | [dfoldl_zero](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FoldPublicEdition2.lean/declarations/dfoldl-zero.md) | 116 | `result-track:fed097f4963adcf1b34c03b15d567e89aee3d7cb8dd4069f7c35ce92a585dbe4` |
| 19 | `theorem` | [dfoldl_succ](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FoldPublicEdition2.lean/declarations/dfoldl-succ.md) | 119 | `result-track:fdeb23d0bdcaa94b9aa120764b2202f286db6c147a1d8b5e92fa3667aa15a84d` |
| 20 | `theorem` | [dfoldl_succ_last](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FoldPublicEdition2.lean/declarations/dfoldl-succ-last.md) | 123 | `result-track:6b96a36d015b7a3771d93e4158efaa5cafbeca4cbe647ffa714b472363fe4b8f` |
| 21 | `theorem` | [dfoldl_eq_dfoldlM](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FoldPublicEdition2.lean/declarations/dfoldl-eq-dfoldlm.md) | 130 | `result-track:9448a3ed032338c93c15c5bb68c20bef2b1db2a08a0414d4acf544e04dae16a3` |
| 22 | `theorem` | [dfoldl_eq_foldl](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FoldPublicEdition2.lean/declarations/dfoldl-eq-foldl.md) | 133 | `result-track:e8e598478efee8f86cb73e6dff4e01ee4f7709e1c15ec71e437903ceaf3528e8` |
| 23 | `theorem` | [foldl_eq_foldl_finRange](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FoldPublicEdition2.lean/declarations/foldl-eq-foldl-finrange.md) | 143 | `result-track:5f837c139d228f17961952ad0b1f2e6d5c553bab8c9d528741f93994188917c7` |
| 24 | `theorem` | [foldr_eq_foldr_finRange](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FoldPublicEdition2.lean/declarations/foldr-eq-foldr-finrange.md) | 149 | `result-track:cb9bf4fac97cb4e2b31b6831a90c5a09603530239bd0746b130d31257dc4b755` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2b5a10ed3a947ec054457f9b633485416d96f095ad23690da2ce7282bcd36f4f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Fold/Varianta8072fe3d015a9b9318cbcd2c49af11dfb5588bfa7298b1b9926b70177a17acc.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Fold/Varianta8072fe3d015a9b9318cbcd2c49af11dfb5588bfa7298b1b9926b70177a17acc.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
