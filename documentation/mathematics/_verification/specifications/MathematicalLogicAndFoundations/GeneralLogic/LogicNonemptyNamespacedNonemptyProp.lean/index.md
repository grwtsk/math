# Verification target: Logic Nonempty Namespaced Nonempty Prop

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "967b4d9568a8ba984e348c87aa38da712ae7f2a8",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Nonempty/Varianta65dbb3e11def6df21ac4ff5a9e3a8b8e17b1998c159d7f271e6d9a6974822d0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicNonemptyNamespacedNonemptyProp.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicNonemptyNamespacedNonemptyProp.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `967b4d9568a8ba984e348c87aa38da712ae7f2a8`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Nonempty/Varianta65dbb3e11def6df21ac4ff5a9e3a8b8e17b1998c159d7f271e6d9a6974822d0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Nonempty/Varianta65dbb3e11def6df21ac4ff5a9e3a8b8e17b1998c159d7f271e6d9a6974822d0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Init.ZeroOne` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicNonemptyNamespacedNonemptyProp.lean/declarations/instance.md) | 36 | `declaration-track:1f69e1a0d896d24c7262016555e7d36707e5c1e8e078db69bc512cc1e4302377` |
| 2 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicNonemptyNamespacedNonemptyProp.lean/declarations/instance-source-edition-2.md) | 39 | `declaration-track:8e9f6f17df987d97a56b7c9ee7cab9c282663d81f7240a2e92e28f07b39cf5c3` |
| 3 | `theorem` | [exists_true_iff_nonempty](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicNonemptyNamespacedNonemptyProp.lean/declarations/exists-true-iff-nonempty.md) | 42 | `result-track:d766921484da73dd8b1749542f426e0dec74d0c690e365ffaf239a728489d174` |
| 4 | `theorem` | [nonempty_Prop](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicNonemptyNamespacedNonemptyProp.lean/declarations/nonempty-prop.md) | 47 | `result-track:72505bef92cf097eaaf19c724b8da08883bdb44fbc3106d6272c3f921b228fa7` |
| 5 | `theorem` | [not_nonempty_iff_imp_false](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicNonemptyNamespacedNonemptyProp.lean/declarations/not-nonempty-iff-imp-false.md) | 51 | `result-track:ae7c1e131bfd14d31577816789c9d6d0170ef206e907bc70a328f3a0eda0a5e0` |
| 6 | `theorem` | [nonempty_sigma](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicNonemptyNamespacedNonemptyProp.lean/declarations/nonempty-sigma.md) | 56 | `result-track:a6737acfaf9d25a459513f2e58f4907d576064d0133877df4e4589f7ba442659` |
| 7 | `theorem` | [nonempty_psigma](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicNonemptyNamespacedNonemptyProp.lean/declarations/nonempty-psigma.md) | 61 | `result-track:ffb0f1dd24f038915552b62d4c25531f675dcf5e04c902e47679f185d5cd6fa4` |
| 8 | `theorem` | [nonempty_subtype](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicNonemptyNamespacedNonemptyProp.lean/declarations/nonempty-subtype.md) | 66 | `result-track:f55f598c2506ad042f78d6d2e4c073d08304b635d126440720d348f901223a69` |
| 9 | `theorem` | [nonempty_prod](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicNonemptyNamespacedNonemptyProp.lean/declarations/nonempty-prod.md) | 71 | `result-track:3771df86b9e2177e05fb236cbd084da4e0a5e6646aaa31854585f4e480a46f52` |
| 10 | `theorem` | [nonempty_pprod](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicNonemptyNamespacedNonemptyProp.lean/declarations/nonempty-pprod.md) | 76 | `result-track:acd98b6e50af525d044f3b61dfe323acfb8de0699caf7b9ae148e06e7b43b01f` |
| 11 | `theorem` | [nonempty_sum](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicNonemptyNamespacedNonemptyProp.lean/declarations/nonempty-sum.md) | 81 | `result-track:9f46f9cc89523a48961dec11b8bde26a80ac5b01c0baf83b692269e733320cc6` |
| 12 | `theorem` | [nonempty_psum](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicNonemptyNamespacedNonemptyProp.lean/declarations/nonempty-psum.md) | 94 | `result-track:efbe876cc1700913406ddea35bd0a5131ed8f3905f15488c90a7c01529261a12` |
| 13 | `theorem` | [nonempty_ulift](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicNonemptyNamespacedNonemptyProp.lean/declarations/nonempty-ulift.md) | 107 | `result-track:35084f70a5528749a95b80c9da738be5db420cd2a90836726726a8dd4dcd5292` |
| 14 | `theorem` | [nonempty_plift](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicNonemptyNamespacedNonemptyProp.lean/declarations/nonempty-plift.md) | 112 | `result-track:f209bbcd1e9bcf61e802f53e866fe244e5d5a20c9139f73717113b80e34049aa` |
| 15 | `theorem` | [Nonempty.forall](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicNonemptyNamespacedNonemptyProp.lean/declarations/nonempty-forall.md) | 117 | `result-track:2b638904283ff3dae5f110c0c3af7224e85d71d2c3f9380458796585bbbe132a` |
| 16 | `theorem` | [Nonempty.exists](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicNonemptyNamespacedNonemptyProp.lean/declarations/nonempty-exists.md) | 122 | `result-track:2917cfe7501fdd0e0d930c1e24dea7986ef70a84da41c2e8d6b5306d6e6455e9` |
| 17 | `def` | [Classical.inhabited_of_nonempty'](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicNonemptyNamespacedNonemptyProp.lean/declarations/classical-inhabited-of-nonempty.md) | 130 | `declaration-track:4e2e930291393b4a3f6e4ba994df8122239159016a105c8abec4047de5aeacfb` |
| 18 | `def` | [Nonempty.some](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicNonemptyNamespacedNonemptyProp.lean/declarations/nonempty-some.md) | 136 | `declaration-track:349d78dde050d5e6e79d286ea8aa25b0bb7ca82c9b8c896ecd448f7ef022af09` |
| 19 | `def` | [Classical.arbitrary](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicNonemptyNamespacedNonemptyProp.lean/declarations/classical-arbitrary.md) | 142 | `declaration-track:ecd843cc07a9b185bf63251424c7f420ce3ee5e32f23f6e91bbf1b6c9ffc1be4` |
| 20 | `theorem` | [Nonempty.map](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicNonemptyNamespacedNonemptyProp.lean/declarations/nonempty-map.md) | 148 | `result-track:4449c5c09cf42c79382426826844f13fada828e5e8618d3f9d8727ca51e62909` |
| 21 | `theorem` | [Nonempty.map2](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicNonemptyNamespacedNonemptyProp.lean/declarations/nonempty-map2.md) | 152 | `result-track:b2efeabd762a8a96116dfb303b51007b5c6674a3d19cfac8f3c2b7bc326d8fa9` |
| 22 | `theorem` | [Nonempty.congr](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicNonemptyNamespacedNonemptyProp.lean/declarations/nonempty-congr.md) | 157 | `result-track:4fb9d1f0f5ee3e60a5ee741fb9abf9442ab4d79e0d42e8259b2f4dac494e704a` |
| 23 | `theorem` | [Nonempty.elim_to_inhabited](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicNonemptyNamespacedNonemptyProp.lean/declarations/nonempty-elim-to-inhabited.md) | 161 | `result-track:d2fcc8400e4d5d2fb2d61e68a5585270f355c482014df571f05f80d4b32e82f3` |
| 24 | `instance` | [Prod.Nonempty](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicNonemptyNamespacedNonemptyProp.lean/declarations/prod-nonempty.md) | 166 | `declaration-track:e22a600666ecf7c55cb1e5686a06a16f1f286edf7d0825fc9075e008ce0561f6` |
| 25 | `instance` | [Pi.Nonempty](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicNonemptyNamespacedNonemptyProp.lean/declarations/pi-nonempty.md) | 169 | `declaration-track:fc7963a2ab605aa31aa4ef1706b3ef7b0578539e326fff387e08ef0ef7adbb6d` |
| 26 | `theorem` | [Classical.nonempty_pi](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicNonemptyNamespacedNonemptyProp.lean/declarations/classical-nonempty-pi.md) | 173 | `result-track:d7dcc13230a9d53b5b5e1ff5e710eca910efe692ce17d825185cb9eb42bcd825` |
| 27 | `theorem` | [subsingleton_of_not_nonempty](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicNonemptyNamespacedNonemptyProp.lean/declarations/subsingleton-of-not-nonempty.md) | 177 | `result-track:3cf55d38c0817a5004f82ff27ef9e7bd1875d4bebde71ba300e67b8564936aa3` |
| 28 | `theorem` | [Function.Surjective.nonempty](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicNonemptyNamespacedNonemptyProp.lean/declarations/function-surjective-nonempty.md) | 181 | `result-track:50adf09ab71dadb5bc2fdf9b04b2626c3fe6efa9224235297bc9401def3e7ddb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=bee427ab6cf1432fec1b663a87ac8fcabbdb97938276db88680559439ecad1b7 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Nonempty/Varianta65dbb3e11def6df21ac4ff5a9e3a8b8e17b1998c159d7f271e6d9a6974822d0.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/Nonempty/Varianta65dbb3e11def6df21ac4ff5a9e3a8b8e17b1998c159d7f271e6d9a6974822d0.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
