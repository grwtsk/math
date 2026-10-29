# Verification target: Self Adjoint Namespaced Star Hom Apply

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d84a69cd77730b2080cb8edd7350235987119a09",
  "lexical_observation_count": 84,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/SelfAdjoint/Variante969aefb3a58011fa55949ea10ad68ca409deeb0b960eeb73873ca1223512e8a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedStarHomApply.lean/index.md) · [Full source](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedStarHomApply.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d84a69cd77730b2080cb8edd7350235987119a09`.

Source path: `GRWTSK/Algebra/GroupTheory/SelfAdjoint/Variante969aefb3a58011fa55949ea10ad68ca409deeb0b960eeb73873ca1223512e8a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/SelfAdjoint/Variante969aefb3a58011fa55949ea10ad68ca409deeb0b960eeb73873ca1223512e8a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Star.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Subgroup.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Init.Data.Subtype.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsSelfAdjoint](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedStarHomApply.lean/declarations/isselfadjoint.md) | 55 | `declaration-track:30739442855760af9e0cc4a00ae55b335194c38d2215ccef16c99d8636e4f03e` |
| 2 | `class` | [IsStarNormal](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedStarHomApply.lean/declarations/isstarnormal-source-edition-3.md) | 60 | `declaration-track:abc97718ec00956bffda8c82d0e2f150b33eec19072a3760f6d90759ef90647a` |
| 3 | `theorem` | [star_comm_self'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedStarHomApply.lean/declarations/star-comm-self.md) | 67 | `result-track:1eff31387cc0481525b8bce800ccecdb4f0d6cbcc704da7d388b2ce21e86202f` |
| 4 | `theorem` | [all](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedStarHomApply.lean/declarations/all.md) | 75 | `result-track:02e1715d9ba479f8bb5f30ce322bfbf1df43f2e2531138225ee82acb1be31885` |
| 5 | `theorem` | [star_eq](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedStarHomApply.lean/declarations/star-eq.md) | 79 | `result-track:46c39bc85f7eeddbacfd08ab0e0498c2bd91d80096ffb884dd8561e361bd4c7c` |
| 6 | `theorem` | [Self Adjoint Namespaced Star Hom Apply](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedStarHomApply.lean/declarations/isselfadjoint-iff.md) | 83 | `result-track:301e3ff36a584a5c71e2f08c2294a40eed428759601bfde8de7dc35e17c1836c` |
| 7 | `theorem` | [star_iff](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedStarHomApply.lean/declarations/star-iff.md) | 88 | `result-track:e75d420015c8b1d2873e21ac35fb5d924b5dbf1b3b430745fbc6e30c4559da16` |
| 8 | `theorem` | [star_mul_self](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedStarHomApply.lean/declarations/star-mul-self.md) | 93 | `result-track:5bb882fbfabd202fb7e7c18e943d0d8696c3280894038bfe0645cbbafb7d381a` |
| 9 | `theorem` | [mul_star_self](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedStarHomApply.lean/declarations/mul-star-self.md) | 98 | `result-track:7cdf78c871fe79498bbfd87a3fcdecf02f69a78f8ceb48e0e39bada40817b56f` |
| 10 | `theorem` | [starHom_apply](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedStarHomApply.lean/declarations/starhom-apply.md) | 103 | `result-track:6d0a4b2de9f30bb5c24629a39b54d33a0c4b6f5543466d1896ef4a3ae6ac769d` |
| 11 | `theorem` | [Self Adjoint Namespaced Star Hom Apply](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedStarHomApply.lean/declarations/isselfadjoint-starhom-apply.md) | 110 | `result-track:15f7698cf4f7ab4ef40b4191a4e224caf751ee2205e06d7e1737906b4923cbfb` |
| 12 | `theorem` | [Self Adjoint Namespaced Star Hom Apply](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedStarHomApply.lean/declarations/isselfadjoint-zero.md) | 120 | `result-track:7152cad79e275dc60801193eb61fdc04599b95d27b815b9ad0e4533058f4ea4d` |
| 13 | `theorem` | [add](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedStarHomApply.lean/declarations/add.md) | 126 | `result-track:c890cca0120a0bb3ebd27e837e7a7b3720494ba26a6612394163560b9ba16629` |
| 14 | `theorem` | [bit0](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedStarHomApply.lean/declarations/bit0.md) | 132 | `result-track:f78306a517e2c1e4417cf79d3bcb6ff46eed6ff8965ec0335bf5cba8df5eb6ce` |
| 15 | `theorem` | [neg](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedStarHomApply.lean/declarations/neg.md) | 142 | `result-track:83c657d2cdbe0eb7926d6445c5c05e383c4fca29bcda3691dc0a8ce9856df93d` |
| 16 | `theorem` | [sub](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedStarHomApply.lean/declarations/sub.md) | 146 | `result-track:e57cc569a68817cbe1d6f01f695813a895366a0593390c5491750e53ead380eb` |
| 17 | `theorem` | [Self Adjoint Namespaced Star Hom Apply](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedStarHomApply.lean/declarations/isselfadjoint-add-star-self.md) | 156 | `result-track:21b28ef822300d28309c62d75cf6faf39473e2b5307c98069694eaa78303a628` |
| 18 | `theorem` | [Self Adjoint Namespaced Star Hom Apply](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedStarHomApply.lean/declarations/isselfadjoint-star-add-self.md) | 160 | `result-track:cd487b4e9d7c2740119b2764a1543d4e2d69a0f0a70830f0d0c9dd0a3a303632` |
| 19 | `theorem` | [conjugate](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedStarHomApply.lean/declarations/conjugate.md) | 170 | `result-track:0294a2f4c93e955f59473781caf5cb4c9937536927b30685727f491482d658c0` |
| 20 | `theorem` | [conjugate'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedStarHomApply.lean/declarations/conjugate-source-edition-4.md) | 174 | `result-track:867c3311b6cf4efb78ab4c443c95a05398897244bac86c49bb5c85e43f12a9fb` |
| 21 | `theorem` | [isStarNormal](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedStarHomApply.lean/declarations/isstarnormal-source-edition-2.md) | 178 | `result-track:17ee961166b3626ce8600c6b1b1ca2684d88edcfb71ba106f0e135b5a08ead92` |
| 22 | `theorem` | [Self Adjoint Namespaced Star Hom Apply](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedStarHomApply.lean/declarations/isselfadjoint-one.md) | 190 | `result-track:49bd8f472623924e70c6bc1170f2cd9f7245db5d630422022a5b4d3f7269e37c` |
| 23 | `theorem` | [pow](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedStarHomApply.lean/declarations/pow.md) | 200 | `result-track:44ae51957f214fd22e77d21acd2773edfde1355498a5fe134b47c25de638ebc9` |
| 24 | `theorem` | [bit1](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedStarHomApply.lean/declarations/bit1.md) | 212 | `result-track:a4597438194efd6097bd1b66339b59585d73a170b556b43ec4b3e184093247f5` |
| 25 | `theorem` | [Self Adjoint Namespaced Star Hom Apply](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedStarHomApply.lean/declarations/isselfadjoint-natcast.md) | 217 | `result-track:7ddfc98d47d17d5af7e0e8ca6a1a7b0cf404e9683b5093cd2a58691510919553` |
| 26 | `theorem` | [mul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedStarHomApply.lean/declarations/mul.md) | 227 | `result-track:9a70800d3a9fb3ab8236d8c28ec227686217b8b80c59b377e9801775d88e34a1` |
| 27 | `theorem` | [Self Adjoint Namespaced Star Hom Apply](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedStarHomApply.lean/declarations/isselfadjoint-intcast.md) | 238 | `result-track:8a8c9f9144ce09e6a8e3b4292e4206c34842bed8ecaf0f88f7258dd1efabdd22` |
| 28 | `theorem` | [inv](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedStarHomApply.lean/declarations/inv.md) | 248 | `result-track:70431970399aab9ad1a005a8c924fba8b9ca5bc685d6e4541faf5967d03377f8` |
| 29 | `theorem` | [zpow](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedStarHomApply.lean/declarations/zpow.md) | 252 | `result-track:0429221d49ba1329b39cbd77b465c45cdbb640d27569d80a98e27fb38201d99f` |
| 30 | `theorem` | [Self Adjoint Namespaced Star Hom Apply](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedStarHomApply.lean/declarations/isselfadjoint-ratcast.md) | 262 | `result-track:8dcd3375e60608755adf2499e56357b69350d4a29076177efb081e311dbf13e5` |
| 31 | `theorem` | [div](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedStarHomApply.lean/declarations/div.md) | 272 | `result-track:bc3b74aa7712c4f992254e071a3b3471155d015de8056952dd3543d953f3f332` |
| 32 | `theorem` | [smul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedStarHomApply.lean/declarations/smul.md) | 282 | `result-track:fd23d9ef8e1749f4de3eb1e3cac029f392d71d36ae4c2d8c00b459687cf14ff1` |
| 33 | `def` | [selfAdjoint](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedStarHomApply.lean/declarations/selfadjoint.md) | 293 | `declaration-track:8bc32cfe6de3287f1043ba758241812bccfe26d93ef52869d2bfa43c8384b8f1` |
| 34 | `def` | [skewAdjoint](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedStarHomApply.lean/declarations/skewadjoint.md) | 301 | `declaration-track:c6cefd3496dd0d38ad351154065548bfc40e56d5b03fe31872bc5023f1cb4c74` |
| 35 | `theorem` | [mem_iff](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedStarHomApply.lean/declarations/mem-iff-source-edition-2.md) | 317 | `result-track:92f2d9b26a9402d331caf1d7303f40d9e27a5044e3571a6a37a1870454b0e211` |
| 36 | `theorem` | [star_val_eq](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedStarHomApply.lean/declarations/star-val-eq-source-edition-2.md) | 323 | `result-track:f4cc276c158c909eab0df3526b2b15078e51efb294342020971a91c1a94170f9` |
| 37 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedStarHomApply.lean/declarations/instance-source-edition-19.md) | 327 | `declaration-track:db5d9219bc2a57bd930b605a8ba520f822a2e06a41639ee34de11c8fb36cea42` |
| 38 | `instance` | [isStarNormal](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedStarHomApply.lean/declarations/isstarnormal.md) | 332 | `declaration-track:146f1060a306846c89e16f5f6ebc46326899e1e86a11a2a79111fbb5f677d81b` |
| 39 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedStarHomApply.lean/declarations/instance-source-edition-21.md) | 340 | `declaration-track:ef8eadbac2fa5dc8b60ca078e8ac349331f864411f0871ebcd24a1a91171471f` |
| 40 | `theorem` | [val_one](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedStarHomApply.lean/declarations/val-one.md) | 344 | `result-track:d96dcbfefe37ab73d38aa00104fd912e9e955a339d38d061876e63cd8f289a2f` |
| 41 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedStarHomApply.lean/declarations/instance-source-edition-7.md) | 348 | `declaration-track:48ad4defc87f24d34928d8c73fe54a4f10e72d20fe3d6130617eba12323545cd` |
| 42 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedStarHomApply.lean/declarations/instance-source-edition-23.md) | 351 | `declaration-track:fc4f6c3d53ca5cdd2473d85d36adeb3fcf8ecad5651fca197d3a675b0d541861` |
| 43 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedStarHomApply.lean/declarations/instance-source-edition-15.md) | 354 | `declaration-track:cc2cd48fe2363aa776d2f36532851c9db26684fa3462a9b844246865de01bc9a` |
| 44 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedStarHomApply.lean/declarations/instance-source-edition-24.md) | 357 | `declaration-track:fc8294b20598f8eee545ed925cde880611b4bcd4849e4259e3d0b832b16f25f8` |
| 45 | `theorem` | [val_pow](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedStarHomApply.lean/declarations/val-pow.md) | 361 | `result-track:426eb250ebc26694e184dedfd2de8a231b046a7820bbfb58a583c79011572e2e` |
| 46 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedStarHomApply.lean/declarations/instance-source-edition-4.md) | 371 | `declaration-track:3e1c71ce0e6c2905a9b2f393fff32fcbb7eaa6fd7e65e584e35b603fc245b02a` |
| 47 | `theorem` | [val_mul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedStarHomApply.lean/declarations/val-mul.md) | 375 | `result-track:609bda72536ab5270e84b24258329a82fdbab6c197a843bb2f54192a94aff9d5` |
| 48 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedStarHomApply.lean/declarations/instance-source-edition-6.md) | 385 | `declaration-track:47d3850a3928791097e039353f09ed4342ef0ffeafd6d2a2cfef9835f3e37dee` |
| 49 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedStarHomApply.lean/declarations/instance-source-edition-8.md) | 397 | `declaration-track:5fbf98430f1bbe8b1bd5e4330c30bab85918c246ef58b381aab65eb9ea5c6c43` |
| 50 | `theorem` | [val_inv](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedStarHomApply.lean/declarations/val-inv.md) | 401 | `result-track:68ba1231e556829a20e11fc6937feec1f1c4026df46061342eac426d40ad40da` |
| 51 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedStarHomApply.lean/declarations/instance-source-edition-13.md) | 405 | `declaration-track:aa4ca41f1c7e0e25f6c9b56fef5d83a9430e022013c0fcbfecf08a01899b39c0` |
| 52 | `theorem` | [val_div](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedStarHomApply.lean/declarations/val-div.md) | 409 | `result-track:2b7b5a4068cde7672506bb7cd3b0d99f54e23e7755c9f373fc6b30f958654bd5` |
| 53 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedStarHomApply.lean/declarations/instance-source-edition-9.md) | 413 | `declaration-track:70c35e931adc19e71e12ab979af4e3286a9ff942230679b19eef35f321456ee4` |
| 54 | `theorem` | [val_zpow](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedStarHomApply.lean/declarations/val-zpow.md) | 417 | `result-track:fde15f36f7eebac182767c7e53acc5f67f9bcc20099273da9f09c4444cac89ae` |
| 55 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedStarHomApply.lean/declarations/instance-source-edition-16.md) | 421 | `declaration-track:cd7f1b47506bad7ac43ec57ce3d4fec4aa81095ec6bcb4616bfd983f812893f8` |
| 56 | `theorem` | [val_ratCast](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedStarHomApply.lean/declarations/val-ratcast.md) | 425 | `result-track:41293800e310ef0e09248cc99ce3d2c1a11befd18f715bbc795cdd00ba4a618c` |
| 57 | `instance` | [instQSMul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedStarHomApply.lean/declarations/instqsmul.md) | 429 | `declaration-track:213ac5142b112a5366e811e034faf1db2ab91fac7b06b3a463c8b182d0001cd6` |
| 58 | `theorem` | [val_rat_smul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedStarHomApply.lean/declarations/val-rat-smul.md) | 435 | `result-track:805719353e115190f8cad7d744d516e3de89db8e0e0cf37ce4de7c7c12bf1f86` |
| 59 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedStarHomApply.lean/declarations/instance-source-edition-5.md) | 439 | `declaration-track:470e623410ff59fa3c1ee91df93f037d5a3b85aa7cd9cf94386e7506278b78a2` |
| 60 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedStarHomApply.lean/declarations/instance-source-edition-3.md) | 451 | `declaration-track:3a26c71b215ce270b95bdf78ad3bc5258f09389f7be3cb5a57c0c8f7f8f518eb` |
| 61 | `theorem` | [val_smul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedStarHomApply.lean/declarations/val-smul.md) | 455 | `result-track:16218f04c7bfce7389378e04f5baae9960afd2d59f7c456f6a349a601ce0cb4e` |
| 62 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedStarHomApply.lean/declarations/instance-source-edition-14.md) | 459 | `declaration-track:ad98b71f0b30650cc170e2b894aa82761de1b0cd97812a13b0a0a29400ce504d` |
| 63 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedStarHomApply.lean/declarations/instance-source-edition-20.md) | 462 | `declaration-track:ec1afd1d46ea09ca3b1419c5d87583914c7197783e351e4569d863bb50a0d748` |
| 64 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedStarHomApply.lean/declarations/instance-source-edition-12.md) | 471 | `declaration-track:a0ba5316e9c0102c0a0a4ace19c8d0e2a94c06018abc278619b53e869ab9c0b9` |
| 65 | `theorem` | [mem_iff](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedStarHomApply.lean/declarations/mem-iff.md) | 484 | `result-track:49facfd295ce28813d9b82ffc6f05c54a9f409cd0f64e6c07edb5dc3c60facca` |
| 66 | `theorem` | [star_val_eq](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedStarHomApply.lean/declarations/star-val-eq.md) | 490 | `result-track:511dec56d7f42942857122d4c966901105248e14e1e241e9a4f6664420122a02` |
| 67 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedStarHomApply.lean/declarations/instance-source-edition-17.md) | 494 | `declaration-track:d3091d8f437aac2e80ec1bddf079ec28c7b51dd997dac953f08ba83342f42892` |
| 68 | `theorem` | [bit0_mem](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedStarHomApply.lean/declarations/bit0-mem.md) | 499 | `result-track:455b461f0addbd8a9060b91b3ce04019a0048be311d856d1628d6baf883d9f06` |
| 69 | `theorem` | [conjugate](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedStarHomApply.lean/declarations/conjugate-source-edition-2.md) | 509 | `result-track:3cbd4fd1a08c2e1bc43a2f5a54a52b768116fcf578f022ac66bc386d242c2ca1` |
| 70 | `theorem` | [conjugate'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedStarHomApply.lean/declarations/conjugate-source-edition-3.md) | 513 | `result-track:68c9b0e6a4210c3fdde75235c2100045bf942b855f4279d2afa396d0652d14ab` |
| 71 | `theorem` | [isStarNormal_of_mem](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedStarHomApply.lean/declarations/isstarnormal-of-mem.md) | 517 | `result-track:51c740b4b9d58c1091fa5f03983e764cf66e81136311413ea0b466bfadd8001a` |
| 72 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedStarHomApply.lean/declarations/instance-source-edition-22.md) | 523 | `declaration-track:fa65fc50b73b082d115ddcf9874908f3e683e44c36d822c85ecccfa12b254601` |
| 73 | `theorem` | [smul_mem](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedStarHomApply.lean/declarations/smul-mem.md) | 532 | `result-track:fa9b25311f9dde022846a2bece31433d4441bdd99dc706b15c6d3f640178e66c` |
| 74 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedStarHomApply.lean/declarations/instance.md) | 537 | `declaration-track:031584fbe68cbe83d9f0dc4cdcc26a9a6e6bf4aff2a6c3c1032155b79a941c5d` |
| 75 | `theorem` | [val_smul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedStarHomApply.lean/declarations/val-smul-source-edition-2.md) | 541 | `result-track:ad3cc0adfe338dd4811ad03cf6ca3b358bf3c781ac335211e868706c59cb0e77` |
| 76 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedStarHomApply.lean/declarations/instance-source-edition-18.md) | 546 | `declaration-track:daf87a600503b1cfc942f16e9ac3d61db85f03a60359bf0e69d594b9856e57c7` |
| 77 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedStarHomApply.lean/declarations/instance-source-edition-2.md) | 549 | `declaration-track:107a9fb9b7b6295977813c86e8834d713dcdc3092a9e5638697a4614e5340d1f` |
| 78 | `theorem` | [IsSelfAdjoint.smul_mem_skewAdjoint](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedStarHomApply.lean/declarations/isselfadjoint-smul-mem-skewadjoint.md) | 558 | `result-track:22498cfb2a465eb1da0354e290a7f69f6aa9b6c94b119358cc40b06b6de7f0b0` |
| 79 | `theorem` | [isSelfAdjoint_smul_of_mem_skewAdjoint](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedStarHomApply.lean/declarations/isselfadjoint-smul-of-mem-skewadjoint.md) | 566 | `result-track:53c6d947dc61af0e675000ef3bb83b11396eab60b420cc388b0cd7a2df450d51` |
| 80 | `instance` | [isStarNormal_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedStarHomApply.lean/declarations/isstarnormal-zero.md) | 572 | `declaration-track:b27de161768429ffa151120a658128541537602adc61c6e38ecb50b8b9ef9612` |
| 81 | `instance` | [isStarNormal_one](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedStarHomApply.lean/declarations/isstarnormal-one.md) | 576 | `declaration-track:00de05ec79cb71e1ab3787af68942225730a7833f627e67c2e200823785f2be3` |
| 82 | `instance` | [isStarNormal_star_self](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedStarHomApply.lean/declarations/isstarnormal-star-self.md) | 580 | `declaration-track:3ac8909d6a7919d91bc97d4969a907bffa85c3d386a9214c47d9335d2e16cf33` |
| 83 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedStarHomApply.lean/declarations/instance-source-edition-10.md) | 586 | `declaration-track:7aa3e1d4e86098ac7b948b3562e0b7f0ae535885280c7268fe0f13fa6af4a60b` |
| 84 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedStarHomApply.lean/declarations/instance-source-edition-11.md) | 592 | `declaration-track:8ee1f2fc02dfa32de63a7267e5f062586352e30f22ce44d36a07b67bc0f33e9f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=cd13d1950f6c54b703ed88d2690f260b23d5b62a1759e21dbd443c2d3ac85a97 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/SelfAdjoint/Variante969aefb3a58011fa55949ea10ad68ca409deeb0b960eeb73873ca1223512e8a.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/SelfAdjoint/Variante969aefb3a58011fa55949ea10ad68ca409deeb0b960eeb73873ca1223512e8a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
