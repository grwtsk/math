# Verification target: Affine Space Basis Coord Apply Combination Of Not Mem Aligned

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7f0f93f765be1ad54a5df2e04ab81a44e97ccef5",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Basis/Variant9796610afc606515225a517eeb7a584bf7ae45a02aa85ee09da4fd4b038f05b2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSpaceBasisCoordApplyCombinationOfNotMemAligned.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSpaceBasisCoordApplyCombinationOfNotMemAligned.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7f0f93f765be1ad54a5df2e04ab81a44e97ccef5`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Basis/Variant9796610afc606515225a517eeb7a584bf7ae45a02aa85ee09da4fd4b038f05b2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Basis/Variant9796610afc606515225a517eeb7a584bf7ae45a02aa85ee09da4fd4b038f05b2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.AffineSpace.Independent` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Basis` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [AffineBasis](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSpaceBasisCoordApplyCombinationOfNotMemAligned.lean/declarations/affinebasis.md) | 51 | `declaration-track:6e7c743ca8f316a9964e6ae0eb0e34fae1cac21dbdc0042e936cd1dc12eb4a20` |
| 2 | `instance` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSpaceBasisCoordApplyCombinationOfNotMemAligned.lean/declarations/instance.md) | 67 | `declaration-track:6d8bc23300a09bf781ed9125c8ed6120128718e83671d92bde7e6366c547e046` |
| 3 | `instance` | [funLike](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSpaceBasisCoordApplyCombinationOfNotMemAligned.lean/declarations/funlike.md) | 70 | `declaration-track:5883c00933b028381208a95ea930b73237206cee21cb57ce3b0c74622e014f31` |
| 4 | `theorem` | [ext](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSpaceBasisCoordApplyCombinationOfNotMemAligned.lean/declarations/ext.md) | 76 | `result-track:12c2306c0736c9ccc454e0a3a3002641533141a5f55a6830b3abdb7bea387abc` |
| 5 | `theorem` | [ind](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSpaceBasisCoordApplyCombinationOfNotMemAligned.lean/declarations/ind.md) | 80 | `result-track:3e45e262f6c9bcb55795c4e1dfe7bc4446afbc9439ad845debbaa5c18e7da95e` |
| 6 | `theorem` | [tot](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSpaceBasisCoordApplyCombinationOfNotMemAligned.lean/declarations/tot.md) | 84 | `result-track:d74c601b21ab958f76964e5677fd4b73a485cdeecfe321cbf90f5cca28c353ab` |
| 7 | `theorem` | [nonempty](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSpaceBasisCoordApplyCombinationOfNotMemAligned.lean/declarations/nonempty.md) | 88 | `result-track:f849b09d8aa3908f811c5cdb200cc53f92f02d0dae45297a3ea9583caa4cda61` |
| 8 | `def` | [reindex](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSpaceBasisCoordApplyCombinationOfNotMemAligned.lean/declarations/reindex.md) | 94 | `declaration-track:eb94e67081acfb0a5988489fe58ef8115e714e03bfa62ec8b89c252ecf470a7a` |
| 9 | `theorem` | [coe_reindex](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSpaceBasisCoordApplyCombinationOfNotMemAligned.lean/declarations/coe-reindex.md) | 101 | `result-track:a19349b3991c6a7e15fb97378326ccf2150cd1794bd6fe2bc4ac451134bb3174` |
| 10 | `theorem` | [reindex_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSpaceBasisCoordApplyCombinationOfNotMemAligned.lean/declarations/reindex-apply.md) | 106 | `result-track:d25024c52ab05cc9b87185dde7340f77bf7a09263b6ef4f86d0accc9d0ba58f6` |
| 11 | `theorem` | [reindex_refl](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSpaceBasisCoordApplyCombinationOfNotMemAligned.lean/declarations/reindex-refl.md) | 111 | `result-track:08f59d425464cdf7f2c2b98fa9aec026d6a0309b0d1f70f769582970a507085c` |
| 12 | `def` | [basisOf](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSpaceBasisCoordApplyCombinationOfNotMemAligned.lean/declarations/basisof.md) | 120 | `declaration-track:2a9dc14265df1d66ac517d5da75298fb73ef7021f69065ad02ca5a650e05b17a` |
| 13 | `theorem` | [basisOf_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSpaceBasisCoordApplyCombinationOfNotMemAligned.lean/declarations/basisof-apply.md) | 134 | `result-track:3d6a1448de42ddc6003df7447ec74d11ff60ac773ce61d377c189a340b56cb7c` |
| 14 | `theorem` | [basisOf_reindex](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSpaceBasisCoordApplyCombinationOfNotMemAligned.lean/declarations/basisof-reindex.md) | 139 | `result-track:b9fd792757ba714476882e10e5e3ea16387f26a8b796e470c90493a598a4e828` |
| 15 | `def` | [coord](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSpaceBasisCoordApplyCombinationOfNotMemAligned.lean/declarations/coord.md) | 147 | `declaration-track:39c700b97051f34558ec6e6bc9610e749abebfbdafb2aa1dfe086c59f03eafda` |
| 16 | `theorem` | [linear_eq_sumCoords](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSpaceBasisCoordApplyCombinationOfNotMemAligned.lean/declarations/linear-eq-sumcoords.md) | 157 | `result-track:fe131c46690751e829919d33e955e5c4280ae1adb0aeebd96f55b10202a7c28d` |
| 17 | `theorem` | [coord_reindex](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSpaceBasisCoordApplyCombinationOfNotMemAligned.lean/declarations/coord-reindex.md) | 162 | `result-track:9392da32693f20c8956ce8d54cc71d0a71b76d6c2341852d5796e8289331eb9f` |
| 18 | `theorem` | [coord_apply_eq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSpaceBasisCoordApplyCombinationOfNotMemAligned.lean/declarations/coord-apply-eq.md) | 168 | `result-track:f221103fc302cc133957901c3cbd7692bc7135ed7c13dfb9eaa84ee3288be3e3` |
| 19 | `theorem` | [coord_apply_ne](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSpaceBasisCoordApplyCombinationOfNotMemAligned.lean/declarations/coord-apply-ne.md) | 174 | `result-track:ffdfcbfb48985d95cd1f1f1398c289523b17e2afb241f3183ddbe6224d280423` |
| 20 | `theorem` | [coord_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSpaceBasisCoordApplyCombinationOfNotMemAligned.lean/declarations/coord-apply.md) | 182 | `result-track:395c8d53187e80d1eb7d1e6fcdff1ef3d7b2c697285b6701485436760540c6ab` |
| 21 | `theorem` | [coord_apply_combination_of_mem](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSpaceBasisCoordApplyCombinationOfNotMemAligned.lean/declarations/coord-apply-combination-of-mem.md) | 187 | `result-track:652ba7d267b9ec8d7d0f5fec1c44622d84ee0284c2994fe6edd3dc749444be7d` |
| 22 | `theorem` | [coord_apply_combination_of_not_mem](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSpaceBasisCoordApplyCombinationOfNotMemAligned.lean/declarations/coord-apply-combination-of-not-mem.md) | 195 | `result-track:0e274ec3ccf9818eef2a41d8291cda3c1744363dcf7144797aad7804f3e07c41` |
| 23 | `theorem` | [sum_coord_apply_eq_one](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSpaceBasisCoordApplyCombinationOfNotMemAligned.lean/declarations/sum-coord-apply-eq-one.md) | 203 | `result-track:87f70dbdd0a4ca52e40c8b91fadf9a2ec494488dd6b23ebb15aa0535d1254d20` |
| 24 | `theorem` | [affineCombination_coord_eq_self](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSpaceBasisCoordApplyCombinationOfNotMemAligned.lean/declarations/affinecombination-coord-eq-self.md) | 213 | `result-track:4b7dc0857aa92df79d740d3d3b7ec7ec34f37e9da5eeeb8fb9dd9be79c0a4b4a` |
| 25 | `theorem` | [linear_combination_coord_eq_self](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSpaceBasisCoordApplyCombinationOfNotMemAligned.lean/declarations/linear-combination-coord-eq-self.md) | 227 | `result-track:61f3c2d83fec40d24bfae078a83e092c7d9fe7e3e46a853320b801c4e36d7479` |
| 26 | `theorem` | [ext_elem](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSpaceBasisCoordApplyCombinationOfNotMemAligned.lean/declarations/ext-elem.md) | 233 | `result-track:7f72b7a44b5e7908da8d8cd86e87a206dff0fd3acc0682f4de03a17a0cf15ba5` |
| 27 | `theorem` | [coe_coord_of_subsingleton_eq_one](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSpaceBasisCoordApplyCombinationOfNotMemAligned.lean/declarations/coe-coord-of-subsingleton-eq-one.md) | 240 | `result-track:d5079afa94afd42b16ef6b334dd4ab26cbcfe69d58b4dbcf9eeeda449f489577` |
| 28 | `theorem` | [surjective_coord](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSpaceBasisCoordApplyCombinationOfNotMemAligned.lean/declarations/surjective-coord.md) | 254 | `result-track:a059a2769838f2fc69b7a76291e9acbedf08d010b0bce6c3acf5368849599209` |
| 29 | `def` | [coords](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSpaceBasisCoordApplyCombinationOfNotMemAligned.lean/declarations/coords.md) | 274 | `declaration-track:f1aff43fc1b9e364d9b28914536de24bdb8657a79b37488ec93da0f21a8785ed` |
| 30 | `theorem` | [coords_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSpaceBasisCoordApplyCombinationOfNotMemAligned.lean/declarations/coords-apply.md) | 299 | `result-track:b44edcd83034eadb8000d9e5b4e091de71a3407b20fc9326df6e8f4173786fa7` |
| 31 | `theorem` | [coord_apply_centroid](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSpaceBasisCoordApplyCombinationOfNotMemAligned.lean/declarations/coord-apply-centroid.md) | 310 | `result-track:20d7548108c3701cec4843ea1c5a33ba57694d6cff10f9dd10f772c0006043d6` |
| 32 | `theorem` | [exists_affine_subbasis](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSpaceBasisCoordApplyCombinationOfNotMemAligned.lean/declarations/exists-affine-subbasis.md) | 317 | `result-track:a0cc41389280495547a98eb3cbff4f3394db277c077c7aa038ed15deff7f5497` |
| 33 | `theorem` | [exists_affineBasis](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSpaceBasisCoordApplyCombinationOfNotMemAligned.lean/declarations/exists-affinebasis.md) | 326 | `result-track:e905386db7d6dc77b626809ddd0b81ca3cb269cf854855b79e9507e60a7f655d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5c642626250dbbcc0ad9d1646beeee643f3ea1d14e8ad910785059dc774af7b4 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Basis/Variant9796610afc606515225a517eeb7a584bf7ae45a02aa85ee09da4fd4b038f05b2.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Basis/Variant9796610afc606515225a517eeb7a584bf7ae45a02aa85ee09da4fd4b038f05b2.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
