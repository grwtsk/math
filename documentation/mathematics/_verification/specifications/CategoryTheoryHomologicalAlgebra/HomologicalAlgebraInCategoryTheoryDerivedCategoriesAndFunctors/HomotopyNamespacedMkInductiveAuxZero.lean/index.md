# Verification target: Homotopy Namespaced Mk Inductive Aux Zero

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "19fe5f5dcfb35c38458e3137c3be93b6e0818cce",
  "lexical_observation_count": 72,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Homotopy/Variant48308faf4f82954702ace9e1e3c81c0b6094cb5a0325dd50870a2fbe03cd8845.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomotopyNamespacedMkInductiveAuxZero.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomotopyNamespacedMkInductiveAuxZero.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `19fe5f5dcfb35c38458e3137c3be93b6e0818cce`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Homotopy/Variant48308faf4f82954702ace9e1e3c81c0b6094cb5a0325dd50870a2fbe03cd8845.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Homotopy/Variant48308faf4f82954702ace9e1e3c81c0b6094cb5a0325dd50870a2fbe03cd8845.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Homology.Additive` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Abel` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [dNext](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomotopyNamespacedMkInductiveAuxZero.lean/declarations/dnext.md) | 45 | `declaration-track:e1afc02952b99d0591f937a6ae26402627d87f4dd3727799ad68be0cc1da6383` |
