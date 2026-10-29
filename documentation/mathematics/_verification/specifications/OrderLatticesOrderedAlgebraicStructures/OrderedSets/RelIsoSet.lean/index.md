# Verification target: Rel Iso Set

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "877299534acc049386f3d40746b7d82621fe4932",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Set/Variant09949aa07a8533e71f3c0ee2ad6a0aa4a00aad096a0632631b5386c37395164a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelIsoSet.lean/index.md) · [Full source](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelIsoSet.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `877299534acc049386f3d40746b7d82621fe4932`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Set/Variant09949aa07a8533e71f3c0ee2ad6a0aa4a00aad096a0632631b5386c37395164a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Set/Variant09949aa07a8533e71f3c0ee2ad6a0aa4a00aad096a0632631b5386c37395164a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.Directed` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Order.RelIso.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Embedding.Set` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Equiv.Set` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [map_inf](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelIsoSet.lean/declarations/map-inf.md) | 29 | `result-track:a68fbd3bfe19ef25695f5297d5e51bf1d541adc31fffc6ecc632270f4d601ba7` |
| 2 | `theorem` | [map_sup](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelIsoSet.lean/declarations/map-sup.md) | 34 | `result-track:5ef69cdcc107a895319080eaad46c331b6c22b07a3ffe1d1cbcb638d49809522` |
| 3 | `theorem` | [directed](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelIsoSet.lean/declarations/directed.md) | 39 | `result-track:8fb16b000731909f99c2fe501ab4c32bfa3554d6eeeeac347ab99c77dc7f2c62` |
| 4 | `theorem` | [directedOn](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelIsoSet.lean/declarations/directedon.md) | 43 | `result-track:f3bf9df2e586f9ec702f061be97fc6d9fece000517542789a764b7a2e5424b4c` |
| 5 | `theorem` | [range_eq](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelIsoSet.lean/declarations/range-eq.md) | 51 | `result-track:66955db62d580e66e5c241b6de3391ecbc081e723958ecf5b0838138e0fa394e` |
| 6 | `def` | [Subrel](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelIsoSet.lean/declarations/subrel.md) | 59 | `declaration-track:cd1707133049005ee79fc9c33392039e654847087d5debd8d9ed9341bac6f16f` |
| 7 | `theorem` | [subrel_val](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelIsoSet.lean/declarations/subrel-val.md) | 63 | `result-track:eca36eb3f5586b1baaa30fb9d724649b7984e3b92c38ee8c2ae2c3c61fcb6986` |
| 8 | `def` | [relEmbedding](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelIsoSet.lean/declarations/relembedding.md) | 69 | `declaration-track:c35fde6d3b2e9acdbf7cc878ede380de4d68c2372590995f7ad5b5b718df80d9` |
| 9 | `theorem` | [relEmbedding_apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelIsoSet.lean/declarations/relembedding-apply.md) | 73 | `result-track:5c8b09cae929d2c8082f13de0d5f1e5896d00f7b7dc196efb335670ec963ea56` |
| 10 | `def` | [inclusionEmbedding](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelIsoSet.lean/declarations/inclusionembedding.md) | 77 | `declaration-track:8c8e6ab8d9394f2c203ebd035736d6c74c004e5e1c9522f99836a1f5777b7eb6` |
| 11 | `theorem` | [coe_inclusionEmbedding](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelIsoSet.lean/declarations/coe-inclusionembedding.md) | 84 | `result-track:4d65c16f85fa3f12e61ad02e2375aaa93b794a3220655a8a882137d7b2061459` |
| 12 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelIsoSet.lean/declarations/instance-source-edition-7.md) | 88 | `declaration-track:9be19671607ae09e3066f7aa2c68957899471e600c0bc2b8d4c4afad781564ee` |
| 13 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelIsoSet.lean/declarations/instance-source-edition-3.md) | 91 | `declaration-track:268723470a0a7af80a9e2e87b5e35e7dfccd790264e9ce07b3f33701fe577931` |
| 14 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelIsoSet.lean/declarations/instance-source-edition-5.md) | 94 | `declaration-track:6aa60e3160916f6af00bd0217cf4c38fe217d8c0962a94294691a42c15993b7c` |
| 15 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelIsoSet.lean/declarations/instance-source-edition-8.md) | 97 | `declaration-track:b439a2508407d6d5b86ff80f8d89e5130b9363d9ba571e0c8f97e6c6bb959263` |
| 16 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelIsoSet.lean/declarations/instance-source-edition-6.md) | 100 | `declaration-track:92e748e067ac64d08056e74824c572518c4da5e959c148e920b135da2f0f94f5` |
| 17 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelIsoSet.lean/declarations/instance-source-edition-2.md) | 103 | `declaration-track:226aeb7ff429496b2868e7f7f0d0995779d8472bbf006587547a2098e0997912` |
| 18 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelIsoSet.lean/declarations/instance-source-edition-10.md) | 106 | `declaration-track:d14ffb864f83dce075bdf956b12f4c26bb470480882d9141b9c1dd65987e44bd` |
| 19 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelIsoSet.lean/declarations/instance-source-edition-4.md) | 109 | `declaration-track:33d7a3d7283f7a4c4a1f4286e863540b2f34f911bf3a18e78a81f953036f7422` |
| 20 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelIsoSet.lean/declarations/instance.md) | 110 | `declaration-track:0758ba5696b47379b6bca769c39c29f12f45ecfe655f2cb2ced386727b5b90df` |
| 21 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelIsoSet.lean/declarations/instance-source-edition-9.md) | 111 | `declaration-track:d03266586024d04a8629f949ce38f663958cd8e5a1e65f4bac7702b2d1a495b4` |
| 22 | `def` | [RelEmbedding.codRestrict](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelIsoSet.lean/declarations/relembedding-codrestrict.md) | 116 | `declaration-track:218553a07eeb483e9dadac022c89557e231f469478e80d357177eda95b6f2c40` |
| 23 | `theorem` | [RelEmbedding.codRestrict_apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelIsoSet.lean/declarations/relembedding-codrestrict-apply.md) | 120 | `result-track:b29924e038e21ddb120a3d541a1dfac5c936c59fe338baaebd0ec57530191d32` |
| 24 | `theorem` | [RelIso.image_eq_preimage_symm](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelIsoSet.lean/declarations/reliso-image-eq-preimage-symm.md) | 126 | `result-track:06c1d560103bab0f1af5ffa7535977e0dd556a02e4a47526b19d22141ac1ce0b` |
| 25 | `theorem` | [RelIso.preimage_eq_image_symm](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelIsoSet.lean/declarations/reliso-preimage-eq-image-symm.md) | 129 | `result-track:23826b41e13b7a22984590287e3edb0f539e3710d7581a99399ec676520033d3` |
| 26 | `theorem` | [Acc.of_subrel](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelIsoSet.lean/declarations/acc-of-subrel.md) | 134 | `result-track:63a730772e4bcb34e031a91e491ba4d0c01c2e0d9ab06cdc4816a51d19982633` |
| 27 | `theorem` | [wellFounded_iff_wellFounded_subrel](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelIsoSet.lean/declarations/wellfounded-iff-wellfounded-subrel.md) | 140 | `result-track:9894b2818cfd40e59d0998ec0d83029f864629d7e58623c69383928d1759adc9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4ed200ab9973a982c4118e8a20e652df02c5fd8e1ca2a34adf57c235832671fc -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Set/Variant09949aa07a8533e71f3c0ee2ad6a0aa4a00aad096a0632631b5386c37395164a.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Set/Variant09949aa07a8533e71f3c0ee2ad6a0aa4a00aad096a0632631b5386c37395164a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
