# Verification target: Wide Pullbacks Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8cfc0c3efe23fd9ef428b5b984559d572d9ac19b",
  "lexical_observation_count": 66,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/WidePullbacks/Variante2dbf6780f3a591c278e6bfa11664cd672241563df80f0bda241c8d8a84c5096.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WidePullbacksNamespaced.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WidePullbacksNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8cfc0c3efe23fd9ef428b5b984559d572d9ac19b`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/WidePullbacks/Variante2dbf6780f3a591c278e6bfa11664cd672241563df80f0bda241c8d8a84c5096.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/WidePullbacks/Variante2dbf6780f3a591c278e6bfa11664cd672241563df80f0bda241c8d8a84c5096.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.HasLimits` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Thin` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [WidePullbackShape](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WidePullbacksNamespaced.lean/declarations/widepullbackshape.md) | 44 | `declaration-track:36624c2d78a14b7d82533fdbc5e46f2efcfe7b65db55a8d1258b289284d9ed77` |
| 2 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WidePullbacksNamespaced.lean/declarations/instance-source-edition-2.md) | 47 | `declaration-track:a85a30760a2fe2aa38a56d64a3b8594f5d7664ebeb193f28660b6990827249af` |
| 3 | `def` | [WidePushoutShape](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WidePullbacksNamespaced.lean/declarations/widepushoutshape.md) | 51 | `declaration-track:387347082492d99ac229ea16e33674498452e61e787d01ad4b9559a3181bb0d8` |
| 4 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WidePullbacksNamespaced.lean/declarations/instance.md) | 53 | `declaration-track:07b75e97218fd94ee13e0d8a46bdb679f9d33cd9de4125d7bd45806c74949240` |
| 5 | `inductive` | [Hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WidePullbacksNamespaced.lean/declarations/hom-source-edition-2.md) | 63 | `declaration-track:a5caac9fb21b02546a2e4da9b0cf1f16be04fd9801bc9e4263daaa1ba2b7126a` |
| 6 | `instance` | [struct](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WidePullbacksNamespaced.lean/declarations/struct.md) | 72 | `declaration-track:513b5b9b48ebea571aad6325441647f6110dd1ba035f616a78b9c12e1cae1e66` |
| 7 | `instance` | [Hom.inhabited](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WidePullbacksNamespaced.lean/declarations/hom-inhabited-source-edition-2.md) | 81 | `declaration-track:e8932943f2b6684b4afc012787e9f49c98d30de69e24e8a741f7116bb39e399b` |
| 8 | `def` | [evalCasesBash](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WidePullbacksNamespaced.lean/declarations/evalcasesbash-source-edition-2.md) | 88 | `declaration-track:ebbf7a534e50ab52cee42bec9858c2058973f18d9d23dfba34a3b5ba2ac936fa` |
| 9 | `instance` | [subsingleton_hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WidePullbacksNamespaced.lean/declarations/subsingleton-hom-source-edition-2.md) | 95 | `declaration-track:b551dd8a09bac0dd42f8ce4f26eef78e79d2ec0667684b30e16c15de8e6dbd5f` |
| 10 | `instance` | [category](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WidePullbacksNamespaced.lean/declarations/category-source-edition-2.md) | 103 | `declaration-track:da167ad2b6ba12ae7462ab67cc7b6ebcc60f13e3a20bbb8cdca65680317957be` |
| 11 | `theorem` | [hom_id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WidePullbacksNamespaced.lean/declarations/hom-id-source-edition-2.md) | 107 | `result-track:8b8b6f326936591ab3793de708f3dca0989cc771c882d94f3b477579d0daeba3` |
| 12 | `def` | [wideCospan](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WidePullbacksNamespaced.lean/declarations/widecospan.md) | 116 | `declaration-track:97afaf1a76197289a1cd037a569f12c1e3d7771d16cbad6f7ac46cef61ab5929` |
| 13 | `def` | [diagramIsoWideCospan](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WidePullbacksNamespaced.lean/declarations/diagramisowidecospan.md) | 124 | `declaration-track:44ce2810e5080b9424d0f5ab7b932da823cf6d317afff31aa1580f261e74b9e9` |
| 14 | `def` | [mkCone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WidePullbacksNamespaced.lean/declarations/mkcone.md) | 130 | `declaration-track:e940ffc572e6e46c72f7fcf194a399fd0f266df69a8f21bdfa9439baeccf4795` |
| 15 | `def` | [equivalenceOfEquiv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WidePullbacksNamespaced.lean/declarations/equivalenceofequiv.md) | 142 | `declaration-track:399e031ec7a0e6d7cc32535fd8840c0060ecc48a6964803059b75c091618c52a` |
| 16 | `def` | [uliftEquivalence](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WidePullbacksNamespaced.lean/declarations/uliftequivalence-source-edition-2.md) | 150 | `declaration-track:fa3a8ab418d4c9cba93a8034a1835ab899edbe84c981fd9c09cabc8a2555727c` |
| 17 | `inductive` | [Hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WidePullbacksNamespaced.lean/declarations/hom.md) | 164 | `declaration-track:7962a9a6a45a7419a4296609fed4c068e18664e2cfce51afbaeb91fa8aa16e53` |
| 18 | `instance` | [struct](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WidePullbacksNamespaced.lean/declarations/struct-source-edition-2.md) | 173 | `declaration-track:db14f143c07e8c8aa97851010c6d32469753df687e13f6ea5b4afeaf28c9bd22` |
| 19 | `instance` | [Hom.inhabited](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WidePullbacksNamespaced.lean/declarations/hom-inhabited.md) | 182 | `declaration-track:c7fd5eb92f7043ea3d89c5d1f26c4a1af78c5c768d95e59f283011c1c4b63bff` |
| 20 | `def` | [evalCasesBash'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WidePullbacksNamespaced.lean/declarations/evalcasesbash.md) | 188 | `declaration-track:759ad04a6a345b9720a9cdfdb095b5702e5841d352d0c6b43b5a7aad204f5075` |
| 21 | `instance` | [subsingleton_hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WidePullbacksNamespaced.lean/declarations/subsingleton-hom.md) | 195 | `declaration-track:7d646727b52937e453e0c53d547bf110d75b1fb67cd6d25e7350b59893928339` |
| 22 | `instance` | [category](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WidePullbacksNamespaced.lean/declarations/category.md) | 201 | `declaration-track:52e5d529e070984fa0f5a979bb971ed52b2c7ad55481ea440f6ab4cbb5ee48df` |
| 23 | `theorem` | [hom_id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WidePullbacksNamespaced.lean/declarations/hom-id.md) | 205 | `result-track:3248f4af808d0cc5346053874b01750cfa9e1199d0d16ba557313b148d726863` |
| 24 | `def` | [wideSpan](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WidePullbacksNamespaced.lean/declarations/widespan.md) | 214 | `declaration-track:4dca33acfdec04ef9406c985e3d3cd6e75c0241cc7958a88d611ee90b83065ab` |
| 25 | `def` | [diagramIsoWideSpan](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WidePullbacksNamespaced.lean/declarations/diagramisowidespan.md) | 227 | `declaration-track:6231f3715ff12a9ee2481e4b028a05b312e2680c1100491f59d8566710b29af5` |
| 26 | `def` | [mkCocone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WidePullbacksNamespaced.lean/declarations/mkcocone.md) | 233 | `declaration-track:0762b0198f60bcc3ea9952e68de1fdba8e37b9e76d719fb0a5396457260dfbfc` |
| 27 | `def` | [equivalenceOfEquiv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WidePullbacksNamespaced.lean/declarations/equivalenceofequiv-source-edition-2.md) | 245 | `declaration-track:dfd4db626f18d4a8636d8680852bf6f4104b9a3a89d642dbed5cd9963d8be890` |
| 28 | `def` | [uliftEquivalence](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WidePullbacksNamespaced.lean/declarations/uliftequivalence.md) | 252 | `declaration-track:8cdb5a57d524284f3e823d5159a815b05c7cddeec31f544e18d5e5f9ed7707bc` |
| 29 | `abbrev` | [HasWidePullbacks](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WidePullbacksNamespaced.lean/declarations/haswidepullbacks.md) | 262 | `declaration-track:91d30e796f14935a8ac37fd1c9d2903257bc96d4b10d9944a9c6a166b8373939` |
| 30 | `abbrev` | [HasWidePushouts](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WidePullbacksNamespaced.lean/declarations/haswidepushouts.md) | 266 | `declaration-track:6b2eee6ee85f3dd6628cb54e9fad828cceaab3568e18ade492540ee1689e47f7` |
| 31 | `abbrev` | [HasWidePullback](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WidePullbacksNamespaced.lean/declarations/haswidepullback.md) | 272 | `declaration-track:2ed8bd0c980e2e2c9824ba723ad97d5689a7255999944c9822f77533ca68440f` |
| 32 | `abbrev` | [HasWidePushout](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WidePullbacksNamespaced.lean/declarations/haswidepushout.md) | 276 | `declaration-track:e445d9b53c0a2f704ceefa18024938495af854eae74e356fc3d52f50ce434138` |
| 33 | `abbrev` | [widePullback](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WidePullbacksNamespaced.lean/declarations/widepullback.md) | 280 | `declaration-track:68639156f480797d17c4796254a09cc1ec9c3ac30317ad1cf410862dcf602b40` |
| 34 | `abbrev` | [widePushout](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WidePullbacksNamespaced.lean/declarations/widepushout.md) | 285 | `declaration-track:a81a98339b9d8de05cb2d1b16383aa001051e2260eb5ba55249f2812e13ce16a` |
| 35 | `abbrev` | [π](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WidePullbacksNamespaced.lean/declarations/anonymous-source-edition-2.md) | 295 | `declaration-track:b6122432af229f3f42a8b76adf61710503efc4b4dde2e1c5ec12653540ad4e57` |
| 36 | `abbrev` | [base](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WidePullbacksNamespaced.lean/declarations/base.md) | 300 | `declaration-track:11b65caf23f301ed69731214e9514217706db202ada61858723b6c865f6323f5` |
| 37 | `theorem` | [π_arrow](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WidePullbacksNamespaced.lean/declarations/arrow.md) | 304 | `result-track:6cbd0848198bedd7f48fd650c0dd0c2631ee3e9b5afe94e66d075e973258fbfe` |
| 38 | `abbrev` | [lift](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WidePullbacksNamespaced.lean/declarations/lift.md) | 309 | `declaration-track:15d22dc475d21624ae89b9d79bbd96ced4e3396950f96eba68d9d8e4d568c4f3` |
| 39 | `theorem` | [lift_π](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WidePullbacksNamespaced.lean/declarations/lift-source-edition-2.md) | 316 | `result-track:c4c6f58c87c356d100542d1e0dd777774fadc75007ff9d3c0882c7e8ecfb8c78` |
| 40 | `theorem` | [lift_base](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WidePullbacksNamespaced.lean/declarations/lift-base.md) | 320 | `result-track:12598d6d64c58bd7ad3bf577ff3e567c8b9ecc50556d5755bd2ece592027dfda` |
| 41 | `theorem` | [eq_lift_of_comp_eq](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WidePullbacksNamespaced.lean/declarations/eq-lift-of-comp-eq.md) | 323 | `result-track:6aec4ed22624f037e2fa1cb100697da9bcfa24457c76341b491eeab17b70ffbd` |
| 42 | `theorem` | [hom_eq_lift](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WidePullbacksNamespaced.lean/declarations/hom-eq-lift.md) | 333 | `result-track:45f591e3a7d34f2cfd994edd9363d7b9fc9f0ad7b61fd1fde0dc1d42d8243687` |
| 43 | `theorem` | [hom_ext](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WidePullbacksNamespaced.lean/declarations/hom-ext.md) | 340 | `result-track:43ca88397623717289d1f14251ebb0b8250c01a5ec51e265504ea6aea991fff7` |
| 44 | `abbrev` | [ι](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WidePullbacksNamespaced.lean/declarations/anonymous.md) | 356 | `declaration-track:06eff40fa5bcd868a14f460d2582ea901d649badf10f44dfad3fc7661fb98e3c` |
| 45 | `abbrev` | [head](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WidePullbacksNamespaced.lean/declarations/head.md) | 360 | `declaration-track:f36b5bbab987b5a629b52d15aaab7ef11bc896bfd58204f434f569746fb9dec4` |
| 46 | `theorem` | [arrow_ι](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WidePullbacksNamespaced.lean/declarations/arrow-source-edition-2.md) | 364 | `result-track:9cfbaee180e559b5af06248abf8af88a25fc6b40e653d190cff56c0f7d9b8256` |
| 47 | `abbrev` | [desc](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WidePullbacksNamespaced.lean/declarations/desc-source-edition-2.md) | 369 | `declaration-track:e2e8c4f0d7b7195718b3f9b990a8e5abb9419508ea96ebb30b322b056625632a` |
| 48 | `theorem` | [ι_desc](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WidePullbacksNamespaced.lean/declarations/desc.md) | 376 | `result-track:87f8f17f0e6a1ce4732541aec3b19923dca816a2860fc9a55ed249358952d9ce` |
| 49 | `theorem` | [head_desc](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WidePullbacksNamespaced.lean/declarations/head-desc.md) | 380 | `result-track:604add23293c2a6c0e5faac54262a9eac0fc0a67a839aa9fa593da944276eed7` |
| 50 | `theorem` | [eq_desc_of_comp_eq](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WidePullbacksNamespaced.lean/declarations/eq-desc-of-comp-eq.md) | 383 | `result-track:f61266ffca9cfb9a7d3355ebba02ab03ead7a3e00600f7abc80e3267ca459e0d` |
| 51 | `theorem` | [hom_eq_desc](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WidePullbacksNamespaced.lean/declarations/hom-eq-desc.md) | 393 | `result-track:b5571f62d3e20147c0d81f343df49aafe082586ae1714ff08e78d3a9c87c77db` |
| 52 | `theorem` | [hom_ext](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WidePullbacksNamespaced.lean/declarations/hom-ext-source-edition-2.md) | 403 | `result-track:f7c454dfb0cc5be98e772a0942861ab69158782a38f266d3c54490d19f85d675` |
| 53 | `def` | [widePullbackShapeOpMap](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WidePullbacksNamespaced.lean/declarations/widepullbackshapeopmap.md) | 417 | `declaration-track:2fc72d73371dacfa8d1ea0998bb2d1b2878405a6adc09f1fd3d47f03d5a43ac2` |
| 54 | `def` | [widePullbackShapeOp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WidePullbacksNamespaced.lean/declarations/widepullbackshapeop.md) | 425 | `declaration-track:e31f8acbd6a4fbd7a1527acd01f03d2e6d7b3c3d766eb589602abbd9cd793615` |
| 55 | `def` | [widePushoutShapeOpMap](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WidePullbacksNamespaced.lean/declarations/widepushoutshapeopmap.md) | 431 | `declaration-track:7819ab781ada833e64050c26f062e552e15ba083472bf89a47c30e65e76a25fd` |
| 56 | `def` | [widePushoutShapeOp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WidePullbacksNamespaced.lean/declarations/widepushoutshapeop.md) | 439 | `declaration-track:8b3eb7cc28ea42e49adb0a9b9ee02c13e10b78d1255454be9ea9103918c31804` |
| 57 | `def` | [widePullbackShapeUnop](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WidePullbacksNamespaced.lean/declarations/widepullbackshapeunop.md) | 445 | `declaration-track:ea4294ac832218e42994eb8b809c1ebdd863c5799d942c57a95ac967f5d448b9` |
| 58 | `def` | [widePushoutShapeUnop](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WidePullbacksNamespaced.lean/declarations/widepushoutshapeunop.md) | 450 | `declaration-track:3fa5957649d796f1f5d7f43a702ac2dbef43148744e2028cfb4ff05470679d6c` |
| 59 | `def` | [widePushoutShapeOpUnop](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WidePullbacksNamespaced.lean/declarations/widepushoutshapeopunop.md) | 455 | `declaration-track:ccaa4947bad6aadafa27fd16265af79ed23001ebd12982f71e19ecd83dae7d66` |
| 60 | `def` | [widePushoutShapeUnopOp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WidePullbacksNamespaced.lean/declarations/widepushoutshapeunopop.md) | 460 | `declaration-track:eaccab5e5afd9dc9d9e96bc49ba164c8f00d37ef5081c8fdc1e97274d5f867a2` |
| 61 | `def` | [widePullbackShapeOpUnop](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WidePullbacksNamespaced.lean/declarations/widepullbackshapeopunop.md) | 465 | `declaration-track:4e757aba843dc9fb1cf0027cd10c0f44294f10502798d7f8da7d2e932d90bdff` |
| 62 | `def` | [widePullbackShapeUnopOp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WidePullbacksNamespaced.lean/declarations/widepullbackshapeunopop.md) | 470 | `declaration-track:32823762341f7274a80283c87123a45ebe0d9a4c06abf6e627f6e2dde47a62e9` |
| 63 | `def` | [widePushoutShapeOpEquiv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WidePullbacksNamespaced.lean/declarations/widepushoutshapeopequiv.md) | 475 | `declaration-track:98b7c132b2215dfcf6cad9afcfc941fb943b479bad261a9d9c07247adeaa4d11` |
| 64 | `def` | [widePullbackShapeOpEquiv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WidePullbacksNamespaced.lean/declarations/widepullbackshapeopequiv.md) | 483 | `declaration-track:1c3a94b3adf94f9d6230ee173c8ff6f1b609390946c408e51c17931775b9b942` |
| 65 | `theorem` | [hasWidePushouts_shrink](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WidePullbacksNamespaced.lean/declarations/haswidepushouts-shrink.md) | 491 | `result-track:164f98c2e82e59933d6d6286521c87c7ce2c927dc479a9f0956f83b3e9f2633a` |
| 66 | `theorem` | [hasWidePullbacks_shrink](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/WidePullbacksNamespaced.lean/declarations/haswidepullbacks-shrink.md) | 496 | `result-track:0038058d41cc6914f41f917b81ecc9a248be31338394c6083d6c9063b4dfda72` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=55e12fe973537655a626dc3ea80f2d48bbb6475e1b6c737e8815e850a7c778df -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/WidePullbacks/Variante2dbf6780f3a591c278e6bfa11664cd672241563df80f0bda241c8d8a84c5096.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/WidePullbacks/Variante2dbf6780f3a591c278e6bfa11664cd672241563df80f0bda241c8d8a84c5096.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
