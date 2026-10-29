# Verification target: Sensitivity Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f33e620e793d5452a8472b0adfe16c24e3a0d7e2",
  "lexical_observation_count": 38,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Sensitivity/Variantcc5fec0928cc66096901123d1f8655fa3f62d98ff8edbe6c61ce9a92004e5c80.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SensitivityNamespaced.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SensitivityNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f33e620e793d5452a8472b0adfe16c24e3a0d7e2`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Sensitivity/Variantcc5fec0928cc66096901123d1f8655fa3f62d98ff8edbe6c61ce9a92004e5c80.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Sensitivity/Variantcc5fec0928cc66096901123d1f8655fa3f62d98ff8edbe6c61ce9a92004e5c80.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic.FinCases` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.ApplyFun` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.FiniteDimensional` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Dual` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.NormedSpace.Basic` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Real.Sqrt` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Q](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SensitivityNamespaced.lean/declarations/q.md) | 72 | `declaration-track:41d08840bdd5850cd3c1346c0878b54ddcfe3d9a984eb134df3b5c445b3c8de3` |
| 2 | `instance` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SensitivityNamespaced.lean/declarations/instance-source-edition-2.md) | 76 | `declaration-track:3f24f8451cf62c8faf548f3aad113c9a00d642881fbe9d603a54a620f51ec1c7` |
| 3 | `instance` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SensitivityNamespaced.lean/declarations/instance.md) | 78 | `declaration-track:0af1ff5712ac508ec78152d8adfd6cb2600d2a5d5be802e140d1dac110ebda9f` |
| 4 | `def` | [π](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SensitivityNamespaced.lean/declarations/anonymous-source-edition-2.md) | 82 | `declaration-track:812bf5c4976edc58087196aa928550f9e0d872d42216a54ed3b64ca9bec5a36a` |
| 5 | `theorem` | [ext](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SensitivityNamespaced.lean/declarations/ext.md) | 88 | `result-track:030092fcb8fe131bf4171e3df377cb0b58207a4a1f87ac7c1ab24d864289293d` |
| 6 | `instance` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SensitivityNamespaced.lean/declarations/instance-source-edition-3.md) | 95 | `declaration-track:4a09a5b541d76a51f955f704f8fd282e1e89525d279751da55f356766dd61043` |
| 7 | `theorem` | [card](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SensitivityNamespaced.lean/declarations/card.md) | 99 | `result-track:cd0cd178500266dfb8e6b8e10cbbf9390eba4d46b316b859a18f9c25162dca7c` |
| 8 | `theorem` | [succ_n_eq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SensitivityNamespaced.lean/declarations/succ-n-eq.md) | 107 | `result-track:47f17cffe84d0a3e6f05a1616f4f9b8932f75dd28083fba7cd0b835bbcbd1d23` |
| 9 | `def` | [adjacent](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SensitivityNamespaced.lean/declarations/adjacent.md) | 120 | `declaration-track:371517652d0141317ced5ac7f3f84099e331e8688d39f287cd972a6bebde12aa` |
| 10 | `theorem` | [not_adjacent_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SensitivityNamespaced.lean/declarations/not-adjacent-zero.md) | 124 | `result-track:4a59eb9063d99bff6d4893b0596c861aff5dbb8a9058d1738ddb8ece26812887` |
| 11 | `theorem` | [adj_iff_proj_eq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SensitivityNamespaced.lean/declarations/adj-iff-proj-eq.md) | 129 | `result-track:7da682b35dd1a620642f6c65aae02481e5868ba143ad22d1a43405c851b053bb` |
| 12 | `theorem` | [adj_iff_proj_adj](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SensitivityNamespaced.lean/declarations/adj-iff-proj-adj.md) | 145 | `result-track:201fa1a4cf5b32e677076c1992e8d45b8ef89840cec647d769fce86bd9517c15` |
| 13 | `theorem` | [adjacent.symm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SensitivityNamespaced.lean/declarations/adjacent-symm.md) | 169 | `result-track:b8f23a7a5ce1664e236bf25b3854fd64efe2f887d97536508dc64fe0bb106199` |
| 14 | `def` | [V](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SensitivityNamespaced.lean/declarations/v.md) | 179 | `declaration-track:7ccd1d5493c3786f2f501ba0cb20dca0cea89795b53dff7b96b749b69f0bd659` |
| 15 | `theorem` | [ext](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SensitivityNamespaced.lean/declarations/ext-source-edition-2.md) | 187 | `result-track:f7883d4c1118e16c3adfb4fc3bd40dd8827390c0faced67001f5da986b093850` |
| 16 | `instance` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SensitivityNamespaced.lean/declarations/instance-source-edition-7.md) | 194 | `declaration-track:e0604f104978f635eaeb6f72d881ecea454798d86b0818ad6ce049e17f4062bb` |
| 17 | `instance` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SensitivityNamespaced.lean/declarations/instance-source-edition-6.md) | 196 | `declaration-track:d4e8683d71c76695b9686043e2e4798226c71a0a450dadf5794130152bf20a6f` |
| 18 | `instance` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SensitivityNamespaced.lean/declarations/instance-source-edition-4.md) | 198 | `declaration-track:4f973680c6ffbea627648fcec189681f8485fd499a28e999b51243fe51b8c3b8` |
| 19 | `def` | [e](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SensitivityNamespaced.lean/declarations/e.md) | 203 | `declaration-track:4a01fb46bd62f5c984adf3b656b9b914c1b6a93ddc1639a893523ade29cffe74` |
| 20 | `theorem` | [e_zero_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SensitivityNamespaced.lean/declarations/e-zero-apply.md) | 209 | `result-track:014f40df204cdf2f4cfbba82c1c616b33e64b75c6c371f41bab63553021b20a6` |
| 21 | `def` | [ε](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SensitivityNamespaced.lean/declarations/anonymous.md) | 214 | `declaration-track:3d71cb92f7365f2f7cc983024a504801d49fcdcd8672e0e0e66cc75f48131713` |
| 22 | `theorem` | [duality](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SensitivityNamespaced.lean/declarations/duality.md) | 222 | `result-track:9eb3009b0c3749b786006486b273095598b5626bd030d219ecf49b87c385bce3` |
| 23 | `theorem` | [epsilon_total](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SensitivityNamespaced.lean/declarations/epsilon-total.md) | 237 | `result-track:0727d138278f4c6db3fff2ab39d8834d8672f2546907d5e402a9af98f6357663` |
| 24 | `theorem` | [dualBases_e_ε](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SensitivityNamespaced.lean/declarations/dualbases-e.md) | 256 | `result-track:c37e3ae3be0bcfde269728edc2f4335bc5e8e6a7383b6786f8dab0ea091626ce` |
| 25 | `theorem` | [dim_V](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SensitivityNamespaced.lean/declarations/dim-v.md) | 265 | `result-track:8abbd00a023a193b3e2663ceb0ce81de7a85358dd5eacad73e8e0189f12d1ee0` |
| 26 | `instance` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SensitivityNamespaced.lean/declarations/instance-source-edition-5.md) | 271 | `declaration-track:a144347fafb7571de6899014fe179a5f47fbfe79bc3a0ac0e2cd4a040e510069` |
| 27 | `theorem` | [finrank_V](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SensitivityNamespaced.lean/declarations/finrank-v.md) | 274 | `result-track:bf6fd64bc8b113aa0458c19d647e5c24e621d3dd9797b688cd1b8549cc511ca7` |
| 28 | `def` | [f](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SensitivityNamespaced.lean/declarations/f.md) | 284 | `declaration-track:13183e64b4f548b43db7ecf67227ae34925c107d63cda6e01fad32af38f1a833` |
| 29 | `theorem` | [f_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SensitivityNamespaced.lean/declarations/f-zero.md) | 296 | `result-track:e79db23c565b12e2aefc427442a4544e9de7c97804272147703a149ec175740f` |
| 30 | `theorem` | [f_succ_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SensitivityNamespaced.lean/declarations/f-succ-apply.md) | 300 | `result-track:3458388520f8ce6d4fae66f459ae30755ceb3efc1442821a582afd9b10a3b421` |
| 31 | `theorem` | [f_squared](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SensitivityNamespaced.lean/declarations/f-squared.md) | 312 | `result-track:3462a4070ea459a7e1d61d6cb67136ee3fb886a51819831e24055fcb7b3562c5` |
| 32 | `theorem` | [f_matrix](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SensitivityNamespaced.lean/declarations/f-matrix.md) | 322 | `result-track:c10f85364a2ff92448b0e48999724688594bf7e950dc54d645b0ba09f2da583a` |
| 33 | `def` | [g](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SensitivityNamespaced.lean/declarations/g.md) | 338 | `declaration-track:f038410f2a5dab63207e147b713601263d88b48509558523e03f2d8c024f23c8` |
| 34 | `theorem` | [g_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SensitivityNamespaced.lean/declarations/g-apply.md) | 350 | `result-track:00b22084f85ecaf0670173a6bbf7306669dc81fd028b2ae500f07ba50dc2cdd8` |
| 35 | `theorem` | [g_injective](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SensitivityNamespaced.lean/declarations/g-injective.md) | 354 | `result-track:3b1440bead46798b3a10d067ef733824035777cb67ce00ca2fbac97309b41f1e` |
| 36 | `theorem` | [f_image_g](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SensitivityNamespaced.lean/declarations/f-image-g.md) | 361 | `result-track:06055912fac21923aaff89b81680737650709b361650ef75fc40d65ca2b65c10` |
| 37 | `theorem` | [exists_eigenvalue](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SensitivityNamespaced.lean/declarations/exists-eigenvalue.md) | 405 | `result-track:a2aeabe1fb1b441c0308d7f50c655bf9a6f6cb9df42de307bb38b47fabf3561d` |
| 38 | `theorem` | [huang_degree_theorem](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SensitivityNamespaced.lean/declarations/huang-degree-theorem.md) | 438 | `result-track:f3f9da8de7f2c356855719600d0a94924c5e8aeefe67969a95f7948529ce0b96` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e97b9397a2b7e062eb6506afe551950fb82144329ff56118d553301e1e826b7c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Sensitivity/Variantcc5fec0928cc66096901123d1f8655fa3f62d98ff8edbe6c61ce9a92004e5c80.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Sensitivity/Variantcc5fec0928cc66096901123d1f8655fa3f62d98ff8edbe6c61ce9a92004e5c80.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
