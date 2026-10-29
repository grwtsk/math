# Verification target: Monad Adjunction Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "75b8b4de092ad8b99ed9dcc83b953575d957cfed",
  "lexical_observation_count": 44,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantec442bb7bd742e69d0ed42ac47e1423041bededbf0b1d30c5a85ae3062079c2e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonadAdjunctionNamespacedPublic.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonadAdjunctionNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `75b8b4de092ad8b99ed9dcc83b953575d957cfed`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantec442bb7bd742e69d0ed42ac47e1423041bededbf0b1d30c5a85ae3062079c2e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantec442bb7bd742e69d0ed42ac47e1423041bededbf0b1d30c5a85ae3062079c2e.lean.json)

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
| 1 | `def` | [toMonad](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonadAdjunctionNamespacedPublic.lean/declarations/tomonad.md) | 57 | `declaration-track:5fe0fbe0924a5518c89883e4ef085992c0457f0c51066511d6bdaf1c99a7b0bb` |
| 2 | `def` | [toComonad](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonadAdjunctionNamespacedPublic.lean/declarations/tocomonad.md) | 75 | `declaration-track:ebc5405476694ec53cc746bf0afce129c644621527c5fb95fec60e61a0e0a938` |
| 3 | `def` | [adjToMonadIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonadAdjunctionNamespacedPublic.lean/declarations/adjtomonadiso.md) | 92 | `declaration-track:45085cf36bebc475e360b00ed5b53bea7fdd9267c5aba82e351eb792e8686047` |
| 4 | `def` | [adjToComonadIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonadAdjunctionNamespacedPublic.lean/declarations/adjtocomonadiso.md) | 99 | `declaration-track:23ea13aa26d503b49c6f9215331b715412cebc8260187344cced347f4be60a74` |
| 5 | `def` | [unitAsIsoOfIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonadAdjunctionNamespacedPublic.lean/declarations/unitasisoofiso.md) | 107 | `declaration-track:a51f0bc6171b3bcc89c4ba2e6d22361dce63ce9e2e6392fddc8b92f7bec045fd` |
| 6 | `lemma` | [isIso_unit_of_iso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonadAdjunctionNamespacedPublic.lean/declarations/isiso-unit-of-iso.md) | 120 | `result-track:b82102bda223b2350b4fd54ce783fe327c4c80793b89cb3265aebe3d6a5f07e9` |
| 7 | `def` | [fullyFaithfulLOfCompIsoId](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonadAdjunctionNamespacedPublic.lean/declarations/fullyfaithfullofcompisoid.md) | 127 | `declaration-track:29e1cccaf4fa49f25aabcc755bf3cfef423bbc25da2eae9e1340b9aa1eb5c806` |
| 8 | `def` | [counitAsIsoOfIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonadAdjunctionNamespacedPublic.lean/declarations/counitasisoofiso.md) | 136 | `declaration-track:1cf5784659fb34952a18d27ddf6b1379434c67d996a2e4b3441c31f3a93fde9d` |
| 9 | `lemma` | [isIso_counit_of_iso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonadAdjunctionNamespacedPublic.lean/declarations/isiso-counit-of-iso.md) | 149 | `result-track:3a2b0954fcb1d44481bd8bb06e67160bc1a31138fb5be7a917bc402522bd38b5` |
| 10 | `def` | [fullyFaithfulROfCompIsoId](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonadAdjunctionNamespacedPublic.lean/declarations/fullyfaithfulrofcompisoid.md) | 156 | `declaration-track:5ee4f9d45ad7a7c4342a1b5ebb11561c6571d6fdf1779c07a901cfdd8d4ac88e` |
| 11 | `def` | [Monad.comparison](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonadAdjunctionNamespacedPublic.lean/declarations/monad-comparison.md) | 170 | `declaration-track:3c7c0ca7d996d866081234eafb459dc776a688fada5692175a274b423e7ee0e7` |
| 12 | `def` | [Monad.comparisonForget](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonadAdjunctionNamespacedPublic.lean/declarations/monad-comparisonforget.md) | 187 | `declaration-track:7ebce7f493554a9244844b066063ace5eb66dd714b255cce1f99e8d52663dd80` |
| 13 | `theorem` | [Monad.left_comparison](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonadAdjunctionNamespacedPublic.lean/declarations/monad-left-comparison.md) | 191 | `result-track:180bd931c91e8f5a137b4b3001d89e0ab1d8a486c3fb3e8f16c94501c8fb5cc2` |
| 14 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonadAdjunctionNamespacedPublic.lean/declarations/instance-source-edition-12.md) | 194 | `declaration-track:c7ecf85675bb99384065db7fea70aeb3b3892260a61c88820a2a21a435d83dcc` |
| 15 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonadAdjunctionNamespacedPublic.lean/declarations/instance-source-edition-4.md) | 197 | `declaration-track:192a7b5ae76b83458915e98f2a89db3fa268f70c276eaa59ca325180ad1ae936` |
| 16 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonadAdjunctionNamespacedPublic.lean/declarations/instance-source-edition-14.md) | 202 | `declaration-track:cea92dc5d01aa6709856d30b7a72aa8b6c7a36390142a956f0e084f5164a0aa3` |
| 17 | `def` | [Comonad.comparison](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonadAdjunctionNamespacedPublic.lean/declarations/comonad-comparison.md) | 217 | `declaration-track:a2379fd25803354fed14a01556024f8ef7f884ac932e32da62d69ecc01a2a1cb` |
| 18 | `def` | [Comonad.comparisonForget](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonadAdjunctionNamespacedPublic.lean/declarations/comonad-comparisonforget.md) | 235 | `declaration-track:eafaecfd8146aaeda0ed40e30781ec4163b32f45c17e8e82c395c1139bd278cf` |
| 19 | `theorem` | [Comonad.left_comparison](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonadAdjunctionNamespacedPublic.lean/declarations/comonad-left-comparison.md) | 240 | `result-track:5920f68baca0ec448e187a9f2eb6b066c5887df0b5f5e7577ca401e0287064d9` |
| 20 | `instance` | [Comonad.comparison_faithful_of_faithful](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonadAdjunctionNamespacedPublic.lean/declarations/comonad-comparison-faithful-of-faithful.md) | 243 | `declaration-track:2e49ae54970a35545160d1212cfe226d5efe2e0b803de1a080157fb033cd065e` |
| 21 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonadAdjunctionNamespacedPublic.lean/declarations/instance-source-edition-15.md) | 247 | `declaration-track:e976caa389f07e0b94cb0c47501620417c4043ab7818d5bc22ef0378f7458ae2` |
| 22 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonadAdjunctionNamespacedPublic.lean/declarations/instance.md) | 252 | `declaration-track:0048b7f3b1defe3d8ac35395c41bbad26fbb42c58136a3637722e0fed74712a3` |
| 23 | `class` | [MonadicRightAdjoint](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonadAdjunctionNamespacedPublic.lean/declarations/monadicrightadjoint.md) | 263 | `declaration-track:4d93f659802a182d4c9a69d516d95074d2296c9389845e73b567d8281b4d7fed` |
| 24 | `def` | [monadicLeftAdjoint](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonadAdjunctionNamespacedPublic.lean/declarations/monadicleftadjoint.md) | 271 | `declaration-track:9e0a20957457a7e63ba4ed14df01c5a153562c3ab8a8bda9edc1579e357707f2` |
| 25 | `def` | [monadicAdjunction](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonadAdjunctionNamespacedPublic.lean/declarations/monadicadjunction.md) | 275 | `declaration-track:6dff73eb4f8d1511671f1140eae1dba1640935a149d484d29ca35fc63a6b2fb1` |
| 26 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonadAdjunctionNamespacedPublic.lean/declarations/instance-source-edition-5.md) | 279 | `declaration-track:332e9fa7b71dd44602fb8916afb1eea34be45124381b4297f97abbee5d168e4e` |
| 27 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonadAdjunctionNamespacedPublic.lean/declarations/instance-source-edition-6.md) | 283 | `declaration-track:54d8fc869ece09946154ad232725d518b452d3ed13533ada128d7b1c4b3c1ef0` |
| 28 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonadAdjunctionNamespacedPublic.lean/declarations/instance-source-edition-9.md) | 286 | `declaration-track:9697505c11dd391b07d44258704e3a6cd758753f2bd22025ccbcdd0dd11c06f5` |
| 29 | `class` | [ComonadicLeftAdjoint](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonadAdjunctionNamespacedPublic.lean/declarations/comonadicleftadjoint.md) | 295 | `declaration-track:c2d1dc5d94d952b6d83cc46d110ae49744c02d51b855a5ae0a64102908f97cd6` |
| 30 | `def` | [comonadicRightAdjoint](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonadAdjunctionNamespacedPublic.lean/declarations/comonadicrightadjoint.md) | 303 | `declaration-track:a69c0e5858f57d7bead0e6327a9d6efbd2480b9974496246b1d7adb27b021dd7` |
| 31 | `def` | [comonadicAdjunction](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonadAdjunctionNamespacedPublic.lean/declarations/comonadicadjunction.md) | 307 | `declaration-track:1b1a662a7bef86286e700f370cfac1b5b877db5e5d1e768e029e9276a67d884d` |
| 32 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonadAdjunctionNamespacedPublic.lean/declarations/instance-source-edition-3.md) | 311 | `declaration-track:111a1f55a1b6b665fbc501f52bfa29f564e508d882f36324223542d3bccd21ba` |
| 33 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonadAdjunctionNamespacedPublic.lean/declarations/instance-source-edition-13.md) | 315 | `declaration-track:cbf1cb6ce6a845e4e690720c02af74cce6f786e9d901f7c62e62aeb04191569c` |
| 34 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonadAdjunctionNamespacedPublic.lean/declarations/instance-source-edition-11.md) | 318 | `declaration-track:c20755da0571289528b3a0a82610cb839a5e2c4fc0fdd6e80dfd0b4abbf29e74` |
| 35 | `instance` | [μ_iso_of_reflective](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonadAdjunctionNamespacedPublic.lean/declarations/iso-of-reflective.md) | 325 | `declaration-track:13ffa21ac02adf7dcde5c1128b8a11a386320f6d4a97d907bbe578eb7ea34459` |
| 36 | `instance` | [δ_iso_of_coreflective](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonadAdjunctionNamespacedPublic.lean/declarations/iso-of-coreflective.md) | 330 | `declaration-track:6def279dc60c6dcbe30b20a12630da22ccec3b56fb757c032f5f3b647480d4d8` |
| 37 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonadAdjunctionNamespacedPublic.lean/declarations/instance-source-edition-7.md) | 341 | `declaration-track:60a7a69e2e80d8a4ea1c5c53a69e302f20ffa169ecb013ea1c98e86a2ed747c3` |
| 38 | `instance` | [comparison_essSurj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonadAdjunctionNamespacedPublic.lean/declarations/comparison-esssurj-source-edition-2.md) | 354 | `declaration-track:72531c4e8b56344fb75c2633669c7905d56875ede49e02a1e13a132bc62c50c6` |
| 39 | `lemma` | [comparison_full](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonadAdjunctionNamespacedPublic.lean/declarations/comparison-full-source-edition-2.md) | 369 | `result-track:ef48e6736876236f8d971118b2b023e6ad2a4b23bba2d0f66f34436ce373625c` |
| 40 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonadAdjunctionNamespacedPublic.lean/declarations/instance-source-edition-10.md) | 379 | `declaration-track:b66318f91f38cef2ae2bfb081e79907491da926eccd406e92a46d2b74de10646` |
| 41 | `instance` | [comparison_essSurj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonadAdjunctionNamespacedPublic.lean/declarations/comparison-esssurj.md) | 391 | `declaration-track:1630c388887f8f98abff6e2e5a40740a7d8c01b2aa5197addf0ced6165b87ac6` |
| 42 | `lemma` | [comparison_full](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonadAdjunctionNamespacedPublic.lean/declarations/comparison-full.md) | 402 | `result-track:35dbb64ca4f4226c1ffc1224d4e7a58ea0247d4932e02e37535a82892b7a585a` |
| 43 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonadAdjunctionNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 413 | `declaration-track:08265eb6700522603df04b235149aed763ba0f29bd342d0f4873435c2a93d516` |
| 44 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonadAdjunctionNamespacedPublic.lean/declarations/instance-source-edition-8.md) | 421 | `declaration-track:87ffef804c3130067b7fd795bfabf9808d80da6e4c40ef028fa72b164e108f74` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=43e2960bfc4627dffa730b1c9c01fd6f62d22d57f3acc63ca45f4f8c70862a72 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantec442bb7bd742e69d0ed42ac47e1423041bededbf0b1d30c5a85ae3062079c2e.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantec442bb7bd742e69d0ed42ac47e1423041bededbf0b1d30c5a85ae3062079c2e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
