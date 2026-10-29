# Verification target: Rat Namespaced Uniform Embedding Coe Real

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3d705f27d1f0a8399f98c240cd26acf800463845",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/Rat/Variant993422bd1eadd7fc895884739fd16e3c9223420dfc60932f079b61095af0fd9b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/RatNamespacedUniformEmbeddingCoeReal.lean/index.md) · [Full source](../../../../GeneralTopology/RatNamespacedUniformEmbeddingCoeReal.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3d705f27d1f0a8399f98c240cd26acf800463845`.

Source path: `GRWTSK/Topology/MetricTopology/Rat/Variant993422bd1eadd7fc895884739fd16e3c9223420dfc60932f079b61095af0fd9b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/Rat/Variant993422bd1eadd7fc895884739fd16e3c9223420dfc60932f079b61095af0fd9b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.MetricSpace.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Order.Archimedean` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Instances.Int` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Instances.Nat` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Instances.Real` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../GeneralTopology/RatNamespacedUniformEmbeddingCoeReal.lean/declarations/instance-source-edition-4.md) | 33 | `declaration-track:8a2a9e1227c8ab995a1e8091f90bd9054051e70003f4e606b2ccdabd57021f89` |
| 2 | `theorem` | [dist_eq](../../../../GeneralTopology/RatNamespacedUniformEmbeddingCoeReal.lean/declarations/dist-eq.md) | 36 | `result-track:6cb7f57b39d8bfb2fffe6d7981d7114115dc36a896b67c3e42a973b7d44eb26d` |
| 3 | `theorem` | [dist_cast](../../../../GeneralTopology/RatNamespacedUniformEmbeddingCoeReal.lean/declarations/dist-cast.md) | 40 | `result-track:33b76f0a958448c0ee3b2a2367f75a5f43a9c453e1c2edb7483cbe684305c354` |
| 4 | `theorem` | [uniformContinuous_coe_real](../../../../GeneralTopology/RatNamespacedUniformEmbeddingCoeReal.lean/declarations/uniformcontinuous-coe-real.md) | 44 | `result-track:0ea95a81d41e8003a760838afb3e493929e21dacb14a94df02ee2c2970079e01` |
| 5 | `theorem` | [uniformEmbedding_coe_real](../../../../GeneralTopology/RatNamespacedUniformEmbeddingCoeReal.lean/declarations/uniformembedding-coe-real.md) | 48 | `result-track:63a59cb9397920bbb827708f0e537ab6a5f092868ea8b2fac9d0bef47cefe8c7` |
| 6 | `theorem` | [denseEmbedding_coe_real](../../../../GeneralTopology/RatNamespacedUniformEmbeddingCoeReal.lean/declarations/denseembedding-coe-real.md) | 52 | `result-track:910a61d158df0492dd72b42880fe46aabf5e0387d8fbfde21525c23e2adb0d02` |
| 7 | `theorem` | [embedding_coe_real](../../../../GeneralTopology/RatNamespacedUniformEmbeddingCoeReal.lean/declarations/embedding-coe-real.md) | 56 | `result-track:d30100e493ae03d3162be5b889c95460b553aff71df69ad790d28da1db15f77e` |
| 8 | `theorem` | [continuous_coe_real](../../../../GeneralTopology/RatNamespacedUniformEmbeddingCoeReal.lean/declarations/continuous-coe-real.md) | 60 | `result-track:b03839904c6a033feeab1140394289d6650e3c9472be28a2d6a3632755c65935` |
| 9 | `theorem` | [Nat.dist_cast_rat](../../../../GeneralTopology/RatNamespacedUniformEmbeddingCoeReal.lean/declarations/nat-dist-cast-rat.md) | 67 | `result-track:c101fa065025eaa3331ea2a6bae9b16cb8a51f452d18f95e1161c1c3f49bd70c` |
| 10 | `theorem` | [Nat.uniformEmbedding_coe_rat](../../../../GeneralTopology/RatNamespacedUniformEmbeddingCoeReal.lean/declarations/nat-uniformembedding-coe-rat.md) | 71 | `result-track:603e331a4f7a1783bb2788ae9b7c898e5c9022f81ffdd5c9d33f725294723527` |
| 11 | `theorem` | [Nat.closedEmbedding_coe_rat](../../../../GeneralTopology/RatNamespacedUniformEmbeddingCoeReal.lean/declarations/nat-closedembedding-coe-rat.md) | 75 | `result-track:51d681b2c6629db1a04b5da71841297a9c9db32e93478d69024bf097357ce405` |
| 12 | `theorem` | [Int.dist_cast_rat](../../../../GeneralTopology/RatNamespacedUniformEmbeddingCoeReal.lean/declarations/int-dist-cast-rat.md) | 80 | `result-track:4de979ccabfc67fdeab7eb46dd90953166489a044f78691bb5f2f20e3a2caa9b` |
| 13 | `theorem` | [Int.uniformEmbedding_coe_rat](../../../../GeneralTopology/RatNamespacedUniformEmbeddingCoeReal.lean/declarations/int-uniformembedding-coe-rat.md) | 84 | `result-track:8e88f619e352b3903d4092347c5d2ae34ccec1d13e71734d5adc3b6bbd04a614` |
| 14 | `theorem` | [Int.closedEmbedding_coe_rat](../../../../GeneralTopology/RatNamespacedUniformEmbeddingCoeReal.lean/declarations/int-closedembedding-coe-rat.md) | 88 | `result-track:ea7436e8b9f323a3b1a96ea7ce3293bd20187d0e835e7f171d1ea687a47607c0` |
| 15 | `instance` | [(anonymous)](../../../../GeneralTopology/RatNamespacedUniformEmbeddingCoeReal.lean/declarations/instance-source-edition-6.md) | 94 | `declaration-track:aae72507cbf0aca1cac708b12194102c1103989ae791138fd9c1e03e7db45f5e` |
| 16 | `theorem` | [uniformContinuous_add](../../../../GeneralTopology/RatNamespacedUniformEmbeddingCoeReal.lean/declarations/uniformcontinuous-add.md) | 96 | `result-track:904ff92b974a99d0c34e5512fc88eb66b3711c70aa80fd6b789eb1c493070ae5` |
| 17 | `theorem` | [uniformContinuous_neg](../../../../GeneralTopology/RatNamespacedUniformEmbeddingCoeReal.lean/declarations/uniformcontinuous-neg.md) | 103 | `result-track:70c1f2844412190afd50d4f80e58ca236d5bb27d5ac18696c32f6196ba9960a2` |
| 18 | `instance` | [(anonymous)](../../../../GeneralTopology/RatNamespacedUniformEmbeddingCoeReal.lean/declarations/instance-source-edition-3.md) | 108 | `declaration-track:5c419b5a89a4d51e058265292e02b0521ad27e2e350ff02d1db8c92e8b2295bd` |
| 19 | `instance` | [(anonymous)](../../../../GeneralTopology/RatNamespacedUniformEmbeddingCoeReal.lean/declarations/instance-source-edition-5.md) | 111 | `declaration-track:a74584f56d19863145e1f02964bfcf0e637be12777fa769687da8a84261417fb` |
| 20 | `instance` | [(anonymous)](../../../../GeneralTopology/RatNamespacedUniformEmbeddingCoeReal.lean/declarations/instance-source-edition-2.md) | 113 | `declaration-track:298f2afc65420ee953ec12438ad5b34073af0d931d4155133e907ef226c65d35` |
| 21 | `theorem` | [uniformContinuous_abs](../../../../GeneralTopology/RatNamespacedUniformEmbeddingCoeReal.lean/declarations/uniformcontinuous-abs.md) | 115 | `result-track:e8fe76a63807d31b1883cf3420685333578080ecc56b51b68c3b950dca79eeae` |
| 22 | `instance` | [(anonymous)](../../../../GeneralTopology/RatNamespacedUniformEmbeddingCoeReal.lean/declarations/instance.md) | 121 | `declaration-track:01ae23477b5ffb4cd6bf301bc85cac5bf33299b428b0d2d22aea5e496af598fe` |
| 23 | `theorem` | [continuous_mul](../../../../GeneralTopology/RatNamespacedUniformEmbeddingCoeReal.lean/declarations/continuous-mul.md) | 124 | `result-track:ca9f6f786c9d3cafad1f77754e5847ace6cf6ba33b20b6148a83f5b3cbed402f` |
| 24 | `theorem` | [totallyBounded_Icc](../../../../GeneralTopology/RatNamespacedUniformEmbeddingCoeReal.lean/declarations/totallybounded-icc.md) | 127 | `result-track:82653476414ce070254110e14f70bedab48deb86832128d38c22ce770ce76273` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=aa9eea63978a075b40bd406f928051770e680bbb0bc781dc1bffdc0437615077 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/MetricTopology/Rat/Variant993422bd1eadd7fc895884739fd16e3c9223420dfc60932f079b61095af0fd9b.lean","GRWTSK/_verification/specifications/Topology/MetricTopology/Rat/Variant993422bd1eadd7fc895884739fd16e3c9223420dfc60932f079b61095af0fd9b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
