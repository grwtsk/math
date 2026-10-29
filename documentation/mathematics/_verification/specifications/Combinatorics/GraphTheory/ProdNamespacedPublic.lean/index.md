# Verification target: Prod Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8a76be2ac43772494d403af8e71d400941f0ecb5",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Prod/Variant7662e479fb945e8080d84eb81d20d392ce7c1fd9f01ba3718417a697c4eaf395.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../Combinatorics/GraphTheory/ProdNamespacedPublic.lean/index.md) · [Full source](../../../../../Combinatorics/GraphTheory/ProdNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8a76be2ac43772494d403af8e71d400941f0ecb5`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Prod/Variant7662e479fb945e8080d84eb81d20d392ce7c1fd9f01ba3718417a697c4eaf395.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/GraphTheory/Prod/Variant7662e479fb945e8080d84eb81d20d392ce7c1fd9f01ba3718417a697c4eaf395.lean.json)

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
| 1 | `def` | [boxProd](../../../../../Combinatorics/GraphTheory/ProdNamespacedPublic.lean/declarations/boxprod.md) | 51 | `declaration-track:4d974fbeaf03c9d1848a0c4fe3b155031fab5ab1d9621779e651c2e65853ab9d` |
| 2 | `theorem` | [boxProd_adj](../../../../../Combinatorics/GraphTheory/ProdNamespacedPublic.lean/declarations/boxprod-adj.md) | 60 | `result-track:58b3b823dfe84321f9798e012d32626171f1cab314ff303e51be2e56be562cfc` |
| 3 | `theorem` | [boxProd_adj_left](../../../../../Combinatorics/GraphTheory/ProdNamespacedPublic.lean/declarations/boxprod-adj-left.md) | 64 | `result-track:df805efeff983de33bebfe02b2b11c54e3ad6922417e2c1329f6bfe124f6afeb` |
| 4 | `theorem` | [boxProd_adj_right](../../../../../Combinatorics/GraphTheory/ProdNamespacedPublic.lean/declarations/boxprod-adj-right.md) | 68 | `result-track:abc2887b7b5f3a24237da9444dd0685ad096d44e702d1600ef4a7c5582559c10` |
| 5 | `theorem` | [neighborSet_boxProd](../../../../../Combinatorics/GraphTheory/ProdNamespacedPublic.lean/declarations/neighborset-boxprod.md) | 71 | `result-track:fa20feda98ab600c0ac586ed085bfbb640b01520545b30aa769b5816a9af4ee2` |
| 6 | `def` | [boxProdComm](../../../../../Combinatorics/GraphTheory/ProdNamespacedPublic.lean/declarations/boxprodcomm.md) | 81 | `declaration-track:9e6b17b0cbac9b3c3a65f856ba17120a7367097033d4520dd91599db9ff49a7f` |
| 7 | `def` | [boxProdAssoc](../../../../../Combinatorics/GraphTheory/ProdNamespacedPublic.lean/declarations/boxprodassoc.md) | 85 | `declaration-track:103c806d4610bd6ecbb3e0c3b8ed929b3a7807832261db026e6010d8f41c4ccb` |
| 8 | `def` | [boxProdLeft](../../../../../Combinatorics/GraphTheory/ProdNamespacedPublic.lean/declarations/boxprodleft.md) | 92 | `declaration-track:0647e5981100738df82b823f7c773dbd59c54900f64de3dc3bed76302c106553` |
| 9 | `def` | [boxProdRight](../../../../../Combinatorics/GraphTheory/ProdNamespacedPublic.lean/declarations/boxprodright-source-edition-2.md) | 99 | `declaration-track:df9a14ccbd79b09eadf5c4c2f97797800b3104b3199e89746e99de16dcd243e3` |
| 10 | `def` | [boxProdSumDistrib](../../../../../Combinatorics/GraphTheory/ProdNamespacedPublic.lean/declarations/boxprodsumdistrib.md) | 108 | `declaration-track:58a88062eaef605d228ce5813808f721cd0ac487491a0df7570417b585736440` |
| 11 | `def` | [sumBoxProdDistrib](../../../../../Combinatorics/GraphTheory/ProdNamespacedPublic.lean/declarations/sumboxproddistrib.md) | 115 | `declaration-track:7325076be70ca28e03b0854b1cc9b65fff43111bd0ea88a7578d3e3b8aca456e` |
| 12 | `def` | [boxProdLeft](../../../../../Combinatorics/GraphTheory/ProdNamespacedPublic.lean/declarations/boxprodleft-source-edition-2.md) | 127 | `declaration-track:3124512cee7f878703686bf44e60d86087eca20a2edc915b267b60f930d6662f` |
| 13 | `def` | [boxProdRight](../../../../../Combinatorics/GraphTheory/ProdNamespacedPublic.lean/declarations/boxprodright.md) | 133 | `declaration-track:a58bdfc6196061904001cd7bb6cf2682115a422faf4569dd220bf772968f7945` |
| 14 | `def` | [ofBoxProdLeft](../../../../../Combinatorics/GraphTheory/ProdNamespacedPublic.lean/declarations/ofboxprodleft.md) | 139 | `declaration-track:b0cb202664aabe64081af01883dc1289e5706910d6ce5b2ebf8d6262030c8c50` |
| 15 | `def` | [ofBoxProdRight](../../../../../Combinatorics/GraphTheory/ProdNamespacedPublic.lean/declarations/ofboxprodright.md) | 148 | `declaration-track:5d8af47da0cbd90a8193ecf8a893e3a26be3b73adbbea63f66b57858e2f87759` |
| 16 | `theorem` | [ofBoxProdLeft_boxProdLeft](../../../../../Combinatorics/GraphTheory/ProdNamespacedPublic.lean/declarations/ofboxprodleft-boxprodleft.md) | 158 | `result-track:7f399f6ab8cfb267a975ebd4c44b60d336be1f5720b7b2b932e24a1d7e538dc4` |
| 17 | `theorem` | [ofBoxProdRight_boxProdRight](../../../../../Combinatorics/GraphTheory/ProdNamespacedPublic.lean/declarations/ofboxprodright-boxprodright.md) | 168 | `result-track:6b1c67d58f8d6a2e89f394c1ef07b0e715cd6ecb3c517d17723639afcab33c90` |
| 18 | `lemma` | [length_boxProd](../../../../../Combinatorics/GraphTheory/ProdNamespacedPublic.lean/declarations/length-boxprod.md) | 177 | `result-track:554d7845b7d19c4305d0674528844d37a8139b3364bd5116fcfb71aa369c2268` |
| 19 | `theorem` | [Preconnected.boxProd](../../../../../Combinatorics/GraphTheory/ProdNamespacedPublic.lean/declarations/preconnected-boxprod.md) | 197 | `result-track:11cffb12a060fe946822cc24d868e1aae53840398ff0c5075c4197480827bd2c` |
| 20 | `theorem` | [Preconnected.ofBoxProdLeft](../../../../../Combinatorics/GraphTheory/ProdNamespacedPublic.lean/declarations/preconnected-ofboxprodleft.md) | 204 | `result-track:683c0f001725cfb6db8e531b54d640fc842296e3d6c569ec9678c15bb548c89a` |
| 21 | `theorem` | [Preconnected.ofBoxProdRight](../../../../../Combinatorics/GraphTheory/ProdNamespacedPublic.lean/declarations/preconnected-ofboxprodright.md) | 211 | `result-track:4067a71cc949cdded03e57c2cd3e918f732f6c24ab5d084c2c6197427b44d8e0` |
| 22 | `theorem` | [Connected.boxProd](../../../../../Combinatorics/GraphTheory/ProdNamespacedPublic.lean/declarations/connected-boxprod.md) | 218 | `result-track:34a16c32fc7d866307ea3bcaf7ce2e9031d20367720a1495f1894c43bd21b4e9` |
| 23 | `theorem` | [Connected.ofBoxProdLeft](../../../../../Combinatorics/GraphTheory/ProdNamespacedPublic.lean/declarations/connected-ofboxprodleft.md) | 223 | `result-track:f9cd7cdeaf8e52ec81c31fe8d50c8209b202b902e2c812461c50e7eb03e2753f` |
| 24 | `theorem` | [Connected.ofBoxProdRight](../../../../../Combinatorics/GraphTheory/ProdNamespacedPublic.lean/declarations/connected-ofboxprodright.md) | 228 | `result-track:89a15ce3f7232715b9da14d7850297f324c8bdb1a2ca56df5d04be1180b15a2f` |
| 25 | `theorem` | [connected_boxProd](../../../../../Combinatorics/GraphTheory/ProdNamespacedPublic.lean/declarations/connected-boxprod-source-edition-2.md) | 234 | `result-track:c852c7d9ba610108175b047d7ffed94e23978ccb85d2c5cc0379141825e7617e` |
| 26 | `instance` | [boxProdFintypeNeighborSet](../../../../../Combinatorics/GraphTheory/ProdNamespacedPublic.lean/declarations/boxprodfintypeneighborset.md) | 237 | `declaration-track:9cf916092c7de799b0b9ea811428a16b46a8407e99cbcc11f57ac6b9485a6fa8` |
| 27 | `theorem` | [neighborFinset_boxProd](../../../../../Combinatorics/GraphTheory/ProdNamespacedPublic.lean/declarations/neighborfinset-boxprod.md) | 248 | `result-track:5424d1179db18c2b18034493144e9acdf0ce7084b1fa6c38d7f87bb7bdf0d06b` |
| 28 | `theorem` | [degree_boxProd](../../../../../Combinatorics/GraphTheory/ProdNamespacedPublic.lean/declarations/degree-boxprod.md) | 258 | `result-track:e82792e9dad90ddc4fda95768509810986d547cdd5650438606d4b4aa6592fcf` |
| 29 | `lemma` | [reachable_boxProd](../../../../../Combinatorics/GraphTheory/ProdNamespacedPublic.lean/declarations/reachable-boxprod.md) | 264 | `result-track:edde26db8aedc7c35c3c501b6c3765a8fc2c13e037ca9ebb1623089c7e76d587` |
| 30 | `lemma` | [edist_boxProd](../../../../../Combinatorics/GraphTheory/ProdNamespacedPublic.lean/declarations/edist-boxprod.md) | 275 | `result-track:4a1c699d78368affdc74157b51c4e8b3d0bfafb6d6c1a70853e3df81ca825889` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f24b49a591640627604624ddcf0f35ae30b92c59bfbf8056dc4e8a0432e9a61b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Prod/Variant7662e479fb945e8080d84eb81d20d392ce7c1fd9f01ba3718417a697c4eaf395.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/GraphTheory/Prod/Variant7662e479fb945e8080d84eb81d20d392ce7c1fd9f01ba3718417a697c4eaf395.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
