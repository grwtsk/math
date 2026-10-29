# Verification target: Chunk Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1d3640818920e6fa027bbee864ca5e7737da8fcb",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Chunk/Variant0b4624ac06aaa85fd6bf03f6a0b40ab379c605002495e50bdea8886069e82029.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../Combinatorics/GraphTheory/ChunkNamespacedPublic.lean/index.md) · [Full source](../../../../../Combinatorics/GraphTheory/ChunkNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1d3640818920e6fa027bbee864ca5e7737da8fcb`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Chunk/Variant0b4624ac06aaa85fd6bf03f6a0b40ab379c605002495e50bdea8886069e82029.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/GraphTheory/Chunk/Variant0b4624ac06aaa85fd6bf03f6a0b40ab379c605002495e50bdea8886069e82029.lean.json)

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
| 1 | `def` | [chunk](../../../../../Combinatorics/GraphTheory/ChunkNamespacedPublic.lean/declarations/chunk.md) | 70 | `declaration-track:b7727f2c960b3a18f308154d7397abf086c527f96b54f9be225e64ddb1495222` |
| 2 | `def` | [star](../../../../../Combinatorics/GraphTheory/ChunkNamespacedPublic.lean/declarations/star.md) | 79 | `declaration-track:3b4ff66ba7cd92566b881903ec352094ba35cb1bb0a934e34bcc3c3a4e805e2f` |
| 3 | `theorem` | [biUnion_star_subset_nonuniformWitness](../../../../../Combinatorics/GraphTheory/ChunkNamespacedPublic.lean/declarations/biunion-star-subset-nonuniformwitness.md) | 89 | `result-track:f1c6f14786016d0177e9b6d5a871ba432fce8e320b2453e63f363e6698814975` |
| 4 | `theorem` | [star_subset_chunk](../../../../../Combinatorics/GraphTheory/ChunkNamespacedPublic.lean/declarations/star-subset-chunk.md) | 95 | `result-track:b04c54fd38cc240d06f63576c18791a9ff66fb56d41f2a97d47ff19f9d8130a0` |
| 5 | `theorem` | [card_nonuniformWitness_sdiff_biUnion_star](../../../../../Combinatorics/GraphTheory/ChunkNamespacedPublic.lean/declarations/card-nonuniformwitness-sdiff-biunion-star.md) | 98 | `result-track:113b61755bedd36206bdb00e06bbea0f7ae11d1815633aec431395908abb5095` |
| 6 | `theorem` | [one_sub_eps_mul_card_nonuniformWitness_le_card_star](../../../../../Combinatorics/GraphTheory/ChunkNamespacedPublic.lean/declarations/one-sub-eps-mul-card-nonuniformwitness-le-card-star.md) | 129 | `result-track:2ea43befbdf435e3e7c5abb71460f02e7f2944918ee93443b4bd7a8800a06cb2` |
| 7 | `theorem` | [card_chunk](../../../../../Combinatorics/GraphTheory/ChunkNamespacedPublic.lean/declarations/card-chunk.md) | 181 | `result-track:e736b3f45ad88151efff2e29c975a7d31ffe20b8296219f1341f2cd933a5e371` |
| 8 | `theorem` | [card_eq_of_mem_parts_chunk](../../../../../Combinatorics/GraphTheory/ChunkNamespacedPublic.lean/declarations/card-eq-of-mem-parts-chunk.md) | 188 | `result-track:12253a7ee141322b3f636c4ae4ca141514eef98ebdbb5b5733724469745575ab` |
| 9 | `theorem` | [m_le_card_of_mem_chunk_parts](../../../../../Combinatorics/GraphTheory/ChunkNamespacedPublic.lean/declarations/m-le-card-of-mem-chunk-parts.md) | 193 | `result-track:df6117657575ee4d24dba4e423b42792e32e88196713901191d3d6f0caed2e51` |
| 10 | `theorem` | [card_le_m_add_one_of_mem_chunk_parts](../../../../../Combinatorics/GraphTheory/ChunkNamespacedPublic.lean/declarations/card-le-m-add-one-of-mem-chunk-parts.md) | 196 | `result-track:4e43c2e3f73751d89aabc3f0065c4686751b9b4da4e9d8909561b91faf132d7d` |
| 11 | `theorem` | [card_biUnion_star_le_m_add_one_card_star_mul](../../../../../Combinatorics/GraphTheory/ChunkNamespacedPublic.lean/declarations/card-biunion-star-le-m-add-one-card-star-mul.md) | 199 | `result-track:b990b6b5ddfbab4f4477765aa48b3e25cee5eae689fdf90585c53bf1cbb0e198` |
| 12 | `theorem` | [le_sum_card_subset_chunk_parts](../../../../../Combinatorics/GraphTheory/ChunkNamespacedPublic.lean/declarations/le-sum-card-subset-chunk-parts.md) | 204 | `result-track:c3e58e371c18c0b9f031c944d3df383156be72f87f2e88a32adc6db63835ec1f` |
| 13 | `theorem` | [sum_card_subset_chunk_parts_le](../../../../../Combinatorics/GraphTheory/ChunkNamespacedPublic.lean/declarations/sum-card-subset-chunk-parts-le.md) | 212 | `result-track:653511c9929fb52e49421fdc7bb083f3ceaa401bad1760579faf34d70f3cbf49` |
| 14 | `theorem` | [one_sub_le_m_div_m_add_one_sq](../../../../../Combinatorics/GraphTheory/ChunkNamespacedPublic.lean/declarations/one-sub-le-m-div-m-add-one-sq.md) | 222 | `result-track:87dcef78535bca6ae272e94b084b16a416894bd6041ce5fcdcf777fa141f9856` |
| 15 | `theorem` | [m_add_one_div_m_le_one_add](../../../../../Combinatorics/GraphTheory/ChunkNamespacedPublic.lean/declarations/m-add-one-div-m-le-one-add.md) | 236 | `result-track:fc32c4984cfa6d3eda1d214cce88449c8c37eb52d625ecaaa59c3b4126cc3376` |
| 16 | `theorem` | [density_sub_eps_le_sum_density_div_card](../../../../../Combinatorics/GraphTheory/ChunkNamespacedPublic.lean/declarations/density-sub-eps-le-sum-density-div-card.md) | 251 | `result-track:c580d6f4706b57df67ac0b70525b36aec3173a42521882572a16f008909cbe6b` |
| 17 | `theorem` | [sum_density_div_card_le_density_add_eps](../../../../../Combinatorics/GraphTheory/ChunkNamespacedPublic.lean/declarations/sum-density-div-card-le-density-add-eps.md) | 288 | `result-track:d5c823ebdc401b653b919fe63ad96518bbcc3774803ac00091b1ea3b350e3e44` |
| 18 | `theorem` | [average_density_near_total_density](../../../../../Combinatorics/GraphTheory/ChunkNamespacedPublic.lean/declarations/average-density-near-total-density.md) | 327 | `result-track:2e71c3dc95a080592e545e96b470c2dbd2c20dde3e0e6147ba160917d6df7f89` |
| 19 | `theorem` | [edgeDensity_chunk_aux](../../../../../Combinatorics/GraphTheory/ChunkNamespacedPublic.lean/declarations/edgedensity-chunk-aux.md) | 344 | `result-track:ab9083e4f523a3bbda4685d589ca5ac99d2cf9ad0dccf7b5af4976c3b27fb5ec` |
| 20 | `theorem` | [abs_density_star_sub_density_le_eps](../../../../../Combinatorics/GraphTheory/ChunkNamespacedPublic.lean/declarations/abs-density-star-sub-density-le-eps.md) | 371 | `result-track:f560889fc2ba755fb152881e48203c0a8296c993ffa86a4d74aada3d0c58e842` |
| 21 | `theorem` | [eps_le_card_star_div](../../../../../Combinatorics/GraphTheory/ChunkNamespacedPublic.lean/declarations/eps-le-card-star-div.md) | 384 | `result-track:3feba302b1ce94c401f071715abcdd7addfed2b37f2a933f5e5fd3b578cdec6b` |
| 22 | `theorem` | [edgeDensity_star_not_uniform](../../../../../Combinatorics/GraphTheory/ChunkNamespacedPublic.lean/declarations/edgedensity-star-not-uniform.md) | 427 | `result-track:500b6a83c1e8e0c0c34ecf5603555f2d8a60b92911dc0a8f829eae2e734c6e01` |
| 23 | `theorem` | [edgeDensity_chunk_not_uniform](../../../../../Combinatorics/GraphTheory/ChunkNamespacedPublic.lean/declarations/edgedensity-chunk-not-uniform.md) | 462 | `result-track:cb39d9ad8abd87389801eb8d85a649635fabaf20350170b195ede93488a6f99c` |
| 24 | `theorem` | [edgeDensity_chunk_uniform](../../../../../Combinatorics/GraphTheory/ChunkNamespacedPublic.lean/declarations/edgedensity-chunk-uniform.md) | 511 | `result-track:fc1fe771de179393f7fc566cfa43bde067ec41575638c499314f15b4efcb31f7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=321a3d5c08cfadfb646441257fcebb77cbab4b6fca480854bccb951b971d9230 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Chunk/Variant0b4624ac06aaa85fd6bf03f6a0b40ab379c605002495e50bdea8886069e82029.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/GraphTheory/Chunk/Variant0b4624ac06aaa85fd6bf03f6a0b40ab379c605002495e50bdea8886069e82029.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
