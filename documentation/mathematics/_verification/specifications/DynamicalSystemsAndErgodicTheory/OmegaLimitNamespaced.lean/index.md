# Verification target: Omega Limit Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "766da83250174660c01cd61b9456d5b65aa6db8a",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/OmegaLimit/Variant5b42b70140c31605496a70d528fb778deba7e93dba6a71ab29cca69c469d13d7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../DynamicalSystemsAndErgodicTheory/OmegaLimitNamespaced.lean/index.md) · [Full source](../../../../DynamicalSystemsAndErgodicTheory/OmegaLimitNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `766da83250174660c01cd61b9456d5b65aa6db8a`.

Source path: `GRWTSK/Topology/GeneralTopology/OmegaLimit/Variant5b42b70140c31605496a70d528fb778deba7e93dba6a71ab29cca69c469d13d7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/OmegaLimit/Variant5b42b70140c31605496a70d528fb778deba7e93dba6a71ab29cca69c469d13d7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Dynamics.Flow` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Monotonicity` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [omegaLimit](../../../../DynamicalSystemsAndErgodicTheory/OmegaLimitNamespaced.lean/declarations/omegalimit.md) | 52 | `declaration-track:11011416eee416668fc71e7332de166b24bb902e6b2e1b061cd667aa18206edc` |
| 2 | `theorem` | [omegaLimit_def](../../../../DynamicalSystemsAndErgodicTheory/OmegaLimitNamespaced.lean/declarations/omegalimit-def.md) | 72 | `result-track:f4d7ecbfc230dc12462cb1a69937eb7da8b010e4b263d071397056876f6433ad` |
| 3 | `theorem` | [omegaLimit_subset_of_tendsto](../../../../DynamicalSystemsAndErgodicTheory/OmegaLimitNamespaced.lean/declarations/omegalimit-subset-of-tendsto.md) | 74 | `result-track:43132ce5e4fdc0911c022c50b7856dc5038017779a7bd2417e191c892207baad` |
| 4 | `theorem` | [omegaLimit_mono_left](../../../../DynamicalSystemsAndErgodicTheory/OmegaLimitNamespaced.lean/declarations/omegalimit-mono-left.md) | 80 | `result-track:d11d210c019bbac10aa42b034d620c590e8fcdd7269b762d94e35c2b942803fb` |
| 5 | `theorem` | [omegaLimit_mono_right](../../../../DynamicalSystemsAndErgodicTheory/OmegaLimitNamespaced.lean/declarations/omegalimit-mono-right.md) | 83 | `result-track:fa14efc6a19a2fcd5e55be6f65bacb31ca32343beb3400b480c393a80b51670c` |
| 6 | `theorem` | [isClosed_omegaLimit](../../../../DynamicalSystemsAndErgodicTheory/OmegaLimitNamespaced.lean/declarations/isclosed-omegalimit.md) | 86 | `result-track:12c829ffd49178142d018d2a51d41ad04d0efd7eff4adc68e48a5d499a8c24d5` |
| 7 | `theorem` | [mapsTo_omegaLimit'](../../../../DynamicalSystemsAndErgodicTheory/OmegaLimitNamespaced.lean/declarations/mapsto-omegalimit.md) | 89 | `result-track:36bbc6c7e94e5aeff88dec91051ed651e29b716c2003e8709ae8329e60d03a71` |
| 8 | `theorem` | [mapsTo_omegaLimit](../../../../DynamicalSystemsAndErgodicTheory/OmegaLimitNamespaced.lean/declarations/mapsto-omegalimit-source-edition-2.md) | 100 | `result-track:50ebe1df2169a0e00dbe52756dbb48100ca52178e58dc7c92e8289182dfe696a` |
| 9 | `theorem` | [omegaLimit_image_eq](../../../../DynamicalSystemsAndErgodicTheory/OmegaLimitNamespaced.lean/declarations/omegalimit-image-eq-source-edition-2.md) | 106 | `result-track:6f794ca1c0e7438b7e708a2d77e5ca83de1f9502f0af5f00248d72a566cf4929` |
| 10 | `theorem` | [omegaLimit_preimage_subset](../../../../DynamicalSystemsAndErgodicTheory/OmegaLimitNamespaced.lean/declarations/omegalimit-preimage-subset.md) | 109 | `result-track:c339453570a12e39b9083dd11c4179f040da46dcf3d4f040757469e2726a2c52` |
| 11 | `theorem` | [mem_omegaLimit_iff_frequently](../../../../DynamicalSystemsAndErgodicTheory/OmegaLimitNamespaced.lean/declarations/mem-omegalimit-iff-frequently-source-edition-2.md) | 123 | `result-track:80bd56221e1a0bf048be5fdf5e54bf97fb1b3d930d3bacc69616796c4faeeadc` |
| 12 | `theorem` | [mem_omegaLimit_iff_frequently₂](../../../../DynamicalSystemsAndErgodicTheory/OmegaLimitNamespaced.lean/declarations/mem-omegalimit-iff-frequently.md) | 137 | `result-track:67abb5024924074cca55693f2dddb47e28b22334fe208575335f35a99134867b` |
| 13 | `theorem` | [mem_omegaLimit_singleton_iff_map_cluster_point](../../../../DynamicalSystemsAndErgodicTheory/OmegaLimitNamespaced.lean/declarations/mem-omegalimit-singleton-iff-map-cluster-point.md) | 144 | `result-track:c7225260cfccca2d4ae65caca80b2691ba8ffda210f724a28f4d05042636f1ca` |
| 14 | `theorem` | [omegaLimit_inter](../../../../DynamicalSystemsAndErgodicTheory/OmegaLimitNamespaced.lean/declarations/omegalimit-inter.md) | 153 | `result-track:9b859e9ef54c1aa1cc26f40a34d2b6bab24d63db176b106de18c1452351eca36` |
| 15 | `theorem` | [omegaLimit_iInter](../../../../DynamicalSystemsAndErgodicTheory/OmegaLimitNamespaced.lean/declarations/omegalimit-iinter.md) | 157 | `result-track:e9cb924e4bb51e7779119f12ca7dcc3491b620040739345ab3da86b1ee95530a` |
| 16 | `theorem` | [omegaLimit_union](../../../../DynamicalSystemsAndErgodicTheory/OmegaLimitNamespaced.lean/declarations/omegalimit-union.md) | 160 | `result-track:d428a8f2bde8804d3738a32b928381534903eedf77c21512fba94d8b505e1445` |
| 17 | `theorem` | [omegaLimit_iUnion](../../../../DynamicalSystemsAndErgodicTheory/OmegaLimitNamespaced.lean/declarations/omegalimit-iunion.md) | 174 | `result-track:f842e6d3c4af134b6b49c8ffd996193653f012183dcf0edd400bf543bb8da0dc` |
| 18 | `theorem` | [omegaLimit_eq_iInter](../../../../DynamicalSystemsAndErgodicTheory/OmegaLimitNamespaced.lean/declarations/omegalimit-eq-iinter.md) | 184 | `result-track:1a99defe4d9ecd2203a8840abcd0aee3ac7e0252d0cf8794080ca6658ddfe717` |
| 19 | `theorem` | [omegaLimit_eq_biInter_inter](../../../../DynamicalSystemsAndErgodicTheory/OmegaLimitNamespaced.lean/declarations/omegalimit-eq-biinter-inter.md) | 187 | `result-track:69d12ff920c826d787bdce75dc557ce52d05f4278a3c5440cec6e7efe4f3ecd5` |
| 20 | `theorem` | [omegaLimit_eq_iInter_inter](../../../../DynamicalSystemsAndErgodicTheory/OmegaLimitNamespaced.lean/declarations/omegalimit-eq-iinter-inter.md) | 192 | `result-track:714d03280dd853f866b37dfbfdbf5422781077cf3fc5bfffc8a74d74a63fc8b2` |
| 21 | `theorem` | [omegaLimit_subset_closure_fw_image](../../../../DynamicalSystemsAndErgodicTheory/OmegaLimitNamespaced.lean/declarations/omegalimit-subset-closure-fw-image.md) | 197 | `result-track:bb22e979115566c720a209a23187a2eb787b64b5f116f10c7e3c573eb5f72a04` |
| 22 | `instance` | [(anonymous)](../../../../DynamicalSystemsAndErgodicTheory/OmegaLimitNamespaced.lean/declarations/instance.md) | 205 | `declaration-track:0b30aea5b01ec2aba1ed70de2e2a97748a787e573866b9332abd5ca06fa486b2` |
| 23 | `theorem` | [eventually_closure_subset_of_isCompact_absorbing_of_isOpen_of_omegaLimit_subset'](../../../../DynamicalSystemsAndErgodicTheory/OmegaLimitNamespaced.lean/declarations/eventually-closure-subset-of-iscompact-absorbing-of-isopen-of-omegalimit.md) | 215 | `result-track:ba1fc7696b51c486e8cb780d2094f63b002dca3e8b68aabe46445e182ef454b0` |
| 24 | `theorem` | [eventually_closure_subset_of_isCompact_absorbing_of_isOpen_of_omegaLimit_subset](../../../../DynamicalSystemsAndErgodicTheory/OmegaLimitNamespaced.lean/declarations/eventually-closure-subset-of-iscompact-absorbing-of-isopen-of-omegalimit-source-edition-2.md) | 254 | `result-track:eead27e52027d3ce9289f588c433045a5a41ec49b69a115b456ddcd1b5012fc1` |
| 25 | `theorem` | [eventually_mapsTo_of_isCompact_absorbing_of_isOpen_of_omegaLimit_subset](../../../../DynamicalSystemsAndErgodicTheory/OmegaLimitNamespaced.lean/declarations/eventually-mapsto-of-iscompact-absorbing-of-isopen-of-omegalimit-subset.md) | 260 | `result-track:37849476dcc3c0f35850f08d064e2633956889ee30562af8656b9372ef5c4fe4` |
| 26 | `theorem` | [eventually_closure_subset_of_isOpen_of_omegaLimit_subset](../../../../DynamicalSystemsAndErgodicTheory/OmegaLimitNamespaced.lean/declarations/eventually-closure-subset-of-isopen-of-omegalimit-subset.md) | 269 | `result-track:961a766d71fb03cbe2f750f6c2f1c6bfb9acd36e474ed51842e893a9949cdfb2` |
| 27 | `theorem` | [eventually_mapsTo_of_isOpen_of_omegaLimit_subset](../../../../DynamicalSystemsAndErgodicTheory/OmegaLimitNamespaced.lean/declarations/eventually-mapsto-of-isopen-of-omegalimit-subset.md) | 274 | `result-track:0f0aa30f5f3d30b514b45c7f094bdbee3072df83ef8be885204cfea7ae8709cf` |
| 28 | `theorem` | [nonempty_omegaLimit_of_isCompact_absorbing](../../../../DynamicalSystemsAndErgodicTheory/OmegaLimitNamespaced.lean/declarations/nonempty-omegalimit-of-iscompact-absorbing.md) | 281 | `result-track:3c586cfe8259e7eb226ed0ff9078b3733eeb5628547aa22a451c1a078abc761f` |
| 29 | `theorem` | [nonempty_omegaLimit](../../../../DynamicalSystemsAndErgodicTheory/OmegaLimitNamespaced.lean/declarations/nonempty-omegalimit.md) | 301 | `result-track:07d51f79d42353b59bfee69e9e08b80254e17a5309159d79558dd7c94552b7bd` |
| 30 | `theorem` | [isInvariant_omegaLimit](../../../../DynamicalSystemsAndErgodicTheory/OmegaLimitNamespaced.lean/declarations/isinvariant-omegalimit.md) | 316 | `result-track:0588c3e1f1502052c4a52f986f9275f6e2671b0f91dc060545f37f959197663f` |
| 31 | `theorem` | [omegaLimit_image_subset](../../../../DynamicalSystemsAndErgodicTheory/OmegaLimitNamespaced.lean/declarations/omegalimit-image-subset.md) | 322 | `result-track:5833e82bfcc8eb306acfff77622d3b37a676a29aed8c431485f2c3784b52fa2a` |
| 32 | `theorem` | [omegaLimit_image_eq](../../../../DynamicalSystemsAndErgodicTheory/OmegaLimitNamespaced.lean/declarations/omegalimit-image-eq.md) | 341 | `result-track:497d3bf1a4e71f6bcb701150ab6c154a2764928dba0a4af36ccae8017a3b0bc6` |
| 33 | `theorem` | [omegaLimit_omegaLimit](../../../../DynamicalSystemsAndErgodicTheory/OmegaLimitNamespaced.lean/declarations/omegalimit-omegalimit.md) | 347 | `result-track:863014f9f0600092bbdb2a5eb961ca69060a7fa99431522f5fa961d7ccdb12a9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a45054615ee58f4b4098ca7f11d3b294f235d019590c5e2003300e45ea697d1d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/OmegaLimit/Variant5b42b70140c31605496a70d528fb778deba7e93dba6a71ab29cca69c469d13d7.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/OmegaLimit/Variant5b42b70140c31605496a70d528fb778deba7e93dba6a71ab29cca69c469d13d7.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
