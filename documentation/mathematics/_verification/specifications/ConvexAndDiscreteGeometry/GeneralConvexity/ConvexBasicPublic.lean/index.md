# Verification target: Convex Basic Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "74588106f9753245de719836b31e43fdad4293ab",
  "lexical_observation_count": 102,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/Basic/Variant9044a0be27a288e404cbd80670eb0e739271be1fdd7577dbf205dff40af24fcf.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBasicPublic.lean/index.md) · [Full source](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBasicPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `74588106f9753245de719836b31e43fdad4293ab`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/Basic/Variant9044a0be27a288e404cbd80670eb0e739271be1fdd7577dbf205dff40af24fcf.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/Basic/Variant9044a0be27a288e404cbd80670eb0e739271be1fdd7577dbf205dff40af24fcf.lean.json)

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
| 1 | `def` | [Convex](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBasicPublic.lean/declarations/convex.md) | 52 | `declaration-track:bc0b83ee1bc7452735b635b32f33e81c388b0f3cfdd8344aeb5b319072101c84` |
| 2 | `theorem` | [Convex.starConvex](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBasicPublic.lean/declarations/convex-starconvex.md) | 57 | `result-track:7377a151a423e90b4952300a1a49bae3f18dd57642cc76477dd3e7e9169cca20` |
| 3 | `theorem` | [convex_iff_segment_subset](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBasicPublic.lean/declarations/convex-iff-segment-subset.md) | 60 | `result-track:af8a8f40860d75c85385298b085fc1fc304320dccdca9c54edac0b42c0e2eb1e` |
| 4 | `theorem` | [Convex.segment_subset](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBasicPublic.lean/declarations/convex-segment-subset.md) | 63 | `result-track:c8667d7398bc8cb3f8d78b718e5b90190b051176400748751235b77c553efa0b` |
| 5 | `theorem` | [Convex.openSegment_subset](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBasicPublic.lean/declarations/convex-opensegment-subset.md) | 67 | `result-track:1fbf0854b25dcb729c358bc170eed3c5acc692541874170c52b9e3198d4cbd92` |
| 6 | `theorem` | [convex_iff_add_mem](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBasicPublic.lean/declarations/convex-iff-add-mem.md) | 71 | `result-track:2d1cddb03ef156350de3b8e892bc49f3dae11c31620eb7e20f75865576d41348` |
| 7 | `theorem` | [convex_iff_pointwise_add_subset](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBasicPublic.lean/declarations/convex-iff-pointwise-add-subset.md) | 76 | `result-track:c6aaf60014e73baa0b690ed25e1ff783698eadbc5221e31ae07e97bfb871398a` |
| 8 | `theorem` | [convex_empty](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBasicPublic.lean/declarations/convex-empty.md) | 86 | `result-track:c6911826f3fc900cf4379b3ae77980ac731d0ed855b0e4529a8bee81bdff4802` |
| 9 | `theorem` | [convex_univ](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBasicPublic.lean/declarations/convex-univ.md) | 88 | `result-track:5f33200ee3184313d453b0f62f35a4c6a4fb0c5f7ae0770e0fa7189453757141` |
| 10 | `theorem` | [Convex.inter](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBasicPublic.lean/declarations/convex-inter.md) | 90 | `result-track:ea353907d42d093573323b3e268b816b46a8a532fe608a9781982f706ca8a5ff` |
| 11 | `theorem` | [convex_sInter](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBasicPublic.lean/declarations/convex-sinter.md) | 93 | `result-track:38ec6fc78f6d369edd70b7b4c5868c903e161b43130676b846d356e89f4a70e0` |
| 12 | `theorem` | [convex_iInter](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBasicPublic.lean/declarations/convex-iinter.md) | 96 | `result-track:8f3c323e021b16c553e05a3edbfece369c6f9596470572422dbc4859b44a9ebc` |
| 13 | `theorem` | [convex_iInter₂](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBasicPublic.lean/declarations/convex-iinter-source-edition-2.md) | 100 | `result-track:d00f3b8c138f633e0e3b11f40bf3e7f6e4a14f050067fbcb82d1f534ba2d9f18` |
| 14 | `theorem` | [Convex.prod](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBasicPublic.lean/declarations/convex-prod.md) | 104 | `result-track:f8a16b0f2debeffe78f6af9091e4dc06987b9663fd399b44ae17d35a1908fca8` |
| 15 | `theorem` | [convex_pi](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBasicPublic.lean/declarations/convex-pi.md) | 107 | `result-track:1db65d438be9a71a9196895c88c35bde52e15862aa966790cf11a5ca541485bb` |
| 16 | `theorem` | [Directed.convex_iUnion](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBasicPublic.lean/declarations/directed-convex-iunion.md) | 111 | `result-track:f5fcf9325ab6237299855ed14b6f29b152af47d271ce5d72f95b4f38a57bfa9a` |
| 17 | `theorem` | [DirectedOn.convex_sUnion](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBasicPublic.lean/declarations/directedon-convex-sunion.md) | 120 | `result-track:cf0cccbfcc18b2984018d700471e9cca1b7c4fe5a8656f25cc9cbb6ceb07e481` |
| 18 | `theorem` | [Convex.setOfPred_const_imp](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBasicPublic.lean/declarations/convex-setofpred-const-imp.md) | 125 | `result-track:4320176bb39ce541cc6a8125d9a44b59a6d9951d98050fc07e1a7238d884fe04` |
| 19 | `theorem` | [convex_iff_openSegment_subset](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBasicPublic.lean/declarations/convex-iff-opensegment-subset.md) | 136 | `result-track:89afc0b79d40059097f1caa20a025167e03fa9cef5b0ded43d44910418abdd24` |
| 20 | `theorem` | [convex_iff_forall_pos](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBasicPublic.lean/declarations/convex-iff-forall-pos.md) | 140 | `result-track:f61f2b4b4a20483d4fea36c088aeefb6aaa3d481e1136f1c140ff35fe675a1de` |
| 21 | `theorem` | [convex_iff_pairwise_pos](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBasicPublic.lean/declarations/convex-iff-pairwise-pos.md) | 145 | `result-track:ffe82858f2edaab7053bcfe1b6799fa453704f8b0b1736b35010638540b20c5e` |
| 22 | `theorem` | [Convex.starConvex_iff](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBasicPublic.lean/declarations/convex-starconvex-iff.md) | 153 | `result-track:7e4a9f5238c68ca38d87e711802f76aa3836a53fb1bb78c6461284f913bae3d3` |
| 23 | `theorem` | [Set.Subsingleton.convex](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBasicPublic.lean/declarations/set-subsingleton-convex.md) | 157 | `result-track:f9d7402cc020668d1c1de5320c29d893b9dc03371b848049aac27fc9e1f571ec` |
| 24 | `theorem` | [convex_singleton](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBasicPublic.lean/declarations/convex-singleton.md) | 160 | `result-track:2aaf2493461a8aef9d510c9c08e7bef300f94268904f90e2fa37bbf2e6e66004` |
| 25 | `theorem` | [convex_zero](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBasicPublic.lean/declarations/convex-zero.md) | 163 | `result-track:39020714a65c928dd87f367a9b403a537b5f91c3622e2ded764292d147a2714a` |
| 26 | `theorem` | [convex_segment](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBasicPublic.lean/declarations/convex-segment.md) | 166 | `result-track:d691a37913fde76b66b02f51b9d04d9ffa9b392f2390c1598ebc6b290e9cd04f` |
| 27 | `theorem` | [Convex.linear_image](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBasicPublic.lean/declarations/convex-linear-image.md) | 176 | `result-track:b215ac380c1f1d415a384998358db50a36511be903521f1ed9a3065400eca1a0` |
| 28 | `theorem` | [Convex.is_linear_image](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBasicPublic.lean/declarations/convex-is-linear-image.md) | 180 | `result-track:d9f6ccef4a46f594bcb79f973611f2ef33b66ddf8debd7d7178e52b69600f661` |
| 29 | `theorem` | [Convex.linear_preimage](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBasicPublic.lean/declarations/convex-linear-preimage.md) | 184 | `result-track:d702c1c881e3c9474a202d6380515f026b52fbb57d075ec435d3d13828a500b9` |
| 30 | `theorem` | [Convex.is_linear_preimage](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBasicPublic.lean/declarations/convex-is-linear-preimage.md) | 189 | `result-track:661dd90748415459d013bb318280fb36f498e23da796832ab72373895ca90fc3` |
| 31 | `theorem` | [Convex.add](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBasicPublic.lean/declarations/convex-add.md) | 192 | `result-track:b5a27d18069aa7536c8ccb09599423a49c029c2c7317762dac5285fccbebdb2b` |
| 32 | `def` | [convexAddSubmonoid](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBasicPublic.lean/declarations/convexaddsubmonoid.md) | 199 | `declaration-track:25669f0f9d8cb68d9b11d8149d103e0c97b03a0e9c94018950a147745bc3ea6b` |
| 33 | `theorem` | [coe_convexAddSubmonoid](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBasicPublic.lean/declarations/coe-convexaddsubmonoid.md) | 205 | `result-track:15ae9544b42f27223c9d0954e9c93b179d6431bcca191c9c06000d2f96fa9b5d` |
| 34 | `theorem` | [mem_convexAddSubmonoid](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBasicPublic.lean/declarations/mem-convexaddsubmonoid.md) | 211 | `result-track:5e5d7eb7105cd2091765e3bd2abec3b7810668aea20729ed34ecafbb32d4271a` |
| 35 | `theorem` | [convex_list_sum](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBasicPublic.lean/declarations/convex-list-sum.md) | 214 | `result-track:a15b844d209ecb5d1ecf082685739a6e90dc859cd52cd3fb492384a5f552bb62` |
| 36 | `theorem` | [convex_multiset_sum](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBasicPublic.lean/declarations/convex-multiset-sum.md) | 217 | `result-track:72221a224c53f87d2908951691b1c4e9812319ddfe4c45bd4094a1700c1cbc2c` |
| 37 | `theorem` | [convex_sum](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBasicPublic.lean/declarations/convex-sum.md) | 220 | `result-track:ed0c9e3d46a4343f4e689b2d01aa5777faf499d8327d695c74cb7808491484f3` |
| 38 | `theorem` | [Convex.vadd](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBasicPublic.lean/declarations/convex-vadd.md) | 224 | `result-track:7eb03a2f0047c095bba49b21c9e6c28d28c840c9a16a6779f2b52053193a1930` |
| 39 | `theorem` | [Convex.translate](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBasicPublic.lean/declarations/convex-translate.md) | 228 | `result-track:aa636c5c2330e421cc7841bef5d4b513109a8fa8eb3d1ab7d72ffebb6fea3ee2` |
| 40 | `theorem` | [Convex.translate_preimage_right](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBasicPublic.lean/declarations/convex-translate-preimage-right.md) | 232 | `result-track:949844ba96f86d6d460634c68559b6fed0d0b5ac91aaf541eb48225e1667793e` |
| 41 | `theorem` | [Convex.translate_preimage_left](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBasicPublic.lean/declarations/convex-translate-preimage-left.md) | 239 | `result-track:11d8b948ed330128591341fc17f346e26dcd60446885113effa259a40ff48a45` |
| 42 | `theorem` | [convex_Iic](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBasicPublic.lean/declarations/convex-iic.md) | 247 | `result-track:c15dd63d7bb0387fdbbc4fbdee8f90dd111628c95602e1f0e6ae6f07c77a7fa6` |
| 43 | `theorem` | [convex_Ici](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBasicPublic.lean/declarations/convex-ici.md) | 253 | `result-track:a660bffccdb3021d55d3e36a021e20da1568d49a6767eec5e72ddfe20bcb0968` |
| 44 | `theorem` | [convex_Icc](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBasicPublic.lean/declarations/convex-icc.md) | 256 | `result-track:95397f38f97183125c33e084878b59e34a2a09e98db6defd329f790c878f898d` |
| 45 | `theorem` | [convex_halfSpace_le](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBasicPublic.lean/declarations/convex-halfspace-le.md) | 259 | `result-track:d330e5ec264061c10d6cc4f27bf3b39f88049687866891f85470455678a5636f` |
| 46 | `theorem` | [convex_halfSpace_ge](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBasicPublic.lean/declarations/convex-halfspace-ge.md) | 261 | `result-track:119187eaa32424075185d2580e4aef2f4855ca248df15ff2596750dae429ff7a` |
| 47 | `theorem` | [convex_hyperplane](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBasicPublic.lean/declarations/convex-hyperplane.md) | 263 | `result-track:deb12a8d904bbca1942c48ef213bf2977ad840b4d114a9e6b774c6f7ee36ff2d` |
| 48 | `theorem` | [convex_Iio](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBasicPublic.lean/declarations/convex-iio.md) | 274 | `result-track:509f503cb10143b7fb4292890783b48852ffe09dc0a00718fca758ac6fef0b47` |
| 49 | `theorem` | [convex_Ioi](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBasicPublic.lean/declarations/convex-ioi.md) | 285 | `result-track:0895e2db4cdd1ecf9facb3b86ba2172bf0cb7029bcc12754b71c1cc0ca890869` |
| 50 | `theorem` | [convex_Ioo](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBasicPublic.lean/declarations/convex-ioo.md) | 288 | `result-track:859a07ad2cb9a3a9af7d7efae95d0f7f284c8cd9c71ee04af03c0020e786df56` |
| 51 | `theorem` | [convex_Ico](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBasicPublic.lean/declarations/convex-ico.md) | 291 | `result-track:65538d3acd5b78c0fca31d5d3121cf34656eab15ca974245c8e7c1714ebd5db0` |
| 52 | `theorem` | [convex_Ioc](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBasicPublic.lean/declarations/convex-ioc.md) | 294 | `result-track:b4a1b84a38b71ded43c57b35e976255fe6c7c4049d06cb7b43777f7305125941` |
| 53 | `theorem` | [convex_halfSpace_lt](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBasicPublic.lean/declarations/convex-halfspace-lt.md) | 297 | `result-track:ee91f9cf808ce71b36a3033a157a58af146b3d8bcbe665fc6a4eb57b1b7a01e0` |
| 54 | `theorem` | [convex_halfSpace_gt](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBasicPublic.lean/declarations/convex-halfspace-gt.md) | 299 | `result-track:6c600185da25a974733d536493c9d4a2f26c5b21e4961b85991d28f579309e54` |
| 55 | `theorem` | [convex_uIcc](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBasicPublic.lean/declarations/convex-uicc.md) | 307 | `result-track:9cdd95b42d41138b8139ceebdb825f59cd7dbcd5542cc17f7d88556efb4e19f0` |
| 56 | `theorem` | [Convex.lift](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBasicPublic.lean/declarations/convex-lift.md) | 321 | `result-track:a6beb9161f3d72d585f16f32e1668d2ebfaebee1e7113a0056a566b592e22754` |
| 57 | `theorem` | [MonotoneOn.convex_le](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBasicPublic.lean/declarations/monotoneon-convex-le.md) | 337 | `result-track:dfb323ea2b908e86f8ca105d5a7883517ed427c2b2f9f35e033bfa61b4b6d7a0` |
| 58 | `theorem` | [MonotoneOn.convex_lt](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBasicPublic.lean/declarations/monotoneon-convex-lt.md) | 344 | `result-track:a16b02dd7737e08458fa669b3c2b698f7351e662255e4ec9701b7759159a80bf` |
| 59 | `theorem` | [MonotoneOn.convex_ge](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBasicPublic.lean/declarations/monotoneon-convex-ge.md) | 351 | `result-track:02d77b93e241098d282f9a11731b74b6579160b0b33ceb7a1d685c4e2a655738` |
| 60 | `theorem` | [MonotoneOn.convex_gt](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBasicPublic.lean/declarations/monotoneon-convex-gt.md) | 355 | `result-track:8d61f9e30c8d557c273fe29c13d0e1537504f02f697f7522ace89a1b80f3f253` |
| 61 | `theorem` | [AntitoneOn.convex_le](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBasicPublic.lean/declarations/antitoneon-convex-le.md) | 359 | `result-track:23c918865ca845c3d795fe14659731b3b991a84e925716e82e99014eb47ffcb7` |
| 62 | `theorem` | [AntitoneOn.convex_lt](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBasicPublic.lean/declarations/antitoneon-convex-lt.md) | 363 | `result-track:10d845a4810cda5b4bd5f0624e8e05e58e883ce55c6405551872edb0d30e7933` |
| 63 | `theorem` | [AntitoneOn.convex_ge](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBasicPublic.lean/declarations/antitoneon-convex-ge.md) | 367 | `result-track:ca9e9ebf844dab376167bc54c28a405ee91116c641473e621c5f1ea4d08b9907` |
| 64 | `theorem` | [AntitoneOn.convex_gt](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBasicPublic.lean/declarations/antitoneon-convex-gt.md) | 371 | `result-track:405cc9ac750516544e2371e85b56f4fe023e0570c2f65206acbb483e0120f237` |
| 65 | `theorem` | [Monotone.convex_le](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBasicPublic.lean/declarations/monotone-convex-le.md) | 375 | `result-track:c7924927a04aa103a7aa57e5f84052608464d3d93d672c592ca6a5fbc4b58890` |
| 66 | `theorem` | [Monotone.convex_lt](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBasicPublic.lean/declarations/monotone-convex-lt.md) | 378 | `result-track:f92edea5551994a2cd35f1072c1cdb920d3f66ccad228833ee0c0f5f13f41371` |
| 67 | `theorem` | [Monotone.convex_ge](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBasicPublic.lean/declarations/monotone-convex-ge.md) | 381 | `result-track:8fb37a6815672e86332c4ac35abdd1ec5d04beb37d80191e4c03e4de152ff056` |
| 68 | `theorem` | [Monotone.convex_gt](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBasicPublic.lean/declarations/monotone-convex-gt.md) | 384 | `result-track:5a7aceccf5ecbc34c219a28488883526e1747303c01ac81f38ee89aa327dedfa` |
| 69 | `theorem` | [Antitone.convex_le](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBasicPublic.lean/declarations/antitone-convex-le.md) | 387 | `result-track:acb5913880c599f1062914fa7408ea272e9a16c226012edf42ed4ee9e686235c` |
| 70 | `theorem` | [Antitone.convex_lt](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBasicPublic.lean/declarations/antitone-convex-lt.md) | 390 | `result-track:69a3b50431eef110f50b96e7ab17316ff8097126762e0cc72a91ed654f01d178` |
| 71 | `theorem` | [Antitone.convex_ge](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBasicPublic.lean/declarations/antitone-convex-ge.md) | 393 | `result-track:b25bd783e07a853d89234dfaa0b38e0ff9aaea981044b308ab00b02222d7d9aa` |
| 72 | `theorem` | [Antitone.convex_gt](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBasicPublic.lean/declarations/antitone-convex-gt.md) | 396 | `result-track:3336a71c1d8e23874ce6aa9b576cf53b4b027bb2f2eefd85a20f69f5df3cb125` |
| 73 | `theorem` | [Convex.smul](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBasicPublic.lean/declarations/convex-smul.md) | 411 | `result-track:262cd267a58be0084f489bb20e3bbb78b8917ab57d0149e3bed058d4843790c9` |
| 74 | `theorem` | [Convex.smul_preimage](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBasicPublic.lean/declarations/convex-smul-preimage.md) | 414 | `result-track:9c2828a26331a9716ffcd5f86680be0b598505e1b81330ce26f2ab199934ba95` |
| 75 | `theorem` | [Convex.affinity](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBasicPublic.lean/declarations/convex-affinity.md) | 417 | `result-track:66dff93ecf64ff8fb7758571036ab25d2a2e9e452b4fd217b0547a8eca1b77a9` |
| 76 | `theorem` | [convex_openSegment](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBasicPublic.lean/declarations/convex-opensegment.md) | 429 | `result-track:4ae57d25eb6e5cccb6b9d171cf9ba06c7735e3f174ef1452a8089b0417e78e96` |
| 77 | `theorem` | [convex_vadd](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBasicPublic.lean/declarations/convex-vadd-source-edition-2.md) | 447 | `result-track:a3a18495b0de3f424850be69f89fec3c3aa3e32a9228821b9050cd0499e4894c` |
| 78 | `theorem` | [AffineSubspace.convex](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBasicPublic.lean/declarations/affinesubspace-convex.md) | 451 | `result-track:4fb41d2ebb9737e1ea85c441ed85da0090cd4663b5b5c2b8a52e1884ede97a21` |
| 79 | `theorem` | [Convex.affine_preimage](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBasicPublic.lean/declarations/convex-affine-preimage.md) | 455 | `result-track:20bf1a44123ffb365403a342f5c350fdd05758860784f489c5f7fb15edb3b81d` |
| 80 | `theorem` | [Convex.affine_image](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBasicPublic.lean/declarations/convex-affine-image.md) | 459 | `result-track:bc79dbd8500556b45fbefa9a165936243edf862c2ab1df6a29fee4bcafdf4733` |
| 81 | `theorem` | [Convex.neg](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBasicPublic.lean/declarations/convex-neg.md) | 463 | `result-track:3bcee2665240dc48b5238bddd6ac4103c6afd5aa83651550e9d2d20debcc83de` |
| 82 | `theorem` | [Convex.sub](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBasicPublic.lean/declarations/convex-sub.md) | 466 | `result-track:c786f99ec2cd786a6618bc890d381aca588e8410f1d102c92bae9a38636c2f2e` |
| 83 | `theorem` | [Convex.add_smul_mem](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBasicPublic.lean/declarations/convex-add-smul-mem.md) | 472 | `result-track:e123c42cacb6440d48736e69d6b4471a6776f690ae038a214e55bbf0e39456e0` |
| 84 | `theorem` | [Convex.smul_mem_of_zero_mem](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBasicPublic.lean/declarations/convex-smul-mem-of-zero-mem.md) | 478 | `result-track:44e2de75ebd21bcd387133e12f8a375e975abac0b9e93b26a9f2cb6166beefc6` |
| 85 | `theorem` | [Convex.mapsTo_lineMap](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBasicPublic.lean/declarations/convex-mapsto-linemap.md) | 482 | `result-track:b04d950067bf1105c3ba7911952ba19f99c363dc9a4120b489fe3f53c587a33c` |
| 86 | `theorem` | [Convex.lineMap_mem](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBasicPublic.lean/declarations/convex-linemap-mem.md) | 486 | `result-track:37661224c2544bd0d684014682db58c9fcd1d283a07df5648c3da91cff1f0e84` |
| 87 | `theorem` | [Convex.add_smul_sub_mem](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBasicPublic.lean/declarations/convex-add-smul-sub-mem.md) | 490 | `result-track:c593d23e94c7424233a5428eaa66aeb4aa8cd3b755af92fc74d015150a9258a7` |
| 88 | `theorem` | [Convex.semilinear_image](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBasicPublic.lean/declarations/convex-semilinear-image.md) | 509 | `result-track:644a71ec2e9fa7a4b4c7977c8cee910d3974bd29601e7ccfce0372db9685077c` |
| 89 | `theorem` | [Convex_subadditive_le](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBasicPublic.lean/declarations/convex-subadditive-le.md) | 523 | `result-track:5f61864f3d858fb39153037d0b8339cfa02474be384d8d4afdc4f8a1c6167f63` |
| 90 | `theorem` | [Convex.midpoint_mem](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBasicPublic.lean/declarations/convex-midpoint-mem.md) | 535 | `result-track:65ce9ada12796f5c7441805522708d73ab9f7f00e5bc14981292727d1de7de7f` |
| 91 | `theorem` | [convex_iff_div](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBasicPublic.lean/declarations/convex-iff-div.md) | 549 | `result-track:9f283308d40273598916a016b96e4907ef9e6577ce0c3bd9ecaa9f28422d8c1d` |
| 92 | `theorem` | [Convex.mem_smul_of_zero_mem](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBasicPublic.lean/declarations/convex-mem-smul-of-zero-mem.md) | 554 | `result-track:2e27112cbd26d80fe38a0c7149f2fe33bb2ee742d13dd5e3252373f4e0677863` |
| 93 | `theorem` | [Convex.exists_mem_add_smul_eq](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBasicPublic.lean/declarations/convex-exists-mem-add-smul-eq.md) | 560 | `result-track:ac22aa8f5a5fbfd44d3b00f4de3095c508a6bca1ac2dc3bb58171d56c7a12060` |
| 94 | `theorem` | [Convex.add_smul](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBasicPublic.lean/declarations/convex-add-smul.md) | 570 | `result-track:b52de300ce90788d00c5889910e71c8f6748e2cb1e1716fc605e9c61d34cefff` |
| 95 | `theorem` | [Convex.add_half_self_eq_self](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBasicPublic.lean/declarations/convex-add-half-self-eq-self.md) | 575 | `result-track:0273ad221a2741909e06104d51745e78e8e681a7d4ad1e58704f37bee57b4728` |
| 96 | `theorem` | [Set.OrdConnected.convex_of_chain](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBasicPublic.lean/declarations/set-ordconnected-convex-of-chain.md) | 592 | `result-track:37a3b8f4adf35f063029d0195a754185738e8a3d969504812eb0a881d57d9ac2` |
| 97 | `theorem` | [Set.OrdConnected.convex](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBasicPublic.lean/declarations/set-ordconnected-convex.md) | 601 | `result-track:8a5658ee8d35925a101fb71a88a89e3cf210526bd56a19344a660565daebd6b7` |
| 98 | `theorem` | [convex_iff_ordConnected](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBasicPublic.lean/declarations/convex-iff-ordconnected.md) | 606 | `result-track:4c525cd4682df7b11007b8d07054a99f3705b4571e1eb0fda426f83b3f3fdc62` |
| 99 | `theorem` | [convex](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBasicPublic.lean/declarations/convex-source-edition-2.md) | 621 | `result-track:eca95b20fd1dbcdfb8da0b0effda369533a12a36d0310781c5276b022418559f` |
| 100 | `theorem` | [starConvex](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBasicPublic.lean/declarations/starconvex.md) | 625 | `result-track:9d46bb74696e13cddae4b53bb5452d948221c455c9ddea4db67ff9199ecd56fc` |
| 101 | `theorem` | [Convex.semilinear_range](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBasicPublic.lean/declarations/convex-semilinear-range.md) | 628 | `result-track:44fa7c6e92035decbbbb2ea03682514c5f8572516cdc4f6f505a5d4b5ae9513a` |
| 102 | `lemma` | [convex_of_nonneg_surjective_algebraMap](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexBasicPublic.lean/declarations/convex-of-nonneg-surjective-algebramap.md) | 641 | `result-track:44bd35ced81ad05be445acf82f48972241250b4fb27411c4cf6ac50752dadd2a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=13f1df4f893620a583cca848496ccd5a119bb4523e07e86c784f2b1a7b41df80 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/FunctionalAnalysis/Basic/Variant9044a0be27a288e404cbd80670eb0e739271be1fdd7577dbf205dff40af24fcf.lean","GRWTSK/_verification/specifications/Analysis/FunctionalAnalysis/Basic/Variant9044a0be27a288e404cbd80670eb0e739271be1fdd7577dbf205dff40af24fcf.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
