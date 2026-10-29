# Verification target: Bifunctor Associator

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "12aac480ca3bddf76d84604c890db4a12739265e",
  "lexical_observation_count": 60,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/BifunctorAssociator/Variant9756d2b9244ab725ee0216b43b180cc17250eef079e831940eb678e446efb999.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/BifunctorAssociator.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/BifunctorAssociator.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `12aac480ca3bddf76d84604c890db4a12739265e`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/BifunctorAssociator/Variant9756d2b9244ab725ee0216b43b180cc17250eef079e831940eb678e446efb999.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/BifunctorAssociator/Variant9756d2b9244ab725ee0216b43b180cc17250eef079e831940eb678e446efb999.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.GradedObject.Associator` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Linear.LinearFunctor` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Homology.Bifunctor` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [HasGoodTrifunctor₁₂Obj](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/BifunctorAssociator.lean/declarations/hasgoodtrifunctor-obj.md) | 70 | `declaration-track:2160cb0f766b66af87381a957b99af525faf6fa3e6ebf33d6f0e2a3153a58613` |
| 2 | `abbrev` | [HasGoodTrifunctor₂₃Obj](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/BifunctorAssociator.lean/declarations/hasgoodtrifunctor-obj-source-edition-2.md) | 82 | `declaration-track:2b737fa2d4a7faaed93a473867d65805332ffc5473ac11fe13c3491563c3a10f` |
| 3 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/BifunctorAssociator.lean/declarations/instance.md) | 86 | `declaration-track:116246cb6d309e47985c0bc52cb9375b295b7e2f1576767721f243c5c81e7099` |
| 4 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/BifunctorAssociator.lean/declarations/instance-source-edition-2.md) | 97 | `declaration-track:364e8885367c168f7ac3f8b3861719328e3c8db2f3cad5e48eedfadf20f97eb5` |
| 5 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/BifunctorAssociator.lean/declarations/instance-source-edition-3.md) | 103 | `declaration-track:e5e00dd5bb7e4671b06fa713b6034881cc6d9ddd8b82311e49bd772b98871c3e` |
| 6 | `def` | [mapBifunctorAssociatorX](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/BifunctorAssociator.lean/declarations/mapbifunctorassociatorx.md) | 111 | `declaration-track:f89ba92e4650460cba6feb91736d36a36aba799cdd1157ab14b95bef9af42ae5` |
| 7 | `def` | [ι](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/BifunctorAssociator.lean/declarations/anonymous-source-edition-2.md) | 131 | `declaration-track:31eb29c7f9f39c78ac3be1e0b08f5360a550946daa6e0755275ba43b7981c289` |
| 8 | `lemma` | [ι_eq](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/BifunctorAssociator.lean/declarations/eq-source-edition-2.md) | 137 | `result-track:dd0a61f7217c71f6140e448cc859afb664c5f67a04ea23c8c1e4a253797336f8` |
| 9 | `def` | [ιOrZero](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/BifunctorAssociator.lean/declarations/orzero.md) | 148 | `declaration-track:4676240f3a453a0c3f2902cac80d157cd90ae6a55f90f03a798a02cadab0d010` |
| 10 | `lemma` | [ιOrZero_eq](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/BifunctorAssociator.lean/declarations/orzero-eq.md) | 155 | `result-track:aaeef4032583fea2036d9d0f9451a5cb227841e5675a568f19c8ec26533a9f5b` |
| 11 | `lemma` | [ιOrZero_eq_zero](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/BifunctorAssociator.lean/declarations/orzero-eq-zero.md) | 160 | `result-track:a366e953ddde3cb09cd0cd254be03646998284a0560fab623fcf473cad1747e1` |
| 12 | `lemma` | [hom_ext](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/BifunctorAssociator.lean/declarations/hom-ext.md) | 166 | `result-track:98d1f061a60f05580a35941760218b94cdd4aaa4baff482e3c7cb9ac6c075e32` |
| 13 | `def` | [mapBifunctor₁₂Desc](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/BifunctorAssociator.lean/declarations/mapbifunctor-desc-source-edition-4.md) | 187 | `declaration-track:ca87fd066ea46c9150edb39296945e64e4d521ec1d25eb6ce8c996917ffcf90e` |
| 14 | `lemma` | [ι_mapBifunctor₁₂Desc](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/BifunctorAssociator.lean/declarations/mapbifunctor-desc-source-edition-2.md) | 192 | `result-track:1948353e8c587e8617db803bfe178b126ba77e3aec51aaaa23b5af25f2708962` |
| 15 | `def` | [d₁](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/BifunctorAssociator.lean/declarations/d-source-edition-8.md) | 204 | `declaration-track:4de44062aa785ac271829e7a441b4d237d1a7140c33eccfd92b4dfe7c2d55c3a` |
| 16 | `lemma` | [d₁_eq_zero](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/BifunctorAssociator.lean/declarations/d-eq-zero-source-edition-6.md) | 212 | `result-track:bd70e2cb4a4d44f80ea422a216ee32f8b2862b3feefebb162f8769974c00c274` |
| 17 | `lemma` | [d₁_eq](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/BifunctorAssociator.lean/declarations/d-eq-source-edition-2.md) | 217 | `result-track:46e175b92defd9105bec0e4c91aacc2a847d5d0d64156adf1255e1b743a689f4` |
| 18 | `def` | [d₂](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/BifunctorAssociator.lean/declarations/d-source-edition-14.md) | 228 | `declaration-track:a91227e8261ac05099587d8dce020a12f892380923c19efda4cfa2fd93d217d0` |
| 19 | `lemma` | [d₂_eq_zero](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/BifunctorAssociator.lean/declarations/d-eq-zero-source-edition-2.md) | 235 | `result-track:3d7bd0a7ad1b5097fbd2b16d2f5f837cb5317db7dac1dabb1f52a61531a49ff0` |
| 20 | `lemma` | [d₂_eq](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/BifunctorAssociator.lean/declarations/d-eq-source-edition-5.md) | 240 | `result-track:86dfa74605f95da00842b7d6f2b1f2b51485f5c7042245266e9404ee2e54b482` |
| 21 | `def` | [d₃](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/BifunctorAssociator.lean/declarations/d-source-edition-7.md) | 250 | `declaration-track:3c0c8d931841e9c9cc079ffb3786237ac45bd703701fc3870ea51991b92bb91e` |
| 22 | `lemma` | [d₃_eq_zero](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/BifunctorAssociator.lean/declarations/d-eq-zero-source-edition-3.md) | 257 | `result-track:46e68970221153c9d44415079b84964c464d280233d37307ad944426b726d70c` |
| 23 | `lemma` | [d₃_eq](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/BifunctorAssociator.lean/declarations/d-eq-source-edition-8.md) | 262 | `result-track:f5a49f0ffb5fd02e1d3d40eb98792d7715d148d9abcabb144b359cb3e63641f7` |
| 24 | `def` | [D₁](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/BifunctorAssociator.lean/declarations/d-source-edition-4.md) | 277 | `declaration-track:1bfb382963c81434cc5b322710ca95eb0c878284133081152cf326563e234718` |
| 25 | `def` | [D₂](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/BifunctorAssociator.lean/declarations/d-source-edition-6.md) | 283 | `declaration-track:3b117a034013e73d76e8b3f72f996fc746bb2a5f956dc2e0eeb18c3568f455b2` |
| 26 | `def` | [D₃](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/BifunctorAssociator.lean/declarations/d-source-edition-9.md) | 289 | `declaration-track:4e5dbda694e6d3b53b023f6e6d1d34ac89addbbac6e07d28f26720f7c820a726` |
| 27 | `lemma` | [ι_D₁](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/BifunctorAssociator.lean/declarations/d-source-edition-12.md) | 302 | `result-track:8ce6273ff24c5fe4aa1190365bd5f5045a145ae6d5d6c7977d3cee3adcb2d2af` |
| 28 | `lemma` | [ι_D₂](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/BifunctorAssociator.lean/declarations/d-source-edition-2.md) | 308 | `result-track:0ecf2f7728d1cefdf1420abd33c06b92fb706b750642aaec9f999971ee359cb7` |
| 29 | `lemma` | [ι_D₃](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/BifunctorAssociator.lean/declarations/d-source-edition-11.md) | 314 | `result-track:6a438def0be1650cc9eff8bd472f3f9fecb867d4f62fb3870cd0e3c7e5d85184` |
| 30 | `lemma` | [d_eq](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/BifunctorAssociator.lean/declarations/d-eq-source-edition-3.md) | 333 | `result-track:5d60d45ffe203c917b1d63db6b1d9de845003ee47f76c86dcdb9b86418e2a12f` |
| 31 | `def` | [ι](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/BifunctorAssociator.lean/declarations/anonymous.md) | 417 | `declaration-track:26577ef701627d36674c8bcf08c9abd1f570882296732882dbdee24b3476e64e` |
| 32 | `lemma` | [ι_eq](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/BifunctorAssociator.lean/declarations/eq.md) | 424 | `result-track:26c951663ab9d1de8f0ed5f41aba967e77954d45b01a8814aa1d5097a6a2c69f` |
| 33 | `def` | [ιOrZero](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/BifunctorAssociator.lean/declarations/orzero-source-edition-2.md) | 436 | `declaration-track:db749ecf5b53f453d948f015511d088c6c1603524f563ed86ea0c4fc59ce2cc7` |
| 34 | `lemma` | [ιOrZero_eq](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/BifunctorAssociator.lean/declarations/orzero-eq-source-edition-2.md) | 443 | `result-track:c5446d23a6add46603236d3c21e3936c805c5079f68c3ce38655ae06bfcdc84b` |
| 35 | `lemma` | [ιOrZero_eq_zero](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/BifunctorAssociator.lean/declarations/orzero-eq-zero-source-edition-2.md) | 448 | `result-track:da82bf37ceb06549497027a64fa2af6bb2e6242389d06a3857b486701d1a791a` |
| 36 | `lemma` | [hom_ext](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/BifunctorAssociator.lean/declarations/hom-ext-source-edition-2.md) | 456 | `result-track:b6e9d519cadfd7fbaedd7baaae45cef3dd0eaecfd28035a96edee6b2169fa0ec` |
| 37 | `def` | [mapBifunctor₂₃Desc](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/BifunctorAssociator.lean/declarations/mapbifunctor-desc.md) | 473 | `declaration-track:193f27e4c2d943c3e264858b972e076d530aed5b571c8fefae2554f451387e70` |
| 38 | `lemma` | [ι_mapBifunctor₂₃Desc](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/BifunctorAssociator.lean/declarations/mapbifunctor-desc-source-edition-3.md) | 478 | `result-track:440ddafe39614de7b3cd262046dea7c008d073234773a8deb045af06d0b1a9f6` |
| 39 | `def` | [d₁](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/BifunctorAssociator.lean/declarations/d-source-edition-10.md) | 490 | `declaration-track:63bdd1bcf21c0aa0c881039a5a68a196d30d70e9fd8f43182c9c7723f24b67a9` |
| 40 | `lemma` | [d₁_eq_zero](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/BifunctorAssociator.lean/declarations/d-eq-zero-source-edition-5.md) | 497 | `result-track:b74f1cbf68cbfb797bd5d6d954699a52b98607dd9b08a5e3dfc28a3813056855` |
| 41 | `lemma` | [d₁_eq](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/BifunctorAssociator.lean/declarations/d-eq-source-edition-7.md) | 502 | `result-track:d619ee2b82e15ab57ce9a67a679bf6ffa128728de55ccb168d598b1851af7e62` |
| 42 | `def` | [d₂](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/BifunctorAssociator.lean/declarations/d-source-edition-17.md) | 512 | `declaration-track:cd0629e1de867f2b1a44aec4c66309478a3804394f79d843d48dea9011e6eb37` |
| 43 | `lemma` | [d₂_eq_zero](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/BifunctorAssociator.lean/declarations/d-eq-zero.md) | 519 | `result-track:0ed5dc1f74cbda5361aa74b9660353eeaec55a321598d68d9e0c568194606842` |
| 44 | `lemma` | [d₂_eq](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/BifunctorAssociator.lean/declarations/d-eq.md) | 524 | `result-track:0ea34bd437982a7baa2b0da54b49cd225ebf3fd331c885955d4b4b612a82c5b7` |
| 45 | `def` | [d₃](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/BifunctorAssociator.lean/declarations/d-source-edition-15.md) | 534 | `declaration-track:b27628f53570780ce50eec0d50cd128f87f932349827f794c042dc4229db6194` |
| 46 | `lemma` | [d₃_eq_zero](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/BifunctorAssociator.lean/declarations/d-eq-zero-source-edition-4.md) | 542 | `result-track:6f556f46544c8c2334ba470644900695b3392e2341685fd6324ceb3fe3a233d6` |
| 47 | `lemma` | [d₃_eq](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/BifunctorAssociator.lean/declarations/d-eq-source-edition-6.md) | 547 | `result-track:bff2b8a14f4a4160e02dc5478aed569ac2a51ab0a7a4abfb85c2be3b5604fa9d` |
| 48 | `def` | [D₁](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/BifunctorAssociator.lean/declarations/d-source-edition-5.md) | 561 | `declaration-track:2318c45973d0a1d047350a1db34d91de14b89521eab043b85cc0e3705d934c24` |
| 49 | `def` | [D₂](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/BifunctorAssociator.lean/declarations/d.md) | 569 | `declaration-track:01ddc71a7242e24b87700211efdebb45d3713ab3e80c41d7813ef37dcb50a97e` |
| 50 | `def` | [D₃](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/BifunctorAssociator.lean/declarations/d-source-edition-3.md) | 575 | `declaration-track:183aa70397ecd37d5a470857402d16831276dcf678c4207bda99d12d9fc0aa27` |
| 51 | `lemma` | [ι_D₁](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/BifunctorAssociator.lean/declarations/d-source-edition-18.md) | 588 | `result-track:ff17bc3d1844c93adc5bcf27b0682f10b49b4ad5b0ac4c371acea102624bd305` |
| 52 | `lemma` | [ι_D₂](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/BifunctorAssociator.lean/declarations/d-source-edition-13.md) | 613 | `result-track:a7db089af0066211aa747509aa66cbe50a854f15f7ec3c7fa6b55677cd679274` |
| 53 | `lemma` | [ι_D₃](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/BifunctorAssociator.lean/declarations/d-source-edition-16.md) | 619 | `result-track:cb0ca8add9ffe06b4df866fa20f38c81102e8fce0a8ad32524e6605854bd0a5f` |
| 54 | `lemma` | [d_eq](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/BifunctorAssociator.lean/declarations/d-eq-source-edition-4.md) | 628 | `result-track:63da6e3d5285500fde7f973774acd669eae7e35ff86c72a1d213152d6a872507` |
| 55 | `lemma` | [ι_mapBifunctorAssociatorX_hom](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/BifunctorAssociator.lean/declarations/mapbifunctorassociatorx-hom.md) | 718 | `result-track:db7a86966f65e5831ea00c53beffffe8c8880a0f2049fe6952caa550d2ccd5f9` |
| 56 | `lemma` | [ιOrZero_mapBifunctorAssociatorX_hom](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/BifunctorAssociator.lean/declarations/orzero-mapbifunctorassociatorx-hom.md) | 727 | `result-track:4a972d7b885307c86f4eaea3cbcae8c87c8915a39da908cf1be0df708d866e52` |
| 57 | `lemma` | [mapBifunctorAssociatorX_hom_D₁](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/BifunctorAssociator.lean/declarations/mapbifunctorassociatorx-hom-d.md) | 741 | `result-track:1e753a29126ea3e1715adc594d5be652110761a26c87669358357ca9844163eb` |
| 58 | `lemma` | [mapBifunctorAssociatorX_hom_D₂](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/BifunctorAssociator.lean/declarations/mapbifunctorassociatorx-hom-d-source-edition-2.md) | 761 | `result-track:b292ab60d16153fdb0217aa0556ddeb2f8f5a4415d8ff4391bca9a5cb267b026` |
| 59 | `lemma` | [mapBifunctorAssociatorX_hom_D₃](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/BifunctorAssociator.lean/declarations/mapbifunctorassociatorx-hom-d-source-edition-3.md) | 779 | `result-track:dba88444195b2023e3313eb7bdcfd39680c71ae7fc4ef3b4addca3fbdb587768` |
| 60 | `def` | [mapBifunctorAssociator](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/BifunctorAssociator.lean/declarations/mapbifunctorassociator.md) | 798 | `declaration-track:f11a233a47828167bbb7ba533a6f9dd54228e96ef5c08a108dd5a8de4cb9f831` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9e3b2c11f2251de378e58d087056063198b25abb52f6efec9cf0f47d3daf4b75 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/BifunctorAssociator/Variant9756d2b9244ab725ee0216b43b180cc17250eef079e831940eb678e446efb999.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/BifunctorAssociator/Variant9756d2b9244ab725ee0216b43b180cc17250eef079e831940eb678e446efb999.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
