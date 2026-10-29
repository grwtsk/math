# Verification target: Zsqrtd Basic Source Edition2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "725d07b13ea0dd81a443aa1eb1a0bd34e8153bf9",
  "lexical_observation_count": 154,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Basic/Varianta6d3f69406164995b6717324dc0b86976ab658569615f34c21da28bf627db00c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../NumberTheory/ZsqrtdBasicSourceEdition2.lean/index.md) · [Full source](../../../../NumberTheory/ZsqrtdBasicSourceEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `725d07b13ea0dd81a443aa1eb1a0bd34e8153bf9`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/Basic/Varianta6d3f69406164995b6717324dc0b86976ab658569615f34c21da28bf627db00c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/Basic/Varianta6d3f69406164995b6717324dc0b86976ab658569615f34c21da28bf627db00c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Associated` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Int.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ring` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Star.Unitary` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Zsqrtd](../../../../NumberTheory/ZsqrtdBasicSourceEdition2.lean/declarations/zsqrtd.md) | 29 | `declaration-track:e889cca52f1916fe2282c6055d45ece7266ddd2d983d97b3f04f1eade189ad84` |
| 2 | `theorem` | [ext](../../../../NumberTheory/ZsqrtdBasicSourceEdition2.lean/declarations/ext.md) | 43 | `result-track:1ed3e59ee62397f2a93ebe740e362e964eac9e3f861b6a8eba87d556a1a924b0` |
| 3 | `def` | [ofInt](../../../../NumberTheory/ZsqrtdBasicSourceEdition2.lean/declarations/ofint.md) | 50 | `declaration-track:7cd0b8fa10a8d4e6969f20ef4ec6960df4d593dab3b6c8c5669c4919dfadf19d` |
| 4 | `theorem` | [ofInt_re](../../../../NumberTheory/ZsqrtdBasicSourceEdition2.lean/declarations/ofint-re.md) | 54 | `result-track:a04e7c1f192912619d6c2ea06401af0c097ca2c3b9b0ab6bf11848cce9ff5aa9` |
| 5 | `theorem` | [ofInt_im](../../../../NumberTheory/ZsqrtdBasicSourceEdition2.lean/declarations/ofint-im.md) | 58 | `result-track:1bdfda09a3254993a2cd30d2a20f3ba1cf7ded26ad46a8e7a7124a3c82c5d271` |
| 6 | `instance` | [(anonymous)](../../../../NumberTheory/ZsqrtdBasicSourceEdition2.lean/declarations/instance-source-edition-21.md) | 63 | `declaration-track:bbd359a1813158cc7866bc4533085e1458f8d1b50635189558bcecb900370164` |
| 7 | `theorem` | [zero_re](../../../../NumberTheory/ZsqrtdBasicSourceEdition2.lean/declarations/zero-re.md) | 67 | `result-track:09dd3fec02da9468c56df5c5d0c15f16eaf1698841d484f9a115bc61cc36fcd0` |
| 8 | `theorem` | [zero_im](../../../../NumberTheory/ZsqrtdBasicSourceEdition2.lean/declarations/zero-im.md) | 72 | `result-track:fa764408a98d468fcb906208a9b00f922b3b22b5da96d88012c823a4032d5733` |
| 9 | `instance` | [(anonymous)](../../../../NumberTheory/ZsqrtdBasicSourceEdition2.lean/declarations/instance-source-edition-3.md) | 76 | `declaration-track:0da7af2f4b384e4f695bd64e6294a79e96570d3280cf1262920e15d464a0c919` |
| 10 | `instance` | [(anonymous)](../../../../NumberTheory/ZsqrtdBasicSourceEdition2.lean/declarations/instance-source-edition-24.md) | 80 | `declaration-track:ce9f59a5f771bfd8b99158f7bd2ab5592d9de6190e9173bd5872c24a9935c714` |
| 11 | `theorem` | [one_re](../../../../NumberTheory/ZsqrtdBasicSourceEdition2.lean/declarations/one-re.md) | 84 | `result-track:d252510e5f98aeb6da041c19874c1da92ab170f28433a6c17413bd95e662841d` |
| 12 | `theorem` | [one_im](../../../../NumberTheory/ZsqrtdBasicSourceEdition2.lean/declarations/one-im.md) | 89 | `result-track:d61412abb8b673d8b2a5ae9a2cbc52f4b869ddd98640201502039c5de303c466` |
| 13 | `def` | [sqrtd](../../../../NumberTheory/ZsqrtdBasicSourceEdition2.lean/declarations/sqrtd.md) | 94 | `declaration-track:2aa5b03b88068837abd1f4f90e4b802133bad14c77cd350921138c29d1c5a94c` |
| 14 | `theorem` | [sqrtd_re](../../../../NumberTheory/ZsqrtdBasicSourceEdition2.lean/declarations/sqrtd-re.md) | 99 | `result-track:90dfc092767ab282bb8ce3083210e0b6fbd9b18947d32652048dd60e885fd421` |
| 15 | `theorem` | [sqrtd_im](../../../../NumberTheory/ZsqrtdBasicSourceEdition2.lean/declarations/sqrtd-im.md) | 104 | `result-track:c35e83b0a663f758ad678d51abb47f288e73cb8a481d2ade3604e838fb40ed97` |
| 16 | `instance` | [(anonymous)](../../../../NumberTheory/ZsqrtdBasicSourceEdition2.lean/declarations/instance-source-edition-23.md) | 109 | `declaration-track:c4c1aa8c14c9bdfb4a68431e2c3945485711d0e11369a2fed180cdf170986b09` |
| 17 | `theorem` | [add_def](../../../../NumberTheory/ZsqrtdBasicSourceEdition2.lean/declarations/add-def.md) | 113 | `result-track:6c3cf7fd95fc23a1061ed2b6c37b8127942fd561313995e33f3b04db75279bca` |
| 18 | `theorem` | [add_re](../../../../NumberTheory/ZsqrtdBasicSourceEdition2.lean/declarations/add-re.md) | 118 | `result-track:45de1c078c4d25bf172a3e62676b2105216ef546147022b7ce3707eeec62ee9c` |
| 19 | `theorem` | [add_im](../../../../NumberTheory/ZsqrtdBasicSourceEdition2.lean/declarations/add-im.md) | 123 | `result-track:a412af4cf56563117ffd765f3a27c916c25a94126171aa3a88c7098a0c451fed` |
| 20 | `theorem` | [bit0_re](../../../../NumberTheory/ZsqrtdBasicSourceEdition2.lean/declarations/bit0-re.md) | 131 | `result-track:17f4173363c074726342ea25576d84709742c002504658204baabf4a498a79ab` |
| 21 | `theorem` | [bit0_im](../../../../NumberTheory/ZsqrtdBasicSourceEdition2.lean/declarations/bit0-im.md) | 136 | `result-track:8e1a7fa460d40874f359e3fcee54631d51ef36d5883ca72ad234c55bedbc5fee` |
| 22 | `theorem` | [bit1_re](../../../../NumberTheory/ZsqrtdBasicSourceEdition2.lean/declarations/bit1-re.md) | 141 | `result-track:94b6de3eada7c9cd960a9666e9d33d9da99589a0ed91c2775bca627bb2b664a8` |
| 23 | `theorem` | [bit1_im](../../../../NumberTheory/ZsqrtdBasicSourceEdition2.lean/declarations/bit1-im.md) | 146 | `result-track:049eefa3b2d1a78dced02ab61ebdf41095c2f2eef9432816a4fb489e0dfbf093` |
| 24 | `instance` | [(anonymous)](../../../../NumberTheory/ZsqrtdBasicSourceEdition2.lean/declarations/instance-source-edition-17.md) | 152 | `declaration-track:99e4c8cb8af2a9f1d6876cd80bf715d4385e8b9807d4b6c45591f78d4da0abb8` |
| 25 | `theorem` | [neg_re](../../../../NumberTheory/ZsqrtdBasicSourceEdition2.lean/declarations/neg-re.md) | 156 | `result-track:09769bd5fe386db7ab605b95fd6ef340cb1129f03c322c518ec4e78d8f388ae1` |
| 26 | `theorem` | [neg_im](../../../../NumberTheory/ZsqrtdBasicSourceEdition2.lean/declarations/neg-im.md) | 161 | `result-track:910bea715687494993d1bb66ffd234044ca89c413f05b14fa92c7d5630148c66` |
| 27 | `instance` | [(anonymous)](../../../../NumberTheory/ZsqrtdBasicSourceEdition2.lean/declarations/instance-source-edition-16.md) | 166 | `declaration-track:955e6d96a396bba3ee394ebd15f690481d5da4d87bf4659d72ac76cf0a443818` |
| 28 | `theorem` | [mul_re](../../../../NumberTheory/ZsqrtdBasicSourceEdition2.lean/declarations/mul-re.md) | 170 | `result-track:178c59b578074139eb97d52f1b02026787d507d7643a9d40cca05d1a05c9a817` |
| 29 | `theorem` | [mul_im](../../../../NumberTheory/ZsqrtdBasicSourceEdition2.lean/declarations/mul-im.md) | 175 | `result-track:cfdd0fc9948c15a8fcbf881a029cbc0c1e77b877f65db40ded7c0481acbe9d13` |
| 30 | `instance` | [addCommGroup](../../../../NumberTheory/ZsqrtdBasicSourceEdition2.lean/declarations/addcommgroup.md) | 179 | `declaration-track:209013560189b7c10bc4c088c221b364cc442da4be8daa22bb1a7465ce9604f7` |
| 31 | `instance` | [addGroupWithOne](../../../../NumberTheory/ZsqrtdBasicSourceEdition2.lean/declarations/addgroupwithone.md) | 195 | `declaration-track:44effbe66b3eca8ce3519d886acae92141985b8540208d92d87d269e699797e2` |
| 32 | `instance` | [commRing](../../../../NumberTheory/ZsqrtdBasicSourceEdition2.lean/declarations/commring.md) | 201 | `declaration-track:24fc44d6e98d8aa617349a3cbbd57ce76e5dc4305a022612ecc44523587274a9` |
| 33 | `instance` | [(anonymous)](../../../../NumberTheory/ZsqrtdBasicSourceEdition2.lean/declarations/instance-source-edition-25.md) | 223 | `declaration-track:e5593484f3e208ffbe8636af0dc6cd1f75dfdbbf23d70f09930e57c59201e16f` |
| 34 | `instance` | [(anonymous)](../../../../NumberTheory/ZsqrtdBasicSourceEdition2.lean/declarations/instance.md) | 225 | `declaration-track:0a3c247276ffea11a2d6f7e70eafb197e116b2d1d25f0fd30708c330bb91561c` |
| 35 | `instance` | [(anonymous)](../../../../NumberTheory/ZsqrtdBasicSourceEdition2.lean/declarations/instance-source-edition-26.md) | 227 | `declaration-track:f1fce2d8f39602cf70569874b5b751bf83c84884ffe6a9f3041bb189c8a593da` |
| 36 | `instance` | [(anonymous)](../../../../NumberTheory/ZsqrtdBasicSourceEdition2.lean/declarations/instance-source-edition-20.md) | 229 | `declaration-track:b13d7cf43bb171d7c96a00c739c6a31df904f1e8c38ca5d7a8862d99b7cea49d` |
| 37 | `instance` | [(anonymous)](../../../../NumberTheory/ZsqrtdBasicSourceEdition2.lean/declarations/instance-source-edition-5.md) | 231 | `declaration-track:3720028561e0d76d397a4b28cfad396a4dfece72f725101f2a086a57b1996bd9` |
| 38 | `instance` | [(anonymous)](../../../../NumberTheory/ZsqrtdBasicSourceEdition2.lean/declarations/instance-source-edition-14.md) | 233 | `declaration-track:7d4a9c1d530e2ce012aa5d6f3364727bd452d52560061f894cbfa67796f29b00` |
| 39 | `instance` | [(anonymous)](../../../../NumberTheory/ZsqrtdBasicSourceEdition2.lean/declarations/instance-source-edition-6.md) | 235 | `declaration-track:3b977a83c034903bbf110066f6bcec09b00ed0392044005eb72c6390a9d040f1` |
| 40 | `instance` | [(anonymous)](../../../../NumberTheory/ZsqrtdBasicSourceEdition2.lean/declarations/instance-source-edition-4.md) | 237 | `declaration-track:249783bfcedabbee7e481952e9b380c8d8f492f9c4398a3f372ea2132f6262d5` |
| 41 | `instance` | [(anonymous)](../../../../NumberTheory/ZsqrtdBasicSourceEdition2.lean/declarations/instance-source-edition-9.md) | 239 | `declaration-track:48a582aafe9215eef4d687aa89bd108e0b8ce9e51a304382560835f016dfd84d` |
| 42 | `instance` | [(anonymous)](../../../../NumberTheory/ZsqrtdBasicSourceEdition2.lean/declarations/instance-source-edition-2.md) | 241 | `declaration-track:0c06349c6fe9cc399319c8a2335175b039d7bb032f2f76f2674eb59065354fb6` |
| 43 | `instance` | [(anonymous)](../../../../NumberTheory/ZsqrtdBasicSourceEdition2.lean/declarations/instance-source-edition-11.md) | 243 | `declaration-track:64e349b17e17a0fb045a32d07f2777f29571ae4fcd4f952d55a3ab33c7b5e475` |
| 44 | `instance` | [(anonymous)](../../../../NumberTheory/ZsqrtdBasicSourceEdition2.lean/declarations/instance-source-edition-13.md) | 246 | `declaration-track:7588af5403baaaf69e14dffed136d7780956ab08e248f9d0c5cc538288f31648` |
| 45 | `theorem` | [star_mk](../../../../NumberTheory/ZsqrtdBasicSourceEdition2.lean/declarations/star-mk.md) | 250 | `result-track:9e13a7d10f8295a15d1dfb6a9444adb35bda9faa73f5e435c7dbbafe02da5622` |
| 46 | `theorem` | [star_re](../../../../NumberTheory/ZsqrtdBasicSourceEdition2.lean/declarations/star-re.md) | 255 | `result-track:bff32e84c966c216cecdbd8297c9ee33eed0f54f2525cbaf0f7a4d2fad12125c` |
| 47 | `theorem` | [star_im](../../../../NumberTheory/ZsqrtdBasicSourceEdition2.lean/declarations/star-im.md) | 260 | `result-track:f49e24e6a2ed30e811be56d1993aaa069b299d8d71e583ccd8beabf3ad33d9f7` |
| 48 | `instance` | [(anonymous)](../../../../NumberTheory/ZsqrtdBasicSourceEdition2.lean/declarations/instance-source-edition-8.md) | 264 | `declaration-track:45c458a3e21fd7da1bdf05273ec4a0b06edd572c47eeb8cec013fea6ec5f649f` |
| 49 | `instance` | [nontrivial](../../../../NumberTheory/ZsqrtdBasicSourceEdition2.lean/declarations/nontrivial.md) | 270 | `declaration-track:b30be70815024f8ecd8934943333879785adee603d59c10bf5ffb2274c4a9024` |
| 50 | `theorem` | [coe_nat_re](../../../../NumberTheory/ZsqrtdBasicSourceEdition2.lean/declarations/coe-nat-re.md) | 274 | `result-track:cda68820af0f4036daa99bd406008ad5fb3d14bec7ef58afce0d6f5089bc9c2e` |
| 51 | `theorem` | [ofNat_re](../../../../NumberTheory/ZsqrtdBasicSourceEdition2.lean/declarations/ofnat-re.md) | 279 | `result-track:44b514c397f4ece288c92acf4092c088386023d8821cdea62810c8c0f355a4cd` |
| 52 | `theorem` | [coe_nat_im](../../../../NumberTheory/ZsqrtdBasicSourceEdition2.lean/declarations/coe-nat-im.md) | 283 | `result-track:1ef0c82f6a0a3ed633d03d50f2650b5161c10fa7f9b6f3a76d5b5cd01a312fef` |
| 53 | `theorem` | [ofNat_im](../../../../NumberTheory/ZsqrtdBasicSourceEdition2.lean/declarations/ofnat-im.md) | 288 | `result-track:85904d9c04fc5d25fd4fd9ded5457354df30a2301f9b4d41a92a352ef9d041b9` |
| 54 | `theorem` | [coe_nat_val](../../../../NumberTheory/ZsqrtdBasicSourceEdition2.lean/declarations/coe-nat-val.md) | 291 | `result-track:5e59ecbae74b4495a0396cf99bc97d726734106a77f24e0e7f42aa1beba05a6f` |
| 55 | `theorem` | [coe_int_re](../../../../NumberTheory/ZsqrtdBasicSourceEdition2.lean/declarations/coe-int-re.md) | 296 | `result-track:98177a91c71699a5a4bc77d91aed5d62a358ecf8e76307e9e776f00be4cf7c29` |
| 56 | `theorem` | [coe_int_im](../../../../NumberTheory/ZsqrtdBasicSourceEdition2.lean/declarations/coe-int-im.md) | 300 | `result-track:06646c46ed00d26773e14a7429fdaca968b87d7532c1189ed4504082c93d4c7b` |
| 57 | `theorem` | [coe_int_val](../../../../NumberTheory/ZsqrtdBasicSourceEdition2.lean/declarations/coe-int-val.md) | 303 | `result-track:61fd6c832e270fac1aa2bc94cefeae6602da0a4de33db77ef0d1afb1db0d9bc1` |
| 58 | `instance` | [(anonymous)](../../../../NumberTheory/ZsqrtdBasicSourceEdition2.lean/declarations/instance-source-edition-15.md) | 306 | `declaration-track:884ccdcde8456fa53addc374f7b982b123a7fad278e79d12db01db34b28313db` |
| 59 | `theorem` | [ofInt_eq_coe](../../../../NumberTheory/ZsqrtdBasicSourceEdition2.lean/declarations/ofint-eq-coe.md) | 309 | `result-track:98b63c6526920e70c0cbc1b14bcdd26d3c8b9d9c6d2f14bef4e1887b228a22ad` |
| 60 | `theorem` | [smul_val](../../../../NumberTheory/ZsqrtdBasicSourceEdition2.lean/declarations/smul-val.md) | 313 | `result-track:e3dfe20e4f01010899fad83d277ea1eccbd44b60955ea3d0e13afd4135089513` |
| 61 | `theorem` | [smul_re](../../../../NumberTheory/ZsqrtdBasicSourceEdition2.lean/declarations/smul-re.md) | 316 | `result-track:973ce0cc7ac531a425d2b3658d3ee2b374faebea25173b38f10f12c9413f1828` |
| 62 | `theorem` | [smul_im](../../../../NumberTheory/ZsqrtdBasicSourceEdition2.lean/declarations/smul-im.md) | 319 | `result-track:0a036cdc2d8b3b0efa0d6e5d42afbf5b1dfb689dbdde1ab51a4bfdcca7942c8e` |
| 63 | `theorem` | [muld_val](../../../../NumberTheory/ZsqrtdBasicSourceEdition2.lean/declarations/muld-val.md) | 323 | `result-track:d2b747e34ba6a216d4bff8c5c2843698115cd0e54fd49b23a736eb1cc2148654` |
| 64 | `theorem` | [dmuld](../../../../NumberTheory/ZsqrtdBasicSourceEdition2.lean/declarations/dmuld.md) | 327 | `result-track:9159a3647a6194341f751e3dba7d96115bb06d4135f1a4d938319d0f43965e39` |
| 65 | `theorem` | [smuld_val](../../../../NumberTheory/ZsqrtdBasicSourceEdition2.lean/declarations/smuld-val.md) | 331 | `result-track:ca172c4527fbed74e1d3f213645cef25c61681a42ed96a466e815ba954adff63` |
| 66 | `theorem` | [decompose](../../../../NumberTheory/ZsqrtdBasicSourceEdition2.lean/declarations/decompose.md) | 334 | `result-track:b31bc83ff30a252034dae1a03ac06253d32ec722fa06be00bb472bdaf4df41b1` |
| 67 | `theorem` | [mul_star](../../../../NumberTheory/ZsqrtdBasicSourceEdition2.lean/declarations/mul-star.md) | 337 | `result-track:4a0b2c8c5390df355186165d74fb85d727b9946ef817356d85a539876447d780` |
| 68 | `theorem` | [coe_int_add](../../../../NumberTheory/ZsqrtdBasicSourceEdition2.lean/declarations/coe-int-add.md) | 341 | `result-track:d13244a62b28e98539612a4a2f0e0cc3583c7671e439c21d1373cbd6612ca117` |
| 69 | `theorem` | [coe_int_sub](../../../../NumberTheory/ZsqrtdBasicSourceEdition2.lean/declarations/coe-int-sub.md) | 345 | `result-track:bfbb2fd206cacd8abfbe89b71a1ad15cb0851eda740cedcc6d5af0a77eb3a8b9` |
| 70 | `theorem` | [coe_int_mul](../../../../NumberTheory/ZsqrtdBasicSourceEdition2.lean/declarations/coe-int-mul.md) | 349 | `result-track:ce9660e0f4ad434f40fc9ec219e5c3506b77d62aa51bc332a25d806f6a007593` |
| 71 | `theorem` | [coe_int_inj](../../../../NumberTheory/ZsqrtdBasicSourceEdition2.lean/declarations/coe-int-inj.md) | 353 | `result-track:4b35da9dba42a9bae159dbad55e05d64d246feb978ac650f5b5966756ae09fe0` |
| 72 | `theorem` | [coe_int_dvd_iff](../../../../NumberTheory/ZsqrtdBasicSourceEdition2.lean/declarations/coe-int-dvd-iff.md) | 357 | `result-track:3babf2965cfc1283806a0d914f25e8f2efe8e91a728bb92b941382dd40877da3` |
| 73 | `theorem` | [coe_int_dvd_coe_int](../../../../NumberTheory/ZsqrtdBasicSourceEdition2.lean/declarations/coe-int-dvd-coe-int.md) | 369 | `result-track:8d631612d05b4312c03495f46f9b1b790dad4106a16e93cf94d3a3e7255a392c` |
| 74 | `theorem` | [eq_of_smul_eq_smul_left](../../../../NumberTheory/ZsqrtdBasicSourceEdition2.lean/declarations/eq-of-smul-eq-smul-left.md) | 378 | `result-track:91469cc4b4a865f327b3bd3fc948da9dc75d0c4c1fde4e82aa8645d7ff793578` |
| 75 | `theorem` | [gcd_eq_zero_iff](../../../../NumberTheory/ZsqrtdBasicSourceEdition2.lean/declarations/gcd-eq-zero-iff.md) | 386 | `result-track:0996e991d198e427c95f92c1dc1e2418e79b201c197b574c2070f81f152d86c2` |
| 76 | `theorem` | [gcd_pos_iff](../../../../NumberTheory/ZsqrtdBasicSourceEdition2.lean/declarations/gcd-pos-iff.md) | 390 | `result-track:90806d6a6bf21edf14ac7d212a3cde1d54ecc3f0772ef262519b8e6ee0ac451b` |
| 77 | `theorem` | [coprime_of_dvd_coprime](../../../../NumberTheory/ZsqrtdBasicSourceEdition2.lean/declarations/coprime-of-dvd-coprime.md) | 394 | `result-track:7601d339e58acc0f423a4489ba2899f0bc3301ed75d9971aa6728c5713f2f20e` |
| 78 | `theorem` | [exists_coprime_of_gcd_pos](../../../../NumberTheory/ZsqrtdBasicSourceEdition2.lean/declarations/exists-coprime-of-gcd-pos.md) | 412 | `result-track:a4cd79714e61f34f9e07cca344eca985d47b4fe96860bf127f153d22bfd7a532` |
| 79 | `def` | [SqLe](../../../../NumberTheory/ZsqrtdBasicSourceEdition2.lean/declarations/sqle.md) | 425 | `declaration-track:65d782612a46f74783eee1c6078e06d57ae3f515a92e3a1037af863e66931991` |
| 80 | `theorem` | [sqLe_of_le](../../../../NumberTheory/ZsqrtdBasicSourceEdition2.lean/declarations/sqle-of-le.md) | 429 | `result-track:5180f782e303f0534b8aa8df9f64b4ea8a82cb4c2f0424ada2b3c24e660411dc` |
| 81 | `theorem` | [sqLe_add_mixed](../../../../NumberTheory/ZsqrtdBasicSourceEdition2.lean/declarations/sqle-add-mixed.md) | 434 | `result-track:86d5ca7697e71db86904e162ebb52830a17579f519b00caf9edab1f841d42e84` |
| 82 | `theorem` | [sqLe_add](../../../../NumberTheory/ZsqrtdBasicSourceEdition2.lean/declarations/sqle-add.md) | 440 | `result-track:c41d4d40ca33c055580a064c83f3491da9adc330677eab2fefbdac051faf06df` |
| 83 | `theorem` | [sqLe_cancel](../../../../NumberTheory/ZsqrtdBasicSourceEdition2.lean/declarations/sqle-cancel.md) | 447 | `result-track:782096c52971c7b4e31aa1a179baf52fbbadca90133122a873730e0e87b75399` |
| 84 | `theorem` | [sqLe_smul](../../../../NumberTheory/ZsqrtdBasicSourceEdition2.lean/declarations/sqle-smul.md) | 460 | `result-track:d68e02ff04fbf0c216b5ecc0c5c9fdc9c088bb87d46ed2e76b70a305dc7169fe` |
| 85 | `theorem` | [sqLe_mul](../../../../NumberTheory/ZsqrtdBasicSourceEdition2.lean/declarations/sqle-mul.md) | 464 | `result-track:0751ff7700943a6b02cf789f8b72bf93f5427c3097a071f2de3afbe3c27a5a1c` |
| 86 | `def` | [Nonnegg](../../../../NumberTheory/ZsqrtdBasicSourceEdition2.lean/declarations/nonnegg.md) | 483 | `declaration-track:60ad88c2f2ad9e25959c38253e1bf86a4006a228ff9e9ee6e3d06a30d70fa8fb` |
| 87 | `theorem` | [nonnegg_comm](../../../../NumberTheory/ZsqrtdBasicSourceEdition2.lean/declarations/nonnegg-comm.md) | 490 | `result-track:bf844e19e249433acbe60a5f394a80d5c9c2c02966afcff1e32800f36e79963f` |
| 88 | `theorem` | [nonnegg_neg_pos](../../../../NumberTheory/ZsqrtdBasicSourceEdition2.lean/declarations/nonnegg-neg-pos.md) | 494 | `result-track:e4ef96ca1108a68e91dbdba195a32d04dea4c8220669decd99bb050355db043a` |
| 89 | `theorem` | [nonnegg_pos_neg](../../../../NumberTheory/ZsqrtdBasicSourceEdition2.lean/declarations/nonnegg-pos-neg.md) | 499 | `result-track:186ef41d484edf158332438887b07a972b0655434ccc6e728e7c7315083c24e2` |
| 90 | `theorem` | [nonnegg_cases_right](../../../../NumberTheory/ZsqrtdBasicSourceEdition2.lean/declarations/nonnegg-cases-right.md) | 504 | `result-track:1425d1f05ec7de59a164431aa5197c99d02d30d87e2a24e46e828c8f6b21e609` |
| 91 | `theorem` | [nonnegg_cases_left](../../../../NumberTheory/ZsqrtdBasicSourceEdition2.lean/declarations/nonnegg-cases-left.md) | 510 | `result-track:f41f3d7955feafba32e1dae53410851626ccc67b42cb66a743729d04a3e70941` |
| 92 | `def` | [norm](../../../../NumberTheory/ZsqrtdBasicSourceEdition2.lean/declarations/norm.md) | 518 | `declaration-track:cff176bf000013e8a3b8971abb2c7b8ef78a5dd8daece71b68961e8b7d68680d` |
| 93 | `theorem` | [norm_def](../../../../NumberTheory/ZsqrtdBasicSourceEdition2.lean/declarations/norm-def.md) | 522 | `result-track:7a1115c64d324182456f6698dfe5a88882b17d9b1f1f7b5aba5ab652ba8e50a6` |
| 94 | `theorem` | [norm_zero](../../../../NumberTheory/ZsqrtdBasicSourceEdition2.lean/declarations/norm-zero.md) | 527 | `result-track:de29b0f2f73abb9a840512a7ae03dea835c9d9271ccc664665f73194bf788966` |
| 95 | `theorem` | [norm_one](../../../../NumberTheory/ZsqrtdBasicSourceEdition2.lean/declarations/norm-one.md) | 531 | `result-track:5069a859b4558ff44be84109bf13549540ce145be30ce131a1ba9e0d3b740c7e` |
| 96 | `theorem` | [norm_int_cast](../../../../NumberTheory/ZsqrtdBasicSourceEdition2.lean/declarations/norm-int-cast.md) | 535 | `result-track:9535263d13e2f492cb1c2f0e55ec5637f93f1fe631b86f2205c8869cb7cfa69d` |
| 97 | `theorem` | [norm_nat_cast](../../../../NumberTheory/ZsqrtdBasicSourceEdition2.lean/declarations/norm-nat-cast.md) | 539 | `result-track:f87a27d449ed020166740e0e5999ab0b64fefbd50bc43599dd398cd25ce854c5` |
| 98 | `theorem` | [norm_mul](../../../../NumberTheory/ZsqrtdBasicSourceEdition2.lean/declarations/norm-mul.md) | 544 | `result-track:b7ba2e5cfc2369fdd0eb25a1211ee8743c06d1bb99ddfa581a66e2102353d234` |
| 99 | `def` | [normMonoidHom](../../../../NumberTheory/ZsqrtdBasicSourceEdition2.lean/declarations/normmonoidhom.md) | 550 | `declaration-track:d226962d4f7412175f930878cfaba466430cea7c2d8b099597d64a83c8a9e337` |
| 100 | `theorem` | [norm_eq_mul_conj](../../../../NumberTheory/ZsqrtdBasicSourceEdition2.lean/declarations/norm-eq-mul-conj.md) | 556 | `result-track:a4a7c2fd98a469ee0bbf5edafbbc0721eef33529da2534427facf62560863c14` |
| 101 | `theorem` | [norm_neg](../../../../NumberTheory/ZsqrtdBasicSourceEdition2.lean/declarations/norm-neg.md) | 562 | `result-track:d263a2973dd514f841b75ac4b6ba2e9cf237c39f5dd0921c891eaee1d5334414` |
| 102 | `theorem` | [norm_conj](../../../../NumberTheory/ZsqrtdBasicSourceEdition2.lean/declarations/norm-conj.md) | 569 | `result-track:22815aad1f5a5fc3f8406814cbc86df2e2c6feea7cb47c107618b583fcb7eb70` |
| 103 | `theorem` | [norm_nonneg](../../../../NumberTheory/ZsqrtdBasicSourceEdition2.lean/declarations/norm-nonneg.md) | 575 | `result-track:0d1cddbc3254ea3ff84c27471600cfec89b03934cb22218eb17e030e41085bbf` |
| 104 | `theorem` | [norm_eq_one_iff](../../../../NumberTheory/ZsqrtdBasicSourceEdition2.lean/declarations/norm-eq-one-iff.md) | 582 | `result-track:815272518f9e1538f9c0db13ddb8cace815cb44b548bd58d830bef8341c506a2` |
| 105 | `theorem` | [isUnit_iff_norm_isUnit](../../../../NumberTheory/ZsqrtdBasicSourceEdition2.lean/declarations/isunit-iff-norm-isunit.md) | 602 | `result-track:d07a55f5b6888e1a2fcbc68346d54c35694884fa41b2ac3b20ee9d9f4a6f346c` |
| 106 | `theorem` | [norm_eq_one_iff'](../../../../NumberTheory/ZsqrtdBasicSourceEdition2.lean/declarations/norm-eq-one-iff-source-edition-2.md) | 606 | `result-track:8d9de3f6d095fbbe1c4e0f040cec9476c500ab4507211c0e99acbeb973518829` |
| 107 | `theorem` | [norm_eq_zero_iff](../../../../NumberTheory/ZsqrtdBasicSourceEdition2.lean/declarations/norm-eq-zero-iff.md) | 610 | `result-track:1236e432c1ab07bb6fb6b17565a2307a53e856e1e4cbbf6d5c4620048dc25c40` |
| 108 | `theorem` | [norm_eq_of_associated](../../../../NumberTheory/ZsqrtdBasicSourceEdition2.lean/declarations/norm-eq-of-associated.md) | 626 | `result-track:9562986b9a3ad1639ed51573c39c2320f6d36aba2bcc5029880c0080d2df1f76` |
| 109 | `def` | [Nonneg](../../../../NumberTheory/ZsqrtdBasicSourceEdition2.lean/declarations/nonneg.md) | 641 | `declaration-track:a6ea7797156b071d56029481e1a7ee3b294481b62678b2d9cc4acc81ae4e7b40` |
| 110 | `instance` | [(anonymous)](../../../../NumberTheory/ZsqrtdBasicSourceEdition2.lean/declarations/instance-source-edition-22.md) | 645 | `declaration-track:c477ff5956c7a40f4b6b3a7a487b33c9a2f3da17751a8010dfd9e4625716d44d` |
| 111 | `instance` | [(anonymous)](../../../../NumberTheory/ZsqrtdBasicSourceEdition2.lean/declarations/instance-source-edition-27.md) | 648 | `declaration-track:f8505e3f876d7c9e043b4597d1e03695c64482deb4949891d5a7a55894db91e5` |
| 112 | `instance` | [decidableNonnegg](../../../../NumberTheory/ZsqrtdBasicSourceEdition2.lean/declarations/decidablenonnegg.md) | 651 | `declaration-track:49d8b2c6012819930958b790c335d907d7512476a2aca6405465c36cd17de9d8` |
| 113 | `instance` | [decidableNonneg](../../../../NumberTheory/ZsqrtdBasicSourceEdition2.lean/declarations/decidablenonneg.md) | 655 | `declaration-track:4111e888654b600573b4944629417e29f1ed8f130e2770da3f3ae666263c6fb7` |
| 114 | `instance` | [decidableLE](../../../../NumberTheory/ZsqrtdBasicSourceEdition2.lean/declarations/decidablele.md) | 659 | `declaration-track:3e2c7d9fe96904549c0fe66e4bb13364efcda19f37863c6d5bfe79879e54618e` |
| 115 | `theorem` | [nonneg_cases](../../../../NumberTheory/ZsqrtdBasicSourceEdition2.lean/declarations/nonneg-cases.md) | 663 | `result-track:825df9a72a75d59d1bbeb49f2c7c2e45fedb9db97cb112ae2bccf938b21481fd` |
| 116 | `theorem` | [nonneg_add_lem](../../../../NumberTheory/ZsqrtdBasicSourceEdition2.lean/declarations/nonneg-add-lem.md) | 671 | `result-track:e9e1c478df0002c2a02b7eaad5eddd4673f1dbd21ff9e6d267b83b47cef89b88` |
| 117 | `theorem` | [Nonneg.add](../../../../NumberTheory/ZsqrtdBasicSourceEdition2.lean/declarations/nonneg-add.md) | 693 | `result-track:7b9f282e37246feaca11f1a55136fd712cee4a3e383a05110eddef9004ef2816` |
| 118 | `theorem` | [nonneg_iff_zero_le](../../../../NumberTheory/ZsqrtdBasicSourceEdition2.lean/declarations/nonneg-iff-zero-le.md) | 733 | `result-track:b26f92eb56f7c23dd230faa3c8292058840675fd576267eef391e206d307f804` |
| 119 | `theorem` | [le_of_le_le](../../../../NumberTheory/ZsqrtdBasicSourceEdition2.lean/declarations/le-of-le-le.md) | 737 | `result-track:168c5b7d7a7bb11f66cc855fc5487cf5a41b33ed5bfca5d19a872863c1496226` |
| 120 | `theorem` | [nonneg_total](../../../../NumberTheory/ZsqrtdBasicSourceEdition2.lean/declarations/nonneg-total.md) | 744 | `result-track:45bb3ab2c452ee04f1c4d33b8e6b4468ab55252663f4a6a25d9ec0fa69d6717c` |
| 121 | `theorem` | [le_total](../../../../NumberTheory/ZsqrtdBasicSourceEdition2.lean/declarations/le-total.md) | 753 | `result-track:703085d6e83381e35fdd1010e6b878558126c8da3f1698a620af1387a09b8119` |
| 122 | `instance` | [preorder](../../../../NumberTheory/ZsqrtdBasicSourceEdition2.lean/declarations/preorder.md) | 758 | `declaration-track:ed46b00a2fb062bb74a5ff31b474a9a67c70a13ddc78049c6945db011817381d` |
| 123 | `theorem` | [le_arch](../../../../NumberTheory/ZsqrtdBasicSourceEdition2.lean/declarations/le-arch.md) | 766 | `result-track:3e0aef962029b401fc3e7a779fb7d458908f29002506d48047a48d365bebd539` |
| 124 | `theorem` | [add_le_add_left](../../../../NumberTheory/ZsqrtdBasicSourceEdition2.lean/declarations/add-le-add-left.md) | 784 | `result-track:aa11ae391f24bd4f283342347fdd9cfb3fc0291a9484ec292ebb26c139e6e869` |
| 125 | `theorem` | [le_of_add_le_add_left](../../../../NumberTheory/ZsqrtdBasicSourceEdition2.lean/declarations/le-of-add-le-add-left.md) | 788 | `result-track:72ff7f5ffc2ec08dc217dd2c6578c0c1355a9e161e259042aaf7fd73a7cb56c9` |
| 126 | `theorem` | [add_lt_add_left](../../../../NumberTheory/ZsqrtdBasicSourceEdition2.lean/declarations/add-lt-add-left.md) | 792 | `result-track:e19ba35ad0187f2f82a2aa5dcf5a90a78a485a5a36e09bee5416a1e4109efee5` |
| 127 | `theorem` | [nonneg_smul](../../../../NumberTheory/ZsqrtdBasicSourceEdition2.lean/declarations/nonneg-smul.md) | 796 | `result-track:f41cfc448397d3d204d63a3b619115a5d42e21773b4c147fd7daa95071cc0b2e` |
| 128 | `theorem` | [nonneg_muld](../../../../NumberTheory/ZsqrtdBasicSourceEdition2.lean/declarations/nonneg-muld.md) | 807 | `result-track:487db8d7661cecd5bbb1f2d832e78bc23475d93d0bf73e094c66898a54a2ffaa` |
| 129 | `theorem` | [nonneg_mul_lem](../../../../NumberTheory/ZsqrtdBasicSourceEdition2.lean/declarations/nonneg-mul-lem.md) | 820 | `result-track:f7958e5bfe4a92ea3de7d1b7a47b9514ea118ba1d36de9bf97d7cc7f829b6f40` |
| 130 | `theorem` | [nonneg_mul](../../../../NumberTheory/ZsqrtdBasicSourceEdition2.lean/declarations/nonneg-mul.md) | 827 | `result-track:929821b43f0cb95e77073ec289797eaba4774b6c75b14ddb231b4be728993944` |
| 131 | `theorem` | [mul_nonneg](../../../../NumberTheory/ZsqrtdBasicSourceEdition2.lean/declarations/mul-nonneg.md) | 865 | `result-track:9dbb03202c321a05f1817eca575a9f744edfd7daae0fb09dedd17f20566b2147` |
| 132 | `theorem` | [not_sqLe_succ](../../../../NumberTheory/ZsqrtdBasicSourceEdition2.lean/declarations/not-sqle-succ.md) | 870 | `result-track:1103464e186c184fe8f849ecc71c1759ce96e9fd58df50942e2c8f3d10e614cf` |
| 133 | `class` | [Nonsquare](../../../../NumberTheory/ZsqrtdBasicSourceEdition2.lean/declarations/nonsquare.md) | 878 | `declaration-track:ebede330e420acaab2df30453e97b707b0593530c32f67e345f9ddbae842ba70` |
| 134 | `theorem` | [Nonsquare.ns](../../../../NumberTheory/ZsqrtdBasicSourceEdition2.lean/declarations/nonsquare-ns.md) | 882 | `result-track:59107aada611d0e817f015d8099f061c8b244aeff4e00f09c6abbabf611ccb96` |
| 135 | `theorem` | [d_pos](../../../../NumberTheory/ZsqrtdBasicSourceEdition2.lean/declarations/d-pos.md) | 886 | `result-track:ea2dc9c60b2b5847cab7cb81334e5ba89bb537ddf80e24e056e2fa3ee1c23f39` |
| 136 | `theorem` | [divides_sq_eq_zero](../../../../NumberTheory/ZsqrtdBasicSourceEdition2.lean/declarations/divides-sq-eq-zero.md) | 890 | `result-track:32d6bd95209e58c0b907d2dc0dd4eaccd8d5db19bad30a0fe17579ac9c3ff72c` |
| 137 | `theorem` | [divides_sq_eq_zero_z](../../../../NumberTheory/ZsqrtdBasicSourceEdition2.lean/declarations/divides-sq-eq-zero-z.md) | 914 | `result-track:be10b6b9b4e53025a5e94fa7690bd20b3b42a89ddec86af6e780ac16e6d39f1f` |
| 138 | `theorem` | [not_divides_sq](../../../../NumberTheory/ZsqrtdBasicSourceEdition2.lean/declarations/not-divides-sq.md) | 921 | `result-track:630ff2a6d756531dcb1b2d601e2be56f6d407f4e85a1d9c62ea91bfa329da631` |
| 139 | `theorem` | [nonneg_antisymm](../../../../NumberTheory/ZsqrtdBasicSourceEdition2.lean/declarations/nonneg-antisymm.md) | 927 | `result-track:d0d54cc061401192f1f2c6bdff68fb48bafc7e48c9f230d7018fae1b6152fe9a` |
| 140 | `theorem` | [le_antisymm](../../../../NumberTheory/ZsqrtdBasicSourceEdition2.lean/declarations/le-antisymm.md) | 945 | `result-track:23ade16cc3067abc43d35bdd13ad18b8135926b828667c4c15c66182c6c1d474` |
| 141 | `instance` | [linearOrder](../../../../NumberTheory/ZsqrtdBasicSourceEdition2.lean/declarations/linearorder.md) | 949 | `declaration-track:0f7de4bb77d034ee4af2b15740cefaa8a1747a336ad961db0fd36fd05732760a` |
| 142 | `theorem` | [eq_zero_or_eq_zero_of_mul_eq_zero](../../../../NumberTheory/ZsqrtdBasicSourceEdition2.lean/declarations/eq-zero-or-eq-zero-of-mul-eq-zero.md) | 955 | `result-track:ba21cdee8da3c59ff8a160974f0bf27a7e4aa0f5e77d92685b66869d5cc5a414` |
| 143 | `instance` | [(anonymous)](../../../../NumberTheory/ZsqrtdBasicSourceEdition2.lean/declarations/instance-source-edition-19.md) | 985 | `declaration-track:ae1723eeac7c55f9cc4bd2ffaa9cec2e4055e6ae05bebef8258c26f8562b340e` |
| 144 | `instance` | [(anonymous)](../../../../NumberTheory/ZsqrtdBasicSourceEdition2.lean/declarations/instance-source-edition-7.md) | 988 | `declaration-track:3fc9690a6ab77ed1053d2c8d9ad3d62c4ae5b14516bcbfe0c382590060acb4bf` |
| 145 | `theorem` | [mul_pos](../../../../NumberTheory/ZsqrtdBasicSourceEdition2.lean/declarations/mul-pos.md) | 991 | `result-track:5fd2fe4c7122c55c9b3354055ff1c435ff02577ca866640b8331c437cf10dd6a` |
| 146 | `instance` | [(anonymous)](../../../../NumberTheory/ZsqrtdBasicSourceEdition2.lean/declarations/instance-source-edition-18.md) | 998 | `declaration-track:a7658a36cf70e841362b1f323e91d28621c097db5e046db8de7c67ee2e3a1fd8` |
| 147 | `instance` | [(anonymous)](../../../../NumberTheory/ZsqrtdBasicSourceEdition2.lean/declarations/instance-source-edition-10.md) | 1004 | `declaration-track:4c8154450411a8bac84300293b40be94761e22d37f5d29009aad9b4b10ad5aef` |
| 148 | `instance` | [(anonymous)](../../../../NumberTheory/ZsqrtdBasicSourceEdition2.lean/declarations/instance-source-edition-12.md) | 1006 | `declaration-track:6699c9bed9d422c73cbe9620ef4d32ec8a50f788a37b141c3d07064edfe70015` |
| 149 | `theorem` | [norm_eq_zero](../../../../NumberTheory/ZsqrtdBasicSourceEdition2.lean/declarations/norm-eq-zero.md) | 1010 | `result-track:fcce29e86ce950cdbff78c95179fb148a4280d75baafb393b913b00f1318f0f2` |
| 150 | `theorem` | [hom_ext](../../../../NumberTheory/ZsqrtdBasicSourceEdition2.lean/declarations/hom-ext.md) | 1031 | `result-track:8d9f2096844d4b5c24a90744a6d29a0c3fec539af23777a6f391209fad1d471f` |
| 151 | `def` | [lift](../../../../NumberTheory/ZsqrtdBasicSourceEdition2.lean/declarations/lift.md) | 1041 | `declaration-track:384dafb5fb8a00e4318cac406b868d97ab4aeb201dc95ef4e1407a48d03bb4f8` |
| 152 | `theorem` | [lift_injective](../../../../NumberTheory/ZsqrtdBasicSourceEdition2.lean/declarations/lift-injective.md) | 1068 | `result-track:1e09c8c1476aea12cd68362229fa55dd16d2ad005f9174b6baccc19f1218aa29` |
| 153 | `theorem` | [norm_eq_one_iff_mem_unitary](../../../../NumberTheory/ZsqrtdBasicSourceEdition2.lean/declarations/norm-eq-one-iff-mem-unitary.md) | 1081 | `result-track:ee446508619c8d45d70dc658680fe08de12da3df0a2425bd42ccdfe702d85699` |
| 154 | `theorem` | [mker_norm_eq_unitary](../../../../NumberTheory/ZsqrtdBasicSourceEdition2.lean/declarations/mker-norm-eq-unitary.md) | 1087 | `result-track:38f695b03d2ed03d642f52d91b3595548cda43d70459c4bd576a4154834eb3ed` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e2c72531eb90537d190a519e3ac1fe028967981f506575039680968695523e30 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/ElementaryNumberTheory/Basic/Varianta6d3f69406164995b6717324dc0b86976ab658569615f34c21da28bf627db00c.lean","GRWTSK/_verification/specifications/NumberTheory/ElementaryNumberTheory/Basic/Varianta6d3f69406164995b6717324dc0b86976ab658569615f34c21da28bf627db00c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
