# Verification target: Affine Space Pointwise Pointwise Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cc6bc704582ff636fcefc90a6cf1f5ad0f0271e7",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Pointwise/Variant4151e00cb6bbd3368c84264094e8601938d6e626265a5da742010485bc3d2dc4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSpacePointwisePointwiseNamespaced.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSpacePointwisePointwiseNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cc6bc704582ff636fcefc90a6cf1f5ad0f0271e7`.

Source path: `GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Pointwise/Variant4151e00cb6bbd3368c84264094e8601938d6e626265a5da742010485bc3d2dc4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/ClassicalGeometry/EuclideanGeometry/Pointwise/Variant4151e00cb6bbd3368c84264094e8601938d6e626265a5da742010485bc3d2dc4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.AffineSpace.AffineSubspace.Basic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [pointwiseVAdd](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSpacePointwisePointwiseNamespaced.lean/declarations/pointwisevadd.md) | 40 | `declaration-track:caf1d337f22ad017b6a56ddaa6c5e2dff8dbe856ac3716060431c0ffbbe9ed61` |
| 2 | `lemma` | [coe_pointwise_vadd](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSpacePointwisePointwiseNamespaced.lean/declarations/coe-pointwise-vadd.md) | 45 | `result-track:e7a0e4d7ec8695b2834680d178f5864b5e2533bb3e1099bd2bcd06072997184e` |
| 3 | `def` | [pointwiseAddAction](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSpacePointwisePointwiseNamespaced.lean/declarations/pointwiseaddaction.md) | 51 | `declaration-track:086f344497e384e1940e3f7c358dbaee255615a29f9d9695d56ded3c7f7fda12` |
| 4 | `theorem` | [pointwise_vadd_eq_map](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSpacePointwisePointwiseNamespaced.lean/declarations/pointwise-vadd-eq-map.md) | 56 | `result-track:7ebdbaceff7742cf632d0bffc7947e05549335892db3107b203020aa0d6ed9ad` |
| 5 | `theorem` | [vadd_mem_pointwise_vadd_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSpacePointwisePointwiseNamespaced.lean/declarations/vadd-mem-pointwise-vadd-iff.md) | 60 | `result-track:5bf3a106cd071b12be6bb2cf29c2178b36a91c071f3ff16ce36ebc216c15b1d5` |
| 6 | `theorem` | [pointwise_vadd_bot](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSpacePointwisePointwiseNamespaced.lean/declarations/pointwise-vadd-bot.md) | 64 | `result-track:31c90d88c977e685b18ef02af2be60fae8876ea1ce358cbe3d74d7da281766a8` |
| 7 | `lemma` | [pointwise_vadd_top](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSpacePointwisePointwiseNamespaced.lean/declarations/pointwise-vadd-top.md) | 67 | `result-track:47aafe0df54fd36b3ffbd69c54eb768749005c96f34d88d5776569f57e168595` |
| 8 | `theorem` | [pointwise_vadd_direction](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSpacePointwisePointwiseNamespaced.lean/declarations/pointwise-vadd-direction.md) | 70 | `result-track:2df8e89e7808b09d866e0015db79f0e00d6619aa5cd39fa167fc821429ec556f` |
| 9 | `theorem` | [pointwise_vadd_span](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSpacePointwisePointwiseNamespaced.lean/declarations/pointwise-vadd-span.md) | 75 | `result-track:0ec7ca1e285bfdece5d6aeb00c104c866fddcdacda4ece8d7de29cb55fc87871` |
| 10 | `theorem` | [map_pointwise_vadd](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSpacePointwisePointwiseNamespaced.lean/declarations/map-pointwise-vadd.md) | 78 | `result-track:fcbf8307aa420890abf0229c68eac98793c5296aac05d68f2b495f66dd0720d6` |
| 11 | `def` | [pointwiseSMul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSpacePointwisePointwiseNamespaced.lean/declarations/pointwisesmul.md) | 96 | `declaration-track:2678af1510fa47bf058ee23b135b09acf25c6296783a65169b1ddff8053bed46` |
| 12 | `lemma` | [coe_smul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSpacePointwisePointwiseNamespaced.lean/declarations/coe-smul.md) | 102 | `result-track:e564edca2989b50e1cb4891319eaa611a392de938b4ca2b3f185309c16c50803` |
| 13 | `def` | [mulAction](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSpacePointwisePointwiseNamespaced.lean/declarations/mulaction.md) | 111 | `declaration-track:4f8f0ba45be1f60b03153c660aa000839cbf6c030ab26bac655d3df4596d0333` |
| 14 | `lemma` | [smul_eq_map](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSpacePointwisePointwiseNamespaced.lean/declarations/smul-eq-map.md) | 116 | `result-track:d2f7d79d3e96af7e8c7a026951bfa2adb34aa9c0f4767b63e4bb57c09f4f9e52` |
| 15 | `lemma` | [smul_mem_smul_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSpacePointwisePointwiseNamespaced.lean/declarations/smul-mem-smul-iff.md) | 119 | `result-track:03e6d94cc24171d138dc328720390911be4b6842ca489504bbf9559952b50311` |
| 16 | `lemma` | [smul_mem_smul_iff_of_isUnit](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSpacePointwisePointwiseNamespaced.lean/declarations/smul-mem-smul-iff-of-isunit.md) | 122 | `result-track:01a53af36eebf99bdcc60e685393ca6a364b708f2ee0afd62e8f0330f56ec00e` |
| 17 | `lemma` | [smul_mem_smul_iff₀](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSpacePointwisePointwiseNamespaced.lean/declarations/smul-mem-smul-iff-source-edition-2.md) | 125 | `result-track:ab2ea9df3ad88c77b687c464d48166243ecbf8dae1aa7fb9707e8b0ade2d7f82` |
| 18 | `lemma` | [smul_bot](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSpacePointwisePointwiseNamespaced.lean/declarations/smul-bot.md) | 129 | `result-track:ab5081d581ac28f6d22756f038ee1276981dd31ff2cc226c284b396cdb1b09f1` |
| 19 | `lemma` | [smul_top](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSpacePointwisePointwiseNamespaced.lean/declarations/smul-top.md) | 132 | `result-track:15fc79db87e0441ed5fe9d9e73ae939a12bc9484e82a91426a83929a82efbebd` |
| 20 | `lemma` | [smul_span](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSpacePointwisePointwiseNamespaced.lean/declarations/smul-span.md) | 135 | `result-track:0d15dde936bff47a80258307e5b5a192e369fbb45225d3317b1de711b654b889` |
| 21 | `lemma` | [direction_smul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSpacePointwisePointwiseNamespaced.lean/declarations/direction-smul.md) | 144 | `result-track:62ab3e1fe16087d1788992bad7b57796c8c71fa203f75e8faf3eb272fc1721d0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=78df683197d21b35f66534ab58e9b80358be49270db1b056ecb691e35ce2b398 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Pointwise/Variant4151e00cb6bbd3368c84264094e8601938d6e626265a5da742010485bc3d2dc4.lean","GRWTSK/_verification/specifications/Geometry/ClassicalGeometry/EuclideanGeometry/Pointwise/Variant4151e00cb6bbd3368c84264094e8601938d6e626265a5da742010485bc3d2dc4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
