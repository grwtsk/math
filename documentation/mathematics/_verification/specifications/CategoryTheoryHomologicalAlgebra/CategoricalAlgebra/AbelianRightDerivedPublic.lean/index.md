# Verification target: Abelian Right Derived Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "edd6de2c456a25a304893d9c89c9749a29c577b5",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/RightDerived/Variantc48a25257162053eb9d974e75a504f7502068b41d0d98c49c80e1dc4a5139b28.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianRightDerivedPublic.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianRightDerivedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `edd6de2c456a25a304893d9c89c9749a29c577b5`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/RightDerived/Variantc48a25257162053eb9d974e75a504f7502068b41d0d98c49c80e1dc4a5139b28.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/RightDerived/Variantc48a25257162053eb9d974e75a504f7502068b41d0d98c49c80e1dc4a5139b28.lean.json)

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
| 1 | `def` | [Functor.rightDerivedToHomotopyCategory](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianRightDerivedPublic.lean/declarations/functor-rightderivedtohomotopycategory.md) | 65 | `declaration-track:d13b090c2d81145f7535b360d57a93bb8de41a68855e102438b932d1f9604eae` |
| 2 | `def` | [InjectiveResolution.isoRightDerivedToHomotopyCategoryObj](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianRightDerivedPublic.lean/declarations/injectiveresolution-isorightderivedtohomotopycategoryobj.md) | 72 | `declaration-track:b27ff50dd9878987047d75234dbf6a7bbc0bd0723f350a1f6e2e64368d003dec` |
| 3 | `lemma` | [InjectiveResolution.isoRightDerivedToHomotopyCategoryObj_hom_naturality](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianRightDerivedPublic.lean/declarations/injectiveresolution-isorightderivedtohomotopycategoryobj-hom-naturality.md) | 81 | `result-track:64e4fc74d93123e0e9f31ea02490b6ed8d41240c60868ea8c9f9ccbf6f5f4987` |
| 4 | `lemma` | [InjectiveResolution.isoRightDerivedToHomotopyCategoryObj_inv_naturality](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianRightDerivedPublic.lean/declarations/injectiveresolution-isorightderivedtohomotopycategoryobj-inv-naturality.md) | 96 | `result-track:f672c614cb0bb50248a4fe32fddd79aa8aa1bc09e0ce563c61e325352c2919cc` |
| 5 | `def` | [Functor.rightDerived](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianRightDerivedPublic.lean/declarations/functor-rightderived.md) | 109 | `declaration-track:ca72dbfcd7569f6cb4bd52b8ac61eafd8399fd3a5dfa9b59c1650ce60f17c5af` |
| 6 | `def` | [InjectiveResolution.isoRightDerivedObj](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianRightDerivedPublic.lean/declarations/injectiveresolution-isorightderivedobj.md) | 113 | `declaration-track:29c9fe51f80b78d63c618fcfed80a9e658b84debcc97d76bf8ac3226b0d39292` |
| 7 | `lemma` | [InjectiveResolution.isoRightDerivedObj_hom_naturality](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianRightDerivedPublic.lean/declarations/injectiveresolution-isorightderivedobj-hom-naturality.md) | 125 | `result-track:4c6feda880d2c803b42fa3e5956049351dd7e5714fbb27b5c47e36f279e26891` |
| 8 | `lemma` | [InjectiveResolution.isoRightDerivedObj_inv_naturality](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianRightDerivedPublic.lean/declarations/injectiveresolution-isorightderivedobj-inv-naturality.md) | 140 | `result-track:e113ef16fbcab14ccae5c38ce38ba31d237112a57dded7fd32042dfbb4bcd39e` |
| 9 | `lemma` | [Functor.isZero_rightDerived_obj_injective_succ](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianRightDerivedPublic.lean/declarations/functor-iszero-rightderived-obj-injective-succ.md) | 152 | `result-track:2912b65a8baafbbec705c6de787b65e6726ec4fe2e75694ff0d5db01e776f4dc` |
| 10 | `theorem` | [Functor.rightDerived_map_eq](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianRightDerivedPublic.lean/declarations/functor-rightderived-map-eq.md) | 163 | `result-track:b0cf6eafb380ff00ad843718ba40c2a92bbc4b17ed1baf124a1031328a8b7448` |
| 11 | `def` | [NatTrans.rightDerivedToHomotopyCategory](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianRightDerivedPublic.lean/declarations/nattrans-rightderivedtohomotopycategory.md) | 179 | `declaration-track:27a03bf90e9cbe7021f94db98e69a4d17576fc00011a856069defeea438feca5` |
| 12 | `lemma` | [InjectiveResolution.rightDerivedToHomotopyCategory_app_eq](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianRightDerivedPublic.lean/declarations/injectiveresolution-rightderivedtohomotopycategory-app-eq.md) | 186 | `result-track:2b8767f476e522d4854887850f8332584024f970ae27cd54f8569cb1f9a7fc42` |
| 13 | `lemma` | [NatTrans.rightDerivedToHomotopyCategory_id](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianRightDerivedPublic.lean/declarations/nattrans-rightderivedtohomotopycategory-id.md) | 206 | `result-track:1502b72523b3df04427de47c0ee1f7b2f17053547b538efc4ad237351d7ba9fe` |
| 14 | `lemma` | [NatTrans.rightDerivedToHomotopyCategory_comp](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianRightDerivedPublic.lean/declarations/nattrans-rightderivedtohomotopycategory-comp.md) | 210 | `result-track:45e106303f222f5f4c431928c61a045ddd31d83666a3244699c3443a6709c7f2` |
| 15 | `def` | [NatTrans.rightDerived](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianRightDerivedPublic.lean/declarations/nattrans-rightderived.md) | 218 | `declaration-track:6b0e17bb21a1878c35644a23bd38ae825cb252341f04df1b907dd67854187438` |
| 16 | `theorem` | [NatTrans.rightDerived_id](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianRightDerivedPublic.lean/declarations/nattrans-rightderived-id.md) | 224 | `result-track:de369f2770336484d354bd65decfd7bc10a4a25c1cf1672ecbf6676f05fd6e9c` |
| 17 | `theorem` | [NatTrans.rightDerived_comp](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianRightDerivedPublic.lean/declarations/nattrans-rightderived-comp.md) | 232 | `result-track:535fbce17aadf63209edd3515a52e1797c6323335df7f38599ea644a919fde53` |
| 18 | `lemma` | [rightDerived_app_eq](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianRightDerivedPublic.lean/declarations/rightderived-app-eq.md) | 243 | `result-track:462ac15ef4ad48148fc53b571fdda56e18328cba7d195293176a29c9859f1b87` |
| 19 | `def` | [toRightDerivedZero'](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianRightDerivedPublic.lean/declarations/torightderivedzero.md) | 262 | `declaration-track:40df26269ad2710ed1e0cb99c5da30ab34789cedaf1b7add82d1db036ffc1c7a` |
| 20 | `lemma` | [toRightDerivedZero'_comp_iCycles](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianRightDerivedPublic.lean/declarations/torightderivedzero-comp-icycles.md) | 271 | `result-track:28b122128656b4e12228c322903ebd2b9228bab8cab772886b73205fa34ea8d5` |
| 21 | `lemma` | [toRightDerivedZero'_naturality](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianRightDerivedPublic.lean/declarations/torightderivedzero-naturality.md) | 279 | `result-track:bea5e37831de7b0176f0b7d1578f42e607efbf320e3f15fd0fd85106b21d8cf0` |
| 22 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianRightDerivedPublic.lean/declarations/instance-source-edition-5.md) | 294 | `declaration-track:9626f915f181dbc758403e1d4201f9acb1fa6a764f2efdbbf6102417647e6980` |
| 23 | `def` | [Functor.toRightDerivedZero](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianRightDerivedPublic.lean/declarations/functor-torightderivedzero.md) | 309 | `declaration-track:eccee472382042ed0df04fbede0e2d5d3134da3ee949045bd03fcf3ecf5287ea` |
| 24 | `lemma` | [InjectiveResolution.toRightDerivedZero_eq](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianRightDerivedPublic.lean/declarations/injectiveresolution-torightderivedzero-eq.md) | 325 | `result-track:93885555b42eb8d916d56d5b255c1265745348f4c4f1c6e3f63c2854db59eb70` |
| 25 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianRightDerivedPublic.lean/declarations/instance-source-edition-2.md) | 345 | `declaration-track:6e1a545cc151463fc8b0a8bb49a04e3d7669a5aa15989a7b6def4e316b3140e8` |
| 26 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianRightDerivedPublic.lean/declarations/instance-source-edition-3.md) | 354 | `declaration-track:7b1ee46bfffe255a731063310157970e22a4d1f969f2501b9a2b74e483c5c959` |
| 27 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianRightDerivedPublic.lean/declarations/instance-source-edition-4.md) | 361 | `declaration-track:85578f7d45c799a6175d1d47c47eac648cf97025b6b13feca4683fabe1528b60` |
| 28 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianRightDerivedPublic.lean/declarations/instance.md) | 365 | `declaration-track:61194a7f33e0401886889de4ec8ead27314381c2cfae4bda843b9913837624a7` |
| 29 | `def` | [rightDerivedZeroIsoSelf](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianRightDerivedPublic.lean/declarations/rightderivedzeroisoself.md) | 373 | `declaration-track:9199c825bb6913936a1c60069234d100ec8f9d3a5456cad5e83cee8392fe420c` |
| 30 | `lemma` | [rightDerivedZeroIsoSelf_hom_inv_id](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianRightDerivedPublic.lean/declarations/rightderivedzeroisoself-hom-inv-id.md) | 377 | `result-track:6f3c8547bb03e99b0249c918b5292a38db69b5f57102562597321fe1eea05da3` |
| 31 | `lemma` | [rightDerivedZeroIsoSelf_inv_hom_id](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianRightDerivedPublic.lean/declarations/rightderivedzeroisoself-inv-hom-id.md) | 382 | `result-track:9bc9282b9ae856e77613bc22ad2189c5bf0dce2deda0b1253c1106d05e9cb2fd` |
| 32 | `lemma` | [rightDerivedZeroIsoSelf_hom_inv_id_app](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianRightDerivedPublic.lean/declarations/rightderivedzeroisoself-hom-inv-id-app.md) | 387 | `result-track:d346ba124bf9713b2ba6a1ce0822f3167f58e61fcbac97a561a7290fc740dde5` |
| 33 | `lemma` | [rightDerivedZeroIsoSelf_inv_hom_id_app](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianRightDerivedPublic.lean/declarations/rightderivedzeroisoself-inv-hom-id-app.md) | 392 | `result-track:7adca7e00c7fb82265a2daa079afaef789f9fb2a29c482cfa42335069ec8e74e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3a5f8881501f769b851f75c7d3cd454944faf6ac9bdefc250e100b6b11565237 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/RightDerived/Variantc48a25257162053eb9d974e75a504f7502068b41d0d98c49c80e1dc4a5139b28.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/RightDerived/Variantc48a25257162053eb9d974e75a504f7502068b41d0d98c49c80e1dc4a5139b28.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