| 2 | `def` | [fromNext](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomotopyNamespacedMkInductiveAuxZero.lean/declarations/fromnext.md) | 51 | `declaration-track:d7820c4b96c3790b77c69e993507145d77a14d50e1f58dd598202a9e023f4de9` |
| 3 | `theorem` | [dNext_eq_dFrom_fromNext](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomotopyNamespacedMkInductiveAuxZero.lean/declarations/dnext-eq-dfrom-fromnext.md) | 56 | `result-track:cbb0afdd519734aa5e11099dcdcb3191daba581d92236cff39e447f741758901` |
| 4 | `theorem` | [dNext_eq](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomotopyNamespacedMkInductiveAuxZero.lean/declarations/dnext-eq.md) | 61 | `result-track:bef751dbe14f2f45914338243614627feb40015fcbfec4d3052cd44f7a76c583` |
| 5 | `theorem` | [dNext_comp_left](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomotopyNamespacedMkInductiveAuxZero.lean/declarations/dnext-comp-left.md) | 68 | `result-track:9ced0717803dbc7d4bb36451aa472e94eed6c93848c70ca79cd4fb708859faea` |
| 6 | `theorem` | [dNext_comp_right](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomotopyNamespacedMkInductiveAuxZero.lean/declarations/dnext-comp-right.md) | 74 | `result-track:27cc8df9ea54c5f5e99406a148791688f359115a4522d4cbea6cb41a43c2765d` |
| 7 | `def` | [prevD](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomotopyNamespacedMkInductiveAuxZero.lean/declarations/prevd.md) | 80 | `declaration-track:d491170376b69be5c2018a1d760854cdf6aecdf18ba0562037e247ad205f24ee` |
| 8 | `def` | [toPrev](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomotopyNamespacedMkInductiveAuxZero.lean/declarations/toprev.md) | 86 | `declaration-track:088be2129c91def9fd1699b6f82d9f33f915981db5920deddd0493cdfb893ab4` |
| 9 | `theorem` | [prevD_eq_toPrev_dTo](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomotopyNamespacedMkInductiveAuxZero.lean/declarations/prevd-eq-toprev-dto.md) | 91 | `result-track:153e951eb70766bc19934f66d04225b3f172dedc972cce24dd24edf13ab764cf` |
| 10 | `theorem` | [prevD_eq](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomotopyNamespacedMkInductiveAuxZero.lean/declarations/prevd-eq.md) | 96 | `result-track:a945beda9e5d9bc7ab2fb5e2da6dd52c3d73a4b15f29ece06b0ad50bbbcca3bd` |
| 11 | `theorem` | [prevD_comp_left](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomotopyNamespacedMkInductiveAuxZero.lean/declarations/prevd-comp-left.md) | 103 | `result-track:6c3833b52e43d3dfb381d901a50bdb7c65d1b3ef0c508529395b2ea9cf874044` |
| 12 | `theorem` | [prevD_comp_right](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomotopyNamespacedMkInductiveAuxZero.lean/declarations/prevd-comp-right.md) | 109 | `result-track:48408502128e89fff6f85241ec6e3a2b4ef40694dac8235179f3f633bf85b7e5` |
| 13 | `theorem` | [dNext_nat](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomotopyNamespacedMkInductiveAuxZero.lean/declarations/dnext-nat.md) | 115 | `result-track:22f1710930e7ac9770acbd08b95ee01be443753bc7baafe58c9a95fd6be652b6` |
| 14 | `theorem` | [prevD_nat](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomotopyNamespacedMkInductiveAuxZero.lean/declarations/prevd-nat.md) | 124 | `result-track:4377e067c66ac090cc997da4f5a982b20ed5713e5cb7d62b6a8770e44c4eefd2` |
| 15 | `structure` | [Homotopy](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomotopyNamespacedMkInductiveAuxZero.lean/declarations/homotopy.md) | 138 | `declaration-track:761c97517ae575dbd6709e466046c6e1b725c6e8f1c79ab1749fee5c7ee6c3b1` |
| 16 | `def` | [equivSubZero](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomotopyNamespacedMkInductiveAuxZero.lean/declarations/equivsubzero.md) | 150 | `declaration-track:e9ac43313821e4d27828a87595a9422f7471214d45455920e09cf1c1fdf1602d` |
| 17 | `def` | [ofEq](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomotopyNamespacedMkInductiveAuxZero.lean/declarations/ofeq.md) | 165 | `declaration-track:324ed24aa7ed5e988b28301e6f3f8b7cf8a29c31b91dddcccf9e9f07f6d28c9f` |
| 18 | `def` | [refl](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomotopyNamespacedMkInductiveAuxZero.lean/declarations/refl.md) | 172 | `declaration-track:531a0a76af4a9da6a3d94ceb512a2101177735b8bc37a08f3aa473df35c229c4` |
| 19 | `def` | [symm](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomotopyNamespacedMkInductiveAuxZero.lean/declarations/symm.md) | 178 | `declaration-track:2a3131992c18900e5a56b6ab9896f5a80e070fb78dcaaeb0ed2f72a4790663cc` |
| 20 | `def` | [trans](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomotopyNamespacedMkInductiveAuxZero.lean/declarations/trans.md) | 188 | `declaration-track:daf888f016559510e4cc28f3b55156748b641f3610d84b15743db8c3d43ea6f3` |
| 21 | `def` | [add](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomotopyNamespacedMkInductiveAuxZero.lean/declarations/add.md) | 198 | `declaration-track:4fe16f366c56796e3a98c5dacbcaaabcceabdacc1614df6a01f08f4bc6fc468e` |
| 22 | `def` | [compRight](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomotopyNamespacedMkInductiveAuxZero.lean/declarations/compright.md) | 209 | `declaration-track:745efef980fb863e50d24a5f2f62d0beece329ff6a8a658edb228c98bba464dd` |
| 23 | `def` | [compLeft](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomotopyNamespacedMkInductiveAuxZero.lean/declarations/compleft.md) | 218 | `declaration-track:ba5523950dd477534e18ef4daa32b93deb837eea4cef8039641eb601ba58831c` |
| 24 | `def` | [comp](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomotopyNamespacedMkInductiveAuxZero.lean/declarations/comp.md) | 227 | `declaration-track:413ff659653e9d413a1317d69abfa229f7d953a3d3542d107d129ccd08e278de` |
| 25 | `def` | [compRightId](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomotopyNamespacedMkInductiveAuxZero.lean/declarations/comprightid.md) | 234 | `declaration-track:5a9a0c7ce8636b0ba682e5afced2b54f65c383b0c3e721d0533ca5c1ca963f7d` |
| 26 | `def` | [compLeftId](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomotopyNamespacedMkInductiveAuxZero.lean/declarations/compleftid.md) | 240 | `declaration-track:3d8bdf77ad1b59b762a8ea70b3e0c462deaafd22d493929b2baa520fefa60c51` |
| 27 | `def` | [nullHomotopicMap](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomotopyNamespacedMkInductiveAuxZero.lean/declarations/nullhomotopicmap.md) | 256 | `declaration-track:225f2e22df60b60d8f8140e9a309bb7b5a76713822e1bdd5ebd0ff34c0077746` |
| 28 | `def` | [nullHomotopicMap'](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomotopyNamespacedMkInductiveAuxZero.lean/declarations/nullhomotopicmap-source-edition-2.md) | 270 | `declaration-track:88685325123d911821de3ddd42615fe2a80accf915a2445d293c10a1b56749a9` |
| 29 | `theorem` | [nullHomotopicMap_comp](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomotopyNamespacedMkInductiveAuxZero.lean/declarations/nullhomotopicmap-comp.md) | 276 | `result-track:9a102c908948e6f6258757d5b592fc73f6398c7af68e7152657a50a25b134e21` |
| 30 | `theorem` | [nullHomotopicMap'_comp](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomotopyNamespacedMkInductiveAuxZero.lean/declarations/nullhomotopicmap-comp-source-edition-2.md) | 285 | `result-track:f35d59d0e409e643002527fdad14dab3ee2a5b096cc7a3c3b99f51ec57423a96` |
| 31 | `theorem` | [comp_nullHomotopicMap](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomotopyNamespacedMkInductiveAuxZero.lean/declarations/comp-nullhomotopicmap.md) | 298 | `result-track:49382f933984d1bcbce4a68e5d055687c07f728f99d7f7c8751752a1f8f72776` |
| 32 | `theorem` | [comp_nullHomotopicMap'](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomotopyNamespacedMkInductiveAuxZero.lean/declarations/comp-nullhomotopicmap-source-edition-2.md) | 307 | `result-track:5fcf00dcaab9a5ff951c20ae1552669521ae50490c9468f90b2cf791e4f9bc73` |
| 33 | `theorem` | [map_nullHomotopicMap](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomotopyNamespacedMkInductiveAuxZero.lean/declarations/map-nullhomotopicmap.md) | 319 | `result-track:7ce581e9423879d05a8172be511b11ff7967ccd5ff16f6ab6fcfbef61b6045e5` |
| 34 | `theorem` | [map_nullHomotopicMap'](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomotopyNamespacedMkInductiveAuxZero.lean/declarations/map-nullhomotopicmap-source-edition-2.md) | 329 | `result-track:ba57fcbecfb04589a0c4626d67b8194e7d72efee0cd728e4defb8792716441e4` |
| 35 | `def` | [nullHomotopy](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomotopyNamespacedMkInductiveAuxZero.lean/declarations/nullhomotopy-source-edition-2.md) | 345 | `declaration-track:840b012bee60c418448a1f64ccdf77779d3ba874f71957820c0272c72cbfc544` |
| 36 | `def` | [nullHomotopy'](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomotopyNamespacedMkInductiveAuxZero.lean/declarations/nullhomotopy.md) | 357 | `declaration-track:2f674f404b0e9572deced0583b072e03b85ca256e84c5b5c3ac8bd0e102bb6e8` |
| 37 | `theorem` | [nullHomotopicMap_f](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomotopyNamespacedMkInductiveAuxZero.lean/declarations/nullhomotopicmap-f-source-edition-2.md) | 372 | `result-track:6c27699f99e2a994c57ee127e04fc6ce77d995aa9452e7c0340d6e157b11f7be` |
| 38 | `theorem` | [nullHomotopicMap'_f](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomotopyNamespacedMkInductiveAuxZero.lean/declarations/nullhomotopicmap-f.md) | 380 | `result-track:1e1016de93abff296e22c7e2aa22326afce31191789d87663348f27446dc39e7` |
| 39 | `theorem` | [nullHomotopicMap_f_of_not_rel_left](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomotopyNamespacedMkInductiveAuxZero.lean/declarations/nullhomotopicmap-f-of-not-rel-left-source-edition-2.md) | 390 | `result-track:541ce512e766fdd458d2b30993618b6ae56d5bbc30643d4b7c32e6636d92118d` |
| 40 | `theorem` | [nullHomotopicMap'_f_of_not_rel_left](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomotopyNamespacedMkInductiveAuxZero.lean/declarations/nullhomotopicmap-f-of-not-rel-left.md) | 399 | `result-track:2728258e3c9fb25ddfc307cc5237a26e3c3fc8a6385a19b36de6f8bfc6d5a3ab` |
| 41 | `theorem` | [nullHomotopicMap_f_of_not_rel_right](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomotopyNamespacedMkInductiveAuxZero.lean/declarations/nullhomotopicmap-f-of-not-rel-right-source-edition-2.md) | 409 | `result-track:dd3c6b7466ac91e98f2fd23e9bd35bcb0868c100cba6a941fcfe93dd080e6dba` |
| 42 | `theorem` | [nullHomotopicMap'_f_of_not_rel_right](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomotopyNamespacedMkInductiveAuxZero.lean/declarations/nullhomotopicmap-f-of-not-rel-right.md) | 418 | `result-track:08e1e80aceebd6e20e2d226c964aa2818fde7a42faeb3183ef67f0149d9fcf35` |
| 43 | `theorem` | [nullHomotopicMap_f_eq_zero](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomotopyNamespacedMkInductiveAuxZero.lean/declarations/nullhomotopicmap-f-eq-zero-source-edition-2.md) | 428 | `result-track:d0039ff21128f6ad9b801f72aef82bc726c4556782c9fd9515cced2a50669187` |
| 44 | `theorem` | [nullHomotopicMap'_f_eq_zero](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomotopyNamespacedMkInductiveAuxZero.lean/declarations/nullhomotopicmap-f-eq-zero.md) | 436 | `result-track:3ca449ee6a7a49cd3fc76fdb99ea3e87adb4cf5a65dcc8148be185329daa6abb` |
| 45 | `theorem` | [prevD_chainComplex](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomotopyNamespacedMkInductiveAuxZero.lean/declarations/prevd-chaincomplex.md) | 463 | `result-track:66cf18db0cdc4f584e850d6985a4c475529c2f14fd68f862b245b1634c2ac117` |
| 46 | `theorem` | [dNext_succ_chainComplex](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomotopyNamespacedMkInductiveAuxZero.lean/declarations/dnext-succ-chaincomplex.md) | 471 | `result-track:f0c7fde8e0d2c871974d8f3e7561dd45f935a7b90962f14b900f1ef690a71e53` |
| 47 | `theorem` | [dNext_zero_chainComplex](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomotopyNamespacedMkInductiveAuxZero.lean/declarations/dnext-zero-chaincomplex.md) | 479 | `result-track:00f3ab367f41668c063238c282f4da7ee0c554f723961d533a7a955c9cabc42b` |
| 48 | `def` | [mkInductiveAux₁](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomotopyNamespacedMkInductiveAuxZero.lean/declarations/mkinductiveaux-source-edition-3.md) | 507 | `declaration-track:bf92e0c2cb246f6ca018ec7bffe92a9a35ee9b5a1607d34d9088fd98553e4290` |
| 49 | `def` | [mkInductiveAux₂](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomotopyNamespacedMkInductiveAuxZero.lean/declarations/mkinductiveaux-source-edition-2.md) | 522 | `declaration-track:b934b32c444e2c69cea31647a05028d20d6085766ea73f343f1189f8821ead3a` |
| 50 | `theorem` | [mkInductiveAux₂_zero](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomotopyNamespacedMkInductiveAuxZero.lean/declarations/mkinductiveaux-zero.md) | 531 | `result-track:5f361aa3810bcf390290487191f08d8187b2dd78025201e1d82665195a50ba65` |
| 51 | `theorem` | [mkInductiveAux₂_add_one](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomotopyNamespacedMkInductiveAuxZero.lean/declarations/mkinductiveaux-add-one.md) | 536 | `result-track:a06115d4b34e965de9177214896b57bc7782662745e2bbc11c384eea73c01206` |
| 52 | `theorem` | [mkInductiveAux₃](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomotopyNamespacedMkInductiveAuxZero.lean/declarations/mkinductiveaux.md) | 546 | `result-track:1e410f578bb77ccfce583f252d9655397ca04a772808819cb0b93889e93a9f8a` |
| 53 | `def` | [mkInductive](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomotopyNamespacedMkInductiveAuxZero.lean/declarations/mkinductive.md) | 562 | `declaration-track:937b619ea4a65b4f44c822209c889cd6f8d2ff2a363485a6ee4e43387adb2dab` |
| 54 | `theorem` | [dNext_cochainComplex](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomotopyNamespacedMkInductiveAuxZero.lean/declarations/dnext-cochaincomplex.md) | 602 | `result-track:091d6b720c9e8fb42b718088451b4707586edc0c6f653535633ebab1d2f76c1e` |
| 55 | `theorem` | [prevD_succ_cochainComplex](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomotopyNamespacedMkInductiveAuxZero.lean/declarations/prevd-succ-cochaincomplex.md) | 610 | `result-track:6422565c5395073eacb41408afc73272667206e0695c3a725bfafb5381848915` |
| 56 | `theorem` | [prevD_zero_cochainComplex](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomotopyNamespacedMkInductiveAuxZero.lean/declarations/prevd-zero-cochaincomplex.md) | 618 | `result-track:c68621162b103a4051ac24191648ac6468b7b325151c2289e610600706cd7cf4` |
| 57 | `def` | [mkCoinductiveAux₁](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomotopyNamespacedMkInductiveAuxZero.lean/declarations/mkcoinductiveaux.md) | 646 | `declaration-track:40969284948a76d5208af7aab8bb5203dcb1114fc3b37259dce15ba6a84b6e4e` |
| 58 | `def` | [mkCoinductiveAux₂](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomotopyNamespacedMkInductiveAuxZero.lean/declarations/mkcoinductiveaux-source-edition-2.md) | 661 | `declaration-track:8d8adcb0c131b8fb424072db2740cbe35f80864c540fbe38e1df3f7d126e3a74` |
| 59 | `theorem` | [mkCoinductiveAux₂_zero](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomotopyNamespacedMkInductiveAuxZero.lean/declarations/mkcoinductiveaux-zero.md) | 669 | `result-track:3a4fab2579519c44667655b4dc9fee240b4c54441a5d8982b8a07661ff31c2fe` |
| 60 | `theorem` | [mkCoinductiveAux₂_add_one](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomotopyNamespacedMkInductiveAuxZero.lean/declarations/mkcoinductiveaux-add-one.md) | 674 | `result-track:a40d71e726ebdfccefc6f56f22b8d279564bb6f1fc989e67f32a15fbf45f81d1` |
| 61 | `theorem` | [mkCoinductiveAux₃](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomotopyNamespacedMkInductiveAuxZero.lean/declarations/mkcoinductiveaux-source-edition-3.md) | 684 | `result-track:b7974c49336ca5237180877ed63da1345f8b14b9bed8dd9eb957592ff984117d` |
| 62 | `def` | [mkCoinductive](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomotopyNamespacedMkInductiveAuxZero.lean/declarations/mkcoinductive.md) | 700 | `declaration-track:fc630994d62eb11cc68b78deebf10aff3ce0627674d7a7567c218d96edb66388` |
| 63 | `structure` | [HomotopyEquiv](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomotopyNamespacedMkInductiveAuxZero.lean/declarations/homotopyequiv.md) | 738 | `declaration-track:95bbfa0ed85e14e3680d364a658f6dd8feabc86170cfd15ad026efa16b0f58a6` |
| 64 | `def` | [refl](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomotopyNamespacedMkInductiveAuxZero.lean/declarations/refl-source-edition-2.md) | 749 | `declaration-track:81ff98b9d6acaf8789c4b52942cfed070b7e0c47482712cd159928a31dfd5e3f` |
| 65 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomotopyNamespacedMkInductiveAuxZero.lean/declarations/instance.md) | 756 | `declaration-track:5cb30662d127029496388138b3064adfa21ca43e2ea3c5afaf7f4318243ff9bb` |
| 66 | `def` | [symm](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomotopyNamespacedMkInductiveAuxZero.lean/declarations/symm-source-edition-2.md) | 761 | `declaration-track:530290a550fdb43213ed308eadf36b2bdc712575ae1dd44e1de5ea8108ea30f4` |
| 67 | `def` | [trans](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomotopyNamespacedMkInductiveAuxZero.lean/declarations/trans-source-edition-2.md) | 770 | `declaration-track:ec7dea282f555a2f1aedbfb443ced4844a1dbe06abfc5c4680e0f41fe03e3655` |
| 68 | `def` | [ofIso](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomotopyNamespacedMkInductiveAuxZero.lean/declarations/ofiso.md) | 781 | `declaration-track:c937c27ca37fe7761f1660e627d3c5de9a880f898bcebaac13d575cf883911b8` |
| 69 | `theorem` | [homology_map_eq_of_homotopy](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomotopyNamespacedMkInductiveAuxZero.lean/declarations/homology-map-eq-of-homotopy.md) | 792 | `result-track:d0fb5e138e6c918f5c3d76553daae171295b3a5878d1e26ed22b9cb19aeffa0e` |
| 70 | `def` | [homologyObjIsoOfHomotopyEquiv](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomotopyNamespacedMkInductiveAuxZero.lean/declarations/homologyobjisoofhomotopyequiv.md) | 811 | `declaration-track:3eb3cac7ac3e1c75f089e27b3a8deffe901b5a42f5b28428d9cfd6770ad4c2ce` |
| 71 | `def` | [Functor.mapHomotopy](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomotopyNamespacedMkInductiveAuxZero.lean/declarations/functor-maphomotopy.md) | 831 | `declaration-track:4d08b5b9d722d074cd7c6e2e5d2c67adbc51cec28bb34ec3b66d1c748e14241e` |
| 72 | `def` | [Functor.mapHomotopyEquiv](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomotopyNamespacedMkInductiveAuxZero.lean/declarations/functor-maphomotopyequiv.md) | 843 | `declaration-track:391bbe3558e0dc9b7ffff0802e34931b4f798093c804e3752a1439c8a8fd6e70` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0b6876a94dc2cc61230005a248b4ebb5f6cacf3c3a9fd60bdcc3798b64f0a982 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Homotopy/Variant48308faf4f82954702ace9e1e3c81c0b6094cb5a0325dd50870a2fbe03cd8845.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Homotopy/Variant48308faf4f82954702ace9e1e3c81c0b6094cb5a0325dd50870a2fbe03cd8845.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
