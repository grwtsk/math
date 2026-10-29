# Verification target: Elliptic Divisibility Sequence Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4fd27ef19864046c4bbd5e7e9df7ba900f18c1e2",
  "lexical_observation_count": 119,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/EllipticDivisibilitySequence/Variant81aba31a1e662ded8d380d1ab980bb0ad2bdca9f10aa6b08334e0f72c5d9c1dc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../NumberTheory/EllipticDivisibilitySequencePublic.lean/index.md) · [Full source](../../../../NumberTheory/EllipticDivisibilitySequencePublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4fd27ef19864046c4bbd5e7e9df7ba900f18c1e2`.

Source path: `GRWTSK/Algebra/GroupTheory/EllipticDivisibilitySequence/Variant81aba31a1e662ded8d380d1ab980bb0ad2bdca9f10aa6b08334e0f72c5d9c1dc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/EllipticDivisibilitySequence/Variant81aba31a1e662ded8d380d1ab980bb0ad2bdca9f10aa6b08334e0f72c5d9c1dc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Int.Even` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [atom](../../../../NumberTheory/EllipticDivisibilitySequencePublic.lean/declarations/atom.md) | 108 | `declaration-track:1f767facd15d1de4efaa5874887ac331ad758d8ae393ac168df4e9429efa95ab` |
| 2 | `lemma` | [atom_same](../../../../NumberTheory/EllipticDivisibilitySequencePublic.lean/declarations/atom-same.md) | 112 | `result-track:30247eeebd805b3f0275ff91f61df03c940e3c955ae31b33fddb20c5b71b6341` |
| 3 | `lemma` | [neg_atom](../../../../NumberTheory/EllipticDivisibilitySequencePublic.lean/declarations/neg-atom.md) | 117 | `result-track:3b19e7ed36e1d1696971f1361b1c11cf256bbe00fe1708a32cf6f3a08bfd8b70` |
| 4 | `lemma` | [atom_mul_atom](../../../../NumberTheory/EllipticDivisibilitySequencePublic.lean/declarations/atom-mul-atom.md) | 121 | `result-track:e827da86194fb7aeabd693b639991df145a0cccff77b2dce5d8dc983d913a0e8` |
| 5 | `lemma` | [atom_neg_left](../../../../NumberTheory/EllipticDivisibilitySequencePublic.lean/declarations/atom-neg-left.md) | 127 | `result-track:205d32046db5361a2667f78b65a69ba8050aeb0a4a74387308d67c00a4ad5507` |
| 6 | `lemma` | [atom_neg_right](../../../../NumberTheory/EllipticDivisibilitySequencePublic.lean/declarations/atom-neg-right.md) | 132 | `result-track:c4e6c09b28c77965c020f8e6dc468257405415c7755c2b1fa34901f0610d4969` |
| 7 | `lemma` | [atom_abs_left](../../../../NumberTheory/EllipticDivisibilitySequencePublic.lean/declarations/atom-abs-left.md) | 137 | `result-track:b9a80770d4d5b6ce01708ed2303e3ff44ad969e120a40d98b41cccfeefc1e695` |
| 8 | `lemma` | [atom_abs_right](../../../../NumberTheory/EllipticDivisibilitySequencePublic.lean/declarations/atom-abs-right.md) | 141 | `result-track:a1679e26522e98af575c0793af299f67eb18893fe23c229ccfc88d5c3fd56186` |
| 9 | `lemma` | [atom_even](../../../../NumberTheory/EllipticDivisibilitySequencePublic.lean/declarations/atom-even.md) | 144 | `result-track:7b2ab6a176f32b6e925742eafc6fd7567ff9867952bc748adc3ddf851d6bc182` |
| 10 | `lemma` | [atom_odd](../../../../NumberTheory/EllipticDivisibilitySequencePublic.lean/declarations/atom-odd.md) | 147 | `result-track:ccdcbe38459d824d49e1ce11cc0f145c6713e6a7e74aadc18717ccb768ce59e2` |
| 11 | `lemma` | [map_atom](../../../../NumberTheory/EllipticDivisibilitySequencePublic.lean/declarations/map-atom.md) | 151 | `result-track:3d8944ebc3053dba382415895bfb49c40433837d6190fbb7a93ba739ad74d9b7` |
| 12 | `def` | [atomRel](../../../../NumberTheory/EllipticDivisibilitySequencePublic.lean/declarations/atomrel.md) | 157 | `declaration-track:eee3d453bc62c166a351ae8f43f3482b09bb50f66c02806c67c2c291fc063a68` |
| 13 | `lemma` | [atomRel_same₁₂](../../../../NumberTheory/EllipticDivisibilitySequencePublic.lean/declarations/atomrel-same-source-edition-5.md) | 161 | `result-track:f3c15cd40fd221b330c845ab3849f5253cd682a6d76110be1122d54f6f9b03dd` |
| 14 | `lemma` | [atomRel_same₁₃](../../../../NumberTheory/EllipticDivisibilitySequencePublic.lean/declarations/atomrel-same.md) | 166 | `result-track:43c2b03b98f01bc0839726142e4a492a965cd3e668ee7a41b6b95a2e0871a166` |
| 15 | `lemma` | [atomRel_same₁₄](../../../../NumberTheory/EllipticDivisibilitySequencePublic.lean/declarations/atomrel-same-source-edition-3.md) | 171 | `result-track:955f00c09ef5f0bef514bab214afba654494176dc17129538619a17ef16733c1` |
| 16 | `lemma` | [atomRel_same₂₃](../../../../NumberTheory/EllipticDivisibilitySequencePublic.lean/declarations/atomrel-same-source-edition-6.md) | 175 | `result-track:f8bf5d08a9a521cc704d325903bd90070caea27b01b4f9cb0524d6df12ecbcd0` |
| 17 | `lemma` | [atomRel_same₂₄](../../../../NumberTheory/EllipticDivisibilitySequencePublic.lean/declarations/atomrel-same-source-edition-4.md) | 180 | `result-track:b0b63a82bce781c95af2791b41f3f938c9136da0e8db140257043b22af9795a0` |
| 18 | `lemma` | [atomRel_same₃₄](../../../../NumberTheory/EllipticDivisibilitySequencePublic.lean/declarations/atomrel-same-source-edition-2.md) | 184 | `result-track:52d99040b852caccef1a1a7e8935addd476cd658105540f7f9c245d54f235b6e` |
| 19 | `lemma` | [neg_atomRel₁₂](../../../../NumberTheory/EllipticDivisibilitySequencePublic.lean/declarations/neg-atomrel.md) | 188 | `result-track:93c3ddf9bfbf3a47ce5370ad6c512c36eb90c18875367df2b7572b33626b68c6` |
| 20 | `lemma` | [neg_atomRel₂₃](../../../../NumberTheory/EllipticDivisibilitySequencePublic.lean/declarations/neg-atomrel-source-edition-3.md) | 192 | `result-track:c785ee560b373cd40a689bb1e24225adb3fedd94950e9d7f7c9b3cc69cc803d3` |
| 21 | `lemma` | [neg_atomRel₃₄](../../../../NumberTheory/EllipticDivisibilitySequencePublic.lean/declarations/neg-atomrel-source-edition-2.md) | 196 | `result-track:a330104ba593c2186e22b2feb3140620a5fab98be255e4ee490305bad4786bf6` |
| 22 | `lemma` | [atomRel_neg₁](../../../../NumberTheory/EllipticDivisibilitySequencePublic.lean/declarations/atomrel-neg.md) | 201 | `result-track:28d75f5f1097eaf5d6df51422290e769ca534396fa359b73451762df73f6994d` |
| 23 | `lemma` | [atomRel_neg₂](../../../../NumberTheory/EllipticDivisibilitySequencePublic.lean/declarations/atomrel-neg-source-edition-2.md) | 206 | `result-track:4e0b28cb9862191cc7978b76bd31c740f42d56fe1a58557b7c72c3e4fa6c76e0` |
| 24 | `lemma` | [atomRel_neg₃](../../../../NumberTheory/EllipticDivisibilitySequencePublic.lean/declarations/atomrel-neg-source-edition-3.md) | 211 | `result-track:4f7b29a9325df9e5a4167a36d3b5a719f5178fc42dfc8b9de0e5e3d40a238f91` |
| 25 | `lemma` | [atomRel_neg₄](../../../../NumberTheory/EllipticDivisibilitySequencePublic.lean/declarations/atomrel-neg-source-edition-5.md) | 215 | `result-track:b9eb3a8decfaacd3580877888713399cb60235c850aa40c8fa58e86fb17b22b7` |
| 26 | `lemma` | [atomRel_neg](../../../../NumberTheory/EllipticDivisibilitySequencePublic.lean/declarations/atomrel-neg-source-edition-4.md) | 219 | `result-track:a2c821cd85da04bf45d284fa151719565a5b4efff127bff2dfd1015ed7fce890` |
| 27 | `lemma` | [atomRel_abs₁](../../../../NumberTheory/EllipticDivisibilitySequencePublic.lean/declarations/atomrel-abs.md) | 225 | `result-track:3916a9fbfd841711b05634c551fd8fbe55cd03542afc482acfc8e74b6cac3ff9` |
| 28 | `lemma` | [atomRel_abs₂](../../../../NumberTheory/EllipticDivisibilitySequencePublic.lean/declarations/atomrel-abs-source-edition-4.md) | 230 | `result-track:be7fadc35aa114e764fc9e9c6da5717eb69c95e4453b29fc39bc00ce30a73077` |
| 29 | `lemma` | [atomRel_abs₃](../../../../NumberTheory/EllipticDivisibilitySequencePublic.lean/declarations/atomrel-abs-source-edition-3.md) | 235 | `result-track:a94f0bb7cf388036c63d1f750f6d5b1db0019392dc74019ad74f946fe8821473` |
| 30 | `lemma` | [atomRel_abs₄](../../../../NumberTheory/EllipticDivisibilitySequencePublic.lean/declarations/atomrel-abs-source-edition-2.md) | 239 | `result-track:764d2c1dceb419a2839d5ba2b0118aa4794209d5adc31474bf6153860f09d400` |
| 31 | `lemma` | [atomRel_abs](../../../../NumberTheory/EllipticDivisibilitySequencePublic.lean/declarations/atomrel-abs-source-edition-5.md) | 243 | `result-track:e6724d039c806a55dcb738f186ab1a228219cb672c3d42fbdba359b2f4217cce` |
| 32 | `lemma` | [atomRel_avg_sub](../../../../NumberTheory/EllipticDivisibilitySequencePublic.lean/declarations/atomrel-avg-sub.md) | 246 | `result-track:9eb51a92f4579af4603878ce2358d171e9c44ae61466ca2ef454b0d085740a7f` |
| 33 | `lemma` | [atomRel_even](../../../../NumberTheory/EllipticDivisibilitySequencePublic.lean/declarations/atomrel-even.md) | 253 | `result-track:6b9e9aa46c89a4befa98b41ca475dc5173f5dbbe55cb4bdf896d11a7c3272ba6` |
| 34 | `lemma` | [atomRel_odd](../../../../NumberTheory/EllipticDivisibilitySequencePublic.lean/declarations/atomrel-odd.md) | 258 | `result-track:17ada3469b1de4756d2b09fba15c64e441a370707dc951c7351eb62f65aae006` |
| 35 | `lemma` | [map_atomRel](../../../../NumberTheory/EllipticDivisibilitySequencePublic.lean/declarations/map-atomrel.md) | 262 | `result-track:0866603c40b069993cbb0b5e42dec748807b133cd6c1d9f21ba1c8f64919373c` |
| 36 | `def` | [rel](../../../../NumberTheory/EllipticDivisibilitySequencePublic.lean/declarations/rel.md) | 266 | `declaration-track:6a50fd8a8eee3d5588c2864048c6be91142e589f24d7d6c363bc66c371104006` |
| 37 | `lemma` | [rel_eq](../../../../NumberTheory/EllipticDivisibilitySequencePublic.lean/declarations/rel-eq.md) | 270 | `result-track:db2c14b01953d657641ed0cf4e38ff99877cf8e074c355f0315bee5d20cf197f` |
| 38 | `lemma` | [atomRel_two_mul](../../../../NumberTheory/EllipticDivisibilitySequencePublic.lean/declarations/atomrel-two-mul.md) | 275 | `result-track:9bf842dec4a964c32612eaafc9c38b28e9a6c3b6a28e6c4f38f9d9c6b495a741` |
| 39 | `lemma` | [atomRel_eq](../../../../NumberTheory/EllipticDivisibilitySequencePublic.lean/declarations/atomrel-eq.md) | 279 | `result-track:d0ede6c88fff932793227880f32dbde3fc3024587db5390d70a5af9b1e6fa1da` |
| 40 | `lemma` | [rel_neg](../../../../NumberTheory/EllipticDivisibilitySequencePublic.lean/declarations/rel-neg.md) | 285 | `result-track:251926e8540abcfbf0987678093eb22a5123052c5d5a9ed0b91e5c2672ee3073` |
| 41 | `lemma` | [rel_even](../../../../NumberTheory/EllipticDivisibilitySequencePublic.lean/declarations/rel-even.md) | 289 | `result-track:6e31e6c7c46f51a9d93b905599d6f824f65c02b663dc7aca9df95bea32bc8a0a` |
| 42 | `lemma` | [rel_odd](../../../../NumberTheory/EllipticDivisibilitySequencePublic.lean/declarations/rel-odd.md) | 294 | `result-track:b2af5dd0ab00829a9a4050ee2573e5da03c88e6ff05cfdebd78b09fc50dae608` |
| 43 | `lemma` | [map_rel](../../../../NumberTheory/EllipticDivisibilitySequencePublic.lean/declarations/map-rel.md) | 298 | `result-track:f92dec1d5f9f845b77ea7b64902cc8059ed8f122e6691ed97bf2ecd9adbbaeda` |
| 44 | `def` | [IsEllipticNet](../../../../NumberTheory/EllipticDivisibilitySequencePublic.lean/declarations/isellipticnet.md) | 304 | `declaration-track:3d6998d24b72dbba2f6e15862e697314227d266dc6c1f880c281a8c597809ae4` |
| 45 | `def` | [IsEllipticSequence](../../../../NumberTheory/EllipticDivisibilitySequencePublic.lean/declarations/isellipticsequence-source-edition-2.md) | 308 | `declaration-track:71813c5e87d037f6186146893c8fe90b57a633350acb5237ca043c0c549e4405` |
| 46 | `def` | [IsEllipticDvdSequence](../../../../NumberTheory/EllipticDivisibilitySequencePublic.lean/declarations/isellipticdvdsequence.md) | 314 | `declaration-track:9b97e7c45b163f43d7cf9c4964407777967b35bd372d837316455eb6726eab35` |
| 47 | `lemma` | [isEllipticSequence](../../../../NumberTheory/EllipticDivisibilitySequencePublic.lean/declarations/isellipticsequence.md) | 323 | `result-track:6910add4079c1168b9b77fb196d5e02252c40d2825798bc67f064d6e06092a53` |
| 48 | `lemma` | [id](../../../../NumberTheory/EllipticDivisibilitySequencePublic.lean/declarations/id-source-edition-3.md) | 326 | `result-track:9caf68ed904dde3415271b66c577ce257008ab9a7b76be0213245f4e1c8bab4e` |
| 49 | `lemma` | [smul](../../../../NumberTheory/EllipticDivisibilitySequencePublic.lean/declarations/smul.md) | 329 | `result-track:16e0670b04d83168ed76302d3982ec571c0d8365de4357d3cdbe3d5205c4119b` |
| 50 | `lemma` | [comp](../../../../NumberTheory/EllipticDivisibilitySequencePublic.lean/declarations/comp-source-edition-3.md) | 332 | `result-track:c752445d3d739fb294101e57d9de5b7b709b0ab1d0f33859f1e25e676fc09cb2` |
| 51 | `lemma` | [id](../../../../NumberTheory/EllipticDivisibilitySequencePublic.lean/declarations/id-source-edition-2.md) | 341 | `result-track:67c1557f1e46bdae37fd3a3787cce798351530318b92578ad9123532076f46fa` |
| 52 | `lemma` | [smul](../../../../NumberTheory/EllipticDivisibilitySequencePublic.lean/declarations/smul-source-edition-2.md) | 344 | `result-track:2016a4b5b7edf107c29ec68fc3aab5a990af437152cf9406b160350b2d1f98d5` |
| 53 | `lemma` | [comp](../../../../NumberTheory/EllipticDivisibilitySequencePublic.lean/declarations/comp.md) | 347 | `result-track:1110e57748624b2c8af3b6661d9e551be2360174c2d6d90368a5f1c16bd47273` |
| 54 | `theorem` | [id](../../../../NumberTheory/EllipticDivisibilitySequencePublic.lean/declarations/id.md) | 360 | `result-track:526a0665ef3738674644e45329504c3c48f4bd71f806238fbdf916fc86a26efb` |
| 55 | `lemma` | [smul](../../../../NumberTheory/EllipticDivisibilitySequencePublic.lean/declarations/smul-source-edition-3.md) | 363 | `result-track:6d5ba8c951ab940c607fa0b8be0b669b1fa1d037b44724997e6908522d0868c3` |
| 56 | `lemma` | [comp](../../../../NumberTheory/EllipticDivisibilitySequencePublic.lean/declarations/comp-source-edition-2.md) | 366 | `result-track:5611a85991dbb2cd50003160806953bf466100fe6848423c1ed75d1b8f9f6354` |
| 57 | `def` | [preNormEDS'](../../../../NumberTheory/EllipticDivisibilitySequencePublic.lean/declarations/prenormeds-source-edition-2.md) | 380 | `declaration-track:3573eb262916398f7b4769104eb21e160aba4086958f39e7b46b496d4a7a98f2` |
| 58 | `lemma` | [preNormEDS'_zero](../../../../NumberTheory/EllipticDivisibilitySequencePublic.lean/declarations/prenormeds-zero.md) | 396 | `result-track:b6020dc6b55903a2833114533a61ed36a7161bf9a27747f78211984063985f41` |
| 59 | `lemma` | [preNormEDS'_one](../../../../NumberTheory/EllipticDivisibilitySequencePublic.lean/declarations/prenormeds-one.md) | 400 | `result-track:9ef5faa5b054c17b1dfb669e2505f40507ef417ab0284829204b2fa8fc4ab63e` |
| 60 | `lemma` | [preNormEDS'_two](../../../../NumberTheory/EllipticDivisibilitySequencePublic.lean/declarations/prenormeds-two-source-edition-2.md) | 404 | `result-track:dca4d3544d641c6358904ec3259648bfbcc4bf27ee932ca44d89983910350d87` |
| 61 | `lemma` | [preNormEDS'_three](../../../../NumberTheory/EllipticDivisibilitySequencePublic.lean/declarations/prenormeds-three.md) | 408 | `result-track:2446749f26a3a35d57cf6b5569848024b21c27d70169732644d1ed2f41c9e18d` |
| 62 | `lemma` | [preNormEDS'_four](../../../../NumberTheory/EllipticDivisibilitySequencePublic.lean/declarations/prenormeds-four.md) | 412 | `result-track:ebdc670d82e0695d83aa7f604a0683ab40d23dbf2883e503ebdbbcf25940985f` |
| 63 | `lemma` | [preNormEDS'_even](../../../../NumberTheory/EllipticDivisibilitySequencePublic.lean/declarations/prenormeds-even.md) | 415 | `result-track:2d3203223c8744d003bdb4b859a633c0a94e75c7d50b356a7480acfb311416c0` |
| 64 | `lemma` | [preNormEDS'_odd](../../../../NumberTheory/EllipticDivisibilitySequencePublic.lean/declarations/prenormeds-odd.md) | 422 | `result-track:b29aa5fcd30b8cd6e3cc5db762e706a582e3145ebd283547a31149462e71c39f` |
| 65 | `def` | [preNormEDS](../../../../NumberTheory/EllipticDivisibilitySequencePublic.lean/declarations/prenormeds.md) | 432 | `declaration-track:0aa22e6659f6cd114341502df1d227ba42a977893d5bf784814a592253b9532d` |
| 66 | `lemma` | [preNormEDS_ofNat](../../../../NumberTheory/EllipticDivisibilitySequencePublic.lean/declarations/prenormeds-ofnat.md) | 436 | `result-track:2654eaaa1a38cc750fb015b0ac9453e42b2bfffd2a1bd9179d9437834e6d31e3` |
| 67 | `lemma` | [preNormEDS_zero](../../../../NumberTheory/EllipticDivisibilitySequencePublic.lean/declarations/prenormeds-zero-source-edition-2.md) | 442 | `result-track:cb643659656a56f12e85f10e4618d1762e637d926ed568735add7a09c860c263` |
| 68 | `lemma` | [preNormEDS_one](../../../../NumberTheory/EllipticDivisibilitySequencePublic.lean/declarations/prenormeds-one-source-edition-2.md) | 446 | `result-track:a2c03ce93492ea0dce94d4808030c8bb31543f52d0869928233a8b5a611f93e9` |
| 69 | `lemma` | [preNormEDS_two](../../../../NumberTheory/EllipticDivisibilitySequencePublic.lean/declarations/prenormeds-two.md) | 450 | `result-track:750c975c5c4e6ff832e0500d777074ae24c3251b543077fff909b168a00331a6` |
| 70 | `lemma` | [preNormEDS_three](../../../../NumberTheory/EllipticDivisibilitySequencePublic.lean/declarations/prenormeds-three-source-edition-2.md) | 454 | `result-track:48421b3d887692ca6b20a1420f8a3294e7f41d6e4b30ec90419648dafc3095f7` |
| 71 | `lemma` | [preNormEDS_four](../../../../NumberTheory/EllipticDivisibilitySequencePublic.lean/declarations/prenormeds-four-source-edition-2.md) | 458 | `result-track:fdfce0ee9c49a60f532ea665984fdbdecd61c7b1a752412a43969e77c552bdaf` |
| 72 | `lemma` | [preNormEDS_neg](../../../../NumberTheory/EllipticDivisibilitySequencePublic.lean/declarations/prenormeds-neg.md) | 462 | `result-track:055ce0ea57317d80760ea1536973c399f381c3c7e9cf4b2710a318630950d41f` |
| 73 | `lemma` | [preNormEDS_even](../../../../NumberTheory/EllipticDivisibilitySequencePublic.lean/declarations/prenormeds-even-source-edition-2.md) | 465 | `result-track:cb42565abf0f61c82293ad1455370eb819e2bd9840f4f547e8c7ce35ba40cb35` |
| 74 | `lemma` | [preNormEDS_odd](../../../../NumberTheory/EllipticDivisibilitySequencePublic.lean/declarations/prenormeds-odd-source-edition-2.md) | 480 | `result-track:df3d9533e70371cd8e00a5bdce351d26e243a40122151ddac8fe77dfa77867bc` |
| 75 | `def` | [complEDS₂](../../../../NumberTheory/EllipticDivisibilitySequencePublic.lean/declarations/compleds-source-edition-3.md) | 502 | `declaration-track:d51cf319ed649af459e7cf8a0e2be7e95bd538eca2d790422ba7997c93f35200` |
| 76 | `lemma` | [complEDS₂_zero](../../../../NumberTheory/EllipticDivisibilitySequencePublic.lean/declarations/compleds-zero-source-edition-3.md) | 507 | `result-track:445f78374f25d35049c052336a4e2b639887700b56beb922db26b31f2e0a06d8` |
| 77 | `lemma` | [complEDS₂_one](../../../../NumberTheory/EllipticDivisibilitySequencePublic.lean/declarations/compleds-one-source-edition-2.md) | 511 | `result-track:b1338445ec6bd9e6bc1e69759792b0013064e39569ece3c5f1e9774d8ec19d00` |
| 78 | `lemma` | [complEDS₂_two](../../../../NumberTheory/EllipticDivisibilitySequencePublic.lean/declarations/compleds-two.md) | 515 | `result-track:68941798cf7cde6efbd8da2d8b2904461bbcbc5feace9f2c20e84c331652c759` |
| 79 | `lemma` | [complEDS₂_three](../../../../NumberTheory/EllipticDivisibilitySequencePublic.lean/declarations/compleds-three.md) | 519 | `result-track:27cd41a0aeaa016b2756d49d4add823cf89f8bfd310062297c895c2e615b04fc` |
| 80 | `lemma` | [complEDS₂_four](../../../../NumberTheory/EllipticDivisibilitySequencePublic.lean/declarations/compleds-four.md) | 523 | `result-track:ec5b433db0e6cffc86d9acb046fa3435fa46a232d5a2e2fe92e7b1f7c5c55e15` |
| 81 | `lemma` | [complEDS₂_neg](../../../../NumberTheory/EllipticDivisibilitySequencePublic.lean/declarations/compleds-neg-source-edition-2.md) | 528 | `result-track:f396386974c37463f4f886b830b92c2ec1194f98da0abfda0c0d573e84b43903` |
| 82 | `lemma` | [preNormEDS_mul_complEDS₂](../../../../NumberTheory/EllipticDivisibilitySequencePublic.lean/declarations/prenormeds-mul-compleds.md) | 532 | `result-track:c9d53359d1a03b0642fff0a10922cb8e29b79ca464e12c1091c5fad65c68bbb8` |
| 83 | `def` | [normEDS](../../../../NumberTheory/EllipticDivisibilitySequencePublic.lean/declarations/normeds.md) | 545 | `declaration-track:0ba7ed4bac7547d34c0df307d360b250dd30d0b1fa3e5c6360c0726e61b2cd5d` |
| 84 | `lemma` | [normEDS_ofNat](../../../../NumberTheory/EllipticDivisibilitySequencePublic.lean/declarations/normeds-ofnat.md) | 549 | `result-track:5eb503c50d782b143ed95ca2cbd7e16008fdc45f0640d8b3d55045d4254b42a0` |
| 85 | `lemma` | [normEDS_zero](../../../../NumberTheory/EllipticDivisibilitySequencePublic.lean/declarations/normeds-zero.md) | 554 | `result-track:2233ce117dc52a32c53bdaa46173fb86fb9236f4caccd2ea5046d2181d55554c` |
| 86 | `lemma` | [normEDS_one](../../../../NumberTheory/EllipticDivisibilitySequencePublic.lean/declarations/normeds-one.md) | 558 | `result-track:3b37dc0f5da030db9f96e7388e61f34205afbcd143b44b161e39d62ee7acaa58` |
| 87 | `lemma` | [normEDS_two](../../../../NumberTheory/EllipticDivisibilitySequencePublic.lean/declarations/normeds-two.md) | 562 | `result-track:587a5d97f0aeac52c4cb8833bf80524da46ccc1dd19c87eb3923e2e32d1039e4` |
| 88 | `lemma` | [normEDS_three](../../../../NumberTheory/EllipticDivisibilitySequencePublic.lean/declarations/normeds-three.md) | 566 | `result-track:86c1731a862462748ef3a99de36b40107ccd901ecce4277e63bc62a4750dded3` |
| 89 | `lemma` | [normEDS_four](../../../../NumberTheory/EllipticDivisibilitySequencePublic.lean/declarations/normeds-four.md) | 570 | `result-track:3bdeabe6dd9488982fe995c5fa0c02c5474e0a9d846d5d513d944d9c36e2fa04` |
| 90 | `lemma` | [normEDS_neg](../../../../NumberTheory/EllipticDivisibilitySequencePublic.lean/declarations/normeds-neg.md) | 574 | `result-track:6995054ed147140fe76d6074f7e006cc51509944d8b80613ef27d7487f400cfa` |
| 91 | `lemma` | [normEDS_mul_complEDS₂](../../../../NumberTheory/EllipticDivisibilitySequencePublic.lean/declarations/normeds-mul-compleds.md) | 577 | `result-track:5eb6bda49a99c814e5c4599a0e0af6710bc397f1d4600d72080ca33353a2385d` |
| 92 | `lemma` | [normEDS_dvd_normEDS_two_mul](../../../../NumberTheory/EllipticDivisibilitySequencePublic.lean/declarations/normeds-dvd-normeds-two-mul.md) | 582 | `result-track:d123c7c2c5d014f3f2d780fde358e8b478077c3b91518d9fe551cfbab600c926` |
| 93 | `lemma` | [complEDS₂_mul_b](../../../../NumberTheory/EllipticDivisibilitySequencePublic.lean/declarations/compleds-mul-b.md) | 585 | `result-track:e0c99ab89a1de1d9d45815bb771a06e7a17072d96b28ef0ff0fbe72750938f93` |
| 94 | `lemma` | [normEDS_even](../../../../NumberTheory/EllipticDivisibilitySequencePublic.lean/declarations/normeds-even.md) | 592 | `result-track:856160a317c4afe7813b871821878868d70450f0352acd0041525f4892b8b589` |
| 95 | `lemma` | [normEDS_odd](../../../../NumberTheory/EllipticDivisibilitySequencePublic.lean/declarations/normeds-odd.md) | 598 | `result-track:074788af9a49ef3820c4ee803cc1da2b92eb679cc50e49e4aaab53ce0dd31d8c` |
| 96 | `lemma` | [normEDS_atomRel_even](../../../../NumberTheory/EllipticDivisibilitySequencePublic.lean/declarations/normeds-atomrel-even.md) | 606 | `result-track:8189526aa14d508bc4540751e3748dd3c9daf76db125aa2e618803c28a6393db` |
| 97 | `lemma` | [normEDS_atomRel_odd](../../../../NumberTheory/EllipticDivisibilitySequencePublic.lean/declarations/normeds-atomrel-odd.md) | 610 | `result-track:e8744e851327c0d5a49a1ab4b782894af8fe00549a81832319e058abb72f3060` |
| 98 | `def` | [normEDSRec'](../../../../NumberTheory/EllipticDivisibilitySequencePublic.lean/declarations/normedsrec.md) | 623 | `declaration-track:306fdaabecb6e1c074148520db0626ceb9b516c82aa83ee2fd5abafaa2b94105` |
| 99 | `def` | [normEDSRec](../../../../NumberTheory/EllipticDivisibilitySequencePublic.lean/declarations/normedsrec-source-edition-2.md) | 639 | `declaration-track:90c1affaee3ff8ead0a514e33943540339e200e1368ce90763c9aaebd04f4399` |
| 100 | `def` | [complEDS'](../../../../NumberTheory/EllipticDivisibilitySequencePublic.lean/declarations/compleds-source-edition-2.md) | 657 | `declaration-track:8bb503898c55456fa4d1f1ba7a2906a43ca3aa240d0a369b132b54b5425de0ba` |
| 101 | `lemma` | [complEDS'_zero](../../../../NumberTheory/EllipticDivisibilitySequencePublic.lean/declarations/compleds-zero-source-edition-2.md) | 667 | `result-track:43af9932cf8ebb724ff32d8a79c274f389d79ca913a81d9b044af9408906fce7` |
| 102 | `lemma` | [complEDS'_one](../../../../NumberTheory/EllipticDivisibilitySequencePublic.lean/declarations/compleds-one-source-edition-3.md) | 671 | `result-track:c95ff0833144ee0941cb64a8a5ffe1dc0c53f4e47262d115bc30aeb8abc2d793` |
| 103 | `lemma` | [complEDS'_even](../../../../NumberTheory/EllipticDivisibilitySequencePublic.lean/declarations/compleds-even.md) | 674 | `result-track:24283506736658687450646f13dbb60246e623169071620aaeb333303bc635a9` |
| 104 | `lemma` | [complEDS'_odd](../../../../NumberTheory/EllipticDivisibilitySequencePublic.lean/declarations/compleds-odd.md) | 679 | `result-track:868d8599b1fb71acb2c5d4a74405ba8c60f1725b43c2af1c5decaf810ced7998` |
| 105 | `def` | [complEDS](../../../../NumberTheory/EllipticDivisibilitySequencePublic.lean/declarations/compleds.md) | 691 | `declaration-track:659bc381ebde4fdf6ea75246501b2cbbc965c2137cf6d77e2457037e1dad35d1` |
| 106 | `lemma` | [complEDS_ofNat](../../../../NumberTheory/EllipticDivisibilitySequencePublic.lean/declarations/compleds-ofnat.md) | 695 | `result-track:98cd63b31260afec99135269108380571e21bfef7b54854c5b6479b7e6524eec` |
| 107 | `lemma` | [complEDS_zero](../../../../NumberTheory/EllipticDivisibilitySequencePublic.lean/declarations/compleds-zero.md) | 701 | `result-track:403f2ebe4626436d6cbcd6808fbcaf0d064b9f6fa856fc7c938d9b5d1d916960` |
| 108 | `lemma` | [complEDS_one](../../../../NumberTheory/EllipticDivisibilitySequencePublic.lean/declarations/compleds-one.md) | 705 | `result-track:ac8677c4ce0c13edf4ac46120aea9b701d36715a474364526a6ab0503947dccd` |
| 109 | `lemma` | [complEDS_neg](../../../../NumberTheory/EllipticDivisibilitySequencePublic.lean/declarations/compleds-neg.md) | 709 | `result-track:de9123ffb208ae7daa803971dd348b55d7b1ca6c7805541c8a9c7fde3f6595e4` |
| 110 | `lemma` | [complEDS_even](../../../../NumberTheory/EllipticDivisibilitySequencePublic.lean/declarations/compleds-even-source-edition-2.md) | 712 | `result-track:8362136c7b494eff675d9be9a62732cbef282d6bc8146dcf967f70f6fb34a2c4` |
| 111 | `lemma` | [complEDS_odd](../../../../NumberTheory/EllipticDivisibilitySequencePublic.lean/declarations/compleds-odd-source-edition-2.md) | 722 | `result-track:ca3615b2b618aef8657d3b111a14c192e389bc527393347e1e282e33e42f047f` |
| 112 | `def` | [complEDSRec'](../../../../NumberTheory/EllipticDivisibilitySequencePublic.lean/declarations/compledsrec-source-edition-2.md) | 746 | `declaration-track:9d8fba82ad0ad3f4060edd63387ce06fd98165fcc2fb1815c8aa84dd8f755758` |
| 113 | `def` | [complEDSRec](../../../../NumberTheory/EllipticDivisibilitySequencePublic.lean/declarations/compledsrec.md) | 761 | `declaration-track:254b9bed330ee4f7a3739434f42a46f9b321f1f6aeb9b024edfba7654cc2ab13` |
| 114 | `lemma` | [map_preNormEDS'](../../../../NumberTheory/EllipticDivisibilitySequencePublic.lean/declarations/map-prenormeds.md) | 772 | `result-track:355aeed9bb4ab71ac8d4d3f49aa405bb427d8d36c3dc2e4a5dffca79fd0341e7` |
| 115 | `lemma` | [map_preNormEDS](../../../../NumberTheory/EllipticDivisibilitySequencePublic.lean/declarations/map-prenormeds-source-edition-2.md) | 784 | `result-track:d96c00e55526fb0e34376b6bd6bbc8ffbd20792c072b0fad93744fd8ad88092b` |
| 116 | `lemma` | [map_complEDS₂](../../../../NumberTheory/EllipticDivisibilitySequencePublic.lean/declarations/map-compleds.md) | 788 | `result-track:3fb2d1982119aa68e82c64695d0f5359685f2b6814a2065122df7220ce5fbf04` |
| 117 | `lemma` | [map_normEDS](../../../../NumberTheory/EllipticDivisibilitySequencePublic.lean/declarations/map-normeds.md) | 792 | `result-track:dba52260374f0c405793cd7461d397fa022ba98a49e30068920cfa875d15f379` |
| 118 | `lemma` | [map_complEDS'](../../../../NumberTheory/EllipticDivisibilitySequencePublic.lean/declarations/map-compleds-source-edition-2.md) | 796 | `result-track:81a16deb29771d576d5d1ca5b522f46ac5c64d100edca02749951054c6f1b25c` |
| 119 | `lemma` | [map_complEDS](../../../../NumberTheory/EllipticDivisibilitySequencePublic.lean/declarations/map-compleds-source-edition-3.md) | 806 | `result-track:f0b449344a5867f40835a7ef83d230def933a29347e89208440b5501588c3b6f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b472c9c5cbfca277e9b585c62710f1e3199fa90afeae29b3c1b5d92dad8f756f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/EllipticDivisibilitySequence/Variant81aba31a1e662ded8d380d1ab980bb0ad2bdca9f10aa6b08334e0f72c5d9c1dc.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/EllipticDivisibilitySequence/Variant81aba31a1e662ded8d380d1ab980bb0ad2bdca9f10aa6b08334e0f72c5d9c1dc.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
