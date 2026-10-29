# Verification target: Abelian Right Derived Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ef9aab66aff1d402a134a5ad19ee15776504f5da",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/RightDerived/Variant2ffbea95ea8b21829b6153e0bc0450171c0a8dffba6e42c3a16b925cadb6890d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianRightDerivedNamespacedPublic.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianRightDerivedNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ef9aab66aff1d402a134a5ad19ee15776504f5da`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/RightDerived/Variant2ffbea95ea8b21829b6153e0bc0450171c0a8dffba6e42c3a16b925cadb6890d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/RightDerived/Variant2ffbea95ea8b21829b6153e0bc0450171c0a8dffba6e42c3a16b925cadb6890d.lean.json)

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
| 1 | `def` | [Functor.rightDerivedToHomotopyCategory](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianRightDerivedNamespacedPublic.lean/declarations/functor-rightderivedtohomotopycategory.md) | 73 | `declaration-track:20e40821b3a7c321a21bbf48becee1478d3f218261bef70d3303c47a4c5bd598` |
| 2 | `def` | [InjectiveResolution.isoRightDerivedToHomotopyCategoryObj](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianRightDerivedNamespacedPublic.lean/declarations/injectiveresolution-isorightderivedtohomotopycategoryobj.md) | 80 | `declaration-track:eac26a793363b7688e2cacb0a50f4c605c722a3577507c8a511a21a3a1c98c34` |
| 3 | `lemma` | [InjectiveResolution.isoRightDerivedToHomotopyCategoryObj_hom_naturality](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianRightDerivedNamespacedPublic.lean/declarations/injectiveresolution-isorightderivedtohomotopycategoryobj-hom-naturality.md) | 89 | `result-track:3c2e920e4fccbd0ff7f59c908cf30243588ebcea361249d6b4d13cd25bdc7d89` |
| 4 | `lemma` | [InjectiveResolution.isoRightDerivedToHomotopyCategoryObj_inv_naturality](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianRightDerivedNamespacedPublic.lean/declarations/injectiveresolution-isorightderivedtohomotopycategoryobj-inv-naturality.md) | 104 | `result-track:09f671e3a641d0b6a216e4b4c939850552b5bd73b61ede2d538ff52f574c75ca` |
| 5 | `def` | [Functor.rightDerived](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianRightDerivedNamespacedPublic.lean/declarations/functor-rightderived.md) | 117 | `declaration-track:b9d5fe85cd5dc3205e8965362bee9189d886aa62602e86497a807e58022ca137` |
| 6 | `def` | [InjectiveResolution.isoRightDerivedObj](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianRightDerivedNamespacedPublic.lean/declarations/injectiveresolution-isorightderivedobj.md) | 121 | `declaration-track:92fa91ca118380e1d71a89b7893d171e1d647307bf7d779b1827b5ef7d736ce3` |
| 7 | `lemma` | [InjectiveResolution.isoRightDerivedObj_hom_naturality](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianRightDerivedNamespacedPublic.lean/declarations/injectiveresolution-isorightderivedobj-hom-naturality.md) | 133 | `result-track:45912287eaaeb39e8747482ab2113026c2523fc07205244ee10451866e7e087f` |
| 8 | `lemma` | [InjectiveResolution.isoRightDerivedObj_inv_naturality](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianRightDerivedNamespacedPublic.lean/declarations/injectiveresolution-isorightderivedobj-inv-naturality.md) | 148 | `result-track:14742337dbe6d6bd831cdcc0dcb1e8d06889fe56d1832f545ddee40b4b1a64c8` |
| 9 | `lemma` | [Functor.isZero_rightDerived_obj_injective_succ](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianRightDerivedNamespacedPublic.lean/declarations/functor-iszero-rightderived-obj-injective-succ.md) | 160 | `result-track:ec3f1ff3aac5b9e73a6a37c5c6a4704ab30aeb1b276d257e7375abc92170e83d` |
| 10 | `theorem` | [Functor.rightDerived_map_eq](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianRightDerivedNamespacedPublic.lean/declarations/functor-rightderived-map-eq.md) | 171 | `result-track:2b39ae3ae900616e5753bef3d0c0fa6d7c35fe2d29410d9c98dcaa70e785cc3e` |
| 11 | `def` | [NatTrans.rightDerivedToHomotopyCategory](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianRightDerivedNamespacedPublic.lean/declarations/nattrans-rightderivedtohomotopycategory.md) | 187 | `declaration-track:13f9aa330118cd355581a033358b7b913e0410857f4b3b3bad97af9f8809b253` |
| 12 | `lemma` | [InjectiveResolution.rightDerivedToHomotopyCategory_app_eq](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianRightDerivedNamespacedPublic.lean/declarations/injectiveresolution-rightderivedtohomotopycategory-app-eq.md) | 194 | `result-track:14b3fbf400858360f39e06a32fe4953e6d609a64f3113996d36a759ff3cd34bd` |
| 13 | `lemma` | [NatTrans.rightDerivedToHomotopyCategory_id](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianRightDerivedNamespacedPublic.lean/declarations/nattrans-rightderivedtohomotopycategory-id.md) | 214 | `result-track:08183f17a84ca558966020f5054243fe613391c439fb9eff4d944ff56506aeed` |
| 14 | `lemma` | [NatTrans.rightDerivedToHomotopyCategory_comp](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianRightDerivedNamespacedPublic.lean/declarations/nattrans-rightderivedtohomotopycategory-comp.md) | 218 | `result-track:4aae2df69720833aca5830366a2087ca14c6e55d898d401dd3ad818910605a65` |
| 15 | `def` | [NatTrans.rightDerived](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianRightDerivedNamespacedPublic.lean/declarations/nattrans-rightderived.md) | 226 | `declaration-track:6123e1b3319870f71becd25b1119462a08a6374560c2f36df1ff8baa96ebf085` |
| 16 | `theorem` | [NatTrans.rightDerived_id](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianRightDerivedNamespacedPublic.lean/declarations/nattrans-rightderived-id.md) | 232 | `result-track:2a82f680a309e5d3fa7b830fc60164c10ab3be9e83019595b511e3acef873ee4` |
| 17 | `theorem` | [NatTrans.rightDerived_comp](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianRightDerivedNamespacedPublic.lean/declarations/nattrans-rightderived-comp.md) | 240 | `result-track:a2ad7bcc2047973eb780623a022dcfaffe5ed2a6c3e853c15cce534cd73bfc54` |
| 18 | `lemma` | [rightDerived_app_eq](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianRightDerivedNamespacedPublic.lean/declarations/rightderived-app-eq.md) | 251 | `result-track:0356390ad620b4421559c4b9280b36f9ceb67aa9dfb549fc06b1e42d62a43afc` |
| 19 | `def` | [toRightDerivedZero'](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianRightDerivedNamespacedPublic.lean/declarations/torightderivedzero.md) | 270 | `declaration-track:79f06369da7d5e60d5175ac9cce26c523e8bedc289de5f6f1bdea9988cc77e01` |
| 20 | `lemma` | [toRightDerivedZero'_comp_iCycles](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianRightDerivedNamespacedPublic.lean/declarations/torightderivedzero-comp-icycles.md) | 279 | `result-track:a61c9feb3131343f32b0783b9e8d46eeec6030b1144338bc3f3224d4d749f41c` |
| 21 | `lemma` | [toRightDerivedZero'_naturality](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianRightDerivedNamespacedPublic.lean/declarations/torightderivedzero-naturality.md) | 287 | `result-track:a15db91c2cf9ecfecce98162f58e850dfd0759dd0a708c19ad1d89c53a9d54ed` |
| 22 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianRightDerivedNamespacedPublic.lean/declarations/instance-source-edition-3.md) | 302 | `declaration-track:76216a61d7e9579fc5e184d95cbb9bba9632c784126a9f755b5b2a55447b5396` |
| 23 | `def` | [Functor.toRightDerivedZero](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianRightDerivedNamespacedPublic.lean/declarations/functor-torightderivedzero.md) | 317 | `declaration-track:0ac82458fe1cecabaf53131032b45b54354df74167985007f81805aa382dd09b` |
| 24 | `lemma` | [InjectiveResolution.toRightDerivedZero_eq](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianRightDerivedNamespacedPublic.lean/declarations/injectiveresolution-torightderivedzero-eq.md) | 333 | `result-track:274ef99386983b4c470f93ddc50f30263394c7bad403f0f9e03544b307fe3712` |
| 25 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianRightDerivedNamespacedPublic.lean/declarations/instance.md) | 353 | `declaration-track:3c64e8750e043ec65b4b03b3b0a49a36f2275a0d904b3955a0f77226b3ce2d8f` |
| 26 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianRightDerivedNamespacedPublic.lean/declarations/instance-source-edition-4.md) | 362 | `declaration-track:88e2f7379d1f5536d2d2e316ecfaeb399e0dbb1f3c910568a7bb39b50d85129d` |
| 27 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianRightDerivedNamespacedPublic.lean/declarations/instance-source-edition-5.md) | 369 | `declaration-track:e73e54e3b8d9849d2546d7893b7b42a02b1bcf5ecdf1d4d52a663b137cb4ff9c` |
| 28 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianRightDerivedNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 373 | `declaration-track:441d6735eca90a9db953608579997f80e3eda675038411a1c89d5b582b498fe3` |
| 29 | `def` | [rightDerivedZeroIsoSelf](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianRightDerivedNamespacedPublic.lean/declarations/rightderivedzeroisoself.md) | 381 | `declaration-track:03bc56fd2132488ff84fd27d577029e5a3e8f86c7f4cc50d24b7d332eec219bb` |
| 30 | `lemma` | [rightDerivedZeroIsoSelf_hom_inv_id](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianRightDerivedNamespacedPublic.lean/declarations/rightderivedzeroisoself-hom-inv-id.md) | 385 | `result-track:7bda5387c88d7c40664c17f9d98c091c0d4f9a7599a770d2318e02eb6b3940bb` |
| 31 | `lemma` | [rightDerivedZeroIsoSelf_inv_hom_id](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianRightDerivedNamespacedPublic.lean/declarations/rightderivedzeroisoself-inv-hom-id.md) | 390 | `result-track:ce655b44721e30eb08ee11b439f37408f6b01aa06f424f818b2be0cbae46e65d` |
| 32 | `lemma` | [rightDerivedZeroIsoSelf_hom_inv_id_app](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianRightDerivedNamespacedPublic.lean/declarations/rightderivedzeroisoself-hom-inv-id-app.md) | 395 | `result-track:9aa2965172ab0ea8a5f38efee0c9c64f240a4eb98caae2921c4f9cf9c050023a` |
| 33 | `lemma` | [rightDerivedZeroIsoSelf_inv_hom_id_app](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianRightDerivedNamespacedPublic.lean/declarations/rightderivedzeroisoself-inv-hom-id-app.md) | 400 | `result-track:65f8a4cef96d6b8acf5eabb2d52adde875095609cd020ed2bbbaad59735797f0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=07a3cd8160fcd57ebe755518b3e64a86b5b93f0682d3cbf81a907c3290ca9f04 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/RightDerived/Variant2ffbea95ea8b21829b6153e0bc0450171c0a8dffba6e42c3a16b925cadb6890d.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/RightDerived/Variant2ffbea95ea8b21829b6153e0bc0450171c0a8dffba6e42c3a16b925cadb6890d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
