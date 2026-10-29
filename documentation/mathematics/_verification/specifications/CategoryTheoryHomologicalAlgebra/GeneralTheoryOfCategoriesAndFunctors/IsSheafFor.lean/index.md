# Verification target: Is Sheaf For

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a2dc4c68219a724be5f99a0b56d8ed4aaff5b8db",
  "lexical_observation_count": 71,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/IsSheafFor/Variante375281c15113e4e8deb9f243cbf6dded285f3ad62ff8227a086583ee732deaa.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsSheafFor.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsSheafFor.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a2dc4c68219a724be5f99a0b56d8ed4aaff5b8db`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/IsSheafFor/Variante375281c15113e4e8deb9f243cbf6dded285f3ad62ff8227a086583ee732deaa.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/IsSheafFor/Variante375281c15113e4e8deb9f243cbf6dded285f3ad62ff8227a086583ee732deaa.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Sites.Sieves` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.Pullback.Mono` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [FamilyOfElements](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsSheafFor.lean/declarations/familyofelements.md) | 90 | `declaration-track:0b5be7ec0cf7289f5b1eeb8ec0e1a94568e58218443d21d21f213881d347e40d` |
| 2 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsSheafFor.lean/declarations/instance.md) | 93 | `declaration-track:0ccf22208bd70fbf4d80f1de0fae5c8256ba0c78c511968fac62ee6a19e5a0e2` |
| 3 | `def` | [FamilyOfElements.restrict](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsSheafFor.lean/declarations/familyofelements-restrict.md) | 99 | `declaration-track:daed33170d6299665fa566586c5323e403a0016874d75228af7f5971602cd42d` |
| 4 | `def` | [FamilyOfElements.map](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsSheafFor.lean/declarations/familyofelements-map.md) | 103 | `declaration-track:23aeae61ac7f865bc89a19156a1ae93c9d86d1763c460ffb759d32cf4d13b1c9` |
| 5 | `lemma` | [FamilyOfElements.map_apply](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsSheafFor.lean/declarations/familyofelements-map-apply.md) | 108 | `result-track:d44d243909659d89793454fd8c6e2389c2e0b637a5f82caa3c8bdf0668af87e1` |
| 6 | `lemma` | [FamilyOfElements.restrict_map](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsSheafFor.lean/declarations/familyofelements-restrict-map.md) | 112 | `result-track:864bcef2bd510de1eb6dbc0b4d844b0102eb64f285ca660767c83ae5a3afbc30` |
| 7 | `def` | [FamilyOfElements.Compatible](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsSheafFor.lean/declarations/familyofelements-compatible.md) | 130 | `declaration-track:7a093222a49700c8c83f98c3b0fe58cd27a14a01d7d5a100e4c9e9d05729229d` |
| 8 | `def` | [FamilyOfElements.PullbackCompatible](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsSheafFor.lean/declarations/familyofelements-pullbackcompatible.md) | 149 | `declaration-track:f2ba88b0d91f08de047f30d641064d3dd112b4ae71da3fd1e3a56d567d6af6fc` |
| 9 | `theorem` | [pullbackCompatible_iff](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsSheafFor.lean/declarations/pullbackcompatible-iff.md) | 154 | `result-track:3c9992265ef790bf8bac76ff3380a0c3f91d30c17984f63d7af3804dc82358b5` |
| 10 | `theorem` | [FamilyOfElements.Compatible.restrict](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsSheafFor.lean/declarations/familyofelements-compatible-restrict.md) | 167 | `result-track:beb4d46e119496b0acd275b3917046a8a5b5ea477572a34c33c75ba8d608de87` |
| 11 | `def` | [FamilyOfElements.sieveExtend](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsSheafFor.lean/declarations/familyofelements-sieveextend.md) | 174 | `declaration-track:84cb95c2331b61dcc80cb977443b3e67cad6a5f9899a7cf3aa3263f19f8ee167` |
| 12 | `theorem` | [FamilyOfElements.Compatible.sieveExtend](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsSheafFor.lean/declarations/familyofelements-compatible-sieveextend.md) | 179 | `result-track:5a46ea31a6a1b9aadc750757dabb20b82502a6766ed2332bf576088c8df1ff15` |
| 13 | `theorem` | [extend_agrees](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsSheafFor.lean/declarations/extend-agrees.md) | 187 | `result-track:211df87de500c38e62d64a118c614266583a2c477d813ff6c1745905eca73e9b` |
| 14 | `theorem` | [restrict_extend](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsSheafFor.lean/declarations/restrict-extend.md) | 198 | `result-track:127c7db3bb52f6b2bb9fe16c7174076e8760bdef832f566c134d9f6f9d7be5d8` |
| 15 | `def` | [FamilyOfElements.SieveCompatible](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsSheafFor.lean/declarations/familyofelements-sievecompatible.md) | 212 | `declaration-track:c9972db8e6826c21aa591ea2cda3834cbb873f752ad70b3140b278340a959fda` |
| 16 | `theorem` | [compatible_iff_sieveCompatible](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsSheafFor.lean/declarations/compatible-iff-sievecompatible.md) | 215 | `result-track:9d372f717055dea62c66200e927065cfda72ce46361ed4867821d1d4c6f480d9` |
| 17 | `theorem` | [FamilyOfElements.Compatible.to_sieveCompatible](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsSheafFor.lean/declarations/familyofelements-compatible-to-sievecompatible.md) | 224 | `result-track:3ba2e9f7faa89dc96ac4bf0e3b5f86a800d8166b2e1209cd45ccd34165f11e52` |
| 18 | `theorem` | [extend_restrict](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsSheafFor.lean/declarations/extend-restrict.md) | 233 | `result-track:fd337eb13dad8056046539a2e787773a1bde1b6c6c3c8225322522e1e7c28a29` |
| 19 | `theorem` | [restrict_inj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsSheafFor.lean/declarations/restrict-inj.md) | 245 | `result-track:9a0542d31bbcdbc06d9d178258ac8fb6d85fe518e6286364cf6a11918e7360eb` |
| 20 | `def` | [compatibleEquivGenerateSieveCompatible](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsSheafFor.lean/declarations/compatibleequivgeneratesievecompatible.md) | 257 | `declaration-track:9c94761fd6cafb116cfea2baa91473b2a2f0fe280fe532f259223261d7bf0b9d` |
| 21 | `theorem` | [FamilyOfElements.comp_of_compatible](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsSheafFor.lean/declarations/familyofelements-comp-of-compatible.md) | 265 | `result-track:e66f50ecd5ea315680fb06f1d15650ab3371d1aaa41bef841aeb04f193dae2fb` |
| 22 | `def` | [FamilyOfElements.functorPullback](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsSheafFor.lean/declarations/familyofelements-functorpullback.md) | 279 | `declaration-track:14faaba6dd732cf554d266714b8a0c95c2e9660528cddd2471145601c57bba1d` |
| 23 | `theorem` | [FamilyOfElements.Compatible.functorPullback](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsSheafFor.lean/declarations/familyofelements-compatible-functorpullback.md) | 282 | `result-track:90ec27f17ab2082fd8458703df5caaec166645b71bf2471a084ca635cb7487aa` |
| 24 | `def` | [FamilyOfElements.functorPushforward](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsSheafFor.lean/declarations/familyofelements-functorpushforward.md) | 293 | `declaration-track:204c3ca9038c02c63b6616066305d90d856e4e182f1a516365067af522046303` |
| 25 | `def` | [FamilyOfElements.pullback](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsSheafFor.lean/declarations/familyofelements-pullback.md) | 304 | `declaration-track:4a06ef146dffef1dbd7aefeefd9516856ceb59313845e03c9afac56d71fd1f53` |
| 26 | `theorem` | [FamilyOfElements.Compatible.pullback](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsSheafFor.lean/declarations/familyofelements-compatible-pullback.md) | 307 | `result-track:ae2f689dcbf6cef7fdafb999436c6cd2c7fe5f2f2f5800d38e46c99da8e645f4` |
| 27 | `def` | [FamilyOfElements.compPresheafMap](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsSheafFor.lean/declarations/familyofelements-comppresheafmap.md) | 321 | `declaration-track:bc982f220872662f7e70ef56f482053b996fcaab9f59651ae6fa366c411746e4` |
| 28 | `theorem` | [FamilyOfElements.compPresheafMap_id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsSheafFor.lean/declarations/familyofelements-comppresheafmap-id.md) | 325 | `result-track:4426b4d8623008adb7706ddf4fffbc6063230f7166e33f62a8dc90b9431c5dd2` |
| 29 | `theorem` | [FamilyOfElements.compPresheafMap_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsSheafFor.lean/declarations/familyofelements-comppresheafmap-comp.md) | 330 | `result-track:b2c1aeeb3f6e3671dae77046f486f3cb22509a62e65061d5e4d86e1194402b6a` |
| 30 | `theorem` | [FamilyOfElements.Compatible.compPresheafMap](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsSheafFor.lean/declarations/familyofelements-compatible-comppresheafmap.md) | 334 | `result-track:3796a1990c34225e75b052a5bb4654f26cbcdf664f9497d83453bdfa87046d79` |
| 31 | `def` | [FamilyOfElements.IsAmalgamation](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsSheafFor.lean/declarations/familyofelements-isamalgamation.md) | 348 | `declaration-track:8d1226d87867f2718d91c84146059b3c9f35d863b3d7804c7c6b5e53d051bde0` |
| 32 | `theorem` | [FamilyOfElements.IsAmalgamation.compPresheafMap](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsSheafFor.lean/declarations/familyofelements-isamalgamation-comppresheafmap.md) | 351 | `result-track:cc5720e3a4ee4bd9e3dc95b8ee7fe22c9f23bd2a0b95e2de96109176da5e6405` |
| 33 | `theorem` | [is_compatible_of_exists_amalgamation](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsSheafFor.lean/declarations/is-compatible-of-exists-amalgamation.md) | 358 | `result-track:58920e917199f6c66f735751b1ff70403bba3fa9301aecb2590b5b5f73918e59` |
| 34 | `theorem` | [isAmalgamation_restrict](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsSheafFor.lean/declarations/isamalgamation-restrict.md) | 365 | `result-track:621170cf0fbc0603af1ebf4868c3f1ebe529f21ba20c8f0e6160ae7a02440cb3` |
| 35 | `theorem` | [isAmalgamation_sieveExtend](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsSheafFor.lean/declarations/isamalgamation-sieveextend.md) | 369 | `result-track:838735665a78562b742f5b070d1f6646a5224110f8daffc0481daf65e1882b71` |
| 36 | `def` | [IsSeparatedFor](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsSheafFor.lean/declarations/isseparatedfor.md) | 376 | `declaration-track:f323b1fee7878f61f8594fb2cc2947c32c43b90ea72b0ad5f8dcfa4925f1186f` |
| 37 | `theorem` | [IsSeparatedFor.ext](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsSheafFor.lean/declarations/isseparatedfor-ext.md) | 379 | `result-track:c1b40ded1916ef8b0bd8e6bfdf5d1d1da01e8329293f26d57aa697f63ca270fa` |
| 38 | `theorem` | [isSeparatedFor_iff_generate](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsSheafFor.lean/declarations/isseparatedfor-iff-generate.md) | 383 | `result-track:3b80012521318cf0ef020577095f87d30d71714d62335ffba4a2898034918e46` |
| 39 | `theorem` | [isSeparatedFor_top](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsSheafFor.lean/declarations/isseparatedfor-top.md) | 395 | `result-track:168227546c92a87c416b92e2ab421806da43dec81f1c5edf0b248ee85e0bec46` |
| 40 | `def` | [IsSheafFor](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsSheafFor.lean/declarations/issheaffor.md) | 410 | `declaration-track:620aa38ef325d39cc1d70cd63769f2142aaebb679843302687535f865950f7cd` |
| 41 | `def` | [YonedaSheafCondition](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsSheafFor.lean/declarations/yonedasheafcondition.md) | 422 | `declaration-track:8b55bb29bca1c272e5d141583be8f433a4e2e4a96cbbd114e1c16d5f8591a811` |
| 42 | `def` | [natTransEquivCompatibleFamily](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsSheafFor.lean/declarations/nattransequivcompatiblefamily.md) | 433 | `declaration-track:5bbec27aef2bcf2f35142d42a37d4174a370125f7e6c4eae12e454ed0edd827c` |
| 43 | `theorem` | [extension_iff_amalgamation](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsSheafFor.lean/declarations/extension-iff-amalgamation.md) | 456 | `result-track:55a5935f2bfb4a5e4fa029e26d8310b0b346e4ada857835ac9ca4dc0d14c21ec` |
| 44 | `theorem` | [isSheafFor_iff_yonedaSheafCondition](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsSheafFor.lean/declarations/issheaffor-iff-yonedasheafcondition.md) | 477 | `result-track:4d81e723c6c04f7278cda5ee6b0a03998a82dcc8d30a7fc8aa3360b2d67a4c1c` |
| 45 | `def` | [IsSheafFor.extend](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsSheafFor.lean/declarations/issheaffor-extend.md) | 494 | `declaration-track:0de358585f0ac845dfaf8c45369c0ccda7d5215499a525299a79c75136991861` |
| 46 | `theorem` | [IsSheafFor.functorInclusion_comp_extend](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsSheafFor.lean/declarations/issheaffor-functorinclusion-comp-extend.md) | 508 | `result-track:4d0d7cad76823230cd81f0ca3da30b81cb6f3c9d116c027e698b52a82c3d17ea` |
| 47 | `theorem` | [IsSheafFor.unique_extend](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsSheafFor.lean/declarations/issheaffor-unique-extend.md) | 513 | `result-track:f82934b320904e55ee5bbc123f409e1428fa1b89f2449073aaa0855d646f275b` |
| 48 | `theorem` | [IsSheafFor.hom_ext](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsSheafFor.lean/declarations/issheaffor-hom-ext.md) | 521 | `result-track:17adebb6fc60b68417475f97773a83a3e36898de265cf0fc06087a9826015a07` |
| 49 | `theorem` | [isSeparatedFor_and_exists_isAmalgamation_iff_isSheafFor](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsSheafFor.lean/declarations/isseparatedfor-and-exists-isamalgamation-iff-issheaffor.md) | 527 | `result-track:674782ca5a13dd4c1845af4355e72a91e814070491a0fc48f22f28ea6361f67a` |
| 50 | `theorem` | [IsSeparatedFor.isSheafFor](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsSheafFor.lean/declarations/isseparatedfor-issheaffor.md) | 544 | `result-track:222a7257e46854627db99b6df72f421301675f1f8caf3f315834b9c1060edd18` |
| 51 | `theorem` | [IsSheafFor.isSeparatedFor](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsSheafFor.lean/declarations/issheaffor-isseparatedfor.md) | 550 | `result-track:3e43e0f1c7e31925df33ca5a62f1e8e036bfc03e0af4720faacca71a9018b84b` |
| 52 | `def` | [IsSheafFor.amalgamate](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsSheafFor.lean/declarations/issheaffor-amalgamate.md) | 554 | `declaration-track:7c91e1cfd53e0beefa40972a5deb5937f4011cff03a89c458a78033f7a66ddd3` |
| 53 | `theorem` | [IsSheafFor.isAmalgamation](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsSheafFor.lean/declarations/issheaffor-isamalgamation.md) | 558 | `result-track:a67643fb6393e43b5502d41cbcc9cb3d36700908e8ce336068ae32cf043750bd` |
| 54 | `theorem` | [IsSheafFor.valid_glue](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsSheafFor.lean/declarations/issheaffor-valid-glue.md) | 563 | `result-track:e2d6c0def04c1eb46cafdc7d6c29084b19f88026e033b4445d7241d168759826` |
| 55 | `theorem` | [isSheafFor_iff_generate](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsSheafFor.lean/declarations/issheaffor-iff-generate.md) | 568 | `result-track:76a661e8f617d15d0d0307795c72aa80010c8c76dbea97fbe4251b7e9477e4d5` |
| 56 | `theorem` | [isSheafFor_singleton_iso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsSheafFor.lean/declarations/issheaffor-singleton-iso.md) | 588 | `result-track:fe03620010690a822ba2022f4015e7c4eca2233b8cd5f605b6df5c548d43396c` |
| 57 | `theorem` | [isSheafFor_top_sieve](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsSheafFor.lean/declarations/issheaffor-top-sieve.md) | 600 | `result-track:58ad00dd867f75915a70d85581a86de1d9240be0a3702d42e3aee991a71d1287` |
| 58 | `lemma` | [isSheafFor_of_nat_equiv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsSheafFor.lean/declarations/issheaffor-of-nat-equiv.md) | 607 | `result-track:4e18360c885ece8fcb67c2394874ce3c41935d3fc7756bfbb077a5a9beb87336` |
| 59 | `theorem` | [isSheafFor_iso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsSheafFor.lean/declarations/issheaffor-iso.md) | 636 | `result-track:71bfd07d6ec4884f741c3ca04d447c5ef7a6ead59806f763788f9b89b277fa89` |
| 60 | `theorem` | [isSheafFor_subsieve_aux](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsSheafFor.lean/declarations/issheaffor-subsieve-aux.md) | 650 | `result-track:4fa226caa357a6626a1e7de464c9ec88c105c39986f794414ab986712f422d39` |
| 61 | `theorem` | [isSheafFor_subsieve](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsSheafFor.lean/declarations/issheaffor-subsieve.md) | 674 | `result-track:172a9650fb18d49bd8a53e9ae8e71a5f7d2d906897c54e7efc1660378bf28879` |
| 62 | `def` | [Arrows.Compatible](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsSheafFor.lean/declarations/arrows-compatible.md) | 687 | `declaration-track:5d78157f65c6dd4d66dd4917d1ce9e9e09be3da285e8ac850e1cf6a4d1f02450` |
| 63 | `lemma` | [FamilyOfElements.isAmalgamation_iff_ofArrows](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsSheafFor.lean/declarations/familyofelements-isamalgamation-iff-ofarrows.md) | 691 | `result-track:9ae4b502c988a7dace4e01db312cacf6bd4fd517905999ddaaa096f4909aaea5` |
| 64 | `theorem` | [exists_familyOfElements](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsSheafFor.lean/declarations/exists-familyofelements.md) | 701 | `result-track:3cd074629f1f01486f04f924f1757698e9d10485d2bcbf481ae688bf735fa1b2` |
| 65 | `def` | [familyOfElements](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsSheafFor.lean/declarations/familyofelements-source-edition-2.md) | 713 | `declaration-track:a4bdcca2804ee7ce1ecd885ff9bb65712d0e03b8482ccd47cbd64c84381955a6` |
| 66 | `theorem` | [familyOfElements_ofArrows_mk](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsSheafFor.lean/declarations/familyofelements-ofarrows-mk.md) | 717 | `result-track:5655326066a995c7b407267e8aac8b58b2df4808932e075d79a8cc659057426c` |
| 67 | `theorem` | [familyOfElements_compatible](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsSheafFor.lean/declarations/familyofelements-compatible-source-edition-2.md) | 721 | `result-track:a2cce35c9c29a6b9cbb3177ba221034b0a3aef9583cdf2c225469c870ed703a8` |
| 68 | `theorem` | [isSheafFor_arrows_iff](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsSheafFor.lean/declarations/issheaffor-arrows-iff.md) | 727 | `result-track:0efb2f0117cf967c14224e61486b58e8028fcf86b82fd69723edb409eba16f6f` |
| 69 | `def` | [Arrows.PullbackCompatible](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsSheafFor.lean/declarations/arrows-pullbackcompatible.md) | 744 | `declaration-track:db1e183a75459a54bb71a0ad1b759e3850f6fa342f7d12642d0921952eeb8124` |
| 70 | `theorem` | [Arrows.pullbackCompatible_iff](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsSheafFor.lean/declarations/arrows-pullbackcompatible-iff.md) | 748 | `result-track:5163b6d34917d0ae6ba2fd2cd2718a7fa369e80dc9124102a81df44b68571407` |
| 71 | `theorem` | [isSheafFor_arrows_iff_pullbacks](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsSheafFor.lean/declarations/issheaffor-arrows-iff-pullbacks.md) | 756 | `result-track:366911432e46a61c956fbbb235dc4b067e29ff16269866bd54268c54ce8da6f7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e78464de36c7644ec8ec7a1909d151ecb36e9146c31643c1b94a65ad339e0116 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/IsSheafFor/Variante375281c15113e4e8deb9f243cbf6dded285f3ad62ff8227a086583ee732deaa.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/IsSheafFor/Variante375281c15113e4e8deb9f243cbf6dded285f3ad62ff8227a086583ee732deaa.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
