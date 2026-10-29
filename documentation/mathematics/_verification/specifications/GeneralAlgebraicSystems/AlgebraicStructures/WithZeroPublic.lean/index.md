# Verification target: With Zero Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1321d50c04b4d1bba5b3bb4ad6ee0ab6f8b5dc3e",
  "lexical_observation_count": 91,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/WithZero/Variantdb2cfae21d1f8c23a8a27fc2fe1e910e315a2b5d3207b3604242bff3862b4b50.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/WithZeroPublic.lean/index.md) · [Full source](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/WithZeroPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1321d50c04b4d1bba5b3bb4ad6ee0ab6f8b5dc3e`.

Source path: `GRWTSK/Algebra/GroupTheory/WithZero/Variantdb2cfae21d1f8c23a8a27fc2fe1e910e315a2b5d3207b3604242bff3862b4b50.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/WithZero/Variantdb2cfae21d1f8c23a8a27fc2fe1e910e315a2b5d3207b3604242bff3862b4b50.lean.json)

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
| 1 | `instance` | [one](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/WithZeroPublic.lean/declarations/one.md) | 51 | `declaration-track:d1b141d790c0109540e55f6282a6fbc5fb760dc0245610e5884631cb86286122` |
| 2 | `lemma` | [coe_one](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/WithZeroPublic.lean/declarations/coe-one.md) | 54 | `result-track:20d2b1234004ccb878c1dd088d2f91e7fc604bde56066868315e768173189316` |
| 3 | `lemma` | [recZeroCoe_one](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/WithZeroPublic.lean/declarations/reczerocoe-one.md) | 57 | `result-track:e28085d2759e681c4971cd794090f589888398a64dcfc0e74490a4fe5cee87dd` |
| 4 | `instance` | [instMulZeroClass](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/WithZeroPublic.lean/declarations/instmulzeroclass.md) | 66 | `declaration-track:58c257a5e83409cc1988c1b890adac34937764a006c99d0e3e90e6170c2cb645` |
| 5 | `lemma` | [coe_mul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/WithZeroPublic.lean/declarations/coe-mul.md) | 71 | `result-track:5281936209754bd3cbf9ec7d3ec2d8f3247e9fca3651a4475b8cd89ac7eae7fb` |
| 6 | `lemma` | [unzero_mul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/WithZeroPublic.lean/declarations/unzero-mul.md) | 73 | `result-track:c23ab01a560e6cf28409a6733ed6d290a2129585126eed1becff91cecc3f0cec` |
| 7 | `instance` | [instNoZeroDivisors](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/WithZeroPublic.lean/declarations/instnozerodivisors.md) | 77 | `declaration-track:d9f7ca67cc77ff27a668a22027fbdbaa745a6dfd9a8fd50562d277176a36257b` |
| 8 | `instance` | [instSemigroupWithZero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/WithZeroPublic.lean/declarations/instsemigroupwithzero.md) | 81 | `declaration-track:d2af6e19b83f0f0e6d9a6d87c95eef5f81f528965b1fb1049b065f5788a01863` |
| 9 | `instance` | [instCommSemigroup](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/WithZeroPublic.lean/declarations/instcommsemigroup.md) | 84 | `declaration-track:45cdd307dce37f8f7ec1c14642c7c02e4b2a161e3f2a57781e7d56103100900a` |
| 10 | `instance` | [instMulZeroOneClass](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/WithZeroPublic.lean/declarations/instmulzerooneclass.md) | 89 | `declaration-track:697399ce0b31fa5d83d2c47cf95bbce2cd19fb204e57cb28916d0875432dea58` |
| 11 | `def` | [coeMonoidHom](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/WithZeroPublic.lean/declarations/coemonoidhom.md) | 98 | `declaration-track:aebb0e0449bc8dfc926bc5bfea63b1c8dd5990816f6c682a83480c9283d43b68` |
| 12 | `theorem` | [monoidWithZeroHom_ext](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/WithZeroPublic.lean/declarations/monoidwithzerohom-ext.md) | 108 | `result-track:e3aad5be222f92883e8abba88805135aa881e09e9f0ff0e71f147efdb36e459b` |
| 13 | `def` | [lift'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/WithZeroPublic.lean/declarations/lift.md) | 117 | `declaration-track:64e54342e173eb355d820b75da3a68b83caeff70018b96b935b46f699e8cb3d2` |
| 14 | `lemma` | [lift'_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/WithZeroPublic.lean/declarations/lift-zero.md) | 128 | `result-track:70749d304fa6652d5211a0a1f7883e32f5a607f0fc4ce6042ebf56bce364aa92` |
| 15 | `lemma` | [lift'_coe](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/WithZeroPublic.lean/declarations/lift-coe.md) | 130 | `result-track:71c63d4530b7759e01193459170acb3980b6adb39a5c48ef1971a683fda03956` |
| 16 | `lemma` | [lift'_unique](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/WithZeroPublic.lean/declarations/lift-unique.md) | 132 | `result-track:455451efc9f633b125e8746ed3329a057374c09250caf54c4c4d1ac114689cb8` |
| 17 | `lemma` | [lift'_surjective](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/WithZeroPublic.lean/declarations/lift-surjective.md) | 135 | `result-track:53d905ed227a877a9c288b46cdd1ee99a08794375db2c7c66cff7696d5aa1914` |
| 18 | `def` | [map'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/WithZeroPublic.lean/declarations/map.md) | 147 | `declaration-track:2671e14d189ffb82bb9846bf7d30ee84c00921da8b5565ffa82f94480adeace3` |
| 19 | `lemma` | [map'_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/WithZeroPublic.lean/declarations/map-zero.md) | 149 | `result-track:dfa4925772887eeff7ed8f32380b27d707ceff3184f828cb40461f65cdf96b4e` |
| 20 | `lemma` | [map'_coe](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/WithZeroPublic.lean/declarations/map-coe.md) | 151 | `result-track:1179709afed9572c7818e7748e0a17e3d01072e1c6a9222b5c44233e49dba4b0` |
| 21 | `lemma` | [map'_id](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/WithZeroPublic.lean/declarations/map-id.md) | 154 | `result-track:916cf056cd353b39fa9a759965629cd84dacffd66c9825a5238045182733031d` |
| 22 | `lemma` | [map'_map'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/WithZeroPublic.lean/declarations/map-map.md) | 157 | `result-track:e1856d0f8523b0dce0dd314385fa6034121baf4204de93cc9b2d148090ab6586` |
| 23 | `lemma` | [map'_comp](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/WithZeroPublic.lean/declarations/map-comp.md) | 161 | `result-track:ee6b7131f796b93410ae6453c22696f36550722f4a535688f12fde19c35cbe7e` |
| 24 | `lemma` | [map'_injective_iff](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/WithZeroPublic.lean/declarations/map-injective-iff.md) | 164 | `result-track:fb6c9d6c0fd2081e121d3df3f2a3f9f9d84a2159aca661f694867bff3dd8011a` |
| 25 | `lemma` | [map'_surjective_iff](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/WithZeroPublic.lean/declarations/map-surjective-iff.md) | 169 | `result-track:222662e3b0cea83e17f4431a36f9349963f480b941d458697e1f0bbdca77c6df` |
| 26 | `instance` | [pow](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/WithZeroPublic.lean/declarations/pow.md) | 187 | `declaration-track:cf93d44eafad9ae587fbad731c653de8c65025096e446c6277d6ace9b7932c78` |
| 27 | `lemma` | [coe_pow](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/WithZeroPublic.lean/declarations/coe-pow.md) | 193 | `result-track:111a65d118e98eacb3062e274a35643c42a11322e40fa25e0f424c9dfa125b26` |
| 28 | `instance` | [instMonoidWithZero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/WithZeroPublic.lean/declarations/instmonoidwithzero.md) | 197 | `declaration-track:4b4b62ae2105b7abc97edfed976168fc2ee0bc2d78d5ea654f63eec31b89125b` |
| 29 | `instance` | [instCommMonoidWithZero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/WithZeroPublic.lean/declarations/instcommmonoidwithzero.md) | 206 | `declaration-track:e34c6d98846a95bb62d9746b0233aa6db34b6676a1025b9c0de073c0981e4c37` |
| 30 | `instance` | [inv](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/WithZeroPublic.lean/declarations/inv.md) | 213 | `declaration-track:d36f89cd36feca5f840071d18176890b8b13240dd0897d666339a1e481d0f53e` |
| 31 | `lemma` | [coe_inv](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/WithZeroPublic.lean/declarations/coe-inv.md) | 215 | `result-track:84d98edded9b2d586e4c33bd1c3aa9f056d66004655f1952489840a571a375e6` |
| 32 | `lemma` | [inv_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/WithZeroPublic.lean/declarations/inv-zero.md) | 217 | `result-track:3217bff913fa99e37ce4a8bae234da8d505ac725ff31a829a238fb1fcf3ebbf7` |
| 33 | `instance` | [invOneClass](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/WithZeroPublic.lean/declarations/invoneclass.md) | 221 | `declaration-track:f9dbe3c69445c3181c0d7dccb4cce1a86f737cac75520c727361d21e05bb8e4e` |
| 34 | `instance` | [div](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/WithZeroPublic.lean/declarations/div.md) | 227 | `declaration-track:a4809e2a8493797dc6fb348de92d4f86c8075835788a43be4fb149c6ce8e3293` |
| 35 | `lemma` | [coe_div](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/WithZeroPublic.lean/declarations/coe-div.md) | 229 | `result-track:9b38e5d2ba0b046b0ce1402e56c6225a12028977c61ed5cfd71a9e0ab138dda5` |
| 36 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/WithZeroPublic.lean/declarations/instance.md) | 236 | `declaration-track:2efae1401979d2e48aa2e94b7ff6cc16d99221b26600a1132c91d128aa456cec` |
| 37 | `lemma` | [coe_zpow](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/WithZeroPublic.lean/declarations/coe-zpow.md) | 243 | `result-track:643923666daa7114d72ba027d9cfbc236834d5eabe5ff623055181f33609d78d` |
| 38 | `instance` | [instDivInvMonoid](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/WithZeroPublic.lean/declarations/instdivinvmonoid.md) | 247 | `declaration-track:1b0acab64e1f8bc6c3d70f5e1676c977a8e2a05ebac99f2666a8e694c211be44` |
| 39 | `instance` | [instDivInvOneMonoid](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/WithZeroPublic.lean/declarations/instdivinvonemonoid.md) | 263 | `declaration-track:1d93375e0077a543b42b140060745e386a4fb131d439b1b685cf373b9dc0e991` |
| 40 | `instance` | [instInvolutiveInv](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/WithZeroPublic.lean/declarations/instinvolutiveinv.md) | 266 | `declaration-track:88d6f5dee992d888db50f99489cdeed87922b98075b786948f91086322b511ae` |
| 41 | `instance` | [instDivisionMonoid](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/WithZeroPublic.lean/declarations/instdivisionmonoid.md) | 269 | `declaration-track:3114b78d9c31e33ff5801acfb6e71a46125bc8f13ee0d2facc08131f87c4ef56` |
| 42 | `instance` | [instDivisionCommMonoid](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/WithZeroPublic.lean/declarations/instdivisioncommmonoid.md) | 280 | `declaration-track:52ef38bc2fcc56ca15f86ba106416890e8e907609eceff3e4ba78a58dc31d9c3` |
| 43 | `instance` | [instGroupWithZero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/WithZeroPublic.lean/declarations/instgroupwithzero.md) | 286 | `declaration-track:218e774b6903450013245865f9f79b480ef9eda0f50a455789160096b0dc93b2` |
| 44 | `def` | [unitsWithZeroEquiv](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/WithZeroPublic.lean/declarations/unitswithzeroequiv.md) | 295 | `declaration-track:cfdc1a4bc06c07f1e6d11dbdfd557048450bb714e6c881d30f3732b1437f7b95` |
| 45 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/WithZeroPublic.lean/declarations/instance-source-edition-3.md) | 301 | `declaration-track:f74ef08cf5b939376f2126d0299ecf626e2750a99bd13c843e3db53f60237cce` |
| 46 | `theorem` | [coe_unitsWithZeroEquiv_eq_units_val](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/WithZeroPublic.lean/declarations/coe-unitswithzeroequiv-eq-units-val.md) | 304 | `result-track:98f07d1b308ed37879768768229dcbfbe1e690a3b00f6a886b458e12abfa37bd` |
| 47 | `def` | [withZeroUnitsEquiv](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/WithZeroPublic.lean/declarations/withzerounitsequiv.md) | 310 | `declaration-track:baf2be0a9582b02675df0847ebc181b5d023386173d182185053e169e06b8c0a` |
| 48 | `lemma` | [withZeroUnitsEquiv_symm_apply_coe](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/WithZeroPublic.lean/declarations/withzerounitsequiv-symm-apply-coe.md) | 319 | `result-track:671cfd57eaad4c9ff65123e94fc850511480f9c5371ea1bc283bbf0d94d95028` |
| 49 | `def` | [_root_.MulEquiv.withZero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/WithZeroPublic.lean/declarations/root-mulequiv-withzero.md) | 326 | `declaration-track:fb22d84813b912d5cf4bf486c6b772a41b0c2a45763da443a4bbb18d729401ce` |
| 50 | `abbrev` | [_root_.MulEquiv.unzero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/WithZeroPublic.lean/declarations/root-mulequiv-unzero.md) | 339 | `declaration-track:6c5a47c248a677e2b31aa0bc8e83274ff8b44cc8982f7f3e2d7153ac0ab1dc3d` |
| 51 | `instance` | [instCommGroupWithZero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/WithZeroPublic.lean/declarations/instcommgroupwithzero.md) | 345 | `declaration-track:1359fdc77b5312823fd9fcf1c8aee582707f64631140a24ba6b35ff566e43a42` |
| 52 | `instance` | [instAddMonoidWithOne](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/WithZeroPublic.lean/declarations/instaddmonoidwithone.md) | 347 | `declaration-track:0c3555c0609fc379c4a01ac59aedae27a2bd23e3343d2d10cf0e7e0c0954c9b2` |
| 53 | `def` | [exp](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/WithZeroPublic.lean/declarations/exp.md) | 364 | `declaration-track:55fa700b83076e36b5c9f6d418f81e8363a26c96f8c32f1819ef2db64d772541` |
| 54 | `lemma` | [exp_ne_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/WithZeroPublic.lean/declarations/exp-ne-zero.md) | 366 | `result-track:d5a4b12a46913b9a1e0759921ba1e57df417b03fff6009985b224d1f61d66d3f` |
| 55 | `lemma` | [exp_eq_coe_ofAdd](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/WithZeroPublic.lean/declarations/exp-eq-coe-ofadd.md) | 368 | `result-track:e7ec76302ecec146f8abe098f918fd4d9b0a862eb9c2e8158dc4a34b25ddf79a` |
| 56 | `lemma` | [exp_injective](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/WithZeroPublic.lean/declarations/exp-injective.md) | 370 | `result-track:4fc818c9024d3449437e8442b130137fa8a952b78c1ebd1418b66546fb42a3f6` |
| 57 | `lemma` | [exp_inj](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/WithZeroPublic.lean/declarations/exp-inj.md) | 373 | `result-track:110ac3f05b9e04da2dcf6f892fc44c87eeb7cd09dea9a8ce23d31ba343f279c6` |
| 58 | `def` | [expRecOn](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/WithZeroPublic.lean/declarations/exprecon.md) | 380 | `declaration-track:e3a15697dd15e46eea507514111cc5d616c4f3a57594a432bf8f7a9e3dd2a4ce` |
| 59 | `lemma` | [expRecOn_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/WithZeroPublic.lean/declarations/exprecon-zero.md) | 383 | `result-track:9086a4ed743ecede36ab2a6d96cf00727efa6cd2f3940edf9a05b6a08b9b3617` |
| 60 | `lemma` | [expRecOn_exp](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/WithZeroPublic.lean/declarations/exprecon-exp.md) | 386 | `result-track:9ef88388af9b2f5d84feadc7e269de127e5f9c4e0e977c4247e97ec2debb6d57` |
| 61 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/WithZeroPublic.lean/declarations/instance-source-edition-2.md) | 390 | `declaration-track:c9fe939d0aabc603fa02aa4c8338c9423d1bc749202fdae0a3d62d76f91672ff` |
| 62 | `def` | [log](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/WithZeroPublic.lean/declarations/log.md) | 395 | `declaration-track:d7631f6d6ea3a1368177f93293279b045b4519e52fd5e4eee8b0f3417425c244` |
| 63 | `lemma` | [log_exp](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/WithZeroPublic.lean/declarations/log-exp.md) | 397 | `result-track:952628c2f8d1f0d1ce4dee471a548836b4c246bac48af846fbbf10aacd400f38` |
| 64 | `lemma` | [exp_log](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/WithZeroPublic.lean/declarations/exp-log.md) | 398 | `result-track:55a1cfe4912c3f47be522e226adff0dc7a4c23017efe70255d6444e1f500f712` |
| 65 | `lemma` | [log_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/WithZeroPublic.lean/declarations/log-zero.md) | 401 | `result-track:730ffc7ac3e8962652e01ab229e39ea86282ed5939137761e0baca00fc101bbb` |
| 66 | `lemma` | [exp_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/WithZeroPublic.lean/declarations/exp-zero.md) | 403 | `result-track:905195f6d40a0e97c7a887630ec8c9455e5e928fb0bf876096410eef18916c28` |
| 67 | `lemma` | [exp_eq_one](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/WithZeroPublic.lean/declarations/exp-eq-one.md) | 404 | `result-track:dae9ffeda8dda516e8a3e12b02a2a038dbac2798dde108efb48cd7aeb6c29125` |
| 68 | `lemma` | [log_one](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/WithZeroPublic.lean/declarations/log-one.md) | 407 | `result-track:a2a8b176c4f970455506c6cc3bf8f3967345c7a01c18c221e171a582d1ffaf1e` |
| 69 | `lemma` | [exp_add](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/WithZeroPublic.lean/declarations/exp-add.md) | 409 | `result-track:e50f24ec59dee8357e08f854f1c0a6c3741989ca30daa566ad9f2240b6b394bb` |
| 70 | `lemma` | [log_mul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/WithZeroPublic.lean/declarations/log-mul.md) | 412 | `result-track:a0d619e384dd4c7b65486564f3dd18824ade93ceb47ec739f76735367cd72def` |
| 71 | `lemma` | [exp_nsmul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/WithZeroPublic.lean/declarations/exp-nsmul.md) | 415 | `result-track:48d7898ebd2ef8e1edd83f0b290e119e74eb429a95da7d777e792d8eb3282180` |
| 72 | `lemma` | [log_pow](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/WithZeroPublic.lean/declarations/log-pow.md) | 418 | `result-track:1614dbd7abc5a6a3100020b82fc90664edc5bb99feccb902ab234a0dd4da7e70` |
| 73 | `lemma` | [toAdd_unzero_eq_log](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/WithZeroPublic.lean/declarations/toadd-unzero-eq-log.md) | 423 | `result-track:373ef1c06143da6a5699194ab0fa359f56e03e0e777aa9582bb68b6faa5df04b` |
| 74 | `def` | [expEquiv](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/WithZeroPublic.lean/declarations/expequiv.md) | 433 | `declaration-track:2338d3bc8b446006d7c937d010ed09d31d05d04588293f0cb2be9dfcce0fbf77` |
| 75 | `def` | [logEquiv](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/WithZeroPublic.lean/declarations/logequiv.md) | 436 | `declaration-track:3bd7cf81e045cf9be787fff1bc4bfb7754f04fc1f790a10e737cef73b9231332` |
| 76 | `lemma` | [logEquiv_symm](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/WithZeroPublic.lean/declarations/logequiv-symm.md) | 438 | `result-track:589833bf3597bc75cbf3acf134c1dd32cd15baeea7edd931ebfbce936cba7cc6` |
| 77 | `lemma` | [expEquiv_symm](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/WithZeroPublic.lean/declarations/expequiv-symm.md) | 439 | `result-track:4a7c274a74a0982c1700eb2bf087cbe76c05718efbfa9cb64a425b1298ec5cf6` |
| 78 | `lemma` | [coe_expEquiv_apply](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/WithZeroPublic.lean/declarations/coe-expequiv-apply.md) | 441 | `result-track:4dd62b40a149efb481cb1a734f549df2a6863c32fee863b7edcbf1109e11f96d` |
| 79 | `lemma` | [logEquiv_apply](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/WithZeroPublic.lean/declarations/logequiv-apply.md) | 443 | `result-track:5d7eb30b1123b7a5e5e53a1b3c87c35183cfbd74333a1d04e594aca142b754e9` |
| 80 | `lemma` | [logEquiv_unitsMk0](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/WithZeroPublic.lean/declarations/logequiv-unitsmk0.md) | 445 | `result-track:4114cdec9ad5895de09c73e1c254f71be19ea2058c41f6fb6098705fa8999372` |
| 81 | `lemma` | [exp_sub](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/WithZeroPublic.lean/declarations/exp-sub.md) | 447 | `result-track:1d561b74c92c2464fb363b25cf98d4a8b73882b2b9361c5ab5f2302b07c32b56` |
| 82 | `lemma` | [log_div](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/WithZeroPublic.lean/declarations/log-div.md) | 450 | `result-track:e2f9ca6ecb297e14e362288ff99b1323ce7bbcfeccdb80b12e8345cb8ea19341` |
| 83 | `lemma` | [exp_neg](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/WithZeroPublic.lean/declarations/exp-neg.md) | 456 | `result-track:09e12e7942790ffe155a01decb55fa63884460705aafac88142eac23ffde578e` |
| 84 | `lemma` | [inv_exp](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/WithZeroPublic.lean/declarations/inv-exp.md) | 458 | `result-track:427e7482faee842cd9456afa9c866282fc0dfb2559b5220f15d16b4f93a25627` |
| 85 | `lemma` | [log_inv](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/WithZeroPublic.lean/declarations/log-inv.md) | 461 | `result-track:9a3dcb48a0096aacc4f384fbdeef36979de25a1f5c90ef2e8e4c920ba951d444` |
| 86 | `lemma` | [exp_zsmul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/WithZeroPublic.lean/declarations/exp-zsmul.md) | 465 | `result-track:a14eeeef23eb31a0eaeadd106bef4b0857df6e322c4c91581b15c89d8fc113a7` |
| 87 | `lemma` | [log_zpow](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/WithZeroPublic.lean/declarations/log-zpow.md) | 468 | `result-track:c39d86265bf9a1654da90233bcf1b85576c1c35570ade7ff513a1f5f330dc7dc` |
| 88 | `lemma` | [map_eq_zero_iff](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/WithZeroPublic.lean/declarations/map-eq-zero-iff.md) | 475 | `result-track:e7ecb24f593935b6c92481a25fd8c772742429f091c62fa26cba46048cfeb086` |
| 89 | `lemma` | [one_apply_val_unit](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/WithZeroPublic.lean/declarations/one-apply-val-unit.md) | 485 | `result-track:7775274f23199925f3afcfb14f10a329893ab35694d33020e51dcec21979b6eb` |
| 90 | `lemma` | [apply_one_apply_eq](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/WithZeroPublic.lean/declarations/apply-one-apply-eq.md) | 492 | `result-track:8dc4052c955ac3a2fcc0963496f947b176e0e70dd22a65bf8bca948f26913dbc` |
| 91 | `lemma` | [comp_one](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/WithZeroPublic.lean/declarations/comp-one.md) | 502 | `result-track:c994a465d674c127c995839988b2f2d842af625565be3fa836f1e883de2133e7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=89004b668880fe1104acb02d4e2dceea0b186800341fdf27df9384ef3cf0aa8b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/WithZero/Variantdb2cfae21d1f8c23a8a27fc2fe1e910e315a2b5d3207b3604242bff3862b4b50.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/WithZero/Variantdb2cfae21d1f8c23a8a27fc2fe1e910e315a2b5d3207b3604242bff3862b4b50.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
