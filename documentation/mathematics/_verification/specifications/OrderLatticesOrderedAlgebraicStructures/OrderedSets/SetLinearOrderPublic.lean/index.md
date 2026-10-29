# Verification target: Set Linear Order Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3f53bfb274b330b8c1162691be038135347820c0",
  "lexical_observation_count": 122,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinearOrder/Variant57706e0630842f683bcde812a6127f78a115b40a219b0ca92ca14476f3ab3191.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetLinearOrderPublic.lean/index.md) · [Full source](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetLinearOrderPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3f53bfb274b330b8c1162691be038135347820c0`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinearOrder/Variant57706e0630842f683bcde812a6127f78a115b40a219b0ca92ca14476f3ab3191.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinearOrder/Variant57706e0630842f683bcde812a6127f78a115b40a219b0ca92ca14476f3ab3191.lean.json)

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
| 1 | `theorem` | [notMem_Ici](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetLinearOrderPublic.lean/declarations/notmem-ici.md) | 28 | `result-track:6906b06286584b3522b092b3f4d23d1fadd063444c6793a5d1453051934acbed` |
| 2 | `theorem` | [notMem_Ioi](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetLinearOrderPublic.lean/declarations/notmem-ioi.md) | 32 | `result-track:b2eddc234a547e9a0be760695fa96c5e2f3c5577988801773fa351e7bfd7576a` |
| 3 | `theorem` | [compl_Iic](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetLinearOrderPublic.lean/declarations/compl-iic.md) | 36 | `result-track:35ec7db0e9903615aec84051e1865f64ea52a479d311605e8189a7c7652ab514` |
| 4 | `theorem` | [compl_Iio](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetLinearOrderPublic.lean/declarations/compl-iio.md) | 40 | `result-track:ea889cd7cc2ebc343735eb9cb4df59007d193b61d5ef4262c66e6944e1c02ccb` |
| 5 | `theorem` | [Ici_sdiff_Ici](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetLinearOrderPublic.lean/declarations/ici-sdiff-ici.md) | 44 | `result-track:d14f2b6eb6ac71d63c00a0b646e5dfcf1ad26a3592ee0e70096cdedc8b954cd2` |
| 6 | `theorem` | [Ici_sdiff_Ioi](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetLinearOrderPublic.lean/declarations/ici-sdiff-ioi.md) | 49 | `result-track:8a83faeaf55a64eeb67a00a42793de180efe7aadc732b8ad7a68feae9b98a2ed` |
| 7 | `theorem` | [Ioi_sdiff_Ioi](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetLinearOrderPublic.lean/declarations/ioi-sdiff-ioi.md) | 54 | `result-track:a2fc12e592e170cbb7819633153db3cf9b2b8f6d5fb72f5da6ba187d9e65f82b` |
| 8 | `theorem` | [Ioi_sdiff_Ici](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetLinearOrderPublic.lean/declarations/ioi-sdiff-ici.md) | 59 | `result-track:b2becea13c38ef0063c19e26f0c721c54ede75b13113140f2608c447960d09b4` |
| 9 | `theorem` | [Ioi_injective](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetLinearOrderPublic.lean/declarations/ioi-injective.md) | 64 | `result-track:c29d17b748a0c48f6d3f912b6beecce71c38b89cb9c202e2d0744a0e05582eeb` |
| 10 | `theorem` | [Ioi_inj](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetLinearOrderPublic.lean/declarations/ioi-inj.md) | 68 | `result-track:4ff0019dc662b5b59a32397e95be24480600020742d181e107951cbaa6ba3a07` |
| 11 | `theorem` | [Ico_subset_Ico_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetLinearOrderPublic.lean/declarations/ico-subset-ico-iff.md) | 71 | `result-track:08ebada3912538f60504ab6466b7d9a2585e9f0e9d64446014ab9ea8a309b380` |
| 12 | `theorem` | [Ioc_subset_Ioc_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetLinearOrderPublic.lean/declarations/ioc-subset-ioc-iff.md) | 77 | `result-track:37b2d52579e9c299a891a376bc5286ed8a1bf8aef1aa9a55b25ad48942953fe6` |
| 13 | `theorem` | [Ico_eq_Ico_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetLinearOrderPublic.lean/declarations/ico-eq-ico-iff.md) | 80 | `result-track:615245222c97934e3c193754aa159b5b01e8b904ebf36fd65a28fe4450362842` |
| 14 | `theorem` | [Ioc_eq_Ioc_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetLinearOrderPublic.lean/declarations/ioc-eq-ioc-iff.md) | 86 | `result-track:e5262e404d1f66ebca65b75d7c5438e7668fdcd23e12695d5099d8f04f34a472` |
| 15 | `theorem` | [Ioo_subset_Ioo_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetLinearOrderPublic.lean/declarations/ioo-subset-ioo-iff.md) | 92 | `result-track:5a82fa9c4a58565710b307c7897d061d112f367564d967f43732191f942092c9` |
| 16 | `lemma` | [Ici_eq_singleton_iff_isTop](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetLinearOrderPublic.lean/declarations/ici-eq-singleton-iff-istop.md) | 104 | `result-track:0adbbed0de8991015bbe1df43dfaecc852083301455318eff539bbd7d64132b9` |
| 17 | `theorem` | [Ioi_subset_Ioi_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetLinearOrderPublic.lean/declarations/ioi-subset-ioi-iff.md) | 112 | `result-track:cbf45ce9ea9f7c08d21a88f45f2f2dfb14f3bd2dfa3fc3e44c59c643ea764c30` |
| 18 | `theorem` | [Ioi_ssubset_Ioi_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetLinearOrderPublic.lean/declarations/ioi-ssubset-ioi-iff.md) | 118 | `result-track:582026a5398982f620e3b0a58f2fc02173f2b323b4f3498322372b49e5cd962a` |
| 19 | `theorem` | [Ioi_subset_Ici_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetLinearOrderPublic.lean/declarations/ioi-subset-ici-iff.md) | 124 | `result-track:5510540fa4f8d301a19a1099dd3187014a197c2e1d7c136616eda94cd7528008` |
| 20 | `theorem` | [Iic_union_Ioi_of_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetLinearOrderPublic.lean/declarations/iic-union-ioi-of-le.md) | 133 | `result-track:a719ba5d688d9d85829ea2e0b5eaa6cbfa2c549b803f230b4574e9cae1389eb8` |
| 21 | `theorem` | [Iio_union_Ici_of_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetLinearOrderPublic.lean/declarations/iio-union-ici-of-le.md) | 137 | `result-track:78a8692d2a73e0d6920a0c95686bd4e6390fd977d53291acf59456197a06a4b2` |
| 22 | `theorem` | [Iic_union_Ici_of_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetLinearOrderPublic.lean/declarations/iic-union-ici-of-le.md) | 141 | `result-track:197a657dbb30e753337c4c75d13592b8a0754075ae6c3b847f5cd152ae99e914` |
| 23 | `theorem` | [Iio_union_Ioi_of_lt](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetLinearOrderPublic.lean/declarations/iio-union-ioi-of-lt.md) | 145 | `result-track:6d339a9ba81d4c71b44e61363cf11fbd3adc9f8e6ebcf9fa8dfde0253b1b35b1` |
| 24 | `theorem` | [Iic_union_Ici](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetLinearOrderPublic.lean/declarations/iic-union-ici.md) | 149 | `result-track:ab0e401e9f27e0c46b959b1a924456327388a4dded804fc310f69cf25c7db2ca` |
| 25 | `theorem` | [Iio_union_Ici](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetLinearOrderPublic.lean/declarations/iio-union-ici.md) | 153 | `result-track:52676fac4e7ad41e4e20072a5b21e1c138bcd3c3e3cc443e6afc4b5d3ab8c5e6` |
| 26 | `theorem` | [Iic_union_Ioi](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetLinearOrderPublic.lean/declarations/iic-union-ioi.md) | 157 | `result-track:e74e638f355619819301941b3e243f200355b5a2fe70308eb8e40015d10fb244` |
| 27 | `theorem` | [Iio_union_Ioi](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetLinearOrderPublic.lean/declarations/iio-union-ioi.md) | 161 | `result-track:e490ad927e79463f162248b84548605a967d96b7b96159ba508710d271f39f2b` |
| 28 | `theorem` | [Ioo_union_Ioi](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetLinearOrderPublic.lean/declarations/ioo-union-ioi.md) | 166 | `result-track:16471feaa25344258ddcd659af881b5b4d15f22d4dcd2a724c656c1a6ef48871` |
| 29 | `theorem` | [Ioi_subset_Ioo_union_Ici](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetLinearOrderPublic.lean/declarations/ioi-subset-ioo-union-ici.md) | 169 | `result-track:e0971597d7acd249560a86f6c86b61bf4086f046e3ef7b64023cc695db45d484` |
| 30 | `theorem` | [Ioo_union_Ici_eq_Ioi](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetLinearOrderPublic.lean/declarations/ioo-union-ici-eq-ioi.md) | 173 | `result-track:056c40b273c89e3669821fd685bd908d446fa4eaa4c6fec3ae74efd7a549c3f5` |
| 31 | `theorem` | [Ici_subset_Ico_union_Ici](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetLinearOrderPublic.lean/declarations/ici-subset-ico-union-ici.md) | 176 | `result-track:16ec35f69b85be3eb1e71bf93395ea0ffada8671a5b16e9fa9fe3c2862d48c07` |
| 32 | `theorem` | [Ico_union_Ici_eq_Ici](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetLinearOrderPublic.lean/declarations/ico-union-ici-eq-ici.md) | 180 | `result-track:c0befeeb51aa93bc2650eca409d0511f12f3ae43db8df8057f1c0d66e7cdae4a` |
| 33 | `theorem` | [Ico_union_Ici](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetLinearOrderPublic.lean/declarations/ico-union-ici.md) | 183 | `result-track:47ab24b5c37bae439c50b3a6b61defb5e07b815a26aa6395cef52f832b027dc7` |
| 34 | `theorem` | [Ioi_subset_Ioc_union_Ioi](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetLinearOrderPublic.lean/declarations/ioi-subset-ioc-union-ioi.md) | 186 | `result-track:c31f79169e73d4effea1f7ff87089b25e9f5214a23359f48147777fdc7d31614` |
| 35 | `theorem` | [Ioc_union_Ioi_eq_Ioi](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetLinearOrderPublic.lean/declarations/ioc-union-ioi-eq-ioi.md) | 190 | `result-track:4e5419b261c988a61e08b596e60963500524a5931eae3ed6af6d2b8a21124336` |
| 36 | `theorem` | [Ioc_union_Ioi](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetLinearOrderPublic.lean/declarations/ioc-union-ioi.md) | 193 | `result-track:79cf9b1855ffa8cf380e74f7d5374a2914232d4265b2259e6a4c40530286ed87` |
| 37 | `theorem` | [Ici_subset_Icc_union_Ioi](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetLinearOrderPublic.lean/declarations/ici-subset-icc-union-ioi.md) | 196 | `result-track:8136d044df1074bd7bf1fbe3acc5882b877387fc4626446447741c8992ba1b12` |
| 38 | `theorem` | [Icc_union_Ioi_eq_Ici](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetLinearOrderPublic.lean/declarations/icc-union-ioi-eq-ici.md) | 200 | `result-track:7c83a98aa616b42ee4056209546b2bbe322abdfe55cd19435cc4404222291bc1` |
| 39 | `theorem` | [Ioi_subset_Ioc_union_Ici](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetLinearOrderPublic.lean/declarations/ioi-subset-ioc-union-ici.md) | 204 | `result-track:0fea2eca4d47589df951f0b9fb0dccef6420fe12d8cd6586d812be34f58e7302` |
| 40 | `theorem` | [Ioc_union_Ici_eq_Ioi](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetLinearOrderPublic.lean/declarations/ioc-union-ici-eq-ioi.md) | 208 | `result-track:6b0f5d8aebba9b35260d7c4ac4020116066881b6019ab31f16588c0355d8c73e` |
| 41 | `theorem` | [Ici_subset_Icc_union_Ici](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetLinearOrderPublic.lean/declarations/ici-subset-icc-union-ici.md) | 211 | `result-track:b4ef156557f4ec58c5265767bbe89f650ea8d65af9d7238072a1418c5a935a56` |
| 42 | `theorem` | [Icc_union_Ici_eq_Ici](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetLinearOrderPublic.lean/declarations/icc-union-ici-eq-ici.md) | 215 | `result-track:af08030c9567b673d9d30d26601faaae1ae2c4a8e8c8cf5c88eb9460fde6d4f2` |
| 43 | `theorem` | [Icc_union_Ici](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetLinearOrderPublic.lean/declarations/icc-union-ici.md) | 218 | `result-track:0e261a65b6cd2cb169e5b13a118b9303123beccc694c7d6673c85dce296532a2` |
| 44 | `theorem` | [Ioo_union_Ioi_eq_Ioi_sdiff_singleton](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetLinearOrderPublic.lean/declarations/ioo-union-ioi-eq-ioi-sdiff-singleton.md) | 221 | `result-track:c05d603f0c64ce1674f7df0f0319290af2f88578731758b6e3330f18bf138f56` |
| 45 | `theorem` | [Ico_union_Ioi_eq_Ici_sdiff_singleton](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetLinearOrderPublic.lean/declarations/ico-union-ioi-eq-ici-sdiff-singleton.md) | 225 | `result-track:bad27375e9c8dbe302341bae916f71ba39e8f80c0363aaa8a5edc80862a7597b` |
| 46 | `theorem` | [Iic_subset_Iio_union_Icc](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetLinearOrderPublic.lean/declarations/iic-subset-iio-union-icc.md) | 231 | `result-track:ece4e9fac4080c6efa007c339bc9cf709812bbfcc0d42dd432a1699959fbd37a` |
| 47 | `theorem` | [Iio_union_Icc_eq_Iic](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetLinearOrderPublic.lean/declarations/iio-union-icc-eq-iic.md) | 235 | `result-track:0e94fafa1fb1d0f71ade3c167aaacca26e255bf726bdb8e99a7e210fc3fd4c74` |
| 48 | `theorem` | [Iio_subset_Iio_union_Ico](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetLinearOrderPublic.lean/declarations/iio-subset-iio-union-ico.md) | 239 | `result-track:608fda1fd3d88d9b324e4eb4896007d99d213388a8aebdd9bb8051f69bc3ff9b` |
| 49 | `theorem` | [Iio_union_Ico_eq_Iio](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetLinearOrderPublic.lean/declarations/iio-union-ico-eq-iio.md) | 243 | `result-track:be317826d080178c712515fc0858a9eb36b12eb0db95d36f9226686047a4e22b` |
| 50 | `theorem` | [Iio_union_Ico](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetLinearOrderPublic.lean/declarations/iio-union-ico.md) | 247 | `result-track:f5cefd86585f461e144fb1affbd947a7a1bef9488aaeba10ce945bcc80ab499a` |
| 51 | `theorem` | [Iic_subset_Iic_union_Ioc](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetLinearOrderPublic.lean/declarations/iic-subset-iic-union-ioc.md) | 250 | `result-track:53f992c6a6a9439e9e3c44c9f4be795aeb1d821b41be1e8b92a7d373ef386085` |
| 52 | `theorem` | [Iic_union_Ioc_eq_Iic](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetLinearOrderPublic.lean/declarations/iic-union-ioc-eq-iic.md) | 254 | `result-track:3b90c3a249e134e765910c473b74397544710f9dfbae704abe29173765e02569` |
| 53 | `theorem` | [Iic_union_Ioc](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetLinearOrderPublic.lean/declarations/iic-union-ioc.md) | 258 | `result-track:443aec437b28b55463801e64b8ebf36d1ee55fbd266365d8dfa2a683972666af` |
| 54 | `theorem` | [Iio_subset_Iic_union_Ioo](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetLinearOrderPublic.lean/declarations/iio-subset-iic-union-ioo.md) | 261 | `result-track:02d8985f835a3fcf386aa1778bf4b02ec51b2e9a51fcb6afa159614b9b2e0a3a` |
| 55 | `theorem` | [Iic_union_Ioo_eq_Iio](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetLinearOrderPublic.lean/declarations/iic-union-ioo-eq-iio.md) | 265 | `result-track:39417872b898e229e8953a8e10fe5418f33aadc313b2cebd8469dd14da6100d9` |
| 56 | `theorem` | [Iio_union_Ioo](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetLinearOrderPublic.lean/declarations/iio-union-ioo.md) | 269 | `result-track:4ec5d1dedcb70d576cdf4d4ee7878539cfa83c55e298e109547c17d4f0a093af` |
| 57 | `theorem` | [Iic_subset_Iic_union_Icc](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetLinearOrderPublic.lean/declarations/iic-subset-iic-union-icc.md) | 272 | `result-track:6d568111fac84bb51958ebabb85094ce1275c2ec5110c4e5701ef628fc58a0bb` |
| 58 | `theorem` | [Iic_union_Icc_eq_Iic](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetLinearOrderPublic.lean/declarations/iic-union-icc-eq-iic.md) | 276 | `result-track:9624844f31249fe442c0621d14d3cd9c8578fffe36b64be462c3928031c75614` |
| 59 | `theorem` | [Iic_union_Icc](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetLinearOrderPublic.lean/declarations/iic-union-icc.md) | 280 | `result-track:24bc7b1f293c156213d9572ce85a9cf479becb35fe926cc55c862cf16bc76826` |
| 60 | `theorem` | [Iio_subset_Iic_union_Ico](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetLinearOrderPublic.lean/declarations/iio-subset-iic-union-ico.md) | 283 | `result-track:c8b00b55cc0ddf3075b425c96f4fd85e69e7b5c6b2735c6424b62f5ac05d198a` |
| 61 | `theorem` | [Iic_union_Ico_eq_Iio](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetLinearOrderPublic.lean/declarations/iic-union-ico-eq-iio.md) | 287 | `result-track:1ceeb712a88bb23d86fcf1365d011d056361ddc63631bbde45a05f9f0cd0bb45` |
| 62 | `theorem` | [Iio_union_Ioo_eq_Iio_sdiff_singleton](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetLinearOrderPublic.lean/declarations/iio-union-ioo-eq-iio-sdiff-singleton.md) | 291 | `result-track:69e5707e884d742d7c141441ec682d8b106806eddc3c7f683c9a13316fd20d8e` |
| 63 | `theorem` | [Iio_union_Ioc_eq_Iic_sdiff_singleton](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetLinearOrderPublic.lean/declarations/iio-union-ioc-eq-iic-sdiff-singleton.md) | 295 | `result-track:1c1e7726c6c7f87fd640f5eb424b8531de1433035e407c0c0e5c79cc66c38cc1` |
| 64 | `theorem` | [Ioo_subset_Ioo_union_Ico](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetLinearOrderPublic.lean/declarations/ioo-subset-ioo-union-ico.md) | 301 | `result-track:057d96e57ed6f66ddf8482ea1393c2b03b6d2b388606f429930185f8b0b59031` |
| 65 | `theorem` | [Ioo_union_Ico_eq_Ioo](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetLinearOrderPublic.lean/declarations/ioo-union-ico-eq-ioo.md) | 305 | `result-track:7e3efdee58f86309062174ced9b3d15aa526413a6dc680d2e1b6e4e59add28e7` |
| 66 | `theorem` | [Ico_subset_Ico_union_Ico](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetLinearOrderPublic.lean/declarations/ico-subset-ico-union-ico.md) | 310 | `result-track:8814ec5b5550756191fa8c4c350b732837490ded99e6625895c28c286b02706d` |
| 67 | `theorem` | [Ico_union_Ico_eq_Ico](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetLinearOrderPublic.lean/declarations/ico-union-ico-eq-ico.md) | 314 | `result-track:a0483af398778740ee59d122353b43ef5819c7b2827d827860aa7b7e92d98a8a` |
| 68 | `theorem` | [Ico_union_Ico](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetLinearOrderPublic.lean/declarations/ico-union-ico.md) | 319 | `result-track:547e0d3184766624b72f68e2365c5cb625ec386f6f6ce8a5c829e4b3bd4da0e9` |
| 69 | `theorem` | [Ico_union_Ico'](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetLinearOrderPublic.lean/declarations/ico-union-ico-source-edition-2.md) | 324 | `result-track:94af848f3f74f5feb77129040cf9daee1e8be9fbf47f5f95e726126b2ce79613` |
| 70 | `theorem` | [Icc_subset_Ico_union_Icc](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetLinearOrderPublic.lean/declarations/icc-subset-ico-union-icc.md) | 329 | `result-track:3808f95fb850355315b04dcb967d391f553e2f22284caeebf4b0f66c4d0e8bc1` |
| 71 | `theorem` | [Ico_union_Icc_eq_Icc](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetLinearOrderPublic.lean/declarations/ico-union-icc-eq-icc.md) | 333 | `result-track:f7925aaeb72c9cb455ca3bbcbe2eb54dccfe3ccb43793d098cd6c8a65a76814d` |
| 72 | `theorem` | [Ioc_subset_Ioo_union_Icc](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetLinearOrderPublic.lean/declarations/ioc-subset-ioo-union-icc.md) | 338 | `result-track:e58c310c8ad907f9f445e91bf67e8bc7db2914417c6c16b6310532d528742dac` |
| 73 | `theorem` | [Ioo_union_Icc_eq_Ioc](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetLinearOrderPublic.lean/declarations/ioo-union-icc-eq-ioc.md) | 342 | `result-track:3d63a32030f44fb4844f4b9f23cb7f9cbc757e96c0d77815b3b256632a45251b` |
| 74 | `theorem` | [Ioo_subset_Ioc_union_Ioo](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetLinearOrderPublic.lean/declarations/ioo-subset-ioc-union-ioo.md) | 350 | `result-track:b34b56f478c075998f6c01579b22883fa5cd923d17dbcd2cdf4c07d77058214c` |
| 75 | `theorem` | [Ioc_union_Ioo_eq_Ioo](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetLinearOrderPublic.lean/declarations/ioc-union-ioo-eq-ioo.md) | 354 | `result-track:ea727d13fa5359fb5960ce384a0d42a2f0b46bdbd5321ff6450c3884aadee4db` |
| 76 | `theorem` | [Ico_subset_Icc_union_Ioo](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetLinearOrderPublic.lean/declarations/ico-subset-icc-union-ioo.md) | 360 | `result-track:acf7ca04d557ce793afb47084fc53b40a88bb56b395bd2f81de3e15b6b39beb8` |
| 77 | `theorem` | [Icc_union_Ioo_eq_Ico](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetLinearOrderPublic.lean/declarations/icc-union-ioo-eq-ico.md) | 364 | `result-track:84812094fef68c08ad1dab83b9e96fe0e3aa6b201b8e0a8189b2dea094504cc9` |
| 78 | `theorem` | [Icc_subset_Icc_union_Ioc](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetLinearOrderPublic.lean/declarations/icc-subset-icc-union-ioc.md) | 369 | `result-track:db121786ba742cf4a502e42984ff238ab4b23dac2757aa4cfd75acd0010c3ead` |
| 79 | `theorem` | [Icc_union_Ioc_eq_Icc](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetLinearOrderPublic.lean/declarations/icc-union-ioc-eq-icc.md) | 373 | `result-track:bffb7927183a87dacffadf3ad20dbdf081145e48dc7e5b6629f2f92bdf985a40` |
| 80 | `theorem` | [Ioc_subset_Ioc_union_Ioc](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetLinearOrderPublic.lean/declarations/ioc-subset-ioc-union-ioc.md) | 378 | `result-track:66a76474443c932a56891bb976559a5ab78da9414692a600071dc715b465a40b` |
| 81 | `theorem` | [Ioc_union_Ioc_eq_Ioc](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetLinearOrderPublic.lean/declarations/ioc-union-ioc-eq-ioc.md) | 382 | `result-track:aaca852dcea6fdef03a2d153b9ae1d0db69b8bcea280ac3d185f7bc30a1fe90f` |
| 82 | `theorem` | [Ioc_union_Ioc](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetLinearOrderPublic.lean/declarations/ioc-union-ioc.md) | 387 | `result-track:60a9bf9274c3ddb049f04678343b693a3ee261da752d2ae0ec0e01fc28777bdc` |
| 83 | `theorem` | [Ioc_union_Ioc'](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetLinearOrderPublic.lean/declarations/ioc-union-ioc-source-edition-2.md) | 392 | `result-track:ce9ffbf14ae0318d2fcbc0c31eae2e8f2642975dc4fb76f2fd88937a2f6827bc` |
| 84 | `theorem` | [Ioo_subset_Ioc_union_Ico](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetLinearOrderPublic.lean/declarations/ioo-subset-ioc-union-ico.md) | 400 | `result-track:521425e61b864c955fae1ab25c83ae6a6f76b88e46c09fed2d6cc8827333aac6` |
| 85 | `theorem` | [Ioc_union_Ico_eq_Ioo](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetLinearOrderPublic.lean/declarations/ioc-union-ico-eq-ioo.md) | 404 | `result-track:b12d9beeeebb75f7fafacd98bed4a2c0647f1c8ca2e65b73d12efda541fc5f42` |
| 86 | `theorem` | [Ico_subset_Icc_union_Ico](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetLinearOrderPublic.lean/declarations/ico-subset-icc-union-ico.md) | 410 | `result-track:2a083889bf1835b0979f78b6a745cb80344d895dc9a993f68be466c9231ff4da` |
| 87 | `theorem` | [Icc_union_Ico_eq_Ico](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetLinearOrderPublic.lean/declarations/icc-union-ico-eq-ico.md) | 414 | `result-track:72d4b9755b7304ef2b97ab9f050ed742642031aee9c866fe8db160fb85619a2e` |
| 88 | `theorem` | [Icc_subset_Icc_union_Icc](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetLinearOrderPublic.lean/declarations/icc-subset-icc-union-icc.md) | 419 | `result-track:360ba8c0122642bced74133d0514fe5a445377ad8edf2b3ee403e817100e0710` |
| 89 | `theorem` | [Icc_union_Icc_eq_Icc](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetLinearOrderPublic.lean/declarations/icc-union-icc-eq-icc.md) | 423 | `result-track:ad460a0c96026f58536063e82bab605fdec4e516abb09fa93291af8a605f5c8e` |
| 90 | `theorem` | [Icc_union_Icc'](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetLinearOrderPublic.lean/declarations/icc-union-icc.md) | 428 | `result-track:05e880018e6aa66a09cdbe61c764cdfc0a49ecf236ded0f962333f7e081a89e7` |
| 91 | `theorem` | [Icc_union_Icc](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetLinearOrderPublic.lean/declarations/icc-union-icc-source-edition-2.md) | 434 | `result-track:e7fe7b52be77217922521809f2741966bcbd38217f767a58d64bbe9cc8ae0a9c` |
| 92 | `theorem` | [Ioc_subset_Ioc_union_Icc](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetLinearOrderPublic.lean/declarations/ioc-subset-ioc-union-icc.md) | 438 | `result-track:ec5b2077e3242c6bb9ff67c105544618e022f215a4f48d16bcc07e3d7558d391` |
| 93 | `theorem` | [Ioc_union_Icc_eq_Ioc](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetLinearOrderPublic.lean/declarations/ioc-union-icc-eq-ioc.md) | 442 | `result-track:ec6fa320d4277db79872ec5a761844f4e2536aa172e0748fa9c1458871b0b7ba` |
| 94 | `theorem` | [Ioo_union_Ioo'](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetLinearOrderPublic.lean/declarations/ioo-union-ioo.md) | 447 | `result-track:073ffa1d96df805550bfc802123a7c06094dcae9706c03868bf2da5682689fb2` |
| 95 | `theorem` | [Ioo_union_Ioo](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetLinearOrderPublic.lean/declarations/ioo-union-ioo-source-edition-2.md) | 450 | `result-track:2032c00dad335464345427333efa6edd6b5a4be3c68242cab0e9dfb4f459450a` |
| 96 | `theorem` | [Ioo_subset_Ioo_union_Ioo](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetLinearOrderPublic.lean/declarations/ioo-subset-ioo-union-ioo.md) | 454 | `result-track:d722e45ae45b3648037b1064ebb844240519aa58091ee961d0c56adce1dabbde` |
| 97 | `theorem` | [Ioo_union_Ioo_eq_Ioo_sdiff_singleton](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetLinearOrderPublic.lean/declarations/ioo-union-ioo-eq-ioo-sdiff-singleton.md) | 459 | `result-track:e0373b801d4d4407034ad3dc960f49f9f6895931b1035c401a2c81beb203e24e` |
| 98 | `theorem` | [Ico_union_Ioo_eq_Ico_sdiff_singleton](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetLinearOrderPublic.lean/declarations/ico-union-ioo-eq-ico-sdiff-singleton.md) | 463 | `result-track:60db8d8dbc43a30cf7a6069720981a9489421163fe738d688d0d3ecece4d4033` |
| 99 | `theorem` | [Ico_union_Ioc_eq_Icc_sdiff_singleton](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetLinearOrderPublic.lean/declarations/ico-union-ioc-eq-icc-sdiff-singleton.md) | 467 | `result-track:ea03ac6a4eea399c717bf31b013a81cfa40a18423f48a57baf275f1317e7e20f` |
| 100 | `theorem` | [Ioo_union_Ioc_eq_Ioc_sdiff_singleton](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetLinearOrderPublic.lean/declarations/ioo-union-ioc-eq-ioc-sdiff-singleton.md) | 471 | `result-track:a94f6d7cd6dd1f1f68e430e17526d37abae5dc38f894850d69d17b68227cd102` |
| 101 | `theorem` | [Ioi_inter_Ioi](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetLinearOrderPublic.lean/declarations/ioi-inter-ioi.md) | 478 | `result-track:b33bef4a61c1a657c458a8e1d0037663d083af3402053291bf5cc35506e67fd4` |
| 102 | `theorem` | [Ico_inter_Ico](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetLinearOrderPublic.lean/declarations/ico-inter-ico.md) | 482 | `result-track:3f4604da7158ae18ffcfa522774e52380fe16017ca7e8f8a364e8163055bac21` |
| 103 | `theorem` | [Ioo_inter_Ioo](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetLinearOrderPublic.lean/declarations/ioo-inter-ioo.md) | 486 | `result-track:65e4ae9544e27162bd6bc951b92632342ce28e353d21fe3b31be9e6c87472bc3` |
| 104 | `theorem` | [Ioo_inter_Iio](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetLinearOrderPublic.lean/declarations/ioo-inter-iio.md) | 490 | `result-track:d22cac5b5b25773948304030f82a4d5ebb284a301ccb233668a99d2e211992e9` |
| 105 | `theorem` | [Iio_inter_Ioo](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetLinearOrderPublic.lean/declarations/iio-inter-ioo.md) | 494 | `result-track:5da8489815a5130c6aa86d885639e94fc860237f98ff3adbfab962a6b341e41f` |
| 106 | `theorem` | [Ioc_inter_Ioo_of_left_lt](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetLinearOrderPublic.lean/declarations/ioc-inter-ioo-of-left-lt.md) | 497 | `result-track:ea78b363552c991425fee99f2cc6de7ea75ea6de73e78a76090cf928a2ec060f` |
| 107 | `theorem` | [Ioc_inter_Ioo_of_right_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetLinearOrderPublic.lean/declarations/ioc-inter-ioo-of-right-le.md) | 500 | `result-track:a1ef0c4959fa8fbc83ce0e72151d74a29e803f08551a929dbcb00d6dbb9e80ab` |
| 108 | `theorem` | [Ioo_inter_Ioc_of_left_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetLinearOrderPublic.lean/declarations/ioo-inter-ioc-of-left-le.md) | 503 | `result-track:c57a48870089c043e0fcdd53d6cda9ea875b38dee7df15ec1121762b170cddc6` |
| 109 | `theorem` | [Ioo_inter_Ioc_of_right_lt](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetLinearOrderPublic.lean/declarations/ioo-inter-ioc-of-right-lt.md) | 506 | `result-track:c6fec38f639ae82b7f711516a7cc79ef1374506f1e332c7e3cd766659f811538` |
| 110 | `theorem` | [Ico_sdiff_Iio](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetLinearOrderPublic.lean/declarations/ico-sdiff-iio.md) | 510 | `result-track:99421c0e75effaa94fafd95d87d5de4597450330b52cee61a46a47444fabf214` |
| 111 | `theorem` | [Ioc_sdiff_Ioi](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetLinearOrderPublic.lean/declarations/ioc-sdiff-ioi.md) | 516 | `result-track:a93aeacce4bace07a26743e7a9cce9c3b162986719f35c3f9e955dfe9b4d9f38` |
| 112 | `theorem` | [Ioc_inter_Ioi](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetLinearOrderPublic.lean/declarations/ioc-inter-ioi.md) | 522 | `result-track:3124662c26729b9588760692fa8a582a0947f72c86557a71f23e7551353bb269` |
| 113 | `theorem` | [Ico_inter_Iio](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetLinearOrderPublic.lean/declarations/ico-inter-iio.md) | 526 | `result-track:63a02ae035eb64280624b7a1f5e645dc0a853d3e91d3c0c5833e5db0d09ac2d1` |
| 114 | `theorem` | [Ioc_sdiff_Iic](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetLinearOrderPublic.lean/declarations/ioc-sdiff-iic.md) | 530 | `result-track:84e6114d3ba650b76e7fde408727e58a8303a1b3e5b643c2410a304703854cb6` |
| 115 | `theorem` | [compl_Ioc](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetLinearOrderPublic.lean/declarations/compl-ioc.md) | 535 | `result-track:bf5042f09dcbb0f75ee1c3bd4b603feee4c8ef4e8d480b8a06c36bc502d4507a` |
| 116 | `theorem` | [Iic_sdiff_Ioc](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetLinearOrderPublic.lean/declarations/iic-sdiff-ioc.md) | 538 | `result-track:512d98fb46f8bbff670a7065154fa16b1ebf18f746bd6da67f3db28edd92767a` |
| 117 | `theorem` | [Ioi_sdiff_Ioc](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetLinearOrderPublic.lean/declarations/ioi-sdiff-ioc.md) | 544 | `result-track:858a50928b2bf21c3f6532c14cd96ce5140e32a4b6323286df970379d2b95334` |
| 118 | `theorem` | [Iic_sdiff_Ioc_self_of_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetLinearOrderPublic.lean/declarations/iic-sdiff-ioc-self-of-le.md) | 549 | `result-track:8eea8a55af4c9208f682e31fede9be97eaf56bbe7692f12eb14d3e224d1e1c22` |
| 119 | `theorem` | [Ioc_union_Ioc_right](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetLinearOrderPublic.lean/declarations/ioc-union-ioc-right.md) | 555 | `result-track:56e1a785326c0cf212f9961b926a1fcbdec81b9e7f8281e254dd798a2f759b81` |
| 120 | `theorem` | [Ioc_union_Ioc_left](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetLinearOrderPublic.lean/declarations/ioc-union-ioc-left.md) | 559 | `result-track:ff6aa78720a11c8a9b77f0be9d185d873c7b0c3a24158efb902c15e50cdc4948` |
| 121 | `theorem` | [Ioc_union_Ioc_symm](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetLinearOrderPublic.lean/declarations/ioc-union-ioc-symm.md) | 563 | `result-track:f13f32b075bcfa6a1c450ba676eee430412ca929f69f50f06e817a7a66548e7b` |
| 122 | `theorem` | [Ioc_union_Ioc_union_Ioc_cycle](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetLinearOrderPublic.lean/declarations/ioc-union-ioc-union-ioc-cycle.md) | 567 | `result-track:5f595832bbe91d8dd3ce0b1f5fddfcd658b2af0dd64889523243550f76d7be89` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=adfa04f6dd368c1e4e21290ce5c19c68deb9d98ed4f68486b0582dbb1d1f9dc2 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinearOrder/Variant57706e0630842f683bcde812a6127f78a115b40a219b0ca92ca14476f3ab3191.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinearOrder/Variant57706e0630842f683bcde812a6127f78a115b40a219b0ca92ca14476f3ab3191.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
