# Verification target: Preserves Shapes Pullbacks Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2b015f722deddcfdc4e0d9a256e47e4c7454ed2b",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullbacks/Variant674bdc87d193975b9a6b6d7a28b05f2b4e116653c5048645b5d7af0972e39da1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesShapesPullbacksNamespaced.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesShapesPullbacksNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2b015f722deddcfdc4e0d9a256e47e4c7454ed2b`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullbacks/Variant674bdc87d193975b9a6b6d7a28b05f2b4e116653c5048645b5d7af0972e39da1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullbacks/Variant674bdc87d193975b9a6b6d7a28b05f2b4e116653c5048645b5d7af0972e39da1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.Shapes.Pullback.HasPullback` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Preserves.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Opposites` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Yoneda` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [map](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesShapesPullbacksNamespaced.lean/declarations/map.md) | 55 | `declaration-track:0d1f0cf824acf8ebdd8940e6fa05c833ba34b09260791ae34f2ae191a038cf72` |
| 2 | `def` | [isLimitMapConeEquiv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesShapesPullbacksNamespaced.lean/declarations/islimitmapconeequiv.md) | 61 | `declaration-track:ff778aa091b9a80c60622d60595b93d68f0301ea2a586872f37026d643d3385b` |
| 3 | `def` | [isLimitMapConePullbackConeEquiv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesShapesPullbacksNamespaced.lean/declarations/islimitmapconepullbackconeequiv.md) | 78 | `declaration-track:59bf7de91490449f2e14ef1151355f2b5631ffafe946ca8e86d03794308c49f0` |
| 4 | `def` | [isLimitPullbackConeMapOfIsLimit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesShapesPullbacksNamespaced.lean/declarations/islimitpullbackconemapofislimit.md) | 86 | `declaration-track:37e5a2d4df428b29aa3b3ae7c5b822fbd242b0b227b42761dc2620d303487063` |
| 5 | `def` | [isLimitOfIsLimitPullbackConeMap](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesShapesPullbacksNamespaced.lean/declarations/islimitofislimitpullbackconemap.md) | 93 | `declaration-track:902e3054a6c5ec3f20ce13903a233ab66677595f51196642ab3d1be5a9c06c25` |
| 6 | `def` | [isLimitOfHasPullbackOfPreservesLimit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesShapesPullbacksNamespaced.lean/declarations/islimitofhaspullbackofpreserveslimit.md) | 103 | `declaration-track:7ad069445f1f90aac4be7b83a1bd8a3bb758e3dce01f30976b435749a3a84455` |
| 7 | `lemma` | [preservesPullback_symmetry](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesShapesPullbacksNamespaced.lean/declarations/preservespullback-symmetry.md) | 110 | `result-track:463319ea1b37bd060bc71072fa32d46693b537b74299571ea451b3c27bdf7406` |
| 8 | `theorem` | [hasPullback_of_preservesPullback](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesShapesPullbacksNamespaced.lean/declarations/haspullback-of-preservespullback.md) | 126 | `result-track:080dcf7571db7351d3387a8fc7ac5c39a86d4ab7f6172708902fbdb38fdb144a` |
| 9 | `def` | [PreservesPullback.iso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesShapesPullbacksNamespaced.lean/declarations/preservespullback-iso.md) | 133 | `declaration-track:de5d34ca65d051e84dd7bc974d4c4f106c91db2293d221793d1b67e94759cff4` |
| 10 | `theorem` | [PreservesPullback.iso_hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesShapesPullbacksNamespaced.lean/declarations/preservespullback-iso-hom.md) | 137 | `result-track:9f045092834455ceafb8cd7e0b893c43a610d3b45619f2c964ff904e14125561` |
| 11 | `theorem` | [PreservesPullback.iso_hom_fst](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesShapesPullbacksNamespaced.lean/declarations/preservespullback-iso-hom-fst.md) | 141 | `result-track:ca3818d1f54be2fc8410f1f202f70c468c44514f3f0ca26de843c979bb44b312` |
| 12 | `theorem` | [PreservesPullback.iso_hom_snd](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesShapesPullbacksNamespaced.lean/declarations/preservespullback-iso-hom-snd.md) | 146 | `result-track:ad658e2ac4f555e583ebef17fa7f32a860c795ce551f962961ba4b0e13003d7f` |
| 13 | `theorem` | [PreservesPullback.iso_inv_fst](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesShapesPullbacksNamespaced.lean/declarations/preservespullback-iso-inv-fst.md) | 151 | `result-track:86bb014f530690132ba917455b86ab0e3e0977ac6f3f2bcd4b3a6f20d4870fa3` |
| 14 | `theorem` | [PreservesPullback.iso_inv_snd](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesShapesPullbacksNamespaced.lean/declarations/preservespullback-iso-inv-snd.md) | 156 | `result-track:4f49c0c47bff579d9120dccd03403c090f3476e3135e0206651797bf23d7b8a1` |
| 15 | `def` | [PullbackCone.isLimitCoyonedaEquiv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesShapesPullbacksNamespaced.lean/declarations/pullbackcone-islimitcoyonedaequiv.md) | 162 | `declaration-track:4ff2b0c8856b8e82340dbe3f104b3dd67da4ff10c4b12be6924eecce50cbffd0` |
| 16 | `abbrev` | [map](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesShapesPullbacksNamespaced.lean/declarations/map-source-edition-2.md) | 179 | `declaration-track:8bd6016d208e4b9d7bf7b6b7de0599ecdca643dd75c5cb3fda70a6e1c04db826` |
| 17 | `def` | [isColimitMapCoconeEquiv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesShapesPullbacksNamespaced.lean/declarations/iscolimitmapcoconeequiv.md) | 184 | `declaration-track:0b2bff90db74c14987adf5ca80ebe00a06d59a68e3b77bee756de1307d8967b8` |
| 18 | `def` | [isColimitMapCoconePushoutCoconeEquiv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesShapesPullbacksNamespaced.lean/declarations/iscolimitmapcoconepushoutcoconeequiv.md) | 201 | `declaration-track:c969785563845f707a774bb81cbc52f280fd9aa94272b81fc9ccf657580be418` |
| 19 | `def` | [isColimitPushoutCoconeMapOfIsColimit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesShapesPullbacksNamespaced.lean/declarations/iscolimitpushoutcoconemapofiscolimit.md) | 213 | `declaration-track:92404027d701024b26c3b4b0d1f04258b3a03b56f9fec4f82f0e0db19d0df9af` |
| 20 | `def` | [isColimitOfIsColimitPushoutCoconeMap](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesShapesPullbacksNamespaced.lean/declarations/iscolimitofiscolimitpushoutcoconemap.md) | 220 | `declaration-track:bdd96659a24d8b1d1d09a973ab055c8d9404a9a971c1d1a666a070d8b49749f3` |
| 21 | `def` | [isColimitOfHasPushoutOfPreservesColimit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesShapesPullbacksNamespaced.lean/declarations/iscolimitofhaspushoutofpreservescolimit.md) | 230 | `declaration-track:f101d355729fc99d9f096985ef758c476221e1599a6f7aea2292ec4b39a489f9` |
| 22 | `lemma` | [preservesPushout_symmetry](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesShapesPullbacksNamespaced.lean/declarations/preservespushout-symmetry.md) | 237 | `result-track:b90f35a80344bfc9efa93abb162f3df3f35f19082d8d3c8757210200a9aceabc` |
| 23 | `theorem` | [hasPushout_of_preservesPushout](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesShapesPullbacksNamespaced.lean/declarations/haspushout-of-preservespushout.md) | 248 | `result-track:5a1f50d902a5f0b559e9647ee1cfe18eadc4ab209c2bb192ad2048bf704f8fb6` |
| 24 | `def` | [PreservesPushout.iso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesShapesPullbacksNamespaced.lean/declarations/preservespushout-iso.md) | 255 | `declaration-track:8b5ff0a322922e429c25082831f5dbefde0256360fe4159c6e3312fd4bcb20a0` |
| 25 | `theorem` | [PreservesPushout.iso_hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesShapesPullbacksNamespaced.lean/declarations/preservespushout-iso-hom.md) | 260 | `result-track:217f677b56b8d8f193536ca817f14b5733aabd8de59b8e4fdab5aabc0340bb4f` |
| 26 | `theorem` | [PreservesPushout.inl_iso_hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesShapesPullbacksNamespaced.lean/declarations/preservespushout-inl-iso-hom.md) | 264 | `result-track:646ad9dfbdaf6ca99e533fad8dfb5207bcabd8af2333dcae0967f6b5f8cfb6ba` |
| 27 | `theorem` | [PreservesPushout.inr_iso_hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesShapesPullbacksNamespaced.lean/declarations/preservespushout-inr-iso-hom.md) | 270 | `result-track:39b83da73f13ff97212c8d2ed9d82486f6077b128b8c15c09779f4c03f028e18` |
| 28 | `theorem` | [PreservesPushout.inl_iso_inv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesShapesPullbacksNamespaced.lean/declarations/preservespushout-inl-iso-inv.md) | 276 | `result-track:4323b459f1f1f6d9b4d8dc4524bb49a667e718cf028418cd33e46ec795cc99f7` |
| 29 | `theorem` | [PreservesPushout.inr_iso_inv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesShapesPullbacksNamespaced.lean/declarations/preservespushout-inr-iso-inv.md) | 281 | `result-track:ce5b676cbae945fe81f1491c974c1fcf521b719154b008a82866943c69dc61ef` |
| 30 | `lemma` | [PreservesPullback.of_iso_comparison](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesShapesPullbacksNamespaced.lean/declarations/preservespullback-of-iso-comparison.md) | 300 | `result-track:4688edb078049d372a559e7b779ec6abc4908cfb278171975c0f89cbf1f843a6` |
| 31 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesShapesPullbacksNamespaced.lean/declarations/instance-source-edition-2.md) | 308 | `declaration-track:a1a0211d89a3a522015d8e9cf9f38c29824840509f1713eae8ba059bc5566b36` |
| 32 | `lemma` | [PreservesPushout.of_iso_comparison](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesShapesPullbacksNamespaced.lean/declarations/preservespushout-of-iso-comparison.md) | 321 | `result-track:a40d1c5216449785d35afe74e18bdc72b0b8a76ab3787d6bfefe0d362fade279` |
| 33 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesShapesPullbacksNamespaced.lean/declarations/instance.md) | 330 | `declaration-track:96ab907fe20c97bc1aeb47b576a7027b73528831aba5fef7b16c8dcd8cf72cdd` |
| 34 | `def` | [PushoutCocone.isColimitYonedaEquiv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesShapesPullbacksNamespaced.lean/declarations/pushoutcocone-iscolimityonedaequiv.md) | 336 | `declaration-track:9d2a1eb473a38cc69c47e2658fded5ed7f30db902b41854540219eff641fe95c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=354fe408337be20d105b88a5b5d3065cdb1ebb204781ccda309d5d65f583d30c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullbacks/Variant674bdc87d193975b9a6b6d7a28b05f2b4e116653c5048645b5d7af0972e39da1.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullbacks/Variant674bdc87d193975b9a6b6d7a28b05f2b4e116653c5048645b5d7af0972e39da1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
