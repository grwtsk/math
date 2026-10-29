# Verification target: Linear Algebra Orientation

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "89f59d58598e1eb4370b0302d636466258404412",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Orientation/Variant54b32867052f73d278ac5e1578fdb687dca752910bd5e81f81e6df522f4460c8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraOrientation.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraOrientation.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `89f59d58598e1eb4370b0302d636466258404412`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Orientation/Variant54b32867052f73d278ac5e1578fdb687dca752910bd5e81f81e6df522f4460c8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Orientation/Variant54b32867052f73d278ac5e1578fdb687dca752910bd5e81f81e6df522f4460c8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Ray` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Determinant` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [Orientation](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraOrientation.lean/declarations/orientation-source-edition-2.md) | 53 | `declaration-track:d169de5904ba2b75e96d91f426a16d0f0fbefd7a78fbc7e3b78ef737457925e3` |
| 2 | `class` | [Module.Oriented](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraOrientation.lean/declarations/module-oriented.md) | 57 | `declaration-track:92c9868b6fc6d09efbf8a251188eb2fc8180502544d90bc3f0b8cb14fab74c23` |
| 3 | `def` | [Orientation.map](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraOrientation.lean/declarations/orientation-map.md) | 67 | `declaration-track:b40aad35b43b14bd67609cf14405619f5d49b6328422915feebb4aa951056691` |
| 4 | `theorem` | [Orientation.map_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraOrientation.lean/declarations/orientation-map-apply.md) | 72 | `result-track:38ec27d8b8060398f82288200902efeaf0f7291c05f1894e991501a1a9858a4b` |
| 5 | `theorem` | [Orientation.map_refl](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraOrientation.lean/declarations/orientation-map-refl.md) | 79 | `result-track:60f52a490d80d04c6e221017bd072e4d5f9cc22a9793ea9eaae2e81a04879887` |
| 6 | `theorem` | [Orientation.map_symm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraOrientation.lean/declarations/orientation-map-symm.md) | 84 | `result-track:6ef8f5b40b973ec3ef8e60964130cdb97a0f36ba39d16c53e915c07c0b5202db` |
| 7 | `instance` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraOrientation.lean/declarations/instance.md) | 89 | `declaration-track:2f0e2824f29f328589ce0dd3224a6ef12e89a1b9e813c995713e145f920877ce` |
| 8 | `theorem` | [Orientation.map_positiveOrientation_of_isEmpty](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraOrientation.lean/declarations/orientation-map-positiveorientation-of-isempty.md) | 96 | `result-track:4edaa638c2ba851200989e273ce8915818e98aca40fed9650538a10aeb3163cd` |
| 9 | `theorem` | [Orientation.map_of_isEmpty](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraOrientation.lean/declarations/orientation-map-of-isempty.md) | 101 | `result-track:f54fdb42f8725a0cdce410d7a00b4f2fa451b2f7ec0c05648df009594769c881` |
| 10 | `theorem` | [Orientation.map_neg](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraOrientation.lean/declarations/orientation-map-neg.md) | 121 | `result-track:c897ad36aa007a2acf736a726f75c855aae7f70fb99784c534b3a722c6495a66` |
| 11 | `theorem` | [map_orientation_eq_det_inv_smul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraOrientation.lean/declarations/map-orientation-eq-det-inv-smul.md) | 132 | `result-track:a7673243d5735f605e3491ea2f9bace2a8056cf666f10337f9ef857535f168b4` |
| 12 | `def` | [orientation](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraOrientation.lean/declarations/orientation.md) | 148 | `declaration-track:1814554f6607f62069252694414860e9db5335c264cb62a06a1f4d6c363a1eca` |
| 13 | `theorem` | [orientation_map](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraOrientation.lean/declarations/orientation-map-source-edition-2.md) | 152 | `result-track:b6c2610700cb29cb86d1ab998c6b8d7e382735e2ce6edd4958cd4d28b94efecb` |
| 14 | `theorem` | [orientation_unitsSMul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraOrientation.lean/declarations/orientation-unitssmul.md) | 159 | `result-track:9d382d9c78b7386aac65e346f2207bf2928fc453dc5da48d5348c19f63a97d41` |
| 15 | `theorem` | [orientation_isEmpty](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraOrientation.lean/declarations/orientation-isempty.md) | 169 | `result-track:2640705f07d35e705fa3e2806784963478f2cdaf74400efe837fc6dee087c0b6` |
| 16 | `theorem` | [eq_or_eq_neg_of_isEmpty](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraOrientation.lean/declarations/eq-or-eq-neg-of-isempty.md) | 193 | `result-track:84ad162692b4275f3a650dbe47f7f6e36be6da86bca505bfa2951f27579eda8d` |
| 17 | `theorem` | [orientation_eq_iff_det_pos](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraOrientation.lean/declarations/orientation-eq-iff-det-pos.md) | 217 | `result-track:764d3096134ab40b42d13a14dd05128d63c7e2efdafe2bb5a857632f4f770e1a` |
| 18 | `theorem` | [orientation_eq_or_eq_neg](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraOrientation.lean/declarations/orientation-eq-or-eq-neg.md) | 227 | `result-track:1a9af070b5e649a7939c5c58e1f378f0f9c05da553c985975a1d24c9e3ca5991` |
| 19 | `theorem` | [orientation_ne_iff_eq_neg](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraOrientation.lean/declarations/orientation-ne-iff-eq-neg.md) | 238 | `result-track:ee6d17b688f30709ff16fde6c43415a0b3bac7db255df7a85e74225290d6baa5` |
| 20 | `theorem` | [orientation_comp_linearEquiv_eq_iff_det_pos](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraOrientation.lean/declarations/orientation-comp-linearequiv-eq-iff-det-pos.md) | 246 | `result-track:954e66b747ff59b1c66d8dd993ef72cb0563a96ee10f3ff411162dcbcf990ae2` |
| 21 | `theorem` | [orientation_comp_linearEquiv_eq_neg_iff_det_neg](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraOrientation.lean/declarations/orientation-comp-linearequiv-eq-neg-iff-det-neg.md) | 254 | `result-track:712f95d31e3b861fea9a9473b924298c43d0b3866f39fbcb0993cee18ca3b17d` |
| 22 | `theorem` | [orientation_neg_single](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraOrientation.lean/declarations/orientation-neg-single.md) | 263 | `result-track:62ae60aae5752d881bb709ca47dbdbc52990bb5a5a31234e05bebbbefba27223` |
| 23 | `def` | [adjustToOrientation](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraOrientation.lean/declarations/adjusttoorientation.md) | 271 | `declaration-track:a91a8f31ab22d77977f2075aa84ae695fba28855bfb9da808dee1f4559de3183` |
| 24 | `theorem` | [orientation_adjustToOrientation](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraOrientation.lean/declarations/orientation-adjusttoorientation.md) | 279 | `result-track:bd7785bc04319a831f028d8e2912ec81519b0447b71d6bbcba5cb930c04497f1` |
| 25 | `theorem` | [adjustToOrientation_apply_eq_or_eq_neg](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraOrientation.lean/declarations/adjusttoorientation-apply-eq-or-eq-neg.md) | 290 | `result-track:9a6ba5efcd405d1dc04bb295dec867240b2d64b17c9e365ab1c53e19a268d7c3` |
| 26 | `theorem` | [det_adjustToOrientation](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraOrientation.lean/declarations/det-adjusttoorientation.md) | 299 | `result-track:ff45d8c5afdec0d3d938b055a345dfc945865486c331ecd27fd8c4ab9b0f30b7` |
| 27 | `theorem` | [abs_det_adjustToOrientation](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraOrientation.lean/declarations/abs-det-adjusttoorientation.md) | 313 | `result-track:4598d386f9b76114e945904e4965b8452acfde6c71c4c492ce9f844dfc3db0dc` |
| 28 | `theorem` | [eq_or_eq_neg](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraOrientation.lean/declarations/eq-or-eq-neg.md) | 338 | `result-track:190cf767d3d5cf67b1a397f54a34df74e9f7fe0722158a2e16bca127cf7fed1e` |
| 29 | `theorem` | [ne_iff_eq_neg](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraOrientation.lean/declarations/ne-iff-eq-neg.md) | 351 | `result-track:b85f5e9ea16641372c32b04398e25c32a9bbe91906f6a0c7425d0dec0f60de92` |
| 30 | `theorem` | [map_eq_det_inv_smul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraOrientation.lean/declarations/map-eq-det-inv-smul.md) | 359 | `result-track:d1e2a5bbae866348498c3d1eadb1ffd4582aa9dae7452d50ee3a76db8ef9b70f` |
| 31 | `theorem` | [map_eq_iff_det_pos](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraOrientation.lean/declarations/map-eq-iff-det-pos.md) | 368 | `result-track:1b4687186300a0065e659c473a376ac27b9cdff8fd01aeb4cbbb73ca0b00831c` |
| 32 | `theorem` | [map_eq_neg_iff_det_neg](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraOrientation.lean/declarations/map-eq-neg-iff-det-neg.md) | 382 | `result-track:e03a5b92b24cdc196ed99fae9eb2d0e338c9321025f4fdf5e863a762446c4d7b` |
| 33 | `def` | [someBasis](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraOrientation.lean/declarations/somebasis.md) | 399 | `declaration-track:89aa97623cb1ab88a9cf030dae7d3a4799c2f3babdd7f6a050eda1e00af7934b` |
| 34 | `theorem` | [someBasis_orientation](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraOrientation.lean/declarations/somebasis-orientation.md) | 406 | `result-track:a6a3da9c8f26b2e175d992699db037d190d2cd3e599f8a9349f0e4512d76a6a5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2654b8badc2af76bb3c548deabfd0e05ba443fb87c3050f65d9aa250a90a19d4 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Orientation/Variant54b32867052f73d278ac5e1578fdb687dca752910bd5e81f81e6df522f4460c8.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Orientation/Variant54b32867052f73d278ac5e1578fdb687dca752910bd5e81f81e6df522f4460c8.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
