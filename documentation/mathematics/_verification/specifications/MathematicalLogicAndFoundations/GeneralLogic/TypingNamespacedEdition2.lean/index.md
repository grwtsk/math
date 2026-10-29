# Verification target: Typing Namespaced Edition2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b1aac2e2cc1347f188c35dfd6eea1f338d9a6cde",
  "lexical_observation_count": 91,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/TypeTheory/Typing/Variantf2da9cfb6db11c77608a9471ad0574fed41b8d8fda8d32b2f3df7f0eec05189b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/GeneralLogic/TypingNamespacedEdition2.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/GeneralLogic/TypingNamespacedEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b1aac2e2cc1347f188c35dfd6eea1f338d9a6cde`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/TypeTheory/Typing/Variantf2da9cfb6db11c77608a9471ad0574fed41b8d8fda8d32b2f3df7f0eec05189b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/TypeTheory/Typing/Variantf2da9cfb6db11c77608a9471ad0574fed41b8d8fda8d32b2f3df7f0eec05189b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.TypeTheory.PureTypeSystem.Reduction` — import line 20; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [Lookup](../../../../../MathematicalLogicAndFoundations/GeneralLogic/TypingNamespacedEdition2.lean/declarations/lookup-source-edition-2.md) | 32 | `declaration-track:e90c95fb0c0692bed6cc0094081fda3cff8e03165389316c8ac50a2c0659d920` |
