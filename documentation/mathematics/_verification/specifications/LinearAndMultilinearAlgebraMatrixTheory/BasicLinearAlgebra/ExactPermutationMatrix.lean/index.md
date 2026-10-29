# Verification target: Exact Permutation Matrix

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9f9951bcc4e587dbd52e0e0c89efd0fa434c3b04",
  "lexical_observation_count": 36,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/ExactPermutationMatrix/Variantfd06009e335660465ad097b0508d787f0f5964bfa94a0e0cbcb75e161668a338.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ExactPermutationMatrix.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ExactPermutationMatrix.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9f9951bcc4e587dbd52e0e0c89efd0fa434c3b04`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/ExactPermutationMatrix/Variantfd06009e335660465ad097b0508d787f0f5964bfa94a0e0cbcb75e161668a338.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/ExactPermutationMatrix/Variantfd06009e335660465ad097b0508d787f0f5964bfa94a0e0cbcb75e161668a338.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.ZMod.Basic` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.ToLin` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [permutationMatrix](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ExactPermutationMatrix.lean/declarations/permutationmatrix.md) | 25 | `declaration-track:e47e6761ce49f24a3642015e69f3a346a20cad8f531e171e4801f36f83759188` |
| 2 | `def` | [ExactlyOneInEveryRow](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ExactPermutationMatrix.lean/declarations/exactlyoneineveryrow.md) | 33 | `declaration-track:4f63fb0331ddb7846844af76134a9b8e9db86ce20fe85b0521d52940b410a205` |
| 3 | `def` | [ExactlyOneInEveryColumn](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ExactPermutationMatrix.lean/declarations/exactlyoneineverycolumn.md) | 40 | `declaration-track:76df73171b808a20612b5f822e6ae1290aba179d6943f5877d7b653c997b5c64` |
| 4 | `def` | [IsOneHotPermutationMatrix](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ExactPermutationMatrix.lean/declarations/isonehotpermutationmatrix.md) | 47 | `declaration-track:aaa1d9921e3ce5bfe1a91a26bd02f3b862001508d81df042a94ffa44ba0e99a6` |
| 5 | `abbrev` | [OneHotPermutationMatrix](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ExactPermutationMatrix.lean/declarations/onehotpermutationmatrix.md) | 54 | `declaration-track:0dfdd83ee99c1a1682f2bb20b124885340901ce68701753c29ff0855ae119102` |
| 6 | `structure` | [ExactPermutationMatrix](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ExactPermutationMatrix.lean/declarations/exactpermutationmatrix.md) | 58 | `declaration-track:b2c7012daae3eb5a578b27ba9586af9a24556fc56270d7dd45e6fc863eaf5293` |
| 7 | `theorem` | [ext](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ExactPermutationMatrix.lean/declarations/ext.md) | 71 | `result-track:a60735678b671e37a5c9a3d7de27a556f9120cd15efae9045169cf86423bbc0d` |
| 8 | `def` | [ofPerm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ExactPermutationMatrix.lean/declarations/ofperm-source-edition-2.md) | 86 | `declaration-track:ae702351b8cf4c3ffb64513990d600eb52a631b0648566a8700e6e44eaddf73e` |
| 9 | `theorem` | [ofPerm_matrix](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ExactPermutationMatrix.lean/declarations/ofperm-matrix.md) | 93 | `result-track:0b6c64262708d011e41cf1deb85e7f77d0cab5af80ccdb9038ecc3a196b1da1e` |
| 10 | `theorem` | [ofPerm_permutation](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ExactPermutationMatrix.lean/declarations/ofperm-permutation.md) | 99 | `result-track:f2a64d9fee9b525f7cdbfecc95448f0660397bfa61124a5061a3d2053a09e7de` |
| 11 | `theorem` | [existsUnique_one_in_row](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ExactPermutationMatrix.lean/declarations/existsunique-one-in-row.md) | 105 | `result-track:a751728fb084671291b9a2c3a7da1da279a19b096a6c7b35d9ce659ba828504c` |
| 12 | `theorem` | [existsUnique_one_in_column](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ExactPermutationMatrix.lean/declarations/existsunique-one-in-column.md) | 120 | `result-track:c1b09bed9eb8fb1e75f18ef0e2a5235aa2b8d6296d4e3b16b9ff60624724e51c` |
| 13 | `def` | [permEquivExactPermutationMatrix](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ExactPermutationMatrix.lean/declarations/permequivexactpermutationmatrix.md) | 136 | `declaration-track:c8786d1a2b972ae91a427dc87771a3b3f8eff1400b8d3322b4ab6dbebe118e2f` |
| 14 | `theorem` | [permEquiv_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ExactPermutationMatrix.lean/declarations/permequiv-apply.md) | 146 | `result-track:478350ee0ae69cde10a52b48bf863836da35ee457423af4d43dd77cf2b31d720` |
| 15 | `theorem` | [permEquiv_symm_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ExactPermutationMatrix.lean/declarations/permequiv-symm-apply.md) | 152 | `result-track:0ef9c77f44b1b1fb1493b86e9cf1ffba8fe1cd003de941b03cadc8d733bd3f44` |
| 16 | `theorem` | [permutationMatrix_exactlyOneInEveryRow](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ExactPermutationMatrix.lean/declarations/permutationmatrix-exactlyoneineveryrow.md) | 165 | `result-track:83a83a4197ba516bb197ddf4ac16c584384582c73cc1a48afd6937702c673939` |
| 17 | `theorem` | [permutationMatrix_exactlyOneInEveryColumn](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ExactPermutationMatrix.lean/declarations/permutationmatrix-exactlyoneineverycolumn.md) | 174 | `result-track:9ced5f4d9887a1fc80218bb4ec716766bf38ca7dffd47b4d56a4777fa6660d42` |
| 18 | `def` | [ofPerm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ExactPermutationMatrix.lean/declarations/ofperm.md) | 183 | `declaration-track:23519ebb733b87179d1b2a983bbe6a2c406cb22710a7d5a029cb8ced9e107de2` |
| 19 | `theorem` | [ofPerm_val](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ExactPermutationMatrix.lean/declarations/ofperm-val.md) | 190 | `result-track:14675b30147dce061f0ee01206b48e6a9d7e1a57e0bb11ae2314e9b060bb1406` |
| 20 | `def` | [rowIndex](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ExactPermutationMatrix.lean/declarations/rowindex.md) | 197 | `declaration-track:17c93b6d0533e2978387e302e2f2d32432669669d06e7eba0513e21a1ff65d62` |
| 21 | `theorem` | [rowIndex_spec](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ExactPermutationMatrix.lean/declarations/rowindex-spec.md) | 205 | `result-track:027ccb695d428fb5468c280cdd3a4aaf4bc6c16bda9c9ca558f581044b3322ee` |
| 22 | `theorem` | [rowIndex_eq_of_entry_one](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ExactPermutationMatrix.lean/declarations/rowindex-eq-of-entry-one.md) | 213 | `result-track:5a693b896a671226ffd45ea1d0e30666a580977fe0ab4e65fc642278ed9fe624` |
| 23 | `def` | [columnIndex](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ExactPermutationMatrix.lean/declarations/columnindex.md) | 222 | `declaration-track:3551b1338e693c99562d81ae0b79530fd92511d7e0a3ba1b84a3faf7614f782b` |
| 24 | `theorem` | [columnIndex_spec](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ExactPermutationMatrix.lean/declarations/columnindex-spec.md) | 230 | `result-track:795ff58f8e0f5b25bf02218bf73766e131c2a8dd0726df5d65279b97ef944e9f` |
| 25 | `theorem` | [columnIndex_eq_of_entry_one](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ExactPermutationMatrix.lean/declarations/columnindex-eq-of-entry-one.md) | 238 | `result-track:59fbaa646603d7a605f481ed6953e945e95acf0a24cfd56284127d1d47b648aa` |
| 26 | `def` | [toPerm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ExactPermutationMatrix.lean/declarations/toperm.md) | 247 | `declaration-track:ada69464c6ce17f8c6f31f88def96f9321ad854602a20ae673cf743c391504f1` |
| 27 | `theorem` | [toPerm_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ExactPermutationMatrix.lean/declarations/toperm-apply.md) | 261 | `result-track:392204fbb78887a71e000887850cbf68e682f14719d1724afaadecafcb44a2cc` |
| 28 | `theorem` | [toPerm_symm_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ExactPermutationMatrix.lean/declarations/toperm-symm-apply.md) | 269 | `result-track:3f0ecd90032b76b0c83e47f053b4d26c15355cf77c0154a166064fd567f96951` |
| 29 | `theorem` | [zmodTwo_eq_zero_or_one](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ExactPermutationMatrix.lean/declarations/zmodtwo-eq-zero-or-one.md) | 276 | `result-track:879e755af4e658d9e38f7f951daf820c53c7ba4f61fbec791493ff63be14f735` |
| 30 | `theorem` | [matrix_eq_permutationMatrix_toPerm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ExactPermutationMatrix.lean/declarations/matrix-eq-permutationmatrix-toperm.md) | 290 | `result-track:a20d43ee13cba7c9c6f4eaaa6deae469cd082a7c384ab8c46dc6b40b6a93986e` |
| 31 | `theorem` | [toPerm_ofPerm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ExactPermutationMatrix.lean/declarations/toperm-ofperm.md) | 309 | `result-track:a805aa6a77d679ed948e5ecdc81b90eeb0cd8d1258ff0c9d0bee514cf28390a4` |
| 32 | `def` | [permEquivOneHotPermutationMatrix](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ExactPermutationMatrix.lean/declarations/permequivonehotpermutationmatrix.md) | 321 | `declaration-track:f196da0a1be22a0dae2e6d5d505705e03e3e538dbce3f49ce2330c3434e3e070` |
| 33 | `theorem` | [permEquivOneHot_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ExactPermutationMatrix.lean/declarations/permequivonehot-apply.md) | 331 | `result-track:26a56612df9bff000b339050b866ff88dd94cc2dac01c4284be4196d612fce5b` |
| 34 | `theorem` | [permEquivOneHot_symm_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ExactPermutationMatrix.lean/declarations/permequivonehot-symm-apply.md) | 337 | `result-track:6cc6c3a34353530dbb782b13d4ad204db6d426d0b3143c27ddeab7340aa6513b` |
| 35 | `theorem` | [permEquivOneHot_symm_apply_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ExactPermutationMatrix.lean/declarations/permequivonehot-symm-apply-apply.md) | 344 | `result-track:a847ad275a12bb9bcd4bd8375759842dceef9f0657b7d5cf7481705276fe264a` |
| 36 | `theorem` | [permEquivOneHot_apply_symm_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ExactPermutationMatrix.lean/declarations/permequivonehot-apply-symm-apply.md) | 352 | `result-track:21a9c5f9e515941d424b8b9c489e9f82583c841285d26834517f7a01eb05d4f8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d0b6976f2dead422f1fb007dbfc96342d4b350e1628472fa1cf94dddc33044d1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/ExactPermutationMatrix/Variantfd06009e335660465ad097b0508d787f0f5964bfa94a0e0cbcb75e161668a338.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/ExactPermutationMatrix/Variantfd06009e335660465ad097b0508d787f0f5964bfa94a0e0cbcb75e161668a338.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
