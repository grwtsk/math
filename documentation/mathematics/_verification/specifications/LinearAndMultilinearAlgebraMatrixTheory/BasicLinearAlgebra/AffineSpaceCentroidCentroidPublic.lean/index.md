# Verification target: Affine Space Centroid Centroid Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "64a4a1703d8e17c03e4c1b6d2adb9638a12615e1",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Centroid/Variant4462d542aeaad1c1a86c2b4604b313c9f14c20c8b9d5b4c48ad33cf402128ca7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSpaceCentroidCentroidPublic.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSpaceCentroidCentroidPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `64a4a1703d8e17c03e4c1b6d2adb9638a12615e1`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Centroid/Variant4462d542aeaad1c1a86c2b4604b313c9f14c20c8b9d5b4c48ad33cf402128ca7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Centroid/Variant4462d542aeaad1c1a86c2b4604b313c9f14c20c8b9d5b4c48ad33cf402128ca7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [centroidWeights](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSpaceCentroidCentroidPublic.lean/declarations/centroidweights.md) | 40 | `declaration-track:3e5dbe7bea7a3d19c81df5514d6a0a75cd69e46356f337d560b6a5c53a655c4b` |
| 2 | `theorem` | [centroidWeights_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSpaceCentroidCentroidPublic.lean/declarations/centroidweights-apply.md) | 45 | `result-track:394ed0e10bb197e75845d3d2d7a3649b4ec0d096888d820b96ad5f41b7b6d64e` |
| 3 | `theorem` | [centroidWeights_eq_const](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSpaceCentroidCentroidPublic.lean/declarations/centroidweights-eq-const.md) | 49 | `result-track:9cdc683adbf5ec364a2a9eaeac0f236df15a90324d3466f68268c5aeb97f3359` |
| 4 | `theorem` | [sum_centroidWeights_eq_one_of_cast_card_ne_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSpaceCentroidCentroidPublic.lean/declarations/sum-centroidweights-eq-one-of-cast-card-ne-zero.md) | 55 | `result-track:c172c5d10e1245c46377823961b5aa334bacc09d696cd25a86d58e5f5fa64217` |
| 5 | `theorem` | [sum_centroidWeights_eq_one_of_card_ne_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSpaceCentroidCentroidPublic.lean/declarations/sum-centroidweights-eq-one-of-card-ne-zero.md) | 60 | `result-track:3b0306bd2adc5eb5e5f82c0bf22e48c20e0398fb8d4f98bd914437433b9a54d6` |
| 6 | `theorem` | [sum_centroidWeights_eq_one_of_nonempty](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSpaceCentroidCentroidPublic.lean/declarations/sum-centroidweights-eq-one-of-nonempty.md) | 66 | `result-track:f577d0a6e31db1d411fd0a636e0efa4dfea66b23ce5f234858189bcb1867e3f9` |
| 7 | `theorem` | [sum_centroidWeights_eq_one_of_card_eq_add_one](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSpaceCentroidCentroidPublic.lean/declarations/sum-centroidweights-eq-one-of-card-eq-add-one.md) | 72 | `result-track:e1d6ef455dc53a6681e2b8c87184bb803d9534bd3868e5830fe3d9e5e2c4603c` |
| 8 | `def` | [centroid](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSpaceCentroidCentroidPublic.lean/declarations/centroid.md) | 79 | `declaration-track:0aff04ab330922731cde52ea5afd646a391c6b3fcdb35d6482dc49edf67a3982` |
| 9 | `theorem` | [centroid_def](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSpaceCentroidCentroidPublic.lean/declarations/centroid-def.md) | 83 | `result-track:4da04800848bb09cb4c86abbeb162672c4d615d97ac5510ca510d486c8cad8a1` |
| 10 | `theorem` | [centroid_univ](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSpaceCentroidCentroidPublic.lean/declarations/centroid-univ.md) | 86 | `result-track:da71ac4ad8c3a125e6bc1cf932d546eaf9998e1b8aee4b1a83b047bf1e91c88e` |
| 11 | `theorem` | [centroid_singleton](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSpaceCentroidCentroidPublic.lean/declarations/centroid-singleton.md) | 94 | `result-track:074dbc397589a33b70e0ba377a5c2986c0edf1be0166c1f06be185223841b784` |
| 12 | `theorem` | [centroid_pair](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSpaceCentroidCentroidPublic.lean/declarations/centroid-pair.md) | 99 | `result-track:92ef578b262cd3620bdd59d498fd1bfa652593caa876a381aa7893aed5dc8517` |
| 13 | `theorem` | [centroid_pair_fin](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSpaceCentroidCentroidPublic.lean/declarations/centroid-pair-fin.md) | 113 | `result-track:0318e90da8fa4e41f4d8df6a77b4a5537d8f6d244db7ba87ba9d553db5c6495a` |
| 14 | `theorem` | [centroid_map](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSpaceCentroidCentroidPublic.lean/declarations/centroid-map.md) | 120 | `result-track:9c475340e191b3a8876fb8c7844e62184601375c6a6bae4b1486ad01eb23c1f4` |
| 15 | `def` | [centroidWeightsIndicator](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSpaceCentroidCentroidPublic.lean/declarations/centroidweightsindicator.md) | 130 | `declaration-track:fa43174e02587d230803bc8daa18b71f0e941eb84420643068ad1e81397efd87` |
| 16 | `theorem` | [centroidWeightsIndicator_def](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSpaceCentroidCentroidPublic.lean/declarations/centroidweightsindicator-def.md) | 134 | `result-track:f64c552ff458e3ba2f29060fd218a0d8e1188bf5e6d08fd591ef8c5297ef7499` |
| 17 | `theorem` | [sum_centroidWeightsIndicator](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSpaceCentroidCentroidPublic.lean/declarations/sum-centroidweightsindicator.md) | 139 | `result-track:2bc65257097e2b9b1f38515de482f875ea4eec0bc757157815c97ea3e8d3a25a` |
| 18 | `theorem` | [sum_centroidWeightsIndicator_eq_one_of_card_ne_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSpaceCentroidCentroidPublic.lean/declarations/sum-centroidweightsindicator-eq-one-of-card-ne-zero.md) | 146 | `result-track:89b13552a967ee91a3d143be7a3584752cc590d957c7bc337c9467925060f099` |
| 19 | `theorem` | [sum_centroidWeightsIndicator_eq_one_of_nonempty](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSpaceCentroidCentroidPublic.lean/declarations/sum-centroidweightsindicator-eq-one-of-nonempty.md) | 153 | `result-track:9e255c95aa90b91114f43c884dca7aa46bfdce00fd32d6fd489d22277cc9e218` |
| 20 | `theorem` | [sum_centroidWeightsIndicator_eq_one_of_card_eq_add_one](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSpaceCentroidCentroidPublic.lean/declarations/sum-centroidweightsindicator-eq-one-of-card-eq-add-one.md) | 160 | `result-track:212c05e3539920ba55d24760e05ca8f55bffbfca2860b769ea322f91787e3bea` |
| 21 | `theorem` | [centroid_eq_affineCombination_fintype](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSpaceCentroidCentroidPublic.lean/declarations/centroid-eq-affinecombination-fintype.md) | 166 | `result-track:4d9ca96c86f0fad84f4026685043066ed5063f38d181218ba75c2db3386055e9` |
| 22 | `theorem` | [centroid_eq_centroid_image_of_inj_on](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSpaceCentroidCentroidPublic.lean/declarations/centroid-eq-centroid-image-of-inj-on.md) | 175 | `result-track:8b0cc4955c23e7fc4f066367fe34784425befc6f6af6352a76065e2699c10c7d` |
| 23 | `theorem` | [centroid_eq_of_inj_on_of_image_eq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSpaceCentroidCentroidPublic.lean/declarations/centroid-eq-of-inj-on-of-image-eq.md) | 204 | `result-track:6aa27404c8c4f7a9e4738383b348c040aaa480d839b4aa35ef60ddcd3ab24528` |
| 24 | `theorem` | [centroid_vsub_const](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSpaceCentroidCentroidPublic.lean/declarations/centroid-vsub-const.md) | 214 | `result-track:7704653b4ba81e0a8a298240953a7dd6c2c06207cc3dc51c42d56a6b7255d36c` |
| 25 | `theorem` | [centroid_mem_affineSpan_of_cast_card_ne_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSpaceCentroidCentroidPublic.lean/declarations/centroid-mem-affinespan-of-cast-card-ne-zero.md) | 231 | `result-track:4855b934768c7064d6eda3e80971797b74c5db2f55ae02d8309f583e849524ac` |
| 26 | `theorem` | [centroid_mem_affineSpan_of_card_ne_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSpaceCentroidCentroidPublic.lean/declarations/centroid-mem-affinespan-of-card-ne-zero.md) | 239 | `result-track:c680c38258d9c6b06d06d6d0d625ae34fedb7abf08e9869169593352bfb8e011` |
| 27 | `theorem` | [centroid_mem_affineSpan_of_nonempty](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSpaceCentroidCentroidPublic.lean/declarations/centroid-mem-affinespan-of-nonempty.md) | 245 | `result-track:5aaa70574d6b54d977564381191fe1b52120029eacca82b6f040a815484cbc34` |
| 28 | `theorem` | [centroid_mem_affineSpan_of_card_eq_add_one](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSpaceCentroidCentroidPublic.lean/declarations/centroid-mem-affinespan-of-card-eq-add-one.md) | 251 | `result-track:c75db3cd9b98649d2c395f741262f4ccea4907e695dbcb8e7f3f2654b2c5368d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=492bf959ec99ae6ad9496582810a8d70a2f2c410d8858d467772d2ea3c0efe38 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Centroid/Variant4462d542aeaad1c1a86c2b4604b313c9f14c20c8b9d5b4c48ad33cf402128ca7.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/Centroid/Variant4462d542aeaad1c1a86c2b4604b313c9f14c20c8b9d5b4c48ad33cf402128ca7.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
