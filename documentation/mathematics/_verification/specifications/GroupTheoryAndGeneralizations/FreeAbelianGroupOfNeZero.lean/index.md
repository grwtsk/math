# Verification target: Free Abelian Group Of Ne Zero

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fce1d8b4e28b7b62870cd21758f539da45d16726",
  "lexical_observation_count": 71,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/FreeAbelianGroup/Variantb8d6fdfff606a9d88ceead201e2f5dba65652bfb76a388df2a59076479116aee.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GroupTheoryAndGeneralizations/FreeAbelianGroupOfNeZero.lean/index.md) · [Full source](../../../../GroupTheoryAndGeneralizations/FreeAbelianGroupOfNeZero.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fce1d8b4e28b7b62870cd21758f539da45d16726`.

Source path: `GRWTSK/Algebra/GroupTheory/FreeAbelianGroup/Variantb8d6fdfff606a9d88ceead201e2f5dba65652bfb76a388df2a59076479116aee.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/FreeAbelianGroup/Variantb8d6fdfff606a9d88ceead201e2f5dba65652bfb76a388df2a59076479116aee.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Module.NatInt` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Abelianization` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.FreeGroup.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [FreeAbelianGroup](../../../../GroupTheoryAndGeneralizations/FreeAbelianGroupOfNeZero.lean/declarations/freeabeliangroup.md) | 90 | `declaration-track:048b1136d96d428d51df32bb73182a944db3940136977d172962584ee51e8550` |
| 2 | `instance` | [FreeAbelianGroup.addCommGroup](../../../../GroupTheoryAndGeneralizations/FreeAbelianGroupOfNeZero.lean/declarations/freeabeliangroup-addcommgroup.md) | 95 | `declaration-track:ac061f819f4e872b5569664108691aba0b2983c75272c2532313de239b8ee000` |
| 3 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/FreeAbelianGroupOfNeZero.lean/declarations/instance-source-edition-5.md) | 98 | `declaration-track:abd22e0fd89291aba203884773c3d815dc68205070870308ff8e9e8a19513597` |
| 4 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/FreeAbelianGroupOfNeZero.lean/declarations/instance-source-edition-4.md) | 101 | `declaration-track:8d8ea072c73ee1a3a1cbdf8c6e1a7fe29912c08090c057575639ed999d20328b` |
| 5 | `def` | [of](../../../../GroupTheoryAndGeneralizations/FreeAbelianGroupOfNeZero.lean/declarations/of-source-edition-2.md) | 108 | `declaration-track:e243ad34157de6fb0464d4394a6d2e5e626258414818630987230573cc06aac7` |
| 6 | `def` | [lift](../../../../GroupTheoryAndGeneralizations/FreeAbelianGroupOfNeZero.lean/declarations/lift.md) | 112 | `declaration-track:889b4f6417d6021fa81eb93661106220e2e310a475d595aa0f202a97e6da2597` |
| 7 | `theorem` | [of](../../../../GroupTheoryAndGeneralizations/FreeAbelianGroupOfNeZero.lean/declarations/of.md) | 124 | `result-track:1558bd4636a8699744e857eb2a48e81e455d1c84a75b77054b585639e2f682a6` |
| 8 | `theorem` | [unique](../../../../GroupTheoryAndGeneralizations/FreeAbelianGroupOfNeZero.lean/declarations/unique.md) | 129 | `result-track:c35c6a8e1a1f9cfca4b77d611371cf0784926be838c1ca0edbc6b7c56532e69b` |
| 9 | `theorem` | [ext](../../../../GroupTheoryAndGeneralizations/FreeAbelianGroupOfNeZero.lean/declarations/ext.md) | 135 | `result-track:02e541754e5fff51f920a37cca7bd2486e2a336be4c69274d665c0defd2c34ab` |
| 10 | `theorem` | [map_hom](../../../../GroupTheoryAndGeneralizations/FreeAbelianGroupOfNeZero.lean/declarations/map-hom.md) | 138 | `result-track:393455de9242e96a44ff96ab8c097af328095943803dfbfeca349a597cd32be0` |
| 11 | `theorem` | [of_injective](../../../../GroupTheoryAndGeneralizations/FreeAbelianGroupOfNeZero.lean/declarations/of-injective.md) | 151 | `result-track:dc29a8060f64362ba7191bb07022910eb6b42a3ccee152a925a877402c74b9ae` |
| 12 | `theorem` | [of_ne_zero](../../../../GroupTheoryAndGeneralizations/FreeAbelianGroupOfNeZero.lean/declarations/of-ne-zero.md) | 160 | `result-track:db401e22e79f770ca2fccd3d987d826df45089193d7f944dc16359151bfb832c` |
| 13 | `theorem` | [zero_ne_of](../../../../GroupTheoryAndGeneralizations/FreeAbelianGroupOfNeZero.lean/declarations/zero-ne-of.md) | 168 | `result-track:73c9bc184a6f0fbab8787a5492ed127cb51c51f247ab926a3c6bd148f281d715` |
| 14 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/FreeAbelianGroupOfNeZero.lean/declarations/instance-source-edition-2.md) | 170 | `declaration-track:46445df2a1e602d7f5aa9e843eb68642dbf1a93579d9933943e0d3a9a1c2eee4` |
| 15 | `theorem` | [induction_on](../../../../GroupTheoryAndGeneralizations/FreeAbelianGroupOfNeZero.lean/declarations/induction-on.md) | 178 | `result-track:9273c99e8d5dc9b6c89cc003753c460e798b51a7dbe2a7c352a71f556b181eb0` |
| 16 | `theorem` | [lift.add'](../../../../GroupTheoryAndGeneralizations/FreeAbelianGroupOfNeZero.lean/declarations/lift-add.md) | 185 | `result-track:7674386fa45f970b88c43c9b246128710793c448cfa956884aa6e105733a5019` |
| 17 | `def` | [liftAddGroupHom](../../../../GroupTheoryAndGeneralizations/FreeAbelianGroupOfNeZero.lean/declarations/liftaddgrouphom.md) | 200 | `declaration-track:f55b4c1c5d7e36ff5c8035ec7004a758ae4a181a95e471305c76bc973c9d5de8` |
| 18 | `theorem` | [lift_neg'](../../../../GroupTheoryAndGeneralizations/FreeAbelianGroupOfNeZero.lean/declarations/lift-neg.md) | 203 | `result-track:79d4e0e26d59ee575fab8bceb88ccdbc0f59c957c7f99e5aa87e6a8bf0563ae4` |
| 19 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/FreeAbelianGroupOfNeZero.lean/declarations/instance-source-edition-3.md) | 210 | `declaration-track:56f667fffd12f015ab32a14e60b9f70d3b044a4e22588d3bffa2cf29536e1df7` |
| 20 | `theorem` | [induction_on'](../../../../GroupTheoryAndGeneralizations/FreeAbelianGroupOfNeZero.lean/declarations/induction-on-source-edition-2.md) | 215 | `result-track:b93e91e03d1f16f1c27f4c7352953f458a5d052e1bdd4519552a0cf182b769eb` |
| 21 | `theorem` | [map_pure](../../../../GroupTheoryAndGeneralizations/FreeAbelianGroupOfNeZero.lean/declarations/map-pure.md) | 221 | `result-track:84a0d6882e6bea70b1c9e36b529292327fff614ef0cd7d2060f181dffd5f02e4` |
| 22 | `theorem` | [map_zero](../../../../GroupTheoryAndGeneralizations/FreeAbelianGroupOfNeZero.lean/declarations/map-zero.md) | 225 | `result-track:eeba32e44beec87a05cf54cef6f55d4351b5af8f6d878809e1bfc2893d763d9b` |
| 23 | `theorem` | [map_add](../../../../GroupTheoryAndGeneralizations/FreeAbelianGroupOfNeZero.lean/declarations/map-add.md) | 229 | `result-track:2f05f4e08d47fb41dc1f422e49b614c659266e897ce67a36f2b1c0da6c65d017` |
| 24 | `theorem` | [map_neg](../../../../GroupTheoryAndGeneralizations/FreeAbelianGroupOfNeZero.lean/declarations/map-neg.md) | 234 | `result-track:d73022b6dd3c5102032d14fc7508bab77a5565b58e2bcaa332c091b6faf40f54` |
| 25 | `theorem` | [map_sub](../../../../GroupTheoryAndGeneralizations/FreeAbelianGroupOfNeZero.lean/declarations/map-sub.md) | 238 | `result-track:0999efd9f49947b431341bed4a331f802edc219f0fedbfdb9b40b0454cbfe547` |
| 26 | `theorem` | [map_of](../../../../GroupTheoryAndGeneralizations/FreeAbelianGroupOfNeZero.lean/declarations/map-of.md) | 243 | `result-track:9fb093b11ee59dd4ecebbb6cac97a26ebf8b01880f1e9f985d92902a5fafc93a` |
| 27 | `theorem` | [pure_bind](../../../../GroupTheoryAndGeneralizations/FreeAbelianGroupOfNeZero.lean/declarations/pure-bind.md) | 246 | `result-track:cc63070bba7d4715648c983f47fc6afdaedf2857a7ee67534c938b267dbbe0af` |
| 28 | `theorem` | [zero_bind](../../../../GroupTheoryAndGeneralizations/FreeAbelianGroupOfNeZero.lean/declarations/zero-bind.md) | 250 | `result-track:ee01f9f90061d9868bca64b4c2a79f8ac7ef40ddeec8424870d0c02a3616d078` |
| 29 | `theorem` | [add_bind](../../../../GroupTheoryAndGeneralizations/FreeAbelianGroupOfNeZero.lean/declarations/add-bind.md) | 254 | `result-track:ccb60ad2bffae8be97d959e230c0f85f31890afd6c516b27ef576c211249f50f` |
| 30 | `theorem` | [neg_bind](../../../../GroupTheoryAndGeneralizations/FreeAbelianGroupOfNeZero.lean/declarations/neg-bind.md) | 259 | `result-track:c1c01b4ec5800dca9dcf8b8bf7e87b3586f537aaf2160477674ac39c4dc0d40e` |
| 31 | `theorem` | [sub_bind](../../../../GroupTheoryAndGeneralizations/FreeAbelianGroupOfNeZero.lean/declarations/sub-bind.md) | 263 | `result-track:7530937589fc4a95a8062aa4b85e8aab2405e25971b1ae337fb67c7bad4a4644` |
| 32 | `theorem` | [pure_seq](../../../../GroupTheoryAndGeneralizations/FreeAbelianGroupOfNeZero.lean/declarations/pure-seq.md) | 268 | `result-track:8a10b8cf559713dd10efde38d63aff8809ede01a0c538414857498d2997c363c` |
| 33 | `theorem` | [zero_seq](../../../../GroupTheoryAndGeneralizations/FreeAbelianGroupOfNeZero.lean/declarations/zero-seq.md) | 272 | `result-track:407d115c7b9d8e2586f0176fd1952463837e89e680aa51c3ba366aa50c6f0d25` |
| 34 | `theorem` | [add_seq](../../../../GroupTheoryAndGeneralizations/FreeAbelianGroupOfNeZero.lean/declarations/add-seq.md) | 276 | `result-track:f1062a699964a4a0d3626bbbdb21a984a80fb2cb83b15931a04223ea8a046463` |
| 35 | `theorem` | [neg_seq](../../../../GroupTheoryAndGeneralizations/FreeAbelianGroupOfNeZero.lean/declarations/neg-seq.md) | 281 | `result-track:240ffd2a87fc4579a48109b2025bbff2b455261fb6619108d40196452c074eb6` |
| 36 | `theorem` | [sub_seq](../../../../GroupTheoryAndGeneralizations/FreeAbelianGroupOfNeZero.lean/declarations/sub-seq.md) | 285 | `result-track:4d7bb24d4f1c5dbcd0df8e47f47944f70724bee8d308da5e6a5d7721ce64882f` |
| 37 | `def` | [seqAddGroupHom](../../../../GroupTheoryAndGeneralizations/FreeAbelianGroupOfNeZero.lean/declarations/seqaddgrouphom.md) | 291 | `declaration-track:5e96aa3141435a8cb01de4dad201da2f728dce02d0393efc91836b51757bb6a8` |
| 38 | `theorem` | [seq_zero](../../../../GroupTheoryAndGeneralizations/FreeAbelianGroupOfNeZero.lean/declarations/seq-zero.md) | 298 | `result-track:260aab7fa8d63df2b1b4f2600bb2bfd34a514467934c38bc66041b442c479a6c` |
| 39 | `theorem` | [seq_add](../../../../GroupTheoryAndGeneralizations/FreeAbelianGroupOfNeZero.lean/declarations/seq-add.md) | 302 | `result-track:8120e6b252f7332a1a7ea48058363f9257b74058661e79d2e0b041304bd28acf` |
| 40 | `theorem` | [seq_neg](../../../../GroupTheoryAndGeneralizations/FreeAbelianGroupOfNeZero.lean/declarations/seq-neg.md) | 307 | `result-track:a1d59f204efaad28bd26bfae9e2dce204b3a1b6bdfd3b58e03e368c709408f21` |
| 41 | `theorem` | [seq_sub](../../../../GroupTheoryAndGeneralizations/FreeAbelianGroupOfNeZero.lean/declarations/seq-sub.md) | 311 | `result-track:e2e2ef10037cdc442bd4810c799d2f285aff513eb2b0fd1b036ddd46c1d51972` |
| 42 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/FreeAbelianGroupOfNeZero.lean/declarations/instance-source-edition-6.md) | 315 | `declaration-track:cc09fbfebc5adaa0302d93ffd0026aa5d9f05e1497eaaba49f1d406f97c63efd` |
| 43 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/FreeAbelianGroupOfNeZero.lean/declarations/instance-source-edition-7.md) | 324 | `declaration-track:d57595b4f8584a04c7dfd1804a2f1b3ae364f792bd5c92185db46ae0a9a65ad4` |
| 44 | `def` | [map](../../../../GroupTheoryAndGeneralizations/FreeAbelianGroupOfNeZero.lean/declarations/map.md) | 349 | `declaration-track:14964f171295db09b1011ac99b91b07edf9a0d34958088241b77d34f9e8ee6b1` |
| 45 | `theorem` | [lift_comp](../../../../GroupTheoryAndGeneralizations/FreeAbelianGroupOfNeZero.lean/declarations/lift-comp.md) | 352 | `result-track:407bd317b8314da84dcc76edb7c4cca1e9fece29dc20024de47dd979b2f927b8` |
| 46 | `theorem` | [map_id](../../../../GroupTheoryAndGeneralizations/FreeAbelianGroupOfNeZero.lean/declarations/map-id.md) | 360 | `result-track:08ce87fc217cafc9aec4ec234d4981087a01169a1fecf9aa652e34373ffc585b` |
| 47 | `theorem` | [map_id_apply](../../../../GroupTheoryAndGeneralizations/FreeAbelianGroupOfNeZero.lean/declarations/map-id-apply.md) | 364 | `result-track:46ef62ee438ab70d8e0fdf69cabc6690e38ce6d08fea284678c78237f9fda9d1` |
| 48 | `theorem` | [map_comp](../../../../GroupTheoryAndGeneralizations/FreeAbelianGroupOfNeZero.lean/declarations/map-comp.md) | 368 | `result-track:08944ad634684d94e3ea0f2c1c647060174c329f065b972301b8cfc1ced2e080` |
| 49 | `theorem` | [map_comp_apply](../../../../GroupTheoryAndGeneralizations/FreeAbelianGroupOfNeZero.lean/declarations/map-comp-apply.md) | 371 | `result-track:37a05fdd0950a0b7b2ecf5ed02b80347017e74f30f27339c87fd2fd87283d841` |
| 50 | `theorem` | [map_of_apply](../../../../GroupTheoryAndGeneralizations/FreeAbelianGroupOfNeZero.lean/declarations/map-of-apply.md) | 378 | `result-track:fba6f72eb58fe4bfea869af0731b0d53a2e9a9fb48bf6d8377e3286731e8d4d1` |
| 51 | `instance` | [mul](../../../../GroupTheoryAndGeneralizations/FreeAbelianGroupOfNeZero.lean/declarations/mul.md) | 387 | `declaration-track:3ce4b9cc94bff9125690fe718febddc3aa1d00abecb1f3cb783b5f011e6343bf` |
| 52 | `theorem` | [mul_def](../../../../GroupTheoryAndGeneralizations/FreeAbelianGroupOfNeZero.lean/declarations/mul-def.md) | 392 | `result-track:911e71ba98524b327b74118cc118d4cbf58b3839ca54c2b899535e8cd18136a1` |
| 53 | `theorem` | [of_mul_of](../../../../GroupTheoryAndGeneralizations/FreeAbelianGroupOfNeZero.lean/declarations/of-mul-of.md) | 397 | `result-track:0f75fd12f6b911c42b7d0879135626aebeceae33c285690924d9bdc780ed73ca` |
| 54 | `theorem` | [of_mul](../../../../GroupTheoryAndGeneralizations/FreeAbelianGroupOfNeZero.lean/declarations/of-mul.md) | 400 | `result-track:a9f565fa9707236078bb41df7406f0ebdf027188ffa17f02e69628de5dc7c5f7` |
| 55 | `instance` | [distrib](../../../../GroupTheoryAndGeneralizations/FreeAbelianGroupOfNeZero.lean/declarations/distrib.md) | 403 | `declaration-track:6a386f720685f5f658212004507a021bfbb4efece57634e9521ddd20b7776a1e` |
| 56 | `instance` | [nonUnitalNonAssocRing](../../../../GroupTheoryAndGeneralizations/FreeAbelianGroupOfNeZero.lean/declarations/nonunitalnonassocring.md) | 408 | `declaration-track:33db0b1150ab4911e21b5f5cc2ed34cb3262fb96eca0c7a697da9c42c96c944e` |
| 57 | `instance` | [one](../../../../GroupTheoryAndGeneralizations/FreeAbelianGroupOfNeZero.lean/declarations/one.md) | 421 | `declaration-track:b04f77147401d8401e04e54049126f3b9e64aa4c2925998f982d6521d3be7a5a` |
| 58 | `theorem` | [one_def](../../../../GroupTheoryAndGeneralizations/FreeAbelianGroupOfNeZero.lean/declarations/one-def.md) | 424 | `result-track:ec9a9ccb8e37f1940a8f83951d74924ed2b36bdf08402123e224d99fe964050e` |
| 59 | `theorem` | [of_one](../../../../GroupTheoryAndGeneralizations/FreeAbelianGroupOfNeZero.lean/declarations/of-one.md) | 427 | `result-track:fa90dfc72bc74103ca985120c5d1963ca6ebfe6a55225fe4951d67233fb0453a` |
| 60 | `instance` | [nonUnitalRing](../../../../GroupTheoryAndGeneralizations/FreeAbelianGroupOfNeZero.lean/declarations/nonunitalring.md) | 432 | `declaration-track:3eaf1a1c7254091d1820559bff8b4fbb17de88ac78f146badc9b0e9d2a07eab5` |
| 61 | `instance` | [ring](../../../../GroupTheoryAndGeneralizations/FreeAbelianGroupOfNeZero.lean/declarations/ring.md) | 453 | `declaration-track:cd7a50b6658c3c41e78f825980522da669fb38cc9b20465690682e4b0ecba491` |
| 62 | `def` | [ofMulHom](../../../../GroupTheoryAndGeneralizations/FreeAbelianGroupOfNeZero.lean/declarations/ofmulhom.md) | 475 | `declaration-track:af82af3a47681fe7ebcac367e6a6fccf8260c2fc0615b13d215f16d82aa2cfe3` |
| 63 | `theorem` | [ofMulHom_coe](../../../../GroupTheoryAndGeneralizations/FreeAbelianGroupOfNeZero.lean/declarations/ofmulhom-coe.md) | 481 | `result-track:2c798d4215ef4e5c66ed2989eed9e84857d7736493f111a7f925cf5e200fc50f` |
| 64 | `def` | [liftMonoid](../../../../GroupTheoryAndGeneralizations/FreeAbelianGroupOfNeZero.lean/declarations/liftmonoid.md) | 485 | `declaration-track:b704bff3d5399f8435c7786cd10bf1d9fa7b24f7a7854464c64148de0f237dd0` |
| 65 | `theorem` | [liftMonoid_coe_addMonoidHom](../../../../GroupTheoryAndGeneralizations/FreeAbelianGroupOfNeZero.lean/declarations/liftmonoid-coe-addmonoidhom.md) | 513 | `result-track:e45225401e6fb611e48366ddfb6765d4cdb70a28c8778555856aacfb469aea5c` |
| 66 | `theorem` | [liftMonoid_coe](../../../../GroupTheoryAndGeneralizations/FreeAbelianGroupOfNeZero.lean/declarations/liftmonoid-coe.md) | 517 | `result-track:757dad50f1f05572da83c80ce4854a55a032a76bc160e57da8aef78520844193` |
| 67 | `theorem` | [liftMonoid_symm_coe](../../../../GroupTheoryAndGeneralizations/FreeAbelianGroupOfNeZero.lean/declarations/liftmonoid-symm-coe.md) | 521 | `result-track:38ece87d56f2febe572b2fe8f00dab4900cfae24b047fc5c5957a489765f0821` |
| 68 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/FreeAbelianGroupOfNeZero.lean/declarations/instance.md) | 527 | `declaration-track:1b4d98e6123af79aa53cc574861747b8ff25cd63215f1868a7501dbb96e1a643` |
| 69 | `instance` | [pemptyUnique](../../../../GroupTheoryAndGeneralizations/FreeAbelianGroupOfNeZero.lean/declarations/pemptyunique.md) | 547 | `declaration-track:826e3c9dee8cf84625312675980a9913a10012727bb187510173de3c064ae0d2` |
| 70 | `def` | [punitEquiv](../../../../GroupTheoryAndGeneralizations/FreeAbelianGroupOfNeZero.lean/declarations/punitequiv.md) | 554 | `declaration-track:7ab6aa3cf91dc95c7c081191ce8eea8db551c7a5d2671626d0d27df7b5d76728` |
| 71 | `def` | [equivOfEquiv](../../../../GroupTheoryAndGeneralizations/FreeAbelianGroupOfNeZero.lean/declarations/equivofequiv.md) | 569 | `declaration-track:9c015e6bb44edb5aaa66fedd436c90c0d58ee5e50cf8c4777e6c08424bc77680` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=bdff4fda9cfc72a15ed5682c9431bc1c1bd976d8e81a7f0231fc9961c87726c8 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/FreeAbelianGroup/Variantb8d6fdfff606a9d88ceead201e2f5dba65652bfb76a388df2a59076479116aee.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/FreeAbelianGroup/Variantb8d6fdfff606a9d88ceead201e2f5dba65652bfb76a388df2a59076479116aee.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