| 2 | `theorem` | [sort_of_valid](../../../../../MathematicalLogicAndFoundations/GeneralLogic/TypingNamespacedEdition2.lean/declarations/sort-of-valid.md) | 40 | `result-track:890b04ea1e264bce10cc5b2d2d1338876fa6629ef738119c772ab19f85d91892` |
| 3 | `theorem` | [product_domain](../../../../../MathematicalLogicAndFoundations/GeneralLogic/TypingNamespacedEdition2.lean/declarations/product-domain.md) | 48 | `result-track:ae1724af69ac44294bd5f8953d16f7f45b6a4f4e64cbfc132762530802593c3c` |
| 4 | `theorem` | [subst](../../../../../MathematicalLogicAndFoundations/GeneralLogic/TypingNamespacedEdition2.lean/declarations/subst-source-edition-3.md) | 78 | `result-track:be4383186d554286fb57a7b3d2391247fe3e762b1a740e8066cd5984f99b19ed` |
| 5 | `theorem` | [rename](../../../../../MathematicalLogicAndFoundations/GeneralLogic/TypingNamespacedEdition2.lean/declarations/rename.md) | 86 | `result-track:46f03b51932d7c1530c2f657e69f0c94a132bacf0123cc5bad2088ff9d984eff` |
| 6 | `def` | [TypedSubstitution](../../../../../MathematicalLogicAndFoundations/GeneralLogic/TypingNamespacedEdition2.lean/declarations/typedsubstitution.md) | 98 | `declaration-track:2df7badfdb3efc24e8e02a6067a204cb426aee3a9a2e6dd5b8532850c454c7ff` |
| 7 | `theorem` | [tail](../../../../../MathematicalLogicAndFoundations/GeneralLogic/TypingNamespacedEdition2.lean/declarations/tail.md) | 107 | `result-track:62502fd84e813ca724f453a33358219e8f121f744d6d6c2a0b76fb62d0ae8894` |
| 8 | `theorem` | [lift](../../../../../MathematicalLogicAndFoundations/GeneralLogic/TypingNamespacedEdition2.lean/declarations/lift.md) | 113 | `result-track:1059e822a1ddab596d9368130e3918df88b0752918e5e68907ffb3fa0bb7cee8` |
| 9 | `theorem` | [subst](../../../../../MathematicalLogicAndFoundations/GeneralLogic/TypingNamespacedEdition2.lean/declarations/subst.md) | 133 | `result-track:6ba754008fa893657ac7ca96bcbdc54ed8e4946ebf0258beeb4a3deb164f6580` |
| 10 | `theorem` | [subst_var_rename](../../../../../MathematicalLogicAndFoundations/GeneralLogic/TypingNamespacedEdition2.lean/declarations/subst-var-rename.md) | 160 | `result-track:31b9abf1afd7e37a35742a629f8399e6ddf3f26eb2eeccac1e0c4d9c1200a6dd` |
| 11 | `theorem` | [subst_lift_single](../../../../../MathematicalLogicAndFoundations/GeneralLogic/TypingNamespacedEdition2.lean/declarations/subst-lift-single.md) | 164 | `result-track:64eca8211a97f6dad70f12870636294afcdf8098182b3f0e59a8f288a4f12160` |
| 12 | `theorem` | [lookup](../../../../../MathematicalLogicAndFoundations/GeneralLogic/TypingNamespacedEdition2.lean/declarations/lookup.md) | 175 | `result-track:ada5ae6bafb9a9ffa4333535334b33a6d2524206194737817b1278814f21f5f1` |
| 13 | `theorem` | [identity](../../../../../MathematicalLogicAndFoundations/GeneralLogic/TypingNamespacedEdition2.lean/declarations/identity.md) | 190 | `result-track:7e6a2aaa975723c9c7706b2d467ae744b203a10fd90db82ff72045ebd1dc6781` |
| 14 | `theorem` | [weaken](../../../../../MathematicalLogicAndFoundations/GeneralLogic/TypingNamespacedEdition2.lean/declarations/weaken.md) | 195 | `result-track:82bd9755f868b3819d0a71e1b12de80a1f6d4a5c14c303008b15ab3c32d59703` |
| 15 | `theorem` | [single](../../../../../MathematicalLogicAndFoundations/GeneralLogic/TypingNamespacedEdition2.lean/declarations/single.md) | 202 | `result-track:edffc970ddb396b932e3a872ca4c557d7e0921a626f7723e6193bd7d25b6685b` |
| 16 | `theorem` | [rename](../../../../../MathematicalLogicAndFoundations/GeneralLogic/TypingNamespacedEdition2.lean/declarations/rename-source-edition-2.md) | 218 | `result-track:63214c654e2d23a16fc88d92ed50f6913f27092cf45e938e8bb478a5cb5725d7` |
| 17 | `theorem` | [instantiate](../../../../../MathematicalLogicAndFoundations/GeneralLogic/TypingNamespacedEdition2.lean/declarations/instantiate.md) | 227 | `result-track:96f3a2d43054f51e804a7975d0c8b66aa038d149b4aaf2fd1aaf45dac16c9e68` |
| 18 | `theorem` | [weaken_under](../../../../../MathematicalLogicAndFoundations/GeneralLogic/TypingNamespacedEdition2.lean/declarations/weaken-under.md) | 232 | `result-track:b49e5f55ab5fdb88453bc5a38a351f2695d0a88ccc88a6f44207d119cbcf3cfb` |
| 19 | `theorem` | [context_head_conversion](../../../../../MathematicalLogicAndFoundations/GeneralLogic/TypingNamespacedEdition2.lean/declarations/context-head-conversion.md) | 247 | `result-track:02ef0c5fd5f8da344ec6870104431b7285548d2b218b2ad0411217eb37d4e833` |
| 20 | `def` | [Generation](../../../../../MathematicalLogicAndFoundations/GeneralLogic/TypingNamespacedEdition2.lean/declarations/generation.md) | 266 | `declaration-track:4798bddc9da8aa1f31c3a9b34072d40e62884e28cdb680bbc4c85a84835e95ff` |
| 21 | `theorem` | [generation](../../../../../MathematicalLogicAndFoundations/GeneralLogic/TypingNamespacedEdition2.lean/declarations/generation-source-edition-2.md) | 279 | `result-track:e2f746f444f5e44bee3bb594b1dc40631bad1c0da35245cd5a17e8599e709624` |
| 22 | `theorem` | [generation_pi](../../../../../MathematicalLogicAndFoundations/GeneralLogic/TypingNamespacedEdition2.lean/declarations/generation-pi.md) | 326 | `result-track:d8c9d1bd65438be1726beeebec4617f6e5063429ae3630c2ebc3cedfde47cbc9` |
| 23 | `theorem` | [generation_lam](../../../../../MathematicalLogicAndFoundations/GeneralLogic/TypingNamespacedEdition2.lean/declarations/generation-lam.md) | 332 | `result-track:e9add7f6fb3772cf266c677a1318ef01240eb9deed354b68e6d06439cc5f26c4` |
| 24 | `theorem` | [generation_app](../../../../../MathematicalLogicAndFoundations/GeneralLogic/TypingNamespacedEdition2.lean/declarations/generation-app.md) | 337 | `result-track:37bae29086061ea484b801b6a98c4642321d7173a0d8f829e2cf398d95c5f094` |
| 25 | `theorem` | [regularity](../../../../../MathematicalLogicAndFoundations/GeneralLogic/TypingNamespacedEdition2.lean/declarations/regularity.md) | 343 | `result-track:66bd9bdf12d59ebbeaaf3144ca52f014b140d0bea2d41ceeecf8d75783d80043` |
| 26 | `theorem` | [product_type_sorted](../../../../../MathematicalLogicAndFoundations/GeneralLogic/TypingNamespacedEdition2.lean/declarations/product-type-sorted.md) | 361 | `result-track:2610f93a1a7507bc23846a091ac231952dcf974070a2fb22cd3aba2554e5f29d` |
| 27 | `theorem` | [pi](../../../../../MathematicalLogicAndFoundations/GeneralLogic/TypingNamespacedEdition2.lean/declarations/pi.md) | 373 | `result-track:05efdace01e5277bfacd225f001d06d37129ecc286cd6d3688fc3f50d1f41d34` |
| 28 | `theorem` | [pi_not_sort](../../../../../MathematicalLogicAndFoundations/GeneralLogic/TypingNamespacedEdition2.lean/declarations/pi-not-sort.md) | 379 | `result-track:5fe4720e53ccdcf34e962a7ac2c1b6fb89faada6d88f77a4c2c10ccc43d0a99f` |
| 29 | `theorem` | [sort_inj](../../../../../MathematicalLogicAndFoundations/GeneralLogic/TypingNamespacedEdition2.lean/declarations/sort-inj.md) | 386 | `result-track:6f7de6ca693736c7af8854d12f5c54cf99dae9de5097027a88be96e3095fa365` |
| 30 | `theorem` | [instantiate_right](../../../../../MathematicalLogicAndFoundations/GeneralLogic/TypingNamespacedEdition2.lean/declarations/instantiate-right.md) | 389 | `result-track:366076ffe45925764bb0aa5041a37e80cf7b5e367ae31b13bee3e3e7904a7e4b` |
| 31 | `theorem` | [application_type_sorted_aux](../../../../../MathematicalLogicAndFoundations/GeneralLogic/TypingNamespacedEdition2.lean/declarations/application-type-sorted-aux.md) | 404 | `result-track:40d5f8a055f8c4c3d45db878d15aae91b5cd60b7f897f1684b6282a57a912c76` |
| 32 | `theorem` | [application_type_sorted](../../../../../MathematicalLogicAndFoundations/GeneralLogic/TypingNamespacedEdition2.lean/declarations/application-type-sorted.md) | 429 | `result-track:213905ca1038c20914f9953315334f90eb51c37d39d6a4c01025a5a0b44cfe02` |
| 33 | `theorem` | [abstraction_type_sorted](../../../../../MathematicalLogicAndFoundations/GeneralLogic/TypingNamespacedEdition2.lean/declarations/abstraction-type-sorted.md) | 433 | `result-track:01364ef427f7b1529542f2e173e0a384b197a3a6cfc694f1c4e132aba85ca7ab` |
| 34 | `theorem` | [conversion_from_sort](../../../../../MathematicalLogicAndFoundations/GeneralLogic/TypingNamespacedEdition2.lean/declarations/conversion-from-sort.md) | 443 | `result-track:0c3e4fbeafc1b04c1322d6ee92e64e99cc6e15065f3bafe6161405b0a59c0303` |
| 35 | `theorem` | [subject_reduction](../../../../../MathematicalLogicAndFoundations/GeneralLogic/TypingNamespacedEdition2.lean/declarations/subject-reduction.md) | 454 | `result-track:ea5885f350ace233fe35750423e7ea39aa1ed644f3fea47b6c4d2bf8699d32d2` |
| 36 | `theorem` | [subject_reduces](../../../../../MathematicalLogicAndFoundations/GeneralLogic/TypingNamespacedEdition2.lean/declarations/subject-reduces.md) | 500 | `result-track:e5f385b3bf1d5cb71297e35f1330751048c5bf8253e9bf94f3e344ee852c5e15` |
| 37 | `theorem` | [of_map](../../../../../MathematicalLogicAndFoundations/GeneralLogic/TypingNamespacedEdition2.lean/declarations/of-map.md) | 512 | `result-track:4cf10419d48ed6d9e29d4feecd538b909d472aa91fd883ee911c6dba7ca3e9c3` |
| 38 | `theorem` | [app_left](../../../../../MathematicalLogicAndFoundations/GeneralLogic/TypingNamespacedEdition2.lean/declarations/app-left.md) | 516 | `result-track:8dc87ad1f2374c1941e8fb15c04814b1543210a8d27ffa40ef6d938412cdefa2` |
| 39 | `theorem` | [app_right](../../../../../MathematicalLogicAndFoundations/GeneralLogic/TypingNamespacedEdition2.lean/declarations/app-right.md) | 519 | `result-track:3ee10611195ea76e6f22c9cd46764416316092481d9c10954c766f16ee3ff8b5` |
| 40 | `theorem` | [lam_domain](../../../../../MathematicalLogicAndFoundations/GeneralLogic/TypingNamespacedEdition2.lean/declarations/lam-domain.md) | 522 | `result-track:db4cce02362f06eaa7437e6848524d110acf2bcddaca87d8d64bc0ab1dbae568` |
| 41 | `theorem` | [lam_body](../../../../../MathematicalLogicAndFoundations/GeneralLogic/TypingNamespacedEdition2.lean/declarations/lam-body.md) | 525 | `result-track:3af98d6c327a8f5deaa101be557aa4abf5c6af844e87cf549c19ca0d78d3550e` |
| 42 | `theorem` | [pi_domain](../../../../../MathematicalLogicAndFoundations/GeneralLogic/TypingNamespacedEdition2.lean/declarations/pi-domain.md) | 528 | `result-track:b3fc3879617a98b68fa7cc9f931dde4c0c389684b97eecf4bb3c103167449fb9` |
| 43 | `theorem` | [pi_body](../../../../../MathematicalLogicAndFoundations/GeneralLogic/TypingNamespacedEdition2.lean/declarations/pi-body.md) | 531 | `result-track:162fefbce5addc21ebf6d2ebed4a94f98cfb9b5b40765005d1cb6d7d111e299c` |
| 44 | `theorem` | [pi](../../../../../MathematicalLogicAndFoundations/GeneralLogic/TypingNamespacedEdition2.lean/declarations/pi-source-edition-2.md) | 534 | `result-track:13127c2dc49bfaaeb9366df5ff9a220dc5ab82dcde3aaccd06a88b375b047a40` |
| 45 | `theorem` | [lam](../../../../../MathematicalLogicAndFoundations/GeneralLogic/TypingNamespacedEdition2.lean/declarations/lam.md) | 540 | `result-track:334592835c511cb65b6cd30caccc62da1738394871628847558571f3044ef817` |
| 46 | `def` | [normalForm](../../../../../MathematicalLogicAndFoundations/GeneralLogic/TypingNamespacedEdition2.lean/declarations/normalform-source-edition-2.md) | 554 | `declaration-track:9df6b0e9b8bde36858b71def0f846685c7b0e28f7c36fff116e379b0a8037b37` |
| 47 | `theorem` | [normalForm_spec](../../../../../MathematicalLogicAndFoundations/GeneralLogic/TypingNamespacedEdition2.lean/declarations/normalform-spec.md) | 558 | `result-track:11a93f12714fc6fa3acb55e809ffdfdb1f57f945b0def0913c17339a8b31c8ae` |
| 48 | `theorem` | [normalForm_eq](../../../../../MathematicalLogicAndFoundations/GeneralLogic/TypingNamespacedEdition2.lean/declarations/normalform-eq.md) | 563 | `result-track:056f43273a976195900e8feed1628bdcdada6b7e91ba549545584bb5ad02e14f` |
| 49 | `theorem` | [normalForm_of_normal](../../../../../MathematicalLogicAndFoundations/GeneralLogic/TypingNamespacedEdition2.lean/declarations/normalform-of-normal.md) | 569 | `result-track:fb256a8ed27bcefe9369d43e8093723f38ffc89415c6d64c722b174c3b10365d` |
| 50 | `theorem` | [normalForm_converts](../../../../../MathematicalLogicAndFoundations/GeneralLogic/TypingNamespacedEdition2.lean/declarations/normalform-converts.md) | 572 | `result-track:4d78137abb5bc0b714a021213eef68c41b5c67ef5f895294f66911d5926af8b8` |
| 51 | `theorem` | [normalForm_pi](../../../../../MathematicalLogicAndFoundations/GeneralLogic/TypingNamespacedEdition2.lean/declarations/normalform-pi.md) | 579 | `result-track:93eeb22e4b22639fa45907eead4210733ed6a375aa2a281ba551711491bff3fa` |
| 52 | `theorem` | [weaklyNormalizing](../../../../../MathematicalLogicAndFoundations/GeneralLogic/TypingNamespacedEdition2.lean/declarations/weaklynormalizing.md) | 591 | `result-track:d3ae2dde52106d43127a258540e656a9478ecb58a392e30f4e6b2c0d75aad7c3` |
| 53 | `theorem` | [type_weaklyNormalizing](../../../../../MathematicalLogicAndFoundations/GeneralLogic/TypingNamespacedEdition2.lean/declarations/type-weaklynormalizing.md) | 594 | `result-track:27622918518b32fc25ec53ca19b44537f133e327cebedba667c36231b42c3dc8` |
| 54 | `theorem` | [normalForm](../../../../../MathematicalLogicAndFoundations/GeneralLogic/TypingNamespacedEdition2.lean/declarations/normalform.md) | 597 | `result-track:1cac401d57aa977f6d020a19534185efd7ed82fcef334dbf4b5c7a59f8bd48a6` |
| 55 | `theorem` | [normalize_type](../../../../../MathematicalLogicAndFoundations/GeneralLogic/TypingNamespacedEdition2.lean/declarations/normalize-type.md) | 601 | `result-track:9a4030aa055cc135e8ae19723877d9cc108e22bf667c0377b7fbcef37fb4e890` |
| 56 | `inductive` | [Neutral](../../../../../MathematicalLogicAndFoundations/GeneralLogic/TypingNamespacedEdition2.lean/declarations/neutral.md) | 611 | `declaration-track:5cabdd79dd295e171da4f9aa3158dfe9490240aa330da89d78e5fcd454bede89` |
| 57 | `theorem` | [sort_cannot_have_product_type](../../../../../MathematicalLogicAndFoundations/GeneralLogic/TypingNamespacedEdition2.lean/declarations/sort-cannot-have-product-type.md) | 619 | `result-track:b809e96f64740a425d4218664ddf34ae4ad9eb804bf00f51b0f47b57a7c33932` |
| 58 | `theorem` | [product_cannot_have_product_type](../../../../../MathematicalLogicAndFoundations/GeneralLogic/TypingNamespacedEdition2.lean/declarations/product-cannot-have-product-type.md) | 624 | `result-track:e993e0e5f22093a36095859ce3fbca466bca4135191e59cd0b91bf0d3f51faad` |
| 59 | `theorem` | [lambda_cannot_have_sort_type](../../../../../MathematicalLogicAndFoundations/GeneralLogic/TypingNamespacedEdition2.lean/declarations/lambda-cannot-have-sort-type.md) | 629 | `result-track:df526a047550f3cdefcb97c92af6a9bf5dfd0c5b447ad9ac32d29ec2f78034af` |
| 60 | `theorem` | [neutral_unique](../../../../../MathematicalLogicAndFoundations/GeneralLogic/TypingNamespacedEdition2.lean/declarations/neutral-unique.md) | 636 | `result-track:99eec93fe7b85d434531058822a881cad360fa975705814f1b20c1f7f588c9a5` |
| 61 | `theorem` | [normal_shape](../../../../../MathematicalLogicAndFoundations/GeneralLogic/TypingNamespacedEdition2.lean/declarations/normal-shape.md) | 657 | `result-track:9151cb3a6eb72b6d682874d74ece39670f1026013ef11a2632810a8cd1e07190` |
| 62 | `theorem` | [sorted_normal_shape](../../../../../MathematicalLogicAndFoundations/GeneralLogic/TypingNamespacedEdition2.lean/declarations/sorted-normal-shape.md) | 673 | `result-track:aae1f58f31db6d9be414eadbdb6a26af34cc74e05423c9237201982156e05a89` |
| 63 | `inductive` | [TypingTree](../../../../../MathematicalLogicAndFoundations/GeneralLogic/TypingNamespacedEdition2.lean/declarations/typingtree.md) | 688 | `declaration-track:00a912576020bff5c76f8cdea69cf9793c4534785eb539a0c24958eb663e35fd` |
| 64 | `theorem` | [typing](../../../../../MathematicalLogicAndFoundations/GeneralLogic/TypingNamespacedEdition2.lean/declarations/typing.md) | 709 | `result-track:146bb17b6ace0241dc25d52c70df57bfe6a2ed8b272861820e96c52cafd983a8` |
| 65 | `def` | [retarget](../../../../../MathematicalLogicAndFoundations/GeneralLogic/TypingNamespacedEdition2.lean/declarations/retarget.md) | 718 | `declaration-track:3a8256d0d787755944befd19445319ec7df41b6d086b30e062a796d3671cb38f` |
| 66 | `theorem` | [nonempty](../../../../../MathematicalLogicAndFoundations/GeneralLogic/TypingNamespacedEdition2.lean/declarations/nonempty.md) | 729 | `result-track:5ed9b1311850f8124647ac49afc8abeaa1fb864711ecf0f09a0d927367b717ea` |
| 67 | `def` | [ofTyping](../../../../../MathematicalLogicAndFoundations/GeneralLogic/TypingNamespacedEdition2.lean/declarations/oftyping.md) | 749 | `declaration-track:ee09dddd0688a4b566cfcce37506041dd128726e92e439d2376f1fd01169a969` |
| 68 | `def` | [DeclRenaming](../../../../../MathematicalLogicAndFoundations/GeneralLogic/TypingNamespacedEdition2.lean/declarations/declrenaming.md) | 753 | `declaration-track:e4d04e9d16151401ee95f6ee70ea1d733c30c6ca906e90573c23f843699ef3c3` |
| 69 | `theorem` | [typed](../../../../../MathematicalLogicAndFoundations/GeneralLogic/TypingNamespacedEdition2.lean/declarations/typed-source-edition-2.md) | 758 | `result-track:55681c44c2304ce8510168e694efe5e67db1e82527d72e29d9f379fb191a71ab` |
| 70 | `theorem` | [lift](../../../../../MathematicalLogicAndFoundations/GeneralLogic/TypingNamespacedEdition2.lean/declarations/lift-source-edition-3.md) | 762 | `result-track:4485b501bd20fab8ab92524ccdc5eda33aceab53fb0de6081d7a21954362d91b` |
| 71 | `def` | [rename](../../../../../MathematicalLogicAndFoundations/GeneralLogic/TypingNamespacedEdition2.lean/declarations/rename-source-edition-3.md) | 776 | `declaration-track:65ebd373bcf64c065d868d1776a8e42c615736c7fe443ccbe25b3951d3170100` |
| 72 | `theorem` | [weaken](../../../../../MathematicalLogicAndFoundations/GeneralLogic/TypingNamespacedEdition2.lean/declarations/weaken-source-edition-2.md) | 796 | `result-track:9772cc7849e6f2bd9b0ae04a79aeb46d132ac2e697abf9a3c137101b56108821` |
| 73 | `abbrev` | [StoredSubstitution](../../../../../MathematicalLogicAndFoundations/GeneralLogic/TypingNamespacedEdition2.lean/declarations/storedsubstitution.md) | 801 | `declaration-track:f88f816850dc2d22f3b8a85594a5697d53611f10a2729104a205f4ad16728430` |
| 74 | `theorem` | [typed](../../../../../MathematicalLogicAndFoundations/GeneralLogic/TypingNamespacedEdition2.lean/declarations/typed.md) | 807 | `result-track:0b4a72bbb8d132d029687160f22f43b09f2e018bcc4ac55e35cbc4c52a15eae0` |
| 75 | `def` | [lift](../../../../../MathematicalLogicAndFoundations/GeneralLogic/TypingNamespacedEdition2.lean/declarations/lift-source-edition-2.md) | 811 | `declaration-track:36d6b76b564a2cc84dbe3093e503278eea504c82dd3951bf78f7c472124235ed` |
| 76 | `def` | [subst](../../../../../MathematicalLogicAndFoundations/GeneralLogic/TypingNamespacedEdition2.lean/declarations/subst-source-edition-2.md) | 840 | `declaration-track:a7e96e99a188bf9ae0403fe0657930fa255ed957418d040b648ce5ce744e263f` |
| 77 | `def` | [ProperPart](../../../../../MathematicalLogicAndFoundations/GeneralLogic/TypingNamespacedEdition2.lean/declarations/properpart.md) | 863 | `declaration-track:793d0518266bd2c58b371306b2eeed21ff736826af78376ef99c5da589998e87` |
| 78 | `theorem` | [child](../../../../../MathematicalLogicAndFoundations/GeneralLogic/TypingNamespacedEdition2.lean/declarations/child.md) | 866 | `result-track:98296e2b2eaeaaf65be7b00dfbe0a6e98feb9fd53265a5e02bfc35c39fc2ba94` |
| 79 | `theorem` | [subterm](../../../../../MathematicalLogicAndFoundations/GeneralLogic/TypingNamespacedEdition2.lean/declarations/subterm.md) | 867 | `result-track:91ceb8b91d63722c93b8bc511b3cfa709eaa1c0d13e6f2f711a1f9d0f65ba989` |
| 80 | `theorem` | [trans_right](../../../../../MathematicalLogicAndFoundations/GeneralLogic/TypingNamespacedEdition2.lean/declarations/trans-right.md) | 870 | `result-track:758dd146cd9b307f5e6d11892545d3b0277dc6c827d132fb48cc1faacacadc7e` |
| 81 | `theorem` | [trans_left](../../../../../MathematicalLogicAndFoundations/GeneralLogic/TypingNamespacedEdition2.lean/declarations/trans-left.md) | 874 | `result-track:1e942de55a76a6a79ad7760d9286258e8319bc42616eb2fc2a5badb7fc8a43a8` |
| 82 | `theorem` | [apps_head](../../../../../MathematicalLogicAndFoundations/GeneralLogic/TypingNamespacedEdition2.lean/declarations/apps-head.md) | 880 | `result-track:1197378f205dc462e3854de2cb9f87a3e7384496181b6b201be05c0cba23a1c3` |
| 83 | `theorem` | [apps_arg](../../../../../MathematicalLogicAndFoundations/GeneralLogic/TypingNamespacedEdition2.lean/declarations/apps-arg.md) | 887 | `result-track:2945c802194933e38259fd6aba8847930101d7444df6a5da6fa767e8033056cc` |
| 84 | `theorem` | [subst_apps](../../../../../MathematicalLogicAndFoundations/GeneralLogic/TypingNamespacedEdition2.lean/declarations/subst-apps.md) | 895 | `result-track:04db332e49d16c354d09bc86077899ee092adc16daee015db6c8a140b25eecc8` |
| 85 | `theorem` | [spine_shape](../../../../../MathematicalLogicAndFoundations/GeneralLogic/TypingNamespacedEdition2.lean/declarations/spine-shape.md) | 904 | `result-track:083e7c24b0d0ea5f1b0a8a908c55fc4f0f9c2b6529c774051982241a75d32b6d` |
| 86 | `theorem` | [app_spine](../../../../../MathematicalLogicAndFoundations/GeneralLogic/TypingNamespacedEdition2.lean/declarations/app-spine.md) | 920 | `result-track:968f663df0edb0ea8110ab21721cef6ddfc902368f4346e48c900cd947aec38c` |
| 87 | `theorem` | [apps_head](../../../../../MathematicalLogicAndFoundations/GeneralLogic/TypingNamespacedEdition2.lean/declarations/apps-head-source-edition-2.md) | 932 | `result-track:2aee61587ffa230ba3867c1893358dcad2ef5ed8fe4e9b265e78cd20ea77400c` |
| 88 | `theorem` | [apps_arg](../../../../../MathematicalLogicAndFoundations/GeneralLogic/TypingNamespacedEdition2.lean/declarations/apps-arg-source-edition-2.md) | 941 | `result-track:5bb88e8e3547e23016308d8659d327aa65a48d0705e9435039058cfc78a88029` |
| 89 | `theorem` | [stronglyNormalizing_of_application](../../../../../MathematicalLogicAndFoundations/GeneralLogic/TypingNamespacedEdition2.lean/declarations/stronglynormalizing-of-application.md) | 956 | `result-track:1490cc7975aba4f75dc59e5882f60f5a7c27dccbaf2fa21be11768c6b7174b9e` |
| 90 | `theorem` | [exists_bad_application](../../../../../MathematicalLogicAndFoundations/GeneralLogic/TypingNamespacedEdition2.lean/declarations/exists-bad-application.md) | 988 | `result-track:c4ade3dffde6529ef9d894068b78a9e05a31ebc131a0104c3f07cfedf4726df9` |
| 91 | `theorem` | [rename](../../../../../MathematicalLogicAndFoundations/GeneralLogic/TypingNamespacedEdition2.lean/declarations/rename-source-edition-4.md) | 1004 | `result-track:c06b349d28e65b02b6953e359b6ffedf80ad3e6009d4961941aa06976bf1ea5b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9ceadb3dab0582b820fa029d94b8a8b6805904d98bf980a21c951dc5e301db90 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/TypeTheory/Typing/Variantf2da9cfb6db11c77608a9471ad0574fed41b8d8fda8d32b2f3df7f0eec05189b.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/TypeTheory/Typing/Variantf2da9cfb6db11c77608a9471ad0574fed41b8d8fda8d32b2f3df7f0eec05189b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
