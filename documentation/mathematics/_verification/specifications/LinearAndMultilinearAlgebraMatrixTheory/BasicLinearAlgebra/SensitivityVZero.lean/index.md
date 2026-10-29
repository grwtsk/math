# Verification target: Sensitivity VZero

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "46f94bda08682495ae6c3f83a879fa5df3d9e82b",
  "lexical_observation_count": 40,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Sensitivity/Variantd338ad98796c7c961dedf5eab7bb7e9b967dcf0e12d13787293c546aba28b901.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SensitivityVZero.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SensitivityVZero.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `46f94bda08682495ae6c3f83a879fa5df3d9e82b`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Sensitivity/Variantd338ad98796c7c961dedf5eab7bb7e9b967dcf0e12d13787293c546aba28b901.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Sensitivity/Variantd338ad98796c7c961dedf5eab7bb7e9b967dcf0e12d13787293c546aba28b901.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Normed.Module.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Real.Sqrt` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Dual.Lemmas` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.FiniteDimensional.Lemmas` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.ApplyFun` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FinCases` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Q](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SensitivityVZero.lean/declarations/q.md) | 57 | `declaration-track:82cd777a394af63d7b06709f35819e5742f4254ca1293a3dc455c331f6b1fe38` |
| 2 | `instance` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SensitivityVZero.lean/declarations/instance-source-edition-3.md) | 60 | `declaration-track:c4a6daf6fc9697916b723b26639ba41c4daecc06a9439768450f6ea929e622b6` |
| 3 | `instance` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SensitivityVZero.lean/declarations/instance-source-edition-4.md) | 62 | `declaration-track:c6e52d0b7c282663d58d53418971788e9de623e8cc90d3d4c81cfac2c2b08b74` |
| 4 | `def` | [π](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SensitivityVZero.lean/declarations/anonymous.md) | 66 | `declaration-track:5cd9e0d4351fe950deddd98abf0922e41610f5d3f7e70c569465dd91b6fdf85f` |
| 5 | `theorem` | [ext](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SensitivityVZero.lean/declarations/ext-source-edition-2.md) | 71 | `result-track:660eda1386055b5d3edff76fa0e8c516365ee2fe0e0ea11eccac5602ba0471fd` |
| 6 | `instance` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SensitivityVZero.lean/declarations/instance-source-edition-5.md) | 78 | `declaration-track:c77e05e38484418f0a64ee1a4b5f33d5b8a5b52213efafcb72c4d68ce77c7b88` |
| 7 | `theorem` | [card](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SensitivityVZero.lean/declarations/card.md) | 82 | `result-track:87ef7db6c5b968adad1fbce6ce4681a38eb6b66645069153ced7548abe2ac1d9` |
| 8 | `theorem` | [succ_n_eq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SensitivityVZero.lean/declarations/succ-n-eq.md) | 89 | `result-track:463371d6e8b3a65dbe29be9430e157835e3da62720adfb35caa6e9b34e77658a` |
| 9 | `def` | [adjacent](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SensitivityVZero.lean/declarations/adjacent.md) | 101 | `declaration-track:29d1d9b265e586bd1ae0b8d8e936261b6ee7708343ae9f5be6566ee94f772834` |
| 10 | `theorem` | [not_adjacent_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SensitivityVZero.lean/declarations/not-adjacent-zero.md) | 104 | `result-track:735c13805026850aaa92ec838b79490931a40643df58b2bd36e67f49b1ffd5f2` |
| 11 | `theorem` | [adj_iff_proj_eq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SensitivityVZero.lean/declarations/adj-iff-proj-eq.md) | 108 | `result-track:256e07535b4162bbe12e6dc045e541697c3306ec1bf1442fdd8333c03c743281` |
| 12 | `theorem` | [adj_iff_proj_adj](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SensitivityVZero.lean/declarations/adj-iff-proj-adj.md) | 123 | `result-track:899d979ae6f5465692b6f5374291d7e0ea877924928cfdbb760015ead20acf1d` |
| 13 | `theorem` | [adjacent.symm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SensitivityVZero.lean/declarations/adjacent-symm.md) | 146 | `result-track:c9516175de889a97b611387b3fbafb0037a16c9b94011705339b21ef1b915b7c` |
| 14 | `def` | [V](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SensitivityVZero.lean/declarations/v.md) | 155 | `declaration-track:88ead24bfbde2b3fdd490c2955f35e40724c039d59ba29d117186c89a732a499` |
| 15 | `theorem` | [V_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SensitivityVZero.lean/declarations/v-zero.md) | 160 | `result-track:f881701b56e0ff3e350f74e40c07f6dfbccf41d69eeff3fabee8e9964628bce5` |
| 16 | `theorem` | [V_succ](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SensitivityVZero.lean/declarations/v-succ.md) | 163 | `result-track:4a69c75c49d485564c428a6cca95b4fac5340890cd15d8bff9694e9586372bf7` |
| 17 | `theorem` | [ext](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SensitivityVZero.lean/declarations/ext.md) | 168 | `result-track:404db20f106e83bb94edf6dfef569267f8dc5793c8a00d7898689ea03a27fb7f` |
| 18 | `instance` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SensitivityVZero.lean/declarations/instance-source-edition-7.md) | 175 | `declaration-track:e4eabb0318e9062d841b5dd43043d07a6c23bdae8716f314c2a6006fdcd4dbda` |
| 19 | `instance` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SensitivityVZero.lean/declarations/instance.md) | 177 | `declaration-track:9d002451dc291c3de5cb8ff8190a6f6dde71d838fcab4afdd9c3f265f5c30dd1` |
| 20 | `instance` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SensitivityVZero.lean/declarations/instance-source-edition-6.md) | 179 | `declaration-track:d4cb85b9018ea5363df0540aa280e2a98f5e509ae877f2e8bdce0a99af0eb5e1` |
| 21 | `def` | [e](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SensitivityVZero.lean/declarations/e.md) | 184 | `declaration-track:51d9f94b8b1b46c8fdf9c048a70d6ec7dc5588e634a2bdbfb30a2c39542be7e0` |
| 22 | `theorem` | [e_zero_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SensitivityVZero.lean/declarations/e-zero-apply.md) | 189 | `result-track:bb2e1ea3f32e897677c29fe1816f63d05bbc3c7d73bbde9c799e5be9dca59a1e` |
| 23 | `def` | [ε](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SensitivityVZero.lean/declarations/anonymous-source-edition-2.md) | 193 | `declaration-track:ce835cbb1160685114f2ddbec9faeb3fe3e1547893fcd5d6540a47eae8c8b5de` |
| 24 | `theorem` | [duality](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SensitivityVZero.lean/declarations/duality.md) | 201 | `result-track:d4dbb162e0ff66072e9af588b92201b7ae7545c744e859f9e99e1dbe99b3db56` |
| 25 | `theorem` | [epsilon_total](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SensitivityVZero.lean/declarations/epsilon-total.md) | 212 | `result-track:750bb1543ebb3e919dd928e09ccd2924cdd7843e421c42b28042674120c6a2ee` |
| 26 | `theorem` | [dualBases_e_ε](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SensitivityVZero.lean/declarations/dualbases-e.md) | 231 | `result-track:d27ad0996825c73d88a920834e58e06fb18305ca10309f2460b2a288fb5c1d0d` |
| 27 | `theorem` | [dim_V](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SensitivityVZero.lean/declarations/dim-v.md) | 241 | `result-track:ab443a270fbe44d55e3b9702815689196bcbbb7311c930df13f58880d213fbee` |
| 28 | `instance` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SensitivityVZero.lean/declarations/instance-source-edition-2.md) | 248 | `declaration-track:c35a60b3f49485ce84c930db25fa83da12135358a57f2341856e9f4544166db3` |
| 29 | `theorem` | [finrank_V](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SensitivityVZero.lean/declarations/finrank-v.md) | 251 | `result-track:e9703b469f3e5ae6fddb505516d7d2dabddeae862954f8a262030a93c842283e` |
| 30 | `def` | [f](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SensitivityVZero.lean/declarations/f.md) | 260 | `declaration-track:28753a080be8d35d39180a849fafbae3522980477237f7c751abb2293ed138ba` |
| 31 | `theorem` | [f_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SensitivityVZero.lean/declarations/f-zero.md) | 271 | `result-track:6a83d393b74c3128fc4b74aeb09b315e3683a53e654d0dd30a43257942197f06` |
| 32 | `theorem` | [f_succ_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SensitivityVZero.lean/declarations/f-succ-apply.md) | 274 | `result-track:a0886a01c9cedd2451863013bf60cd08dbd1b99e54e9918b5df331b966be17eb` |
| 33 | `theorem` | [f_squared](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SensitivityVZero.lean/declarations/f-squared.md) | 285 | `result-track:00461e424095ebaf953730cb5eb14806106d2f6f60786a3a1c98a62c2173211c` |
| 34 | `theorem` | [f_matrix](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SensitivityVZero.lean/declarations/f-matrix.md) | 295 | `result-track:615cf9ab7c8149fb9974c61ab5da5d3d9b6e28aac915376089c82ac5fd19fa3b` |
| 35 | `def` | [g](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SensitivityVZero.lean/declarations/g.md) | 311 | `declaration-track:6f0f3e99227e387ff6e9136c9cef027f786eff5b16941dc188a095d78ff5b0de` |
| 36 | `theorem` | [g_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SensitivityVZero.lean/declarations/g-apply.md) | 322 | `result-track:a88eedfb36e56eb20f91aee8a6b66f13ecf79c326ad4eafde53c269c95a40b83` |
| 37 | `theorem` | [g_injective](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SensitivityVZero.lean/declarations/g-injective.md) | 325 | `result-track:fce2119aaea6a16a9bb0479db95b52bdc9847fb1df35d590f7b23cd7f54fa5f3` |
| 38 | `theorem` | [f_image_g](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SensitivityVZero.lean/declarations/f-image-g.md) | 331 | `result-track:acddec3ad3e63a28d2a28515c463beabd7e923c16e7c5ef12f36e1de05101edc` |
| 39 | `theorem` | [exists_eigenvalue](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SensitivityVZero.lean/declarations/exists-eigenvalue.md) | 374 | `result-track:7d7837cbba3921b3e73a6dbb009c229cc984f2f833d11e7107b838376d3d4537` |
| 40 | `theorem` | [huang_degree_theorem](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SensitivityVZero.lean/declarations/huang-degree-theorem.md) | 407 | `result-track:bed251e2261166362c260f3d19011481af627531eb10066e4df9e54606caeb39` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f104a1113f9d8f632d249483498910c7475d79c090f3b2f86d94066ad1b014af -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Sensitivity/Variantd338ad98796c7c961dedf5eab7bb7e9b967dcf0e12d13787293c546aba28b901.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Sensitivity/Variantd338ad98796c7c961dedf5eab7bb7e9b967dcf0e12d13787293c546aba28b901.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
