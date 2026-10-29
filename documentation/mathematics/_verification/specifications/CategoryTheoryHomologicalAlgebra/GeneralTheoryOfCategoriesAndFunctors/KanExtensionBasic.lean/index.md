# Verification target: Kan Extension Basic

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5666688ed764288921731d42ec7e5420ed2db361",
  "lexical_observation_count": 80,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant02b0deee7710693c0c95f2384aec0e17a6f1c1ef64d7155c26770f34e715bab7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/KanExtensionBasic.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/KanExtensionBasic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5666688ed764288921731d42ec7e5420ed2db361`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant02b0deee7710693c0c95f2384aec0e17a6f1c1ef64d7155c26770f34e715bab7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant02b0deee7710693c0c95f2384aec0e17a6f1c1ef64d7155c26770f34e715bab7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Comma.StructuredArrow.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.Equivalence` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Preserves.Shapes.Terminal` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [RightExtension](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/KanExtensionBasic.lean/declarations/rightextension.md) | 43 | `declaration-track:21447df37510774ec0f19d57ce9ed7abc15d763fc3d4a2d9c8ec3d0adfb6fdd1` |
| 2 | `abbrev` | [LeftExtension](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/KanExtensionBasic.lean/declarations/leftextension.md) | 48 | `declaration-track:1cfea9dd34315bc0cf4c641f59030d7e49ca35f1a6a7152541f36d21958c3c7a` |
| 3 | `def` | [RightExtension.mk](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/KanExtensionBasic.lean/declarations/rightextension-mk.md) | 53 | `declaration-track:71973847fbf076fd3de328b6079bea6c8a708d018c56a93329c9ffe3b2dfdb3e` |
| 4 | `def` | [LeftExtension.mk](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/KanExtensionBasic.lean/declarations/leftextension-mk.md) | 59 | `declaration-track:4330d07a5d24ad67d2da972a5e10be0960bf2e5c617eca8997e869c0e3cd1a7b` |
| 5 | `class` | [IsRightKanExtension](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/KanExtensionBasic.lean/declarations/isrightkanextension.md) | 70 | `declaration-track:b6c6dfdafd9dad76bfca9d1f95aa330f4b17f99ab679430c0641488310515bf6` |
| 6 | `def` | [isUniversalOfIsRightKanExtension](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/KanExtensionBasic.lean/declarations/isuniversalofisrightkanextension.md) | 77 | `declaration-track:0ffddec7937a927a9688d8e73da2835c2cb8d00c6baed5dca438ea6b3bfa134a` |
| 7 | `def` | [liftOfIsRightKanExtension](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/KanExtensionBasic.lean/declarations/liftofisrightkanextension.md) | 82 | `declaration-track:3954880aee541c7cf15fdd54665f5adf68fe5e658520adbf3aca004f6282e641` |
| 8 | `lemma` | [liftOfIsRightKanExtension_fac](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/KanExtensionBasic.lean/declarations/liftofisrightkanextension-fac.md) | 86 | `result-track:770ed719105018d4b12d7c89bc965bd2f18df5d88c6f975f95195ea995116336` |
| 9 | `lemma` | [liftOfIsRightKanExtension_fac_app](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/KanExtensionBasic.lean/declarations/liftofisrightkanextension-fac-app.md) | 91 | `result-track:84b59513d0256e4823dff576d3003c5c799c58f9101471a75611155f9cbd9e19` |
| 10 | `lemma` | [hom_ext_of_isRightKanExtension](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/KanExtensionBasic.lean/declarations/hom-ext-of-isrightkanextension.md) | 95 | `result-track:0d5c51bc3ffe2c007c806bd2d21e828dbba94da9a8ebf127f51aca44ffc911d4` |
| 11 | `def` | [homEquivOfIsRightKanExtension](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/KanExtensionBasic.lean/declarations/homequivofisrightkanextension.md) | 101 | `declaration-track:68f77b8b5327b5040632a7baaaa38ee1a8371fc94f14ba855d605b91cba0605d` |
| 12 | `lemma` | [isRightKanExtension_of_iso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/KanExtensionBasic.lean/declarations/isrightkanextension-of-iso.md) | 108 | `result-track:37006ec6ae4918b410049514e74a6ab8e046ad758660ec259e05ddebc4c698c0` |
| 13 | `lemma` | [isRightKanExtension_iff_of_iso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/KanExtensionBasic.lean/declarations/isrightkanextension-iff-of-iso.md) | 114 | `result-track:c74ccc0523b38e965c8425c174af9f3fe40a20433676fed739e8a1abf5f39628` |
| 14 | `def` | [rightKanExtensionUniqueOfIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/KanExtensionBasic.lean/declarations/rightkanextensionuniqueofiso.md) | 126 | `declaration-track:813229f5400e73c29b8d4e368b1da4367e0315f0eb9ab99b98411f35b88262d0` |
| 15 | `def` | [rightKanExtensionUnique](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/KanExtensionBasic.lean/declarations/rightkanextensionunique.md) | 135 | `declaration-track:f35e55068956ccfccc170cb685ebe31660611d2393c16b51ccfed5d0ca99fc90` |
| 16 | `lemma` | [isRightKanExtension_iff_isIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/KanExtensionBasic.lean/declarations/isrightkanextension-iff-isiso.md) | 140 | `result-track:0718fad9a312be4386f07eb5d911e4dbde2b2c453d53d141d6dbb637a1abd89e` |
| 17 | `class` | [IsLeftKanExtension](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/KanExtensionBasic.lean/declarations/isleftkanextension.md) | 161 | `declaration-track:ae88f87299df3382f2f2c56edd32c1fc96029be62085c3f92a5ba41608d6d950` |
| 18 | `def` | [isUniversalOfIsLeftKanExtension](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/KanExtensionBasic.lean/declarations/isuniversalofisleftkanextension.md) | 168 | `declaration-track:0ae08e585623f86dba6d3d86f57f9ebe8a3b3e2f8662e3041d43cad5b5c9c6d5` |
| 19 | `def` | [descOfIsLeftKanExtension](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/KanExtensionBasic.lean/declarations/descofisleftkanextension.md) | 173 | `declaration-track:df2cda5960f69226dc705c22c2ba758c65f5a7099e5f5e6d75ffb0e00ec15be7` |
| 20 | `lemma` | [descOfIsLeftKanExtension_fac](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/KanExtensionBasic.lean/declarations/descofisleftkanextension-fac.md) | 177 | `result-track:abf797cc63e96bf8827d1cc2c08a5c8b48ae3deec68766bdd6f7fca679a27849` |
| 21 | `lemma` | [descOfIsLeftKanExtension_fac_app](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/KanExtensionBasic.lean/declarations/descofisleftkanextension-fac-app.md) | 182 | `result-track:e35ea9eead9d66952fe4a935d9b9234176e23a1f2d7be8922e2bc437cef63c04` |
| 22 | `lemma` | [hom_ext_of_isLeftKanExtension](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/KanExtensionBasic.lean/declarations/hom-ext-of-isleftkanextension.md) | 186 | `result-track:f109aa3669b1760c724161541fab5f176b92eadb6d2452ce64cf0f9973de7d3d` |
| 23 | `def` | [homEquivOfIsLeftKanExtension](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/KanExtensionBasic.lean/declarations/homequivofisleftkanextension.md) | 192 | `declaration-track:d52428fab37056b3e65cf3100f9f1e579754bbd7755998f1db963d3cfdb45239` |
| 24 | `lemma` | [isLeftKanExtension_of_iso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/KanExtensionBasic.lean/declarations/isleftkanextension-of-iso.md) | 199 | `result-track:251fa64ae0e5c2be80ba8e32e37c7babda63182b2d3e636251c5e7b8e7299bc0` |
| 25 | `lemma` | [isLeftKanExtension_iff_of_iso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/KanExtensionBasic.lean/declarations/isleftkanextension-iff-of-iso.md) | 206 | `result-track:088397ba06d0bc7079b35efe605b50bc419632c08a1dfd74da4d6542a8714692` |
| 26 | `def` | [leftKanExtensionUniqueOfIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/KanExtensionBasic.lean/declarations/leftkanextensionuniqueofiso.md) | 219 | `declaration-track:282501370b3f278bc52b9e82b9e97a3a3e730657dbc856f2c09f8876fe984adc` |
| 27 | `def` | [leftKanExtensionUnique](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/KanExtensionBasic.lean/declarations/leftkanextensionunique.md) | 228 | `declaration-track:4b7fdbfc78829bdee9ef0dfd82dd9557a374d84ff4ef8cf5c79bf985dae9b946` |
| 28 | `lemma` | [isLeftKanExtension_iff_isIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/KanExtensionBasic.lean/declarations/isleftkanextension-iff-isiso.md) | 232 | `result-track:de1ad6266c3fcc10384dc7451fe38093c9b8e8c3bca5edc0f95e395bffccc43e` |
| 29 | `abbrev` | [HasRightKanExtension](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/KanExtensionBasic.lean/declarations/hasrightkanextension.md) | 248 | `declaration-track:aced9acb068015fb890f336230fb860764b4a77b48ff3de3b8782a372879f964` |
| 30 | `lemma` | [HasRightKanExtension.mk](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/KanExtensionBasic.lean/declarations/hasrightkanextension-mk.md) | 250 | `result-track:9293961126bd25ad09452d13c443b51879fb8ba03ee9a1285102e91f2ecfe8ae` |
| 31 | `abbrev` | [HasLeftKanExtension](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/KanExtensionBasic.lean/declarations/hasleftkanextension.md) | 256 | `declaration-track:fd2ae0f4ac0e9219fcfac6d836d5127ff7e9b01f8d330a5609b30fe27b471389` |
| 32 | `lemma` | [HasLeftKanExtension.mk](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/KanExtensionBasic.lean/declarations/hasleftkanextension-mk.md) | 258 | `result-track:2c6b899fd44ac821593d25047ff2ae217c373077fdb4140205169ac3e91e3b88` |
| 33 | `def` | [rightKanExtension](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/KanExtensionBasic.lean/declarations/rightkanextension.md) | 267 | `declaration-track:7b833a23d6361b22f79ffb97022e0f76d6844cd60d1de10056f54c9cf5cf5e72` |
| 34 | `def` | [rightKanExtensionCounit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/KanExtensionBasic.lean/declarations/rightkanextensioncounit.md) | 270 | `declaration-track:a09fcc97292dfdeab1d062b8e111d6f62a30d2b089767ec87ab86a5b461a3584` |
| 35 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/KanExtensionBasic.lean/declarations/instance-source-edition-2.md) | 273 | `declaration-track:2ff069fb057f796b43543fa8e66254df81dc270ba5ed97a51d4635f873163b53` |
| 36 | `lemma` | [rightKanExtension_hom_ext](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/KanExtensionBasic.lean/declarations/rightkanextension-hom-ext.md) | 277 | `result-track:f284e6bac968eeef8f9dbd41db7c0517b649a42e473db4d4dc0056025d878b3c` |
| 37 | `def` | [leftKanExtension](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/KanExtensionBasic.lean/declarations/leftkanextension.md) | 290 | `declaration-track:06860fc78d78946949b85e57d006eb2b65cb2f2c3728e33edba525fdb880c773` |
| 38 | `def` | [leftKanExtensionUnit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/KanExtensionBasic.lean/declarations/leftkanextensionunit.md) | 293 | `declaration-track:e3ad4d8b7e445bf099488d7a8a6adb79e22df1d0fbbd409cbd06460c581e944e` |
| 39 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/KanExtensionBasic.lean/declarations/instance-source-edition-5.md) | 296 | `declaration-track:7f3d88ba3e4def5ce9105b8b33dd244e705de3034b7a2d9846f8b0353624c00f` |
| 40 | `lemma` | [leftKanExtension_hom_ext](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/KanExtensionBasic.lean/declarations/leftkanextension-hom-ext.md) | 300 | `result-track:a32a99c15bd2663658635bd5b4e4fd5b155e437fb668bebd564f3edc6e3bddb2` |
| 41 | `def` | [LeftExtension.postcomp₁](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/KanExtensionBasic.lean/declarations/leftextension-postcomp.md) | 314 | `declaration-track:f8aba73826c9cd94a99d5d9153303f38ad29be7fa0a71e91008c8e0dca8db5f8` |
| 42 | `def` | [RightExtension.postcomp₁](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/KanExtensionBasic.lean/declarations/rightextension-postcomp.md) | 322 | `declaration-track:a27d3bb0070764ecc1ec092f4110cc7df2d5a23c727678b324bdbe4cd8258c39` |
| 43 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/KanExtensionBasic.lean/declarations/instance-source-edition-4.md) | 329 | `declaration-track:5ed7cbe28018d456bf7c87a2eabaa653956d428a029fa312228a4d1465ebf767` |
| 44 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/KanExtensionBasic.lean/declarations/instance.md) | 333 | `declaration-track:277df993bdf3271cc51a50afdfdfd3b925fb6699a9649180cfaaa25c8af62bb1` |
| 45 | `lemma` | [hasLeftExtension_iff_postcomp₁](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/KanExtensionBasic.lean/declarations/hasleftextension-iff-postcomp.md) | 338 | `result-track:98a24defcb2f6dbcb8bb5b5b1123a26e68999d58c5f8a52609bee6b8ddc9a389` |
| 46 | `lemma` | [hasRightExtension_iff_postcomp₁](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/KanExtensionBasic.lean/declarations/hasrightextension-iff-postcomp.md) | 343 | `result-track:e96e3cead56dfbf65c6fa7cae5b89355589042784f9b1590c0d27a62d31bfc56` |
| 47 | `def` | [LeftExtension.isUniversalPostcomp₁Equiv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/KanExtensionBasic.lean/declarations/leftextension-isuniversalpostcomp-equiv.md) | 351 | `declaration-track:0df9029bf6bd1be89c2854d7f52ca10988e79b1c45b89430ee4f73f8b5f393b4` |
| 48 | `def` | [RightExtension.isUniversalPostcomp₁Equiv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/KanExtensionBasic.lean/declarations/rightextension-isuniversalpostcomp-equiv.md) | 357 | `declaration-track:c7d0cba5551290aac978b2bddcd58663d3d7f896d7a2cd8eae2c0c9c870aa0d2` |
| 49 | `lemma` | [isLeftKanExtension_iff_postcomp₁](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/KanExtensionBasic.lean/declarations/isleftkanextension-iff-postcomp.md) | 363 | `result-track:42a8cf1cd4cb74712c5fda8986012f251c6a53b9c646c1f44338ffe5637c1c41` |
| 50 | `lemma` | [isRightKanExtension_iff_postcomp₁](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/KanExtensionBasic.lean/declarations/isrightkanextension-iff-postcomp.md) | 375 | `result-track:8f754bbaf261391a9f1269bdba22e35ffff18ca9ad6f64bb9500d8686b508b39` |
| 51 | `def` | [LeftExtension.precomp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/KanExtensionBasic.lean/declarations/leftextension-precomp.md) | 396 | `declaration-track:82e387f045a4e092cb94f12c2f09b1a20562f8075d7d6e09b2e6ea0cc74317c8` |
| 52 | `def` | [RightExtension.precomp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/KanExtensionBasic.lean/declarations/rightextension-precomp.md) | 402 | `declaration-track:b6d16ce165e68678c5907f30d151642c59e6f6467fbfce7da71616091f377001` |
| 53 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/KanExtensionBasic.lean/declarations/instance-source-edition-6.md) | 407 | `declaration-track:f3db2957e23a45e8fa1efeb7c618845e552a7e8d838dab4c6155469bc5870b6a` |
| 54 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/KanExtensionBasic.lean/declarations/instance-source-edition-3.md) | 410 | `declaration-track:47287ddd5c08e57b5c148860379b658f17bc25105c0f37bd59c4d2f6f4440d83` |
| 55 | `def` | [LeftExtension.isUniversalPrecompEquiv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/KanExtensionBasic.lean/declarations/leftextension-isuniversalprecompequiv.md) | 415 | `declaration-track:a551fff6eb0906ac608e35c598e8f98967d211285d6035db54a18a9b4d37e4a8` |
| 56 | `def` | [RightExtension.isUniversalPrecompEquiv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/KanExtensionBasic.lean/declarations/rightextension-isuniversalprecompequiv.md) | 421 | `declaration-track:a230f9841e19a9b01c07e835244b8df2319b9d62ab8ce9085a4d72a6a5a4eb22` |
| 57 | `lemma` | [isLeftKanExtension_iff_precomp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/KanExtensionBasic.lean/declarations/isleftkanextension-iff-precomp.md) | 427 | `result-track:f6337006ba8bfd5c372c76078642a02324c9494afa7455f6cb8bfc14645f6b18` |
| 58 | `lemma` | [isRightKanExtension_iff_precomp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/KanExtensionBasic.lean/declarations/isrightkanextension-iff-precomp.md) | 438 | `result-track:c353e83ccef6dd229a27e7076f78fd28bdd297377874239a509efa5ffc4a7e7c` |
| 59 | `def` | [rightExtensionEquivalenceOfIso₁](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/KanExtensionBasic.lean/declarations/rightextensionequivalenceofiso-source-edition-2.md) | 457 | `declaration-track:8297c7bf2fd06af056db7608aa9d7bbfdb4c6df210970fcdb49eb1780f4f668d` |
| 60 | `lemma` | [hasRightExtension_iff_of_iso₁](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/KanExtensionBasic.lean/declarations/hasrightextension-iff-of-iso.md) | 461 | `result-track:8b5319c91776246eb8d89e9d07f47ce9c1e9423ba0a0873adc72275e23733fa8` |
| 61 | `def` | [leftExtensionEquivalenceOfIso₁](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/KanExtensionBasic.lean/declarations/leftextensionequivalenceofiso.md) | 466 | `declaration-track:3c0ce07b544682000b0378a08f6cb03cae40b42e26a277a48731abb14c2b98a5` |
| 62 | `lemma` | [hasLeftExtension_iff_of_iso₁](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/KanExtensionBasic.lean/declarations/hasleftextension-iff-of-iso.md) | 470 | `result-track:0616106ee38e6d0a540f9a830f9d2dbb52e3e9709c5db25b3840695514adc2e0` |
| 63 | `def` | [rightExtensionEquivalenceOfIso₂](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/KanExtensionBasic.lean/declarations/rightextensionequivalenceofiso.md) | 481 | `declaration-track:2092e4247c1142d1affd1f77ff8bdcbc8cae56433044b8af610e7f278b50a385` |
| 64 | `lemma` | [hasRightExtension_iff_of_iso₂](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/KanExtensionBasic.lean/declarations/hasrightextension-iff-of-iso-source-edition-2.md) | 485 | `result-track:b58bb4e0bb8e166197c726bd9a55dbf1bcf19537467ac529e8b929b3df8ac565` |
| 65 | `def` | [leftExtensionEquivalenceOfIso₂](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/KanExtensionBasic.lean/declarations/leftextensionequivalenceofiso-source-edition-2.md) | 490 | `declaration-track:bf38af7380ff3cb2bdc1a09bde9f297d12804dbb5ba9a3d52f5781704550b7f0` |
| 66 | `lemma` | [hasLeftExtension_iff_of_iso₂](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/KanExtensionBasic.lean/declarations/hasleftextension-iff-of-iso-source-edition-2.md) | 494 | `result-track:cc1f2a698cf790fda389c6332ce5b06d63fe1199e8a226f007e8befbc3144a1c` |
| 67 | `def` | [LeftExtension.isUniversalEquivOfIso₂](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/KanExtensionBasic.lean/declarations/leftextension-isuniversalequivofiso.md) | 506 | `declaration-track:ac89498ef94a8ef6a9a8be839b98d4f1116907fda3bf373becee383bec274980` |
| 68 | `lemma` | [isLeftKanExtension_iff_of_iso₂](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/KanExtensionBasic.lean/declarations/isleftkanextension-iff-of-iso-source-edition-2.md) | 515 | `result-track:1cf73ebfab68a8837a03d6bbfc467d51c0073443ba0b035a35901a5a5d2678e9` |
| 69 | `def` | [RightExtension.isUniversalEquivOfIso₂](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/KanExtensionBasic.lean/declarations/rightextension-isuniversalequivofiso.md) | 527 | `declaration-track:836597a92adcf37ca2ab68d5748561bec63e4585178cfc80118878fed10da398` |
| 70 | `lemma` | [isRightKanExtension_iff_of_iso₂](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/KanExtensionBasic.lean/declarations/isrightkanextension-iff-of-iso-source-edition-2.md) | 536 | `result-track:e23fc21f7259298a30be2c8500031e3884ab3b7485379f03441fda87dee46d5b` |
| 71 | `def` | [coconeOfIsLeftKanExtension](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/KanExtensionBasic.lean/declarations/coconeofisleftkanextension.md) | 554 | `declaration-track:5a8a4073ca0662bebc95f72d35c59d8611fee9c4be7d5e26d3199a0024c0e626` |
| 72 | `def` | [isColimitCoconeOfIsLeftKanExtension](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/KanExtensionBasic.lean/declarations/iscolimitcoconeofisleftkanextension.md) | 562 | `declaration-track:13931588613991a7d8a9456254848826c383aea40dd83680710891bbed7ec1fd` |
| 73 | `def` | [colimitIsoOfIsLeftKanExtension](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/KanExtensionBasic.lean/declarations/colimitisoofisleftkanextension.md) | 580 | `declaration-track:43de6d5b233d2e0a4960d89cd93992f44ce1fb26ba20235b6f150829dd3f1097` |
| 74 | `lemma` | [ι_colimitIsoOfIsLeftKanExtension_hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/KanExtensionBasic.lean/declarations/colimitisoofisleftkanextension-hom.md) | 585 | `result-track:94a8222bf80c82b04cd7ac5feb17c897849b847948f2bb316407a59fd19e84bb` |
| 75 | `lemma` | [ι_colimitIsoOfIsLeftKanExtension_inv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/KanExtensionBasic.lean/declarations/colimitisoofisleftkanextension-inv.md) | 591 | `result-track:cadc4bc136b3d434393e3a8046415a8887abc642a0586837b9b1b8da1250c146` |
| 76 | `def` | [coneOfIsRightKanExtension](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/KanExtensionBasic.lean/declarations/coneofisrightkanextension.md) | 605 | `declaration-track:304727913c1c2d9cc6023a7855fd2260d3e49b4c2b93c807a020563a2837431c` |
| 77 | `def` | [isLimitConeOfIsRightKanExtension](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/KanExtensionBasic.lean/declarations/islimitconeofisrightkanextension.md) | 613 | `declaration-track:2d52f519d1c3f598f66156b405b6130b76acc0133c81f7226a1b6ea972ae5e3a` |
| 78 | `def` | [limitIsoOfIsRightKanExtension](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/KanExtensionBasic.lean/declarations/limitisoofisrightkanextension.md) | 631 | `declaration-track:efc46693deae1c122f079f8ec97d1d5c461e3bcc0f396f419946e931f70c8956` |
| 79 | `lemma` | [limitIsoOfIsRightKanExtension_inv_π](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/KanExtensionBasic.lean/declarations/limitisoofisrightkanextension-inv.md) | 636 | `result-track:273a820f78fe78b421f4f3d6311665e911a7c9f4bad843bd6b89c578d18e156d` |
| 80 | `lemma` | [limitIsoOfIsRightKanExtension_hom_π](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/KanExtensionBasic.lean/declarations/limitisoofisrightkanextension-hom.md) | 641 | `result-track:131ba638cddff580fdb084c986c334d27e953db47491cff7f173df91ff82c4e8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b14f5b2a943fcca04f8993628f29e6c21f64818389fe6e6b3b95fe64fdf4a7aa -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant02b0deee7710693c0c95f2384aec0e17a6f1c1ef64d7155c26770f34e715bab7.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant02b0deee7710693c0c95f2384aec0e17a6f1c1ef64d7155c26770f34e715bab7.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
