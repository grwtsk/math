# Verification target: Cone Dual Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "06dba79a0068bfdb18c58f2f4636ee0c5f75a9a4",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Dual/Variant0e8271ee635f59dbb23762c32eda91fb0d8b3812680f6ea762836e282798c849.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../Geometry/ConeDualNamespacedPublic.lean/index.md) · [Full source](../../../../Geometry/ConeDualNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `06dba79a0068bfdb18c58f2f4636ee0c5f75a9a4`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Dual/Variant0e8271ee635f59dbb23762c32eda91fb0d8b3812680f6ea762836e282798c849.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Dual/Variant0e8271ee635f59dbb23762c32eda91fb0d8b3812680f6ea762836e282798c849.lean.json)

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
| 1 | `def` | [dual](../../../../Geometry/ConeDualNamespacedPublic.lean/declarations/dual.md) | 58 | `declaration-track:bbcfdaad6cafee28ff18c932e392469bfe920fefa3a7c49d798af8de2ac8f426` |
| 2 | `lemma` | [mem_dual](../../../../Geometry/ConeDualNamespacedPublic.lean/declarations/mem-dual.md) | 64 | `result-track:8d535b2060428baa63fb2a44556dbdd2d34cec67fcc463d06e8d64962e3c102d` |
| 3 | `lemma` | [dual_empty](../../../../Geometry/ConeDualNamespacedPublic.lean/declarations/dual-empty.md) | 66 | `result-track:1af06bc85c8daf88f03f446f8a3cd9d1e08be6d49e2b01902643a3fd74042a08` |
| 4 | `lemma` | [dual_zero](../../../../Geometry/ConeDualNamespacedPublic.lean/declarations/dual-zero.md) | 67 | `result-track:e94d25200f0ed6440173a251154219f15b2c5081f3954cb085331e53a90c3ee7` |
| 5 | `lemma` | [dual_singleton_zero](../../../../Geometry/ConeDualNamespacedPublic.lean/declarations/dual-singleton-zero.md) | 68 | `result-track:d33fcc22d8687179f2132b3880f8cf454d407043c5968deb65193b9bef949bfc` |
| 6 | `lemma` | [dual_ker](../../../../Geometry/ConeDualNamespacedPublic.lean/declarations/dual-ker.md) | 69 | `result-track:57572602864b4c255997c2741b856b51c3e9a9841b83d50d6bfcf3692476211d` |
| 7 | `lemma` | [dual_anti](../../../../Geometry/ConeDualNamespacedPublic.lean/declarations/dual-anti.md) | 71 | `result-track:e62ad0e8994d0c965d07e5adfefeca45a18601fa9cab2671ea3dc2790ba3a3ae` |
| 8 | `lemma` | [dual_antitone](../../../../Geometry/ConeDualNamespacedPublic.lean/declarations/dual-antitone.md) | 75 | `result-track:8e2674c659b98a6a69522a7c2af00cd378a4c2debd04c00454297da795fbc10e` |
| 9 | `lemma` | [dual_singleton](../../../../Geometry/ConeDualNamespacedPublic.lean/declarations/dual-singleton.md) | 79 | `result-track:06e63f25820fba2923e263cc2d28df91dbc5ea3b13d37c211a0eeb9b900064e9` |
| 10 | `lemma` | [dual_union](../../../../Geometry/ConeDualNamespacedPublic.lean/declarations/dual-union.md) | 81 | `result-track:38d011d269ddaa618e8378ae880195238e05c786e895c1b02e8fbe1c6e3ffb33` |
| 11 | `lemma` | [dual_insert](../../../../Geometry/ConeDualNamespacedPublic.lean/declarations/dual-insert.md) | 83 | `result-track:dd23159649c414fc61b86e990ad85f390eee405490ce7afa49216cbf59fefb5d` |
| 12 | `lemma` | [dual_iUnion](../../../../Geometry/ConeDualNamespacedPublic.lean/declarations/dual-iunion.md) | 86 | `result-track:13608b5e939d23d446587dc436466bf47b11178b4f0e50c7ce80dbb3217fe8c5` |
| 13 | `lemma` | [dual_sUnion](../../../../Geometry/ConeDualNamespacedPublic.lean/declarations/dual-sunion.md) | 89 | `result-track:992aaa62bc810cd1db28e25348ce84956fd740b5350a1471fda37683241f4bfc` |
| 14 | `lemma` | [dual_eq_iInter_dual_singleton](../../../../Geometry/ConeDualNamespacedPublic.lean/declarations/dual-eq-iinter-dual-singleton.md) | 93 | `result-track:017b58ccf28596541d1795588fa0609b394925681cde3af88acb5d3814e0b5ee` |
| 15 | `lemma` | [subset_dual_dual](../../../../Geometry/ConeDualNamespacedPublic.lean/declarations/subset-dual-dual.md) | 97 | `result-track:14133c239ca999b6b87bc711e6e745de8b0c563577de0f4a028e59bc8316cf5d` |
| 16 | `lemma` | [subset_dual_flip_iff_subset_dual](../../../../Geometry/ConeDualNamespacedPublic.lean/declarations/subset-dual-flip-iff-subset-dual.md) | 99 | `result-track:de8d3ac24a3bc1354fd2c310872b976c3cfd73a475963120e1451afae440c906` |
| 17 | `lemma` | [dual_dual_flip_dual](../../../../Geometry/ConeDualNamespacedPublic.lean/declarations/dual-dual-flip-dual.md) | 104 | `result-track:a69425040b2729de1b514101a1845a8b29b747f4b98ee581bced39f68e512e0e` |
| 18 | `lemma` | [dual_flip_dual_dual_flip](../../../../Geometry/ConeDualNamespacedPublic.lean/declarations/dual-flip-dual-dual-flip.md) | 107 | `result-track:2b7c884d07c2269b1ef6e00f6479f4b65c95f56725847bd583dc3f3f7d7202e0` |
| 19 | `lemma` | [dual_hull](../../../../Geometry/ConeDualNamespacedPublic.lean/declarations/dual-hull.md) | 111 | `result-track:c95a7ea159b7c9ba43117134a669ceeac9c20f2b415360cb09a3f5b9bf2587f0` |
| 20 | `lemma` | [dual_sup](../../../../Geometry/ConeDualNamespacedPublic.lean/declarations/dual-sup.md) | 122 | `result-track:ffe2b4381d8a5ec139d300624d9f43b9d009d4974ca83f85c3a8dc4ad9987274` |
| 21 | `lemma` | [dual_image](../../../../Geometry/ConeDualNamespacedPublic.lean/declarations/dual-image.md) | 127 | `result-track:54757c8bfb5b1ea992f06d6d64fef4748adf492d83e412d74a69c69b1ef9f48c` |
| 22 | `lemma` | [dual_eq_dual_id_image](../../../../Geometry/ConeDualNamespacedPublic.lean/declarations/dual-eq-dual-id-image.md) | 132 | `result-track:bf5032a274a922d8d530fa7515e4665608417ac8a1d618de6610edf64fd38615` |
| 23 | `lemma` | [dual_eq_dual_id_map](../../../../Geometry/ConeDualNamespacedPublic.lean/declarations/dual-eq-dual-id-map.md) | 136 | `result-track:a1350177f2cfbd2ac1ac20b39721f25b27f470f97d59661cbd5335118a6c3052` |
| 24 | `lemma` | [dual_eq_comap_dual_eval](../../../../Geometry/ConeDualNamespacedPublic.lean/declarations/dual-eq-comap-dual-eval.md) | 140 | `result-track:8310073def6df69e6223c7c678e95795ed3bef7ddb6cdf32722cf347f9c66230` |
| 25 | `lemma` | [dual_univ](../../../../Geometry/ConeDualNamespacedPublic.lean/declarations/dual-univ.md) | 153 | `result-track:1c7e6d44cf238c33b98b91ab1829c32da7702f12325a7206bf76d7321c6d1d7e` |
| 26 | `lemma` | [dual_neg](../../../../Geometry/ConeDualNamespacedPublic.lean/declarations/dual-neg.md) | 161 | `result-track:e4d2c7a3f521dd33b6df2ba22c317f10c5b7362a4dae5bd76ca52faf7529fe95` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=66bb00031b376ffb9d52d780346fb0d9330a8e496b02691d7416f59575ee2290 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Dual/Variant0e8271ee635f59dbb23762c32eda91fb0d8b3812680f6ea762836e282798c849.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Dual/Variant0e8271ee635f59dbb23762c32eda91fb0d8b3812680f6ea762836e282798c849.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
