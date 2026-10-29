# Verification target: Solvable Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "14467736b606bc536f6acd49be29d21eb7fafe25",
  "lexical_observation_count": 59,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Solvable/Variantf863c47a96fb296453748d85e370bb5e2d3b4a1a8ac234a4c978b42b57c7189f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/SolvableNamespacedPublic.lean/index.md) · [Full source](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/SolvableNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `14467736b606bc536f6acd49be29d21eb7fafe25`.

Source path: `GRWTSK/Algebra/Solvable/Variantf863c47a96fb296453748d85e370bb5e2d3b4a1a8ac234a4c978b42b57c7189f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Solvable/Variantf863c47a96fb296453748d85e370bb5e2d3b4a1a8ac234a4c978b42b57c7189f.lean.json)

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
| 1 | `def` | [derivedSeriesOfIdeal](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/SolvableNamespacedPublic.lean/declarations/derivedseriesofideal.md) | 65 | `declaration-track:69705a22dd3cf88ef635c38896c49eabafd9f5232610ae62700259646fa0c2d8` |
| 2 | `theorem` | [derivedSeriesOfIdeal_zero](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/SolvableNamespacedPublic.lean/declarations/derivedseriesofideal-zero.md) | 69 | `result-track:16eee490a233045c09f8de795ee0b786852a278a044114785f692eeb1a6ec5b2` |
| 3 | `theorem` | [derivedSeriesOfIdeal_succ](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/SolvableNamespacedPublic.lean/declarations/derivedseriesofideal-succ.md) | 73 | `result-track:ec6e1d6308dac441b7ead8d5d0ce95aae56d3f265f5cfcb8b05671c3a4566365` |
| 4 | `abbrev` | [derivedSeries](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/SolvableNamespacedPublic.lean/declarations/derivedseries.md) | 79 | `declaration-track:3fcf394066b70667802a9e0dad50b1c666b0b77cc0065058dd5fa97564d1d593` |
| 5 | `theorem` | [derivedSeries_def](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/SolvableNamespacedPublic.lean/declarations/derivedseries-def.md) | 82 | `result-track:27402e17c5b030174bf417692083eb4250b27fc9f22698517e21452434c5643a` |
| 6 | `lemma` | [coe_derivedSeries_one_eq](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/SolvableNamespacedPublic.lean/declarations/coe-derivedseries-one-eq.md) | 85 | `result-track:4f26a44e162bfe5b61bb27f595ee452e7e6cb84300ad831c4819b91c25ecf8e7` |
| 7 | `theorem` | [derivedSeriesOfIdeal_add](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/SolvableNamespacedPublic.lean/declarations/derivedseriesofideal-add.md) | 96 | `result-track:171e29ae3b559ba5a827bb6c8a0439b7319b71f0dc32fd5b200592acc16ad588` |
| 8 | `theorem` | [derivedSeriesOfIdeal_le](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/SolvableNamespacedPublic.lean/declarations/derivedseriesofideal-le.md) | 102 | `result-track:aab8150a37ca3659a00ce875b1b2583fe60bbcd49596bfa9f414ca39078afbe5` |
| 9 | `theorem` | [derivedSeriesOfIdeal_succ_le](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/SolvableNamespacedPublic.lean/declarations/derivedseriesofideal-succ-le.md) | 113 | `result-track:51ca0dfb147d0d76c5f37b70860f1dc586f659fc069cd03778489e4aa815f0df` |
| 10 | `theorem` | [derivedSeriesOfIdeal_le_self](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/SolvableNamespacedPublic.lean/declarations/derivedseriesofideal-le-self.md) | 116 | `result-track:d3d703d465700917c133bc15df118bb3b81fbd09c6eadfb44cb76ca86958b89c` |
| 11 | `theorem` | [derivedSeriesOfIdeal_mono](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/SolvableNamespacedPublic.lean/declarations/derivedseriesofideal-mono.md) | 119 | `result-track:72425f698c27bbb7b817fd9017f5f55f387670aad45ab1f796d98820d2eafc74` |
| 12 | `theorem` | [derivedSeriesOfIdeal_antitone](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/SolvableNamespacedPublic.lean/declarations/derivedseriesofideal-antitone.md) | 122 | `result-track:629c7db82f83e7b7282c141eae25f0241cfe19ae410f6fb4ac169a2de7332bfa` |
| 13 | `theorem` | [derivedSeriesOfIdeal_add_le_add](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/SolvableNamespacedPublic.lean/declarations/derivedseriesofideal-add-le-add.md) | 126 | `result-track:ff5130eb97c0d97fb594688680f297ee63bff9e02dd566a10a0a5df024b1bbba` |
| 14 | `theorem` | [derivedSeries_of_bot_eq_bot](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/SolvableNamespacedPublic.lean/declarations/derivedseries-of-bot-eq-bot.md) | 136 | `result-track:6488c751e8c1ca1e8049ed6d26870878abe99f1d3ea9d85200b3e9e97302da6e` |
| 15 | `theorem` | [abelian_iff_derived_one_eq_bot](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/SolvableNamespacedPublic.lean/declarations/abelian-iff-derived-one-eq-bot.md) | 139 | `result-track:a6cebd3db4234f7b57e088b6a8feaf8ea148a3772f4fe39b8c4a2a47f141fbb2` |
| 16 | `theorem` | [abelian_iff_derived_succ_eq_bot](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/SolvableNamespacedPublic.lean/declarations/abelian-iff-derived-succ-eq-bot.md) | 143 | `result-track:c0c77058faac8479847f59cb9726b1f3d9c6b092e26adde3eeee4792d3b52b76` |
| 17 | `theorem` | [derivedSeriesOfIdeal_baseChange](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/SolvableNamespacedPublic.lean/declarations/derivedseriesofideal-basechange.md) | 148 | `result-track:c8795a7229db4cf42db58d8a6685d02a76135a1f845690eaa635c8db31f1c7e0` |
| 18 | `theorem` | [derivedSeries_baseChange](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/SolvableNamespacedPublic.lean/declarations/derivedseries-basechange.md) | 156 | `result-track:9c53a8c0d96e92ab19472544edfc1072bd353b15c76b45b6fbd3b3a95ecc2fb4` |
| 19 | `theorem` | [derivedSeries_eq_derivedSeriesOfIdeal_comap](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/SolvableNamespacedPublic.lean/declarations/derivedseries-eq-derivedseriesofideal-comap.md) | 169 | `result-track:ae3d64976d5bd2576f54251c58f0b3da2d06d98ecf81beba9308d71cb8c860b3` |
| 20 | `theorem` | [derivedSeries_eq_derivedSeriesOfIdeal_map](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/SolvableNamespacedPublic.lean/declarations/derivedseries-eq-derivedseriesofideal-map.md) | 178 | `result-track:827ec51aeff9774a10264320b1d90e1cb76fb6dd39dc5428970ddf268d0eaf35` |
| 21 | `theorem` | [derivedSeries_eq_bot_iff](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/SolvableNamespacedPublic.lean/declarations/derivedseries-eq-bot-iff.md) | 183 | `result-track:2dffb8f37eeba1a21538209ecc195cc9035ca48b0a32daeb5e1080b7dbf36ffc` |
| 22 | `theorem` | [derivedSeries_add_eq_bot](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/SolvableNamespacedPublic.lean/declarations/derivedseries-add-eq-bot.md) | 187 | `result-track:588512c5e78cf3023ec7eed6cd172a554e9d4bec67d848b20b7294bffba13195` |
| 23 | `theorem` | [derivedSeries_map_le](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/SolvableNamespacedPublic.lean/declarations/derivedseries-map-le.md) | 196 | `result-track:e174371a29d89771adc0b330acd46419fce383b971060d10ea914d48eb592b3f` |
| 24 | `theorem` | [derivedSeries_map_eq](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/SolvableNamespacedPublic.lean/declarations/derivedseries-map-eq.md) | 203 | `result-track:a60749045f6105074abd7bb21d3339ac37c7de56e9b31d01e56f374750a97e0a` |
| 25 | `theorem` | [derivedSeries_succ_eq_top_iff](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/SolvableNamespacedPublic.lean/declarations/derivedseries-succ-eq-top-iff.md) | 212 | `result-track:ece43c11dc8c1db74b10b8b43fe41c55a849bdd238b4f65cd46a3fd332e34b35` |
| 26 | `theorem` | [derivedSeries_eq_top](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/SolvableNamespacedPublic.lean/declarations/derivedseries-eq-top.md) | 224 | `result-track:280e0f58311bbc298513bc33a38fa545a1555231b6f67a3bced6bcbe40e461f7` |
| 27 | `theorem` | [coe_derivedSeries_eq_int_aux](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/SolvableNamespacedPublic.lean/declarations/coe-derivedseries-eq-int-aux.md) | 230 | `result-track:81d0f37cb0761a0914c812308ff1d8a3269376d78e9a36fba873f5c957ab6ea5` |
| 28 | `theorem` | [coe_derivedSeries_eq_int](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/SolvableNamespacedPublic.lean/declarations/coe-derivedseries-eq-int.md) | 247 | `result-track:31c9c18eede9b95f4e85640603ec887279b97a92e0eda817f67023505921d162` |
| 29 | `class` | [IsSolvable](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/SolvableNamespacedPublic.lean/declarations/issolvable.md) | 269 | `declaration-track:a12609753b30f6963d582cdcfe503dbbe60fd2999c402b283d3d48c2c0142bef` |
| 30 | `instance` | [isSolvableBot](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/SolvableNamespacedPublic.lean/declarations/issolvablebot.md) | 273 | `declaration-track:ea081eb0a4521ad128caf8707925d32c2dd8d946fbf6e795a1972e80813a4c48` |
| 31 | `lemma` | [isSolvable_iff](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/SolvableNamespacedPublic.lean/declarations/issolvable-iff.md) | 276 | `result-track:455c316c13efc7ebc4e3daeac2b765a0bdc3f0c141aadaf572163d3e495e51ac` |
| 32 | `lemma` | [IsSolvable.solvable](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/SolvableNamespacedPublic.lean/declarations/issolvable-solvable.md) | 279 | `result-track:c15663e019e09a0306a170e84c786fcc4c6f1030f6b389a6c49553e24e21ded9` |
| 33 | `lemma` | [IsSolvable.mk](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/SolvableNamespacedPublic.lean/declarations/issolvable-mk.md) | 283 | `result-track:51d0ec8cd936afa3d7cc7953f8be9393ac6bd9112f4ff9a8cc2bb2765b128c51` |
| 34 | `instance` | [isSolvableAdd](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/SolvableNamespacedPublic.lean/declarations/issolvableadd.md) | 286 | `declaration-track:68fbe1fbc3ec4d43b6738051f00121e7dabc8ac2303860c68797de1d31ce1e8f` |
| 35 | `theorem` | [derivedSeries_lt_top_of_solvable](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/SolvableNamespacedPublic.lean/declarations/derivedseries-lt-top-of-solvable.md) | 292 | `result-track:c5bde868276a5e466117c3e79dc7790edafad9a1a6518efa6aeeda2385f87b03` |
| 36 | `instance` | [(anonymous)](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/SolvableNamespacedPublic.lean/declarations/instance-source-edition-4.md) | 301 | `declaration-track:f3d54ff526678de6af3b8ff722d0f417ffef221c0eba4afd9b9e9a4e451dbc5c` |
| 37 | `theorem` | [isSolvable_tensorProduct_iff](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/SolvableNamespacedPublic.lean/declarations/issolvable-tensorproduct-iff.md) | 309 | `result-track:90595f984d9bec1b01a9f381894c40af5c4dbed417a321f5b73f4ab0bffd8d79` |
| 38 | `theorem` | [Injective.lieAlgebra_isSolvable](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/SolvableNamespacedPublic.lean/declarations/injective-liealgebra-issolvable.md) | 329 | `result-track:26b173269d956664c48e4e5e259d26f98071497bc5efb27dd33f33b4b5e754eb` |
| 39 | `instance` | [(anonymous)](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/SolvableNamespacedPublic.lean/declarations/instance.md) | 337 | `declaration-track:4ca67893949ca7811e1669ecc30cb3a5cfa898f9ed67f349188d7064fd57c422` |
| 40 | `theorem` | [Surjective.lieAlgebra_isSolvable](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/SolvableNamespacedPublic.lean/declarations/surjective-liealgebra-issolvable.md) | 340 | `result-track:25ef5f5167e5ab76294dc67ca3e66def09026adf219259b6f89506b994c4f583` |
| 41 | `instance` | [LieHom.isSolvable_range](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/SolvableNamespacedPublic.lean/declarations/liehom-issolvable-range.md) | 350 | `declaration-track:aa4e677bb5aac37d1c95816a073a19e71bacef9740aa7829ed0c34b0f4f2b417` |
| 42 | `theorem` | [solvable_iff_equiv_solvable](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/SolvableNamespacedPublic.lean/declarations/solvable-iff-equiv-solvable.md) | 356 | `result-track:775373656b1315d0e940da7c49a7135c09e0965bb9f497b50e5aece2d5ad2daa` |
| 43 | `theorem` | [le_solvable_ideal_solvable](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/SolvableNamespacedPublic.lean/declarations/le-solvable-ideal-solvable.md) | 361 | `result-track:f6efd692ea948693f69696503dab4371d62cf131e46eb3e999428da7ebfe97f5` |
| 44 | `instance` | [(anonymous)](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/SolvableNamespacedPublic.lean/declarations/instance-source-edition-5.md) | 367 | `declaration-track:fea064741a5d21dda1f31149c6ac973efa6e53981268326c1e5cda020e8d75f4` |
| 45 | `def` | [radical](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/SolvableNamespacedPublic.lean/declarations/radical.md) | 373 | `declaration-track:4e1b9992556ce08563a6ebb4bba4c3ad0abad05f71079f1028b6d1d4dcf3fdae` |
| 46 | `instance` | [radicalIsSolvable](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/SolvableNamespacedPublic.lean/declarations/radicalissolvable.md) | 377 | `declaration-track:d7f6c13989553fdc3c1ba94a8bd5678b56cd9010a2f75ff4fb71e7f537d766bc` |
| 47 | `theorem` | [LieIdeal.solvable_iff_le_radical](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/SolvableNamespacedPublic.lean/declarations/lieideal-solvable-iff-le-radical.md) | 386 | `result-track:f3a511d1a5c3fe35508dc386ee78cc94609c57f45640dc1c69842e12b1a5b630` |
| 48 | `theorem` | [center_le_radical](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/SolvableNamespacedPublic.lean/declarations/center-le-radical.md) | 390 | `result-track:35f1b3f0354a0c188351318f7e9a6d37922cd1b9ab775c074217d22fa1e66ee9` |
| 49 | `instance` | [(anonymous)](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/SolvableNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 394 | `declaration-track:4dd8136a6ffcb2c9f04764d42eb31fcafcd72faba9fd7dde5ff1e39fb0bc148a` |
| 50 | `lemma` | [radical_eq_top_of_isSolvable](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/SolvableNamespacedPublic.lean/declarations/radical-eq-top-of-issolvable.md) | 397 | `result-track:cb8db2fc30b02f1e822df893270a6714ac273570435a13c28083cba73491ba87` |
| 51 | `def` | [derivedLengthOfIdeal](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/SolvableNamespacedPublic.lean/declarations/derivedlengthofideal.md) | 407 | `declaration-track:0441847ac3076fc29651a182705e5a5b5b5b02a0ac3c9e4daaf546f80b7ec304` |
| 52 | `abbrev` | [derivedLength](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/SolvableNamespacedPublic.lean/declarations/derivedlength.md) | 413 | `declaration-track:e52104d564100b658d2baf588946dfef84b1ab344bb4a81a81e83dbb466e006b` |
| 53 | `theorem` | [derivedSeries_of_derivedLength_succ](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/SolvableNamespacedPublic.lean/declarations/derivedseries-of-derivedlength-succ.md) | 416 | `result-track:c5b6ea4a723c0f11e72af2b69e7ed73a1cbbe48fb2b08611e6cbd50e6f427455` |
| 54 | `theorem` | [derivedLength_eq_derivedLengthOfIdeal](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/SolvableNamespacedPublic.lean/declarations/derivedlength-eq-derivedlengthofideal.md) | 429 | `result-track:b6683d3d5ad66cff135e37f8a7adebde8c8c31c70f3b4d872eaa55515a0439af` |
| 55 | `def` | [derivedAbelianOfIdeal](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/SolvableNamespacedPublic.lean/declarations/derivedabelianofideal.md) | 442 | `declaration-track:cc418fa6b46583e6191d695aa46e83c6525180634f1ddc6162cca1f353ea714b` |
| 56 | `instance` | [(anonymous)](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/SolvableNamespacedPublic.lean/declarations/instance-source-edition-3.md) | 447 | `declaration-track:c65550093a18ab7164c048268e094aaf8adf1dd9ccf4c83dc4395a28451205b4` |
| 57 | `theorem` | [abelian_derivedAbelianOfIdeal](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/SolvableNamespacedPublic.lean/declarations/abelian-derivedabelianofideal.md) | 450 | `result-track:3de8294f5afc5f4e456de82b41e3a343c60826c1f02166ee8116f701d0351d4e` |
| 58 | `theorem` | [derivedLength_zero](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/SolvableNamespacedPublic.lean/declarations/derivedlength-zero.md) | 457 | `result-track:34077d98463ae9fa2e80450bde337a56ad06da7e0c44cf14863a435625726a26` |
| 59 | `theorem` | [abelian_of_solvable_ideal_eq_bot_iff](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/SolvableNamespacedPublic.lean/declarations/abelian-of-solvable-ideal-eq-bot-iff.md) | 466 | `result-track:69351e0a3e475ed85e1ae4ef20615efce2d36ac1bcec2647fda97758e61ccf81` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d25b1e328021b1b548ba667919e9e18cbb98294fceb34121d241b78b997fb82b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Solvable/Variantf863c47a96fb296453748d85e370bb5e2d3b4a1a8ac234a4c978b42b57c7189f.lean","GRWTSK/_verification/specifications/Algebra/Solvable/Variantf863c47a96fb296453748d85e370bb5e2d3b4a1a8ac234a4c978b42b57c7189f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
