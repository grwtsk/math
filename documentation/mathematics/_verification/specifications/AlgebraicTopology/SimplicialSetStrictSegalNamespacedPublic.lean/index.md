# Verification target: Simplicial Set Strict Segal Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fd1b8e896e9baccd775850773bc451a1fdf083a3",
  "lexical_observation_count": 56,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/StrictSegal/Variant29dd7c81d274f65d0f11859bf889621f21faa3aa63a9b8c9bbe2d333c852c7fb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../AlgebraicTopology/SimplicialSetStrictSegalNamespacedPublic.lean/index.md) · [Full source](../../../../AlgebraicTopology/SimplicialSetStrictSegalNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fd1b8e896e9baccd775850773bc451a1fdf083a3`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/StrictSegal/Variant29dd7c81d274f65d0f11859bf889621f21faa3aa63a9b8c9bbe2d333c852c7fb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/StrictSegal/Variant29dd7c81d274f65d0f11859bf889621f21faa3aa63a9b8c9bbe2d333c852c7fb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [StrictSegal](../../../../AlgebraicTopology/SimplicialSetStrictSegalNamespacedPublic.lean/declarations/strictsegal-source-edition-2.md) | 53 | `declaration-track:407cdc8d008bba87dbe287e62e35981a5fcfb4f0825f9b7a55fdc77ce0235258` |
| 2 | `class` | [IsStrictSegal](../../../../AlgebraicTopology/SimplicialSetStrictSegalNamespacedPublic.lean/declarations/isstrictsegal-source-edition-5.md) | 65 | `declaration-track:ed8d179703c06182ddc1bb02f9f257f69320537b72b0af982e90ffa702ae13f3` |
| 3 | `lemma` | [spine_injective](../../../../AlgebraicTopology/SimplicialSetStrictSegalNamespacedPublic.lean/declarations/spine-injective.md) | 70 | `result-track:2e1d88509de3dceef637e04ad01eebcedd877eac8a143cdfce7aa5c8033d715b` |
| 4 | `lemma` | [spine_surjective](../../../../AlgebraicTopology/SimplicialSetStrictSegalNamespacedPublic.lean/declarations/spine-surjective.md) | 75 | `result-track:5747033eaf69ccd1273221438be31e2a81d6e9c2ad7f8ac07b685d67d7d48e6a` |
| 5 | `lemma` | [IsStrictSegal.ext](../../../../AlgebraicTopology/SimplicialSetStrictSegalNamespacedPublic.lean/declarations/isstrictsegal-ext.md) | 81 | `result-track:ddb4e4af1063e4ea992c08dd63bb3bbc611920e127e1506070fbf1d039e422f8` |
| 6 | `lemma` | [IsStrictSegal.hom_ext](../../../../AlgebraicTopology/SimplicialSetStrictSegalNamespacedPublic.lean/declarations/isstrictsegal-hom-ext.md) | 89 | `result-track:288e18751ddafb8718e347f0b84ff7565131229a3df38d605fea30adf7f98d79` |
| 7 | `def` | [ofIsStrictSegal](../../../../AlgebraicTopology/SimplicialSetStrictSegalNamespacedPublic.lean/declarations/ofisstrictsegal-source-edition-2.md) | 107 | `declaration-track:af13919c9ee9f01daba1e4ca1bba85ba793508de443bb6fe287aca8b35c21a91` |
| 8 | `lemma` | [spine_spineToSimplex_apply](../../../../AlgebraicTopology/SimplicialSetStrictSegalNamespacedPublic.lean/declarations/spine-spinetosimplex-apply.md) | 120 | `result-track:187ab29df36564ac66108782b83100e26fb63073c39c4f46c14ea49f767fae2c` |
| 9 | `lemma` | [spineToSimplex_spine_apply](../../../../AlgebraicTopology/SimplicialSetStrictSegalNamespacedPublic.lean/declarations/spinetosimplex-spine-apply.md) | 125 | `result-track:bf1f089fdf36b985028a7cee4e9b46c0f670a6b31d287a229b8f21a0f488a176` |
| 10 | `def` | [spineEquiv](../../../../AlgebraicTopology/SimplicialSetStrictSegalNamespacedPublic.lean/declarations/spineequiv.md) | 136 | `declaration-track:ac9e005425725b9369833853481b2e49f09e9035332a6e24d17027f079bc8df4` |
| 11 | `theorem` | [spineInjective](../../../../AlgebraicTopology/SimplicialSetStrictSegalNamespacedPublic.lean/declarations/spineinjective.md) | 143 | `result-track:9b8e59d0969e61b1fbc668f80ef4b16c096dd1af309a19a1a60ba76fc249d52e` |
| 12 | `def` | [spineToDiagonal](../../../../AlgebraicTopology/SimplicialSetStrictSegalNamespacedPublic.lean/declarations/spinetodiagonal-source-edition-2.md) | 149 | `declaration-track:d025a97e6e98421350f87768fd777ca177f155dac3dfc42ddcbdc366e5e344e0` |
| 13 | `lemma` | [isStrictSegal](../../../../AlgebraicTopology/SimplicialSetStrictSegalNamespacedPublic.lean/declarations/isstrictsegal-source-edition-3.md) | 156 | `result-track:985f24723f3ebaae57dca7d0128b094b148a7129b53b72c8fd318b3c18865178` |
| 14 | `theorem` | [spineToSimplex_vertex](../../../../AlgebraicTopology/SimplicialSetStrictSegalNamespacedPublic.lean/declarations/spinetosimplex-vertex-source-edition-2.md) | 162 | `result-track:b64613f0ee60437dcfc6aab737f0c65fc64353eb06a523ff0d428a50f555bcfa` |
| 15 | `theorem` | [spineToSimplex_arrow](../../../../AlgebraicTopology/SimplicialSetStrictSegalNamespacedPublic.lean/declarations/spinetosimplex-arrow.md) | 168 | `result-track:6c5f5e69e2a7c38a463a02ad7d8c284438c1c9094581f8137c1095c97b9f9d70` |
| 16 | `theorem` | [spineToSimplex_interval](../../../../AlgebraicTopology/SimplicialSetStrictSegalNamespacedPublic.lean/declarations/spinetosimplex-interval.md) | 173 | `result-track:c0b4c3d0bbb51261420cd7515ef2f461063cac70f4e9566524892510213af1a3` |
| 17 | `theorem` | [spineToSimplex_edge](../../../../AlgebraicTopology/SimplicialSetStrictSegalNamespacedPublic.lean/declarations/spinetosimplex-edge.md) | 182 | `result-track:1c1ecdc937532aa1fa76f5ea7f600d44cc1c4359978af21dce90762cc2ec6a08` |
| 18 | `lemma` | [spineToSimplex_map](../../../../AlgebraicTopology/SimplicialSetStrictSegalNamespacedPublic.lean/declarations/spinetosimplex-map-source-edition-2.md) | 193 | `result-track:d8909d5a80d01fa011623f3dcbaef7067deacedfc003cdeb0ebab0736a81c748` |
| 19 | `lemma` | [spine_δ_vertex_lt](../../../../AlgebraicTopology/SimplicialSetStrictSegalNamespacedPublic.lean/declarations/spine-vertex-lt.md) | 212 | `result-track:802720050a235022ae579b8100a9f72a51947a37253451bf85006382a45df9d5` |
| 20 | `lemma` | [spine_δ_vertex_ge](../../../../AlgebraicTopology/SimplicialSetStrictSegalNamespacedPublic.lean/declarations/spine-vertex-ge-source-edition-2.md) | 225 | `result-track:34c3a25462907f4b2ef34dfa496955817aae07ba28762179a289a7622123e8bf` |
| 21 | `lemma` | [spine_δ_arrow_lt](../../../../AlgebraicTopology/SimplicialSetStrictSegalNamespacedPublic.lean/declarations/spine-arrow-lt-source-edition-2.md) | 239 | `result-track:e1fcb28b14b5709dc13a17dc7ae9245bbe3c6ea2e1471a60d033fa97b42f11b8` |
| 22 | `lemma` | [spine_δ_arrow_gt](../../../../AlgebraicTopology/SimplicialSetStrictSegalNamespacedPublic.lean/declarations/spine-arrow-gt-source-edition-2.md) | 248 | `result-track:a153aa88ebb2b439b01ac7609ce409cc8ae656e90a060b1f025809a7a1421713` |
| 23 | `lemma` | [spine_δ_arrow_eq](../../../../AlgebraicTopology/SimplicialSetStrictSegalNamespacedPublic.lean/declarations/spine-arrow-eq-source-edition-2.md) | 259 | `result-track:be721c73a4f0a10ee9cc4b587309370f6588405a7d36c19fc98f38eef2279cd2` |
| 24 | `structure` | [StrictSegal](../../../../AlgebraicTopology/SimplicialSetStrictSegalNamespacedPublic.lean/declarations/strictsegal-source-edition-3.md) | 273 | `declaration-track:735f8416a6c7b2a52530fd8e70077e8bef98295e71c8108261c557a1c3df3fe8` |
| 25 | `class` | [IsStrictSegal](../../../../AlgebraicTopology/SimplicialSetStrictSegalNamespacedPublic.lean/declarations/isstrictsegal-source-edition-2.md) | 283 | `declaration-track:6142cf820d0bc98b533478d3b6190f552d5dfb776d8474b7ca65d051d68a5751` |
| 26 | `def` | [ofIsStrictSegal](../../../../AlgebraicTopology/SimplicialSetStrictSegalNamespacedPublic.lean/declarations/ofisstrictsegal.md) | 290 | `declaration-track:2141875ff5f24c0bb9fdece817a6f223c3918ea286e6b4c032d016edbdd01d08` |
| 27 | `def` | [truncation](../../../../AlgebraicTopology/SimplicialSetStrictSegalNamespacedPublic.lean/declarations/truncation.md) | 302 | `declaration-track:bcd372befa6180c449ad2fc155dfac61ffd82a6c09d71ed2132cc5461cb7065c` |
| 28 | `instance` | [(anonymous)](../../../../AlgebraicTopology/SimplicialSetStrictSegalNamespacedPublic.lean/declarations/instance.md) | 307 | `declaration-track:8316bc4c7e488ff25414f59d18bb3ba6eb3c7b290983450261081366e844fcd0` |
| 29 | `lemma` | [spine_spineToSimplex_apply](../../../../AlgebraicTopology/SimplicialSetStrictSegalNamespacedPublic.lean/declarations/spine-spinetosimplex-apply-source-edition-2.md) | 312 | `result-track:f41dcc19c4d69d48002c59e687ded8d403026d366f1c5e1aaab4b206c983d8f6` |
| 30 | `lemma` | [spineToSimplex_spine_apply](../../../../AlgebraicTopology/SimplicialSetStrictSegalNamespacedPublic.lean/declarations/spinetosimplex-spine-apply-source-edition-2.md) | 317 | `result-track:f9ef2161bbd52ec4909b7790e36252fbcb867879f884600e2e9b1cb756763c47` |
| 31 | `def` | [spineEquiv](../../../../AlgebraicTopology/SimplicialSetStrictSegalNamespacedPublic.lean/declarations/spineequiv-source-edition-2.md) | 323 | `declaration-track:d0ab1710a1c418c5e6043213d44706a0218bfa7e30088708bb81e680574b257f` |
| 32 | `theorem` | [spineInjective](../../../../AlgebraicTopology/SimplicialSetStrictSegalNamespacedPublic.lean/declarations/spineinjective-source-edition-2.md) | 331 | `result-track:a43470aa9ad5882b50ca9df46b040b73431b4df51501032e5548061cfdd99417` |
| 33 | `lemma` | [isStrictSegal](../../../../AlgebraicTopology/SimplicialSetStrictSegalNamespacedPublic.lean/declarations/isstrictsegal.md) | 336 | `result-track:298ccb6ae78ec0b51c585dc6689ffb3c7e886a44ec980913fdfd175ece98a277` |
| 34 | `theorem` | [spineToSimplex_vertex](../../../../AlgebraicTopology/SimplicialSetStrictSegalNamespacedPublic.lean/declarations/spinetosimplex-vertex.md) | 340 | `result-track:77e13c432e2b1d72c81a7453abf8d8bb7a41eaf7b1ca1c9335420453920f4da0` |
| 35 | `theorem` | [spineToSimplex_arrow](../../../../AlgebraicTopology/SimplicialSetStrictSegalNamespacedPublic.lean/declarations/spinetosimplex-arrow-source-edition-2.md) | 346 | `result-track:abf15fea9332f5a392d5f2b776a4b1d6c11f2a8fa96d3d58f0e6712e2906362e` |
| 36 | `def` | [spineToDiagonal](../../../../AlgebraicTopology/SimplicialSetStrictSegalNamespacedPublic.lean/declarations/spinetodiagonal.md) | 352 | `declaration-track:109c0144aec2f4f0795568161f3929725320353b7e4bd965d6feef10ab64b546` |
| 37 | `theorem` | [spineToSimplex_interval](../../../../AlgebraicTopology/SimplicialSetStrictSegalNamespacedPublic.lean/declarations/spinetosimplex-interval-source-edition-2.md) | 360 | `result-track:ca4b0ce24334ee1aea78385dcffcde445d326da0bcbbcbc96f63bfae04d35064` |
| 38 | `theorem` | [spineToSimplex_edge](../../../../AlgebraicTopology/SimplicialSetStrictSegalNamespacedPublic.lean/declarations/spinetosimplex-edge-source-edition-2.md) | 368 | `result-track:a67c4c6cd488adc47f345c4aa539177d8f3b4a858907ae143136283ab26c58b7` |
| 39 | `lemma` | [spineToSimplex_map](../../../../AlgebraicTopology/SimplicialSetStrictSegalNamespacedPublic.lean/declarations/spinetosimplex-map.md) | 379 | `result-track:64a4a69c7622a6405dbe118f8352725bf37d49cf17e70c06a027886230ca92a9` |
| 40 | `lemma` | [spine_δ_vertex_lt](../../../../AlgebraicTopology/SimplicialSetStrictSegalNamespacedPublic.lean/declarations/spine-vertex-lt-source-edition-2.md) | 394 | `result-track:9694ca5b66597ca976b9ec22d0581fc4f81b8466d0baf34591e8b6514f551a83` |
| 41 | `lemma` | [spine_δ_vertex_ge](../../../../AlgebraicTopology/SimplicialSetStrictSegalNamespacedPublic.lean/declarations/spine-vertex-ge.md) | 407 | `result-track:083aa22222347965cad96dc44daf88df7ffb7c4f93d46bac4dfa87ba5bf15af5` |
| 42 | `lemma` | [spine_δ_arrow_lt](../../../../AlgebraicTopology/SimplicialSetStrictSegalNamespacedPublic.lean/declarations/spine-arrow-lt.md) | 421 | `result-track:17d41c8ff6334c05681bd226b7243b512ebb81e5d39905a2d26cd7c35f42ac39` |
| 43 | `lemma` | [spine_δ_arrow_gt](../../../../AlgebraicTopology/SimplicialSetStrictSegalNamespacedPublic.lean/declarations/spine-arrow-gt.md) | 430 | `result-track:0496eedeea009595753ee67db571e22cfa1bceba47ea20a14ef5a77a7d01f3bd` |
| 44 | `lemma` | [spine_δ_arrow_eq](../../../../AlgebraicTopology/SimplicialSetStrictSegalNamespacedPublic.lean/declarations/spine-arrow-eq.md) | 439 | `result-track:5aa4651e4fddc5ff173c0a815e636e413e3d7c9cc2ec082a5c81ad99b7ab7455` |
| 45 | `structure` | [StrictSegalCore](../../../../AlgebraicTopology/SimplicialSetStrictSegalNamespacedPublic.lean/declarations/strictsegalcore.md) | 449 | `declaration-track:677d4ccb6c1b03a5d98327747acad3c3d06f8f4b1213eaf146e571606c05e31f` |
| 46 | `def` | [spineToSimplexAux](../../../../AlgebraicTopology/SimplicialSetStrictSegalNamespacedPublic.lean/declarations/spinetosimplexaux.md) | 464 | `declaration-track:38135a4a8ebdbd6057a6e5fa13963b31914e22b0b133515f73c5c5f0dd8b90a1` |
| 47 | `def` | [spineToSimplex](../../../../AlgebraicTopology/SimplicialSetStrictSegalNamespacedPublic.lean/declarations/spinetosimplex-source-edition-2.md) | 481 | `declaration-track:9ed7b500564ebda3ddfa7e0333dfadc591c2141b7564537d8ee32c3b2309cf87` |
| 48 | `lemma` | [spine_spineToSimplex](../../../../AlgebraicTopology/SimplicialSetStrictSegalNamespacedPublic.lean/declarations/spine-spinetosimplex.md) | 484 | `result-track:583f67b77fe0e276933192c188b19071e51fa5ec42aa2e906c338eadcc70cc47` |
| 49 | `lemma` | [spineToSimplex_zero](../../../../AlgebraicTopology/SimplicialSetStrictSegalNamespacedPublic.lean/declarations/spinetosimplex-zero.md) | 486 | `result-track:1846d4cde10c9e9e80eba38ba530b00ce10648a9a5bc10bb8d259ae46eaf27d9` |
| 50 | `lemma` | [spineToSimplex_succ](../../../../AlgebraicTopology/SimplicialSetStrictSegalNamespacedPublic.lean/declarations/spinetosimplex-succ.md) | 488 | `result-track:e8c4bf2ce1fba21ac0b9d3cb316d02670474dcdd801621208b9dfda1b74b9a8d` |
| 51 | `lemma` | [map_mkOfSucc_zero_spineToSimplex](../../../../AlgebraicTopology/SimplicialSetStrictSegalNamespacedPublic.lean/declarations/map-mkofsucc-zero-spinetosimplex.md) | 494 | `result-track:e94e46299bb230c0d809e99b9bde39df65c2fe969d6b77aa56366f02b5079db7` |
| 52 | `lemma` | [δ₀_spineToSimplex](../../../../AlgebraicTopology/SimplicialSetStrictSegalNamespacedPublic.lean/declarations/spinetosimplex.md) | 498 | `result-track:238a53846465d141b7c90c259b638685b0044a26870e2e41955acdf044de3b99` |
| 53 | `lemma` | [spineToSimplex_spine](../../../../AlgebraicTopology/SimplicialSetStrictSegalNamespacedPublic.lean/declarations/spinetosimplex-spine.md) | 503 | `result-track:56ad5a429efdf8b79af91f4ab5b5b57609ab6e07af89fdf67673c00a2ac6f0ae` |
| 54 | `def` | [StrictSegal.ofCore](../../../../AlgebraicTopology/SimplicialSetStrictSegalNamespacedPublic.lean/declarations/strictsegal-ofcore.md) | 515 | `declaration-track:6f2c96884d68768b41252555fff73d038fb5dfc619273cca7d499aadc554affe` |
| 55 | `def` | [strictSegal](../../../../AlgebraicTopology/SimplicialSetStrictSegalNamespacedPublic.lean/declarations/strictsegal.md) | 531 | `declaration-track:00f696481124a8033f29c7f9706dc864d3f0f4b2a60211cfb9857598d8e60e4f` |
| 56 | `instance` | [isStrictSegal](../../../../AlgebraicTopology/SimplicialSetStrictSegalNamespacedPublic.lean/declarations/isstrictsegal-source-edition-4.md) | 542 | `declaration-track:c7607aaf669183c11d8bf6d2f27d118d341771c8fc8ce73384d479438aebfa16` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8c80d81bdcf46f245a228a1ea7b9f72c3a58fdf0324deacd570ee6b80eed8d4d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/StrictSegal/Variant29dd7c81d274f65d0f11859bf889621f21faa3aa63a9b8c9bbe2d333c852c7fb.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/StrictSegal/Variant29dd7c81d274f65d0f11859bf889621f21faa3aa63a9b8c9bbe2d333c852c7fb.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
