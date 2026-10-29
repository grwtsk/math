# Verification target: Min Max Namespaced Max Le Max Left

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a33dca0c4ca4393493ad7140fe0eb66c50a986f7",
  "lexical_observation_count": 65,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MinMax/Variant9833459453d21ab519e08a440fe62e3c9bf6d186989e3505c0e55ea8c911d752.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MinMaxNamespacedMaxLeMaxLeft.lean/index.md) · [Full source](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MinMaxNamespacedMaxLeMaxLeft.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a33dca0c4ca4393493ad7140fe0eb66c50a986f7`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MinMax/Variant9833459453d21ab519e08a440fe62e3c9bf6d186989e3505c0e55ea8c911d752.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MinMax/Variant9833459453d21ab519e08a440fe62e3c9bf6d186989e3505c0e55ea8c911d752.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Logic.OpClass` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Lattice` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [le_min_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MinMaxNamespacedMaxLeMaxLeft.lean/declarations/le-min-iff.md) | 37 | `result-track:547a41f8c396c729207a34431946820b0475de2c297a0cb4c443e61d63994edb` |
| 2 | `theorem` | [le_max_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MinMaxNamespacedMaxLeMaxLeft.lean/declarations/le-max-iff.md) | 40 | `result-track:28c50de3729db9ce2bfeb97663f620033c8058c2361148ec2d5cd44b826caa25` |
| 3 | `theorem` | [min_le_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MinMaxNamespacedMaxLeMaxLeft.lean/declarations/min-le-iff.md) | 43 | `result-track:3a50419496d74550f5784c100683165c39b776b595fecaa66e65e84dd23f0b5b` |
| 4 | `theorem` | [max_le_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MinMaxNamespacedMaxLeMaxLeft.lean/declarations/max-le-iff.md) | 46 | `result-track:2a279fd0b4bb1d273fd0f7c2e0d2bef99ffb00773957d6cf3f650a8ffc424aec` |
| 5 | `theorem` | [lt_min_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MinMaxNamespacedMaxLeMaxLeft.lean/declarations/lt-min-iff.md) | 49 | `result-track:584930ce49b049d5d056179bc3df38887840cb4e4653a708492ee673ee41dd8a` |
| 6 | `theorem` | [lt_max_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MinMaxNamespacedMaxLeMaxLeft.lean/declarations/lt-max-iff.md) | 52 | `result-track:9665bfd027f3add5b373c7c99237999ef0cddcc5ecc93ef800e36ad13a8d87ad` |
| 7 | `theorem` | [min_lt_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MinMaxNamespacedMaxLeMaxLeft.lean/declarations/min-lt-iff.md) | 55 | `result-track:6748a5649f12fe511ed015555e7cd68d755554e848697fbd75df91bbbf7bf496` |
| 8 | `theorem` | [max_lt_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MinMaxNamespacedMaxLeMaxLeft.lean/declarations/max-lt-iff.md) | 58 | `result-track:86cd14d2ebd4e695733a6af1f16439aeb964219b989597de7b5064b951fbc614` |
| 9 | `theorem` | [max_le_max](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MinMaxNamespacedMaxLeMaxLeft.lean/declarations/max-le-max.md) | 61 | `result-track:151fad7458efe520ad19547c6aa91bc086924240a24cb1ee56eff4649f4cfd93` |
| 10 | `theorem` | [max_le_max_left](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MinMaxNamespacedMaxLeMaxLeft.lean/declarations/max-le-max-left.md) | 64 | `result-track:98a243178c4ec5701081e94b060e8b376b0ec793abfc5b08b3822abec3366103` |
| 11 | `theorem` | [max_le_max_right](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MinMaxNamespacedMaxLeMaxLeft.lean/declarations/max-le-max-right.md) | 66 | `result-track:73a9dae49a2039d981b03bd89142c25ee029e27dd42b00c5e43b3d624044f3c4` |
| 12 | `theorem` | [min_le_min](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MinMaxNamespacedMaxLeMaxLeft.lean/declarations/min-le-min.md) | 68 | `result-track:f4b92b21b10bb534c3488982835a02efe786164f6b651160109ab881b706023c` |
| 13 | `theorem` | [min_le_min_left](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MinMaxNamespacedMaxLeMaxLeft.lean/declarations/min-le-min-left.md) | 71 | `result-track:1c847a9e04bfa9a74a6ac188e2b3fb5b6559fb03809eb9e195e0ce073b58d743` |
| 14 | `theorem` | [min_le_min_right](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MinMaxNamespacedMaxLeMaxLeft.lean/declarations/min-le-min-right.md) | 73 | `result-track:c59200bd3fb3d5bdac379c6d737afa63ae9a755a503d3d1ef02f6fa048d9cda8` |
| 15 | `theorem` | [le_max_of_le_left](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MinMaxNamespacedMaxLeMaxLeft.lean/declarations/le-max-of-le-left.md) | 75 | `result-track:0a8c756cc068140a12fae501461ba9b7074a9f50373d0a61cc405b53ddb52f31` |
| 16 | `theorem` | [le_max_of_le_right](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MinMaxNamespacedMaxLeMaxLeft.lean/declarations/le-max-of-le-right.md) | 78 | `result-track:4cb461d5d57525ab275564224c96b395cefa1c81e39766bd12ba42ec0d8da010` |
| 17 | `theorem` | [lt_max_of_lt_left](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MinMaxNamespacedMaxLeMaxLeft.lean/declarations/lt-max-of-lt-left.md) | 81 | `result-track:3e8902d9889142ac697e52dfb1922adcdf43a78c0e346df7bcac007380893ba7` |
| 18 | `theorem` | [lt_max_of_lt_right](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MinMaxNamespacedMaxLeMaxLeft.lean/declarations/lt-max-of-lt-right.md) | 84 | `result-track:b2eac43f8756804e09591241a7eeab21f9dc20e0e0d61ecc1929971ca70825a5` |
| 19 | `theorem` | [min_le_of_left_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MinMaxNamespacedMaxLeMaxLeft.lean/declarations/min-le-of-left-le.md) | 87 | `result-track:65ba9f9c371e5219469eb33d2b10311e52d2c701cbaaf561688550e45a5d80a7` |
| 20 | `theorem` | [min_le_of_right_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MinMaxNamespacedMaxLeMaxLeft.lean/declarations/min-le-of-right-le.md) | 90 | `result-track:07ea9eae4ced22e63660ec9dd91a3dc4bcbec3645c41636476615e5ded016ada` |
| 21 | `theorem` | [min_lt_of_left_lt](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MinMaxNamespacedMaxLeMaxLeft.lean/declarations/min-lt-of-left-lt.md) | 93 | `result-track:2eb0ca0e85e2d691cc1c67ff35ab1c23de819f05883dcfeb8422ab918f8a3b49` |
| 22 | `theorem` | [min_lt_of_right_lt](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MinMaxNamespacedMaxLeMaxLeft.lean/declarations/min-lt-of-right-lt.md) | 96 | `result-track:ea997a1c093a3321e871fa59d1f07a475ae4459dd15f5450e785b2916a847261` |
| 23 | `lemma` | [max_min_distrib_left](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MinMaxNamespacedMaxLeMaxLeft.lean/declarations/max-min-distrib-left.md) | 99 | `result-track:81141751983c255debaddb9d888e1d4f2bbc90782c5ae8cc090b9d6f2ca9effa` |
| 24 | `lemma` | [max_min_distrib_right](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MinMaxNamespacedMaxLeMaxLeft.lean/declarations/max-min-distrib-right.md) | 102 | `result-track:63b270d3390e89edb501cea887db336160d63c245a6d3c45a2abccc14dd4c70d` |
| 25 | `lemma` | [min_max_distrib_left](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MinMaxNamespacedMaxLeMaxLeft.lean/declarations/min-max-distrib-left.md) | 105 | `result-track:f43bb0ce9a6a5fe69d4c34bc7e831b8229d8b1aae4f18d987993b0abea4a6630` |
| 26 | `lemma` | [min_max_distrib_right](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MinMaxNamespacedMaxLeMaxLeft.lean/declarations/min-max-distrib-right.md) | 108 | `result-track:82b88cc17a554a61502fb7faf004cb9ac41de47bba0c4d25e360db169a8e0a53` |
| 27 | `theorem` | [min_le_max](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MinMaxNamespacedMaxLeMaxLeft.lean/declarations/min-le-max.md) | 111 | `result-track:1fa73e06ba5ab7c77eb0cf051d32bba1a54d573b4eb7ef9793b01d3066372aca` |
| 28 | `theorem` | [min_eq_left_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MinMaxNamespacedMaxLeMaxLeft.lean/declarations/min-eq-left-iff.md) | 114 | `result-track:bb1f8f512e4c4ad18f83f7ac84f13ed5be529b8299770a5e119efa190565936e` |
| 29 | `theorem` | [min_eq_right_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MinMaxNamespacedMaxLeMaxLeft.lean/declarations/min-eq-right-iff.md) | 117 | `result-track:f3bdd156c245b5ceefd1f2fd1d41bef4c0a1e96afa70635fc11e0dafdc0d32d0` |
| 30 | `theorem` | [max_eq_left_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MinMaxNamespacedMaxLeMaxLeft.lean/declarations/max-eq-left-iff.md) | 120 | `result-track:16dd48a94c7e0bc1ace1f072ea07cb93ec0f67ac0166b8cfc95408f1faa36aaf` |
| 31 | `theorem` | [max_eq_right_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MinMaxNamespacedMaxLeMaxLeft.lean/declarations/max-eq-right-iff.md) | 123 | `result-track:0af814b8d649ae3f8e60b81eef4639ed2d2b05a3ae0726a91337b6aca245d04b` |
| 32 | `theorem` | [min_cases](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MinMaxNamespacedMaxLeMaxLeft.lean/declarations/min-cases.md) | 129 | `result-track:0d5167fe855bbe4a4188a4d70d1b6929def54c9946590902deee40eace8bd69e` |
| 33 | `theorem` | [max_cases](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MinMaxNamespacedMaxLeMaxLeft.lean/declarations/max-cases.md) | 139 | `result-track:6135255c4b4a3585485ed29d2c351ae28b40fba5b60b174fb7d786c003ebcbda` |
| 34 | `theorem` | [min_eq_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MinMaxNamespacedMaxLeMaxLeft.lean/declarations/min-eq-iff.md) | 142 | `result-track:93ea531c595b1042ba321bf1a6df82d8e72f927e050d5c013f7706026f77aed9` |
| 35 | `theorem` | [max_eq_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MinMaxNamespacedMaxLeMaxLeft.lean/declarations/max-eq-iff.md) | 148 | `result-track:6fba71f4ae20eccefeafc6f045c373416d880f7896888d779515aea385f07b6c` |
| 36 | `theorem` | [min_lt_min_left_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MinMaxNamespacedMaxLeMaxLeft.lean/declarations/min-lt-min-left-iff.md) | 151 | `result-track:2b742762393f9d1778cdf09ee613525bb1deb27cb34d499377275cd22aefb87e` |
| 37 | `theorem` | [min_lt_min_right_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MinMaxNamespacedMaxLeMaxLeft.lean/declarations/min-lt-min-right-iff.md) | 155 | `result-track:a1dd2ce8b8eedf2a3f4d618934394b4a541e16ca527fc2e702248c6d019f78ba` |
| 38 | `theorem` | [max_lt_max_left_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MinMaxNamespacedMaxLeMaxLeft.lean/declarations/max-lt-max-left-iff.md) | 158 | `result-track:5f78863ac5015ba88a07d6233e812a3ae990ba2b962de3c358c1b233c22a14e4` |
| 39 | `theorem` | [max_lt_max_right_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MinMaxNamespacedMaxLeMaxLeft.lean/declarations/max-lt-max-right-iff.md) | 161 | `result-track:85bd327f29e57ef57e1ccb54d1718d1b3180ec88ddf0b77a0009c89e72666744` |
| 40 | `instance` | [max_idem](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MinMaxNamespacedMaxLeMaxLeft.lean/declarations/max-idem.md) | 165 | `declaration-track:11197cd9ccacad0ec76a6f7e75cd261cb5f771e160e06ccdc2e740f6fae8c4a4` |
| 41 | `instance` | [min_idem](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MinMaxNamespacedMaxLeMaxLeft.lean/declarations/min-idem.md) | 170 | `declaration-track:62e94e542e8ecdc9a2f06a61ce352926e10768ebf6371cabdd7e38aa3cdde347` |
| 42 | `theorem` | [min_lt_max](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MinMaxNamespacedMaxLeMaxLeft.lean/declarations/min-lt-max.md) | 174 | `result-track:b64f9925c9579a58ce4486edaf13479364ff94f92625102f7d18b0633f43d728` |
| 43 | `theorem` | [max_lt_max](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MinMaxNamespacedMaxLeMaxLeft.lean/declarations/max-lt-max.md) | 177 | `result-track:070efaa5709d8c3ca28293fa9a41d87ca8045ec19ccff11e7c539dec52a9c7c6` |
| 44 | `theorem` | [min_lt_min](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MinMaxNamespacedMaxLeMaxLeft.lean/declarations/min-lt-min.md) | 180 | `result-track:30bb62a18e73af871829666355bcf877d5b9c4cdcc0606fff010d714f10697bf` |
| 45 | `theorem` | [min_right_comm](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MinMaxNamespacedMaxLeMaxLeft.lean/declarations/min-right-comm.md) | 183 | `result-track:6d6f7740c97c30b92230e55e549c1bf9608545a8b0748a46f37926ab4ab5e3d8` |
| 46 | `theorem` | [Max.left_comm](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MinMaxNamespacedMaxLeMaxLeft.lean/declarations/max-left-comm.md) | 186 | `result-track:470e8b4af1e435129ec46e0db4da00227fcd447e69ceb239ca8fe86c9d713b8d` |
| 47 | `theorem` | [Max.right_comm](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MinMaxNamespacedMaxLeMaxLeft.lean/declarations/max-right-comm.md) | 189 | `result-track:adedf33dafb4e981952b71f976b019b76d694330f0b2d4bd3fc4ff1f6fd40320` |
| 48 | `theorem` | [MonotoneOn.map_max](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MinMaxNamespacedMaxLeMaxLeft.lean/declarations/monotoneon-map-max.md) | 192 | `result-track:606c8d0cd25eee0f078062f663918e63644777a42470480337abed3f2575e56c` |
| 49 | `theorem` | [MonotoneOn.map_min](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MinMaxNamespacedMaxLeMaxLeft.lean/declarations/monotoneon-map-min.md) | 197 | `result-track:863b5e3f33dc578d45d83f5a0f5c424c55be40264678ef8adb6c6321cadee247` |
| 50 | `theorem` | [AntitoneOn.map_max](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MinMaxNamespacedMaxLeMaxLeft.lean/declarations/antitoneon-map-max.md) | 200 | `result-track:30181ba66176061ba9209a574860efce862fe860bacc790728f4f6b4841cb8b7` |
| 51 | `theorem` | [AntitoneOn.map_min](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MinMaxNamespacedMaxLeMaxLeft.lean/declarations/antitoneon-map-min.md) | 203 | `result-track:5b7d44aea0755dc5aaa8106f0330f470806184717be73b9fc199ff620087d344` |
| 52 | `theorem` | [Monotone.map_max](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MinMaxNamespacedMaxLeMaxLeft.lean/declarations/monotone-map-max.md) | 206 | `result-track:9e35d0246153da337e5ad7e3db9f1b68f8b5750dd6bd9da062997d8c6bb80737` |
| 53 | `theorem` | [Monotone.map_min](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MinMaxNamespacedMaxLeMaxLeft.lean/declarations/monotone-map-min.md) | 209 | `result-track:0fb1ea8f2bea82ce5324260e4291e4c2c696434c2d222736ca01e97049b74b71` |
| 54 | `theorem` | [Antitone.map_max](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MinMaxNamespacedMaxLeMaxLeft.lean/declarations/antitone-map-max.md) | 212 | `result-track:3430c903d772db597bf2cda165e7473f657a8884aed9e417d9a51e4de094d89d` |
| 55 | `theorem` | [Antitone.map_min](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MinMaxNamespacedMaxLeMaxLeft.lean/declarations/antitone-map-min.md) | 215 | `result-track:ba13f12f03119aad0cb374f77779e450b45189dc8956319e3bd9aa22e52a65df` |
| 56 | `theorem` | [min_choice](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MinMaxNamespacedMaxLeMaxLeft.lean/declarations/min-choice.md) | 218 | `result-track:fefcc15be88f6045f31b32d334b004274ce1f8525cdbb89237d447c80e09bb5c` |
| 57 | `theorem` | [max_choice](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MinMaxNamespacedMaxLeMaxLeft.lean/declarations/max-choice.md) | 220 | `result-track:a5c70b9a5fa781bb317138f2fc5899778efb3b5a0d9623c601eb9fdf872da54e` |
| 58 | `theorem` | [le_of_max_le_left](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MinMaxNamespacedMaxLeMaxLeft.lean/declarations/le-of-max-le-left.md) | 223 | `result-track:69e7ae8cfa64d661f637465232af12677a5d0a44d6a2e9eb23a4618ae87fefe9` |
| 59 | `theorem` | [le_of_max_le_right](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MinMaxNamespacedMaxLeMaxLeft.lean/declarations/le-of-max-le-right.md) | 226 | `result-track:2bff3889a5750671d784526e1789e735e64b41c7bd953bede6181cfa942cf1ea` |
| 60 | `instance` | [instCommutativeMax](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MinMaxNamespacedMaxLeMaxLeft.lean/declarations/instcommutativemax.md) | 229 | `declaration-track:0081a63b84d4b88170bb984bd25faee37e26a32441d6a3e7bb60fe87ce2754f1` |
| 61 | `instance` | [instAssociativeMax](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MinMaxNamespacedMaxLeMaxLeft.lean/declarations/instassociativemax.md) | 230 | `declaration-track:bc1a536bf0fecf95356779c50e17d63320b0a45016641856435c371ab6628992` |
| 62 | `instance` | [instCommutativeMin](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MinMaxNamespacedMaxLeMaxLeft.lean/declarations/instcommutativemin.md) | 231 | `declaration-track:8152d28d3c160a0326b5489646543b19c99e5a9b31bdcabbc0b542a1f9e550c3` |
| 63 | `instance` | [instAssociativeMin](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MinMaxNamespacedMaxLeMaxLeft.lean/declarations/instassociativemin.md) | 232 | `declaration-track:f98c83f9bc85a4a64748259202d62edc75c332b3a570b17a8e3c7df9799d1f0c` |
| 64 | `theorem` | [max_left_commutative](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MinMaxNamespacedMaxLeMaxLeft.lean/declarations/max-left-commutative.md) | 234 | `result-track:fc4010b40d5bd74378749c2c49a53d5bd02fee6f384704435d04736d670a27cc` |
| 65 | `theorem` | [min_left_commutative](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MinMaxNamespacedMaxLeMaxLeft.lean/declarations/min-left-commutative.md) | 235 | `result-track:4a08cddd1306afcc37d9f894ddb4bf9a543447611f6748c3305b680586c0027f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0a941dcff44a709b1f7ff078d70344abb693ca80a4f255c4e88653f1f2a7f073 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MinMax/Variant9833459453d21ab519e08a440fe62e3c9bf6d186989e3505c0e55ea8c911d752.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MinMax/Variant9833459453d21ab519e08a440fe62e3c9bf6d186989e3505c0e55ea8c911d752.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
