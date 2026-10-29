# Verification target: Modular Forms Slash Actions Slash Actions Source Edition1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "53d4e9514f4526804a39e2ecdae9da07b91d37b6",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/SlashActions/Variant8da05f61aa246bc784e3e67b5fcca196980fe9470c881cabb6aece31d0e0ad4a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../NumberTheory/ModularFormsSlashActionsSlashActionsSourceEdition1.lean/index.md) · [Full source](../../../../NumberTheory/ModularFormsSlashActionsSlashActionsSourceEdition1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `53d4e9514f4526804a39e2ecdae9da07b91d37b6`.

Source path: `GRWTSK/Algebra/GroupTheory/SlashActions/Variant8da05f61aa246bc784e3e67b5fcca196980fe9470c881cabb6aece31d0e0ad4a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/SlashActions/Variant8da05f61aa246bc784e3e67b5fcca196980fe9470c881cabb6aece31d0e0ad4a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Complex.UpperHalfPlane.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.GeneralLinearGroup` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.SpecialLinearGroup` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `macro_rules` | [(anonymous)](../../../../NumberTheory/ModularFormsSlashActionsSlashActionsSourceEdition1.lean/declarations/macro-rules.md) | 32 | `declaration-track:00e52ec3021868da2ede87366a65088419655de3fd228cdee55034a32cbbb3e2` |
| 2 | `class` | [SlashAction](../../../../NumberTheory/ModularFormsSlashActionsSlashActionsSourceEdition1.lean/declarations/slashaction.md) | 45 | `declaration-track:00f6cb542ee7c9ef042a30c9250b68e6fd8410cbea456db930c9c0f7343b061b` |
| 3 | `theorem` | [SlashAction.neg_slash](../../../../NumberTheory/ModularFormsSlashActionsSlashActionsSourceEdition1.lean/declarations/slashaction-neg-slash.md) | 61 | `result-track:a1872d3b6ad3aa545cac562cff4e044b20e33abcb42b93f9901fce7e280e4f92` |
| 4 | `theorem` | [SlashAction.smul_slash_of_tower](../../../../NumberTheory/ModularFormsSlashActionsSlashActionsSourceEdition1.lean/declarations/slashaction-smul-slash-of-tower.md) | 68 | `result-track:0a205cafe761ccf48da8617e570adaa8fe62819b38b3a731221e86f74e29b7be` |
| 5 | `def` | [monoidHomSlashAction](../../../../NumberTheory/ModularFormsSlashActionsSlashActionsSourceEdition1.lean/declarations/monoidhomslashaction.md) | 78 | `declaration-track:7038f2b0dcfd0d2bab44cab10141b9e3a5b96a14eb027bd8ac581bed7353742b` |
| 6 | `def` | [slash](../../../../NumberTheory/ModularFormsSlashActionsSlashActionsSourceEdition1.lean/declarations/slash.md) | 93 | `declaration-track:b5198b15e41c418e57aa7d75d48d6d17ac18d380a01d58bde0541da741d46d40` |
| 7 | `theorem` | [slash_mul](../../../../NumberTheory/ModularFormsSlashActionsSlashActionsSourceEdition1.lean/declarations/slash-mul.md) | 104 | `result-track:d0093fc9c371198b54b622f2579f30f237e17365b1fbf63eab320cb50fe79c88` |
| 8 | `theorem` | [add_slash](../../../../NumberTheory/ModularFormsSlashActionsSlashActionsSourceEdition1.lean/declarations/add-slash.md) | 121 | `result-track:08dc03df448eeeb3c4312ef3362ee3fab03963c81828905a219c3e89697eee50` |
| 9 | `theorem` | [slash_one](../../../../NumberTheory/ModularFormsSlashActionsSlashActionsSourceEdition1.lean/declarations/slash-one.md) | 127 | `result-track:9e7e49b2b4f9cd46543b4778678c6829b7468489f2a0a3f1418d33c55b0aaf81` |
| 10 | `theorem` | [smul_slash](../../../../NumberTheory/ModularFormsSlashActionsSlashActionsSourceEdition1.lean/declarations/smul-slash.md) | 132 | `result-track:809cc850fb6c5b3e42575fe8f0af7b6ce9159e3cae3debff2cc90c85f52471cd` |
| 11 | `theorem` | [zero_slash](../../../../NumberTheory/ModularFormsSlashActionsSlashActionsSourceEdition1.lean/declarations/zero-slash.md) | 140 | `result-track:3ffc5abdc1f5d4547deb23410f169c5044da2ec2e0a254086da7b8ece56d7808` |
| 12 | `instance` | [(anonymous)](../../../../NumberTheory/ModularFormsSlashActionsSlashActionsSourceEdition1.lean/declarations/instance.md) | 143 | `declaration-track:c1a6df9463704641aaf1180ae8ca4257646f83fe36e779e7121ecf1cb15be821` |
| 13 | `theorem` | [slash_def](../../../../NumberTheory/ModularFormsSlashActionsSlashActionsSourceEdition1.lean/declarations/slash-def.md) | 153 | `result-track:1199743f338f605c0ac8da6aa20a8544da00a612180764cc1b13e830970820ce` |
| 14 | `instance` | [subgroupAction](../../../../NumberTheory/ModularFormsSlashActionsSlashActionsSourceEdition1.lean/declarations/subgroupaction.md) | 157 | `declaration-track:45df37f10f83b0a23ffe4dca1e3a93ffd5edc868f4863bea7675a9f966ed3bbf` |
| 15 | `theorem` | [subgroup_slash](../../../../NumberTheory/ModularFormsSlashActionsSlashActionsSourceEdition1.lean/declarations/subgroup-slash.md) | 164 | `result-track:ef35d11efa1b38d296dee76634701baca5c5754c39d964ebdb0cad6972fbb848` |
| 16 | `instance` | [SLAction](../../../../NumberTheory/ModularFormsSlashActionsSlashActionsSourceEdition1.lean/declarations/slaction.md) | 168 | `declaration-track:9cbdbac752ed6afc1eb625223eececdf8150e9a0b9e674719a3296e505efc788` |
| 17 | `theorem` | [SL_slash](../../../../NumberTheory/ModularFormsSlashActionsSlashActionsSourceEdition1.lean/declarations/sl-slash.md) | 176 | `result-track:9806c57379c88886c23db17cd6ce77ebc934730bdcb340e0427066bda11366bc` |
| 18 | `theorem` | [is_invariant_one](../../../../NumberTheory/ModularFormsSlashActionsSlashActionsSourceEdition1.lean/declarations/is-invariant-one.md) | 183 | `result-track:f003ebc7716edbe026ed048cd43fe18b4df0d8b79eef881bdfc69b3568347b89` |
| 19 | `theorem` | [slash_action_eq'_iff](../../../../NumberTheory/ModularFormsSlashActionsSlashActionsSourceEdition1.lean/declarations/slash-action-eq-iff.md) | 193 | `result-track:5b152e3847811e9ae8bd80a4080c36a5c3f137a2bd355c47e4bb775e37f77913` |
| 20 | `theorem` | [mul_slash](../../../../NumberTheory/ModularFormsSlashActionsSlashActionsSourceEdition1.lean/declarations/mul-slash.md) | 204 | `result-track:80e61f3ceaa6f98caba3d1b286e30d0f1b4116c122f569acc1f086a17da6e779` |
| 21 | `theorem` | [mul_slash_SL2](../../../../NumberTheory/ModularFormsSlashActionsSlashActionsSourceEdition1.lean/declarations/mul-slash-sl2.md) | 226 | `result-track:e83b6aceb2132d743028a670647abd2e745b3458a2d1bbee6cf63abc8dcfaf8f` |
| 22 | `theorem` | [mul_slash_subgroup](../../../../NumberTheory/ModularFormsSlashActionsSlashActionsSourceEdition1.lean/declarations/mul-slash-subgroup.md) | 237 | `result-track:fd28326903098b0eab2f52a76cdf37f44400b724285099bd11b8a9d9e6785c01` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d482e57d6f06cd5286aa58ed983aeb0cbc1765dfd7311e154034127e25f789c1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/SlashActions/Variant8da05f61aa246bc784e3e67b5fcca196980fe9470c881cabb6aece31d0e0ad4a.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/SlashActions/Variant8da05f61aa246bc784e3e67b5fcca196980fe9470c881cabb6aece31d0e0ad4a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
