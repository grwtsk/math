# Verification target: Order Boolean Algebra Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "73d22c525de3bdc5cd20e9bc5548f48e88d397bf",
  "lexical_observation_count": 110,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BooleanAlgebra/Variant257305dc02748c7696ec1b2444573c7dd8f7062a3eeccf187fa493ae11587691.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderBooleanAlgebraNamespaced.lean/index.md) · [Full source](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderBooleanAlgebraNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `73d22c525de3bdc5cd20e9bc5548f48e88d397bf`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BooleanAlgebra/Variant257305dc02748c7696ec1b2444573c7dd8f7062a3eeccf187fa493ae11587691.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BooleanAlgebra/Variant257305dc02748c7696ec1b2444573c7dd8f7062a3eeccf187fa493ae11587691.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.Heyting.Basic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [GeneralizedBooleanAlgebra](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderBooleanAlgebraNamespaced.lean/declarations/generalizedbooleanalgebra.md) | 91 | `declaration-track:96b298ee7aa7fcdcee3e313d6bb25a0b6c37453bcf8afde5472d1dc27eec4dd1` |
| 2 | `theorem` | [sup_inf_sdiff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderBooleanAlgebraNamespaced.lean/declarations/sup-inf-sdiff.md) | 105 | `result-track:f15c58d323814d88a6f04fcc0ddbbb827395d26687c14b79ba02e9fa927300e8` |
| 3 | `theorem` | [inf_inf_sdiff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderBooleanAlgebraNamespaced.lean/declarations/inf-inf-sdiff.md) | 110 | `result-track:76c8c5733d7f9e5a09ff2ee03d4060d46ea66dea467fedc82c5e90798973f56a` |
| 4 | `theorem` | [sup_sdiff_inf](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderBooleanAlgebraNamespaced.lean/declarations/sup-sdiff-inf.md) | 115 | `result-track:0a274b95561dfc4a32b61c2c9e201ada366da5e34affb4bdbbdd2256c20d96a1` |
| 5 | `theorem` | [inf_sdiff_inf](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderBooleanAlgebraNamespaced.lean/declarations/inf-sdiff-inf.md) | 119 | `result-track:28a3ca2120bd9a55a90cfcfee885faee83cb5ab9a592ab822b08754084cc2286` |
| 6 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderBooleanAlgebraNamespaced.lean/declarations/instance-source-edition-3.md) | 123 | `declaration-track:46dbdf74c85c779714f559b377bae9c53f81a26cdd27eac77f2e1484e6543759` |
| 7 | `theorem` | [disjoint_inf_sdiff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderBooleanAlgebraNamespaced.lean/declarations/disjoint-inf-sdiff.md) | 130 | `result-track:128e95f6544b6fbe4949fd6eb51c2647214a0d97ffd3ea730b48e7d2fed1d0cd` |
| 8 | `theorem` | [sdiff_unique](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderBooleanAlgebraNamespaced.lean/declarations/sdiff-unique.md) | 135 | `result-track:30552ca9c114138ae57a806d8b5a293abc31e69aeb983baa053160dd1e79fed1` |
| 9 | `theorem` | [sdiff_le'](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderBooleanAlgebraNamespaced.lean/declarations/sdiff-le.md) | 144 | `result-track:9b33d8a0411540ed729a36e0d271189e528f8a6a5debee5039d44b4fe9454f66` |
| 10 | `theorem` | [sdiff_sup_self'](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderBooleanAlgebraNamespaced.lean/declarations/sdiff-sup-self.md) | 150 | `result-track:f02243ae33a3dd9b9f4aa7a9523f8ee4f07961735713de7a4d884daf8b35250b` |
| 11 | `theorem` | [sdiff_inf_sdiff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderBooleanAlgebraNamespaced.lean/declarations/sdiff-inf-sdiff.md) | 157 | `result-track:ac30bc401ce64104b16bed36c24149c255047c725206653191d7a7e133180a03` |
| 12 | `theorem` | [disjoint_sdiff_sdiff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderBooleanAlgebraNamespaced.lean/declarations/disjoint-sdiff-sdiff.md) | 171 | `result-track:562e983a4d289ad38ab10e9fa149c62f67ecd2aeb64a97457e2dc8a31c6deadd` |
| 13 | `theorem` | [inf_sdiff_self_right](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderBooleanAlgebraNamespaced.lean/declarations/inf-sdiff-self-right.md) | 176 | `result-track:15fa7e3ea9cdb32b4d070fdf0dd8209c2d290ae6d8783a4e2281a53b06e95286` |
| 14 | `theorem` | [inf_sdiff_self_left](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderBooleanAlgebraNamespaced.lean/declarations/inf-sdiff-self-left.md) | 184 | `result-track:075f3d0f82204d9b9935be9625d98c6ffd4baf175c17009a3607a688a06fdd66` |
| 15 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderBooleanAlgebraNamespaced.lean/declarations/instance-source-edition-5.md) | 188 | `declaration-track:73840d3d4442f79246c0bb544559f1b088ffe8a0343f82bd08ec25b6e4b6c515` |
| 16 | `theorem` | [disjoint_sdiff_self_left](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderBooleanAlgebraNamespaced.lean/declarations/disjoint-sdiff-self-left.md) | 217 | `result-track:66f0764fba095295a396e47e8f7312f20f6316b7730960167d8e079440194418` |
| 17 | `theorem` | [disjoint_sdiff_self_right](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderBooleanAlgebraNamespaced.lean/declarations/disjoint-sdiff-self-right.md) | 221 | `result-track:568c7b8d44e74878855135a2c7121618a656f2f4ef16dc1a3a48886bc7664b73` |
| 18 | `lemma` | [le_sdiff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderBooleanAlgebraNamespaced.lean/declarations/le-sdiff.md) | 225 | `result-track:015438cba385d970e30f888ccab2c323491b2cb8e241e440330868ba5f21d13a` |
| 19 | `lemma` | [sdiff_eq_left](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderBooleanAlgebraNamespaced.lean/declarations/sdiff-eq-left.md) | 230 | `result-track:fa7e9fb588f4f5b3a6a51998b59f207dfa7e1a51e2679dab58e515e0e70a18e7` |
| 20 | `theorem` | [Disjoint.sdiff_eq_of_sup_eq](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderBooleanAlgebraNamespaced.lean/declarations/disjoint-sdiff-eq-of-sup-eq.md) | 236 | `result-track:b9b29720a381c97c4c429d1f03e868fbb09646f3cf5ccda237f747c27f11aa6a` |
| 21 | `theorem` | [Disjoint.sdiff_unique](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderBooleanAlgebraNamespaced.lean/declarations/disjoint-sdiff-unique.md) | 241 | `result-track:c1cc879c80f4cd8d52407e3fbd26494fdb0b006673d0841d3ec9090e8704c0f6` |
| 22 | `theorem` | [disjoint_sdiff_iff_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderBooleanAlgebraNamespaced.lean/declarations/disjoint-sdiff-iff-le.md) | 252 | `result-track:4d1391f8e25657a3d13e57820181f8cec119e219dae16a1bd4fd0f4e2b8febe5` |
| 23 | `theorem` | [le_iff_disjoint_sdiff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderBooleanAlgebraNamespaced.lean/declarations/le-iff-disjoint-sdiff.md) | 263 | `result-track:820116caf77f65de3b809d1672998b9cd80893384a1018cc1f23a74c01b19106` |
| 24 | `theorem` | [inf_sdiff_eq_bot_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderBooleanAlgebraNamespaced.lean/declarations/inf-sdiff-eq-bot-iff.md) | 268 | `result-track:b6627e75b9aff5e5151b3327659196ae072b05154d17a7494ec976ba47cd11b2` |
| 25 | `theorem` | [le_iff_eq_sup_sdiff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderBooleanAlgebraNamespaced.lean/declarations/le-iff-eq-sup-sdiff.md) | 274 | `result-track:9617ef1ae6d76f7bc0c9d7952c5d13627a550317940e0f26d875c4de09491ecd` |
| 26 | `theorem` | [sdiff_sup](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderBooleanAlgebraNamespaced.lean/declarations/sdiff-sup.md) | 291 | `result-track:5268bf2c50062739894887476d79adab3e1f089d943ce500a6b075572eb2afe5` |
| 27 | `theorem` | [sdiff_eq_sdiff_iff_inf_eq_inf](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderBooleanAlgebraNamespaced.lean/declarations/sdiff-eq-sdiff-iff-inf-eq-inf.md) | 309 | `result-track:b7c71a3329f7ad16755071ff2b14f543ee911bac2a36df1c89d7314f2508f73a` |
| 28 | `theorem` | [sdiff_eq_self_iff_disjoint](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderBooleanAlgebraNamespaced.lean/declarations/sdiff-eq-self-iff-disjoint-source-edition-2.md) | 315 | `result-track:c94f61366f0c777862ace5eb26e8d3bb2c1a5ff176d968b969e4be2bcb328ba9` |
| 29 | `theorem` | [sdiff_eq_self_iff_disjoint'](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderBooleanAlgebraNamespaced.lean/declarations/sdiff-eq-self-iff-disjoint.md) | 322 | `result-track:39057a2b21e0d25a272ab020d5fffc64d6b761b09e4e2c7181322d2fc5dd78f0` |
| 30 | `theorem` | [sdiff_lt](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderBooleanAlgebraNamespaced.lean/declarations/sdiff-lt.md) | 326 | `result-track:e6fd589d1f7983eb1b7944b1a7eea5825188c2651818fbf88f1355cea7552b4b` |
| 31 | `theorem` | [le_sdiff_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderBooleanAlgebraNamespaced.lean/declarations/le-sdiff-iff.md) | 333 | `result-track:fb088402e291e6d44965b66097776e973538e7cafa979fa77c0d95ae20ac34a7` |
| 32 | `theorem` | [sdiff_lt_sdiff_right](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderBooleanAlgebraNamespaced.lean/declarations/sdiff-lt-sdiff-right.md) | 337 | `result-track:4d727429f53ec41fc07a263dbafea3a048ae05b16b7f3ed346aa847dddc2ee53` |
| 33 | `theorem` | [sup_inf_inf_sdiff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderBooleanAlgebraNamespaced.lean/declarations/sup-inf-inf-sdiff.md) | 342 | `result-track:a69a926377e187d901f470250411f72557ec1168e7c6afc618cf13af6613ee1a` |
| 34 | `theorem` | [sdiff_sdiff_right](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderBooleanAlgebraNamespaced.lean/declarations/sdiff-sdiff-right-source-edition-2.md) | 349 | `result-track:861ae31a84740ce379acb0ab009038655b68455065f16d6d0b297228df15e258` |
| 35 | `theorem` | [sdiff_sdiff_right'](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderBooleanAlgebraNamespaced.lean/declarations/sdiff-sdiff-right.md) | 373 | `result-track:3f5859df13cee21d8cc564c23c470ae3ea409e2997b15d821782a2d4d3c0553b` |
| 36 | `theorem` | [sdiff_sdiff_eq_sdiff_sup](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderBooleanAlgebraNamespaced.lean/declarations/sdiff-sdiff-eq-sdiff-sup.md) | 380 | `result-track:a222e17a7371110860931ab8446734435cf23b4af0cd34b5e4a49ef643e63612` |
| 37 | `theorem` | [sdiff_sdiff_right_self](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderBooleanAlgebraNamespaced.lean/declarations/sdiff-sdiff-right-self.md) | 385 | `result-track:218c8a5f4b9097fb1c7582d496de58d16c06b6824c5c5742c47e9859cd118763` |
| 38 | `theorem` | [sdiff_sdiff_eq_self](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderBooleanAlgebraNamespaced.lean/declarations/sdiff-sdiff-eq-self.md) | 389 | `result-track:cdc657ded2d25278278c55d94ed075d73b7e09096919744709e641078d5bab64` |
| 39 | `theorem` | [sdiff_eq_symm](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderBooleanAlgebraNamespaced.lean/declarations/sdiff-eq-symm.md) | 393 | `result-track:2c13d7073f82c02f3bfe6b73b47b3920783b878bd1cc1d6a40114aec1458cf22` |
| 40 | `theorem` | [sdiff_eq_comm](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderBooleanAlgebraNamespaced.lean/declarations/sdiff-eq-comm.md) | 397 | `result-track:a836eb66653f261d37e45448450f0d88033510dcb36a9d55fd636646970438f8` |
| 41 | `theorem` | [eq_of_sdiff_eq_sdiff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderBooleanAlgebraNamespaced.lean/declarations/eq-of-sdiff-eq-sdiff.md) | 401 | `result-track:0c373b8d95a0004e8b092954d358acc8253827efda1a3b099e99b90e384ecb00` |
| 42 | `theorem` | [sdiff_sdiff_left'](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderBooleanAlgebraNamespaced.lean/declarations/sdiff-sdiff-left.md) | 405 | `result-track:ce98f3802bf8fc9bc54545dc63354b489341b796860990dcc32ee136e88e138c` |
| 43 | `theorem` | [sdiff_sdiff_sup_sdiff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderBooleanAlgebraNamespaced.lean/declarations/sdiff-sdiff-sup-sdiff-source-edition-2.md) | 408 | `result-track:a8dd8f0d176f6b54a9482776af01ee802c14075814932adfefb08d99e9330cfb` |
| 44 | `theorem` | [sdiff_sdiff_sup_sdiff'](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderBooleanAlgebraNamespaced.lean/declarations/sdiff-sdiff-sup-sdiff.md) | 419 | `result-track:56f14dfc15253ca315d50a6de0e348c74c7209bf83c4670ebb8943eccf5ec60d` |
| 45 | `theorem` | [inf_sdiff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderBooleanAlgebraNamespaced.lean/declarations/inf-sdiff.md) | 428 | `result-track:0cf2c881b9773d475dbb7a9178bdfb0b6c42f5184c73d6913f854180015142ab` |
| 46 | `theorem` | [inf_sdiff_assoc](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderBooleanAlgebraNamespaced.lean/declarations/inf-sdiff-assoc.md) | 443 | `result-track:eb4ae655904069fae73e3f7c6abd4d0c26eaa989cda43566be69de799cce4e95` |
| 47 | `theorem` | [inf_sdiff_right_comm](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderBooleanAlgebraNamespaced.lean/declarations/inf-sdiff-right-comm.md) | 454 | `result-track:ecd8354c225708b4d776049725e237bd3847ced834b5219bd11778ca3d323a61` |
| 48 | `theorem` | [inf_sdiff_distrib_left](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderBooleanAlgebraNamespaced.lean/declarations/inf-sdiff-distrib-left.md) | 458 | `result-track:1b48ef2489089838c9e6fa33f172793c8ea1fff2d2737a819c1a0f34487f718d` |
| 49 | `theorem` | [inf_sdiff_distrib_right](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderBooleanAlgebraNamespaced.lean/declarations/inf-sdiff-distrib-right.md) | 462 | `result-track:7138d6dc3c572c606e656504869b36e72775488c271cd0da3408f6e0780b407f` |
| 50 | `theorem` | [disjoint_sdiff_comm](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderBooleanAlgebraNamespaced.lean/declarations/disjoint-sdiff-comm.md) | 466 | `result-track:45cd3804bc683799ff0cae4cf7c812b09f33af39509fbd5ab017e92eae220a8a` |
| 51 | `theorem` | [sup_eq_sdiff_sup_sdiff_sup_inf](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderBooleanAlgebraNamespaced.lean/declarations/sup-eq-sdiff-sup-sdiff-sup-inf.md) | 470 | `result-track:6fd1eea17923c08709e1063e99be51ab069bb986f5b426f546428f7394a0a7ac` |
| 52 | `theorem` | [sup_lt_of_lt_sdiff_left](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderBooleanAlgebraNamespaced.lean/declarations/sup-lt-of-lt-sdiff-left.md) | 479 | `result-track:1833539b85a56a3d723b8e7cacee54057f5517b952c626a376748ca5cba36707` |
| 53 | `theorem` | [sup_lt_of_lt_sdiff_right](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderBooleanAlgebraNamespaced.lean/declarations/sup-lt-of-lt-sdiff-right.md) | 486 | `result-track:d4b3428e3e6472cacc7fc4d13e78c5fc03f475a56287c54e31d7ddb50bc0c48b` |
| 54 | `instance` | [Pi.generalizedBooleanAlgebra](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderBooleanAlgebraNamespaced.lean/declarations/pi-generalizedbooleanalgebra.md) | 495 | `declaration-track:2d0a93e080aa317f57debd00ab9f1203af46dc7227f43419a066ce3478ca649b` |
| 55 | `class` | [BooleanAlgebra](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderBooleanAlgebraNamespaced.lean/declarations/booleanalgebra.md) | 519 | `declaration-track:38cc767073ed5933d0d8b803cf8aa895862b405dc19ad915e8a622cf9e42e4d9` |
| 56 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderBooleanAlgebraNamespaced.lean/declarations/instance-source-edition-2.md) | 540 | `declaration-track:2fa2d0a99bbf5303049231bf0b76a06f672be4366e177305d84638e4db0b7be0` |
| 57 | `def` | [GeneralizedBooleanAlgebra.toBooleanAlgebra](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderBooleanAlgebraNamespaced.lean/declarations/generalizedbooleanalgebra-tobooleanalgebra.md) | 547 | `declaration-track:e2dccf0809f918db25b30ccd0ef8c811fa2ec270bada174903213319fb63225b` |
| 58 | `theorem` | [inf_compl_eq_bot'](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderBooleanAlgebraNamespaced.lean/declarations/inf-compl-eq-bot.md) | 563 | `result-track:8c2674b97357fe939ab4f1af9c6fee869d7bf0fa90cc393a5353a197a562d9b1` |
| 59 | `theorem` | [sup_compl_eq_top](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderBooleanAlgebraNamespaced.lean/declarations/sup-compl-eq-top.md) | 568 | `result-track:4ee40b9cd22102ff4d2c69290e9501b897c13ea6bf69c9251d8e4cd4198e149b` |
| 60 | `theorem` | [compl_sup_eq_top](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderBooleanAlgebraNamespaced.lean/declarations/compl-sup-eq-top.md) | 573 | `result-track:977e8d09cbb732627ddcb9b15861bc79dbca9afbe3cc338f0cfc84d6f57608db` |
| 61 | `theorem` | [isCompl_compl](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderBooleanAlgebraNamespaced.lean/declarations/iscompl-compl.md) | 577 | `result-track:973790852b8ceb89a09bc0517e6548fd328b05ea263ac40a93fa9b3b25c2155c` |
| 62 | `theorem` | [sdiff_eq](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderBooleanAlgebraNamespaced.lean/declarations/sdiff-eq.md) | 581 | `result-track:723596968b26c3f09a159df7a2aea112f651b116dec5eae6d2b776a85ad470f2` |
| 63 | `theorem` | [himp_eq](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderBooleanAlgebraNamespaced.lean/declarations/himp-eq.md) | 585 | `result-track:ec18e292e5ad5a3e7dab366aa74ce4b4db7eba26de6ff4f89e8da9102d2a5b47` |
| 64 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderBooleanAlgebraNamespaced.lean/declarations/instance-source-edition-7.md) | 589 | `declaration-track:81645c0ca6c7146166beb8e4bd0f75493682420b706d30fa68bbaa8ab6bfb7fa` |
| 65 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderBooleanAlgebraNamespaced.lean/declarations/instance.md) | 594 | `declaration-track:2cd8a05c9216e20b7aaca8dffcbf9926e8f6ce1abc644faff58fe0b97801d27c` |
| 66 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderBooleanAlgebraNamespaced.lean/declarations/instance-source-edition-6.md) | 603 | `declaration-track:7802be1a20ae151dd4772e77054fbe940204bd2780835ec34e8c124f5d8472f9` |
| 67 | `theorem` | [hnot_eq_compl](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderBooleanAlgebraNamespaced.lean/declarations/hnot-eq-compl.md) | 612 | `result-track:9d132cdac738d3d678b90e63e183fb5239e53be7fc2f19216932b2a4fd52c475` |
| 68 | `theorem` | [top_sdiff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderBooleanAlgebraNamespaced.lean/declarations/top-sdiff.md) | 617 | `result-track:dd28cd4125d76530721463f620dbba70b8396b58a8f943a2244a35ecfab8176b` |
| 69 | `theorem` | [eq_compl_iff_isCompl](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderBooleanAlgebraNamespaced.lean/declarations/eq-compl-iff-iscompl.md) | 621 | `result-track:ab3f6f2ccba26297b0afd20d4cec8a2f22cf3dfd38de0e03405dfc578370275e` |
| 70 | `theorem` | [compl_eq_iff_isCompl](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderBooleanAlgebraNamespaced.lean/declarations/compl-eq-iff-iscompl.md) | 627 | `result-track:fb77a84f4e43014cb5aa49e1d816a207c94f67dd4adbe5c5f524bdd89655fa00` |
| 71 | `theorem` | [compl_eq_comm](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderBooleanAlgebraNamespaced.lean/declarations/compl-eq-comm.md) | 633 | `result-track:85d2377ffe931abc8b2e7d4263310ac22fe457fafb8aec70e6d3e4eabee7ea16` |
| 72 | `theorem` | [eq_compl_comm](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderBooleanAlgebraNamespaced.lean/declarations/eq-compl-comm.md) | 637 | `result-track:1a4819dacf02cb6708e2bd2d8666b448e472f2c33edee86eb02435c097c19f82` |
| 73 | `theorem` | [compl_compl](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderBooleanAlgebraNamespaced.lean/declarations/compl-compl.md) | 642 | `result-track:a6ff9e5dd2f0d9112c5bfc0573fb17e5fda09da3c10b8252785baece660b3910` |
| 74 | `theorem` | [compl_comp_compl](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderBooleanAlgebraNamespaced.lean/declarations/compl-comp-compl.md) | 646 | `result-track:b9d2e48486d4763733d67cd05b1c1d2e81f4959b04ee5b9fd206ee8190b4c79e` |
| 75 | `theorem` | [compl_involutive](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderBooleanAlgebraNamespaced.lean/declarations/compl-involutive.md) | 651 | `result-track:3ecdd83a9efaf195a67697f78c250add706417ae48e91a56277c50e28f5ff17e` |
| 76 | `theorem` | [compl_bijective](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderBooleanAlgebraNamespaced.lean/declarations/compl-bijective.md) | 655 | `result-track:07a4f21411e26d68a003578e9d3b0056e2d0b9e4019b00a4360c1c89a2a90134` |
| 77 | `theorem` | [compl_surjective](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderBooleanAlgebraNamespaced.lean/declarations/compl-surjective.md) | 659 | `result-track:16ede197d831c6d6d2ea0eebe6a0d5821987fdd6614c1d76cced0e9cb421b5b8` |
| 78 | `theorem` | [compl_injective](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderBooleanAlgebraNamespaced.lean/declarations/compl-injective.md) | 663 | `result-track:81eae387600800082973a6e4553b867a55cbef23b542a5e41479c375a502fe21` |
| 79 | `theorem` | [compl_inj_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderBooleanAlgebraNamespaced.lean/declarations/compl-inj-iff.md) | 668 | `result-track:04f43b71452802fa5021f5b307f6bfce866abe5d310b656594c7e3f7e53158ea` |
| 80 | `theorem` | [IsCompl.compl_eq_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderBooleanAlgebraNamespaced.lean/declarations/iscompl-compl-eq-iff.md) | 672 | `result-track:207ea4e67a81b6e023adddb98086ba485de2a687fa40a93c57941e0bce7a7b07` |
| 81 | `theorem` | [compl_eq_top](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderBooleanAlgebraNamespaced.lean/declarations/compl-eq-top.md) | 677 | `result-track:85340d5865e7a392892e0eced04834bd0bd16146f53f5913e8a88be1983bad36` |
| 82 | `theorem` | [compl_eq_bot](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderBooleanAlgebraNamespaced.lean/declarations/compl-eq-bot.md) | 682 | `result-track:4aa9ca05cb08499a284a8c85208857a8f8ce297809755ca32bd9ec6b96e498b2` |
| 83 | `theorem` | [compl_inf](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderBooleanAlgebraNamespaced.lean/declarations/compl-inf.md) | 687 | `result-track:534ba3dd32e5f45b06b34ebbe6932bd90125aea5a1b6c670250093657970c7ab` |
| 84 | `theorem` | [compl_le_compl_iff_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderBooleanAlgebraNamespaced.lean/declarations/compl-le-compl-iff-le.md) | 692 | `result-track:3f7675cc6acaffab8ac635ba964f5fe4b832fff888c92a3cfb290ad176e19df8` |
| 85 | `theorem` | [compl_le_of_compl_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderBooleanAlgebraNamespaced.lean/declarations/compl-le-of-compl-le.md) | 696 | `result-track:9c5e38be311a7d0911a3338fefe1e72ae172c5b3ca68226a8afe6689e058eb2d` |
| 86 | `theorem` | [compl_le_iff_compl_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderBooleanAlgebraNamespaced.lean/declarations/compl-le-iff-compl-le.md) | 700 | `result-track:d7b4ce1b30f467011a5a67ead13c86f57e4380aece5c4a1ecfa5a1b292e1ba79` |
| 87 | `theorem` | [compl_le_self](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderBooleanAlgebraNamespaced.lean/declarations/compl-le-self.md) | 704 | `result-track:739cce206e0754d3fbdeb8eaf1018eb7d8348850cd30044974fe85036d6a540c` |
| 88 | `theorem` | [compl_lt_self](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderBooleanAlgebraNamespaced.lean/declarations/compl-lt-self.md) | 706 | `result-track:51113b8ab244ab01aa07c093a5f8add92a82e3c8abb552910da77a7bab80937f` |
| 89 | `theorem` | [sdiff_compl](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderBooleanAlgebraNamespaced.lean/declarations/sdiff-compl.md) | 710 | `result-track:d62a3f89abd6c53290923c26985ab65ed6e5aa94f96fece54f20f3ffc9fb777d` |
| 90 | `instance` | [OrderDual.booleanAlgebra](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderBooleanAlgebraNamespaced.lean/declarations/orderdual-booleanalgebra.md) | 713 | `declaration-track:4efb3a719a2cca96847229b2d5c4d31c67934eb9a454110bb6993803334aac11` |
| 91 | `theorem` | [sup_inf_inf_compl](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderBooleanAlgebraNamespaced.lean/declarations/sup-inf-inf-compl.md) | 724 | `result-track:3e641b6b03b6531b668237c8af1ba5d1565a1a1508255c2dde5fcfeb1293b5aa` |
| 92 | `theorem` | [compl_sdiff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderBooleanAlgebraNamespaced.lean/declarations/compl-sdiff.md) | 728 | `result-track:afa6051d6939af0bd2f2fafd8066436f83fdcb5595af7ab025d8aa1765d053a7` |
| 93 | `theorem` | [compl_himp](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderBooleanAlgebraNamespaced.lean/declarations/compl-himp.md) | 733 | `result-track:69ef3af1b41aab4873088a56161ad53a0afe452a3a05b9ec1a7f3e1aeaa6f60f` |
| 94 | `theorem` | [compl_sdiff_compl](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderBooleanAlgebraNamespaced.lean/declarations/compl-sdiff-compl.md) | 737 | `result-track:7c2dfefe5cd41a9e27554247422c8ade4bcd1c41b9343790c2548f02b4648a8f` |
| 95 | `theorem` | [compl_himp_compl](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderBooleanAlgebraNamespaced.lean/declarations/compl-himp-compl.md) | 741 | `result-track:7eca40d4f93fe29c28f2aee205e7f6c47b1bbbb1796a703b6cdd82baf7ce9a00` |
| 96 | `theorem` | [disjoint_compl_left_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderBooleanAlgebraNamespaced.lean/declarations/disjoint-compl-left-iff.md) | 745 | `result-track:7bf2c79128f2d791129bb5c1b8a570792fe35517d6615c2dadda572ab76f1427` |
| 97 | `theorem` | [disjoint_compl_right_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderBooleanAlgebraNamespaced.lean/declarations/disjoint-compl-right-iff.md) | 749 | `result-track:6368aa2dc0bd1151130ab1a1527c57f23ec504de1d07b8dbb37332d61b7bd99d` |
| 98 | `theorem` | [codisjoint_himp_self_left](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderBooleanAlgebraNamespaced.lean/declarations/codisjoint-himp-self-left.md) | 753 | `result-track:5103dab3eec26205bb1bb633973f6e7a1892c5641b185b2d7c8c2d7ed7b1dcb2` |
| 99 | `theorem` | [codisjoint_himp_self_right](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderBooleanAlgebraNamespaced.lean/declarations/codisjoint-himp-self-right.md) | 757 | `result-track:89b9111189114b8915842c46bd3e3a86af84f8437f0f2143e152a23f784d8835` |
| 100 | `theorem` | [himp_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderBooleanAlgebraNamespaced.lean/declarations/himp-le.md) | 761 | `result-track:e8ab413f8be203a55889a7e291f6b39cffeb6e585dbe75b201716fe8d21be7ca` |
| 101 | `instance` | [Prop.booleanAlgebra](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderBooleanAlgebraNamespaced.lean/declarations/prop-booleanalgebra.md) | 767 | `declaration-track:986c9e932018217c891bd691af1d6642fa84d4341f9f672f4176ef4590479640` |
| 102 | `instance` | [Prod.booleanAlgebra](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderBooleanAlgebraNamespaced.lean/declarations/prod-booleanalgebra.md) | 775 | `declaration-track:b83f01295e34037d59e843af18b144e429ee62382df9100c5e47ae54e0298604` |
| 103 | `instance` | [Pi.booleanAlgebra](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderBooleanAlgebraNamespaced.lean/declarations/pi-booleanalgebra.md) | 784 | `declaration-track:e0ba20967d1c534d7175c71beadcdead9d36911fa82ca6756074f0dee13b57b6` |
| 104 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderBooleanAlgebraNamespaced.lean/declarations/instance-source-edition-4.md) | 793 | `declaration-track:603608198b4a43424099f418895a677199e49d0ad624288c3a60cf822c2968c5` |
| 105 | `theorem` | [Bool.sup_eq_bor](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderBooleanAlgebraNamespaced.lean/declarations/bool-sup-eq-bor.md) | 809 | `result-track:6e6b4be5fb55ec505ae9d9601c4bbfc3ab7348459c492f9e3dd4c5144936c5a8` |
| 106 | `theorem` | [Bool.inf_eq_band](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderBooleanAlgebraNamespaced.lean/declarations/bool-inf-eq-band.md) | 814 | `result-track:9176459b0063ec7aa29463bfeb53664d1b96891d2d4b0a1582aa7c583fe382b2` |
| 107 | `theorem` | [Bool.compl_eq_bnot](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderBooleanAlgebraNamespaced.lean/declarations/bool-compl-eq-bnot.md) | 819 | `result-track:485384d3d0a2aa51542570f6fade2297d67f4c692fac7d57de5a9a8f69befb0a` |
| 108 | `def` | [Function.Injective.generalizedBooleanAlgebra](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderBooleanAlgebraNamespaced.lean/declarations/function-injective-generalizedbooleanalgebra.md) | 828 | `declaration-track:a51e3382bc3f62d8e5febf2e2a007fb0d1759206963cfc9047bc507fa7fb97d8` |
| 109 | `def` | [Function.Injective.booleanAlgebra](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderBooleanAlgebraNamespaced.lean/declarations/function-injective-booleanalgebra.md) | 842 | `declaration-track:6c36eecc376bad2208c1fdb8737f93f7fe59299ad2b2bd1ac52cb839236e6e4f` |
| 110 | `instance` | [PUnit.booleanAlgebra](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderBooleanAlgebraNamespaced.lean/declarations/punit-booleanalgebra.md) | 863 | `declaration-track:baecc5b38ece6002ec3d653da77c102bca3b278853d3fa80890736d2df8eb008` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4f918893433ce895f111b0023abcb9bfee9a6fe4110862fba8ea44fb507ba080 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BooleanAlgebra/Variant257305dc02748c7696ec1b2444573c7dd8f7062a3eeccf187fa493ae11587691.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BooleanAlgebra/Variant257305dc02748c7696ec1b2444573c7dd8f7062a3eeccf187fa493ae11587691.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
