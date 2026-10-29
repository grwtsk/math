# Verification target: Derived Category Ext Basic Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3bcd760385c3e60e44e5cf94a40f56f6ee995a16",
  "lexical_observation_count": 58,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8e509e031008d5f3b95d886c7786720b885a0125e967a58cae4f48b87c41df57.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/DerivedCategoryExtBasicNamespaced.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/DerivedCategoryExtBasicNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3bcd760385c3e60e44e5cf94a40f56f6ee995a16`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8e509e031008d5f3b95d886c7786720b885a0125e967a58cae4f48b87c41df57.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8e509e031008d5f3b95d886c7786720b885a0125e967a58cae4f48b87c41df57.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Homology.DerivedCategory.FullyFaithful` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Localization.SmallShiftedHom` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [HasExt](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/DerivedCategoryExtBasicNamespaced.lean/declarations/hasext.md) | 59 | `declaration-track:bf9e3cc7613fd85013db29e6f4a5381d99f4da22418f301c48f033243d864f93` |
| 2 | `lemma` | [hasExt_iff](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/DerivedCategoryExtBasicNamespaced.lean/declarations/hasext-iff.md) | 63 | `result-track:f455ce6a6607be6522bbc69fdcdd51eb677139554c38d7edbe274b1accbbee37` |
| 3 | `lemma` | [hasExt_of_hasDerivedCategory](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/DerivedCategoryExtBasicNamespaced.lean/declarations/hasext-of-hasderivedcategory.md) | 92 | `result-track:c5c8bb809791a0cdaae6b07b145e1014f3e6932e8fb45eb70bb95034245d63f9` |
| 4 | `lemma` | [HasExt.standard](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/DerivedCategoryExtBasicNamespaced.lean/declarations/hasext-standard.md) | 96 | `result-track:eccfa46ca69df26a2789b0cd3a9dc71e89b6c18215d77d5921da35540fb4e47b` |
| 5 | `def` | [Ext](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/DerivedCategoryExtBasicNamespaced.lean/declarations/ext.md) | 107 | `declaration-track:8b7a38e40b47b6bad166a3714c1e35657df32b5dfb935fe9f30fc54ae9e90124` |
| 6 | `def` | [comp](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/DerivedCategoryExtBasicNamespaced.lean/declarations/comp.md) | 117 | `declaration-track:2a917c3a84717b8cde90816a9e0d57a0639881e8e1868c6274d90086428002a8` |
| 7 | `lemma` | [comp_assoc](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/DerivedCategoryExtBasicNamespaced.lean/declarations/comp-assoc.md) | 121 | `result-track:b25c8277b1cb95ac725324d23d502360fdf80ed961008581150b63105078efe7` |
| 8 | `lemma` | [comp_assoc_of_second_deg_zero](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/DerivedCategoryExtBasicNamespaced.lean/declarations/comp-assoc-of-second-deg-zero.md) | 128 | `result-track:a33b78833657792e4ffa65675511514186d7ff7d9553f16a81fc25cc9f78be3d` |
| 9 | `lemma` | [comp_assoc_of_third_deg_zero](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/DerivedCategoryExtBasicNamespaced.lean/declarations/comp-assoc-of-third-deg-zero.md) | 136 | `result-track:bea5b52f3ca9f5479c5f34401fbbf72129ac0944efaae40e3a9cfa6fd0b0349b` |
| 10 | `def` | [homEquiv](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/DerivedCategoryExtBasicNamespaced.lean/declarations/homequiv.md) | 149 | `declaration-track:efeebe116a7e797efc4834d011219d20ea5a156d5494076c05128f9209e1205c` |
| 11 | `abbrev` | [hom](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/DerivedCategoryExtBasicNamespaced.lean/declarations/hom-source-edition-2.md) | 155 | `declaration-track:8623b41511f39b397859af31601f2c928ef7d6fdf2b5f121e6db87a406322eef` |
| 12 | `lemma` | [comp_hom](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/DerivedCategoryExtBasicNamespaced.lean/declarations/comp-hom.md) | 160 | `result-track:bf25bacdd4d89084cb6f62ed5be459875bba681ce6d59179533cd19033f76864` |
| 13 | `lemma` | [ext](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/DerivedCategoryExtBasicNamespaced.lean/declarations/ext-source-edition-2.md) | 165 | `result-track:c7b22f1c482dd8b7ccf727f86c3790413bc6bba22bcc5198a268b256ead920c8` |
| 14 | `def` | [mk₀](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/DerivedCategoryExtBasicNamespaced.lean/declarations/mk.md) | 171 | `declaration-track:a2d45f783353edad8587717fba0c8ee8708cb476a1a958cfc8b5bdde2d5b8d23` |
| 15 | `lemma` | [mk₀_hom](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/DerivedCategoryExtBasicNamespaced.lean/declarations/mk-hom.md) | 175 | `result-track:d658d895ed42976b3a38b184081fe2cbb35436bc117b3c41a1f940a6bcf0023b` |
| 16 | `lemma` | [mk₀_comp_mk₀](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/DerivedCategoryExtBasicNamespaced.lean/declarations/mk-comp-mk.md) | 180 | `result-track:f6bb6317bf88a017c37bcc02844a6a16a1c93bb434c5c4dc3d073e7b35e6142e` |
| 17 | `lemma` | [mk₀_comp_mk₀_assoc](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/DerivedCategoryExtBasicNamespaced.lean/declarations/mk-comp-mk-assoc.md) | 185 | `result-track:7d019a93ec59ff5061341611bc78a3c254440768b0775bf4c84f5cca58f8502d` |
| 18 | `lemma` | [mk₀_bijective](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/DerivedCategoryExtBasicNamespaced.lean/declarations/mk-bijective.md) | 193 | `result-track:bfc71f9620688c7f0b54e9c6d398e78d338cc78d08008fd8970121a0bc760770` |
| 19 | `def` | [homEquiv₀](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/DerivedCategoryExtBasicNamespaced.lean/declarations/homequiv-source-edition-2.md) | 210 | `declaration-track:f3ba792d3ccaba9ae3557de4f718906fcc1e3130e557a399bcec93390dfc696c` |
| 20 | `lemma` | [mk₀_homEquiv₀_apply](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/DerivedCategoryExtBasicNamespaced.lean/declarations/mk-homequiv-apply.md) | 214 | `result-track:d07a422a35c43c186f5786675687c5dc933593071f820b9d4932e0ee55c09914` |
| 21 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/DerivedCategoryExtBasicNamespaced.lean/declarations/instance.md) | 228 | `declaration-track:4b08da7d9104a5212e6f1f967732207934d716693a47ceb47342b6d71eab5692` |
| 22 | `abbrev` | [hom'](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/DerivedCategoryExtBasicNamespaced.lean/declarations/hom.md) | 236 | `declaration-track:5d324aa4f3ae6b386c266e36c8e24dc5ac3f0a13c882c803eea15450d8c000c9` |
| 23 | `lemma` | [add_hom'](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/DerivedCategoryExtBasicNamespaced.lean/declarations/add-hom.md) | 242 | `result-track:170aad7d0dc5b30a640d99070239daa3fec000472a84375d4b7966646c6594a1` |
| 24 | `lemma` | [neg_hom'](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/DerivedCategoryExtBasicNamespaced.lean/declarations/neg-hom.md) | 246 | `result-track:09a8929266a9ec2d44fb5e125df938c79577a36d51596dd0871a14d2ec46d756` |
| 25 | `lemma` | [zero_hom'](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/DerivedCategoryExtBasicNamespaced.lean/declarations/zero-hom-source-edition-2.md) | 251 | `result-track:f671fec3844c93fff3de4b9b2abdc94f478dbc0193309bcbbef9d99dd8067619` |
| 26 | `lemma` | [add_comp](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/DerivedCategoryExtBasicNamespaced.lean/declarations/add-comp.md) | 256 | `result-track:ae13321124d160c893a71e2425c873358d4bfdc1748643fce3f2134314c9dd1a` |
| 27 | `lemma` | [comp_add](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/DerivedCategoryExtBasicNamespaced.lean/declarations/comp-add.md) | 261 | `result-track:9e3b846acec33cf6d4fa0278dfbc3cd12e5ba13e33f0cd4855654178f144fbff` |
| 28 | `lemma` | [neg_comp](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/DerivedCategoryExtBasicNamespaced.lean/declarations/neg-comp.md) | 266 | `result-track:86a82c3f4faa7c2de82fcf3e7163e5137c594d57df7c7b38f873c519322cc67f` |
| 29 | `lemma` | [comp_neg](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/DerivedCategoryExtBasicNamespaced.lean/declarations/comp-neg.md) | 271 | `result-track:a9286c61d16c4f546468075b7b892da3af42a54bf982dad720187bd10828179f` |
| 30 | `lemma` | [zero_comp](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/DerivedCategoryExtBasicNamespaced.lean/declarations/zero-comp.md) | 277 | `result-track:d28e2a8cd05673840d3b30b7b6327fd196986258944f849a256ec7db5dcabee9` |
| 31 | `lemma` | [comp_zero](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/DerivedCategoryExtBasicNamespaced.lean/declarations/comp-zero.md) | 282 | `result-track:f1ac7275ef94e53e0c6abc8177217d4c168131a958df6c3d49818ae7ab71b37c` |
| 32 | `lemma` | [mk₀_id_comp](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/DerivedCategoryExtBasicNamespaced.lean/declarations/mk-id-comp.md) | 287 | `result-track:4010576a3d61c1e36240e69edfe91d4be8f851d5873b0f8c945ed170f224d901` |
| 33 | `lemma` | [comp_mk₀_id](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/DerivedCategoryExtBasicNamespaced.lean/declarations/comp-mk-id.md) | 292 | `result-track:758574c70a2a9a7bcb3e01a1bbe2e85d751ee8b141e80f9eb036b129cfa8f6c8` |
| 34 | `lemma` | [mk₀_zero](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/DerivedCategoryExtBasicNamespaced.lean/declarations/mk-zero.md) | 298 | `result-track:e964ab760a4f5aaabd64bddf129a24bee307e1e3d2393f7b7ba83e9530ef4ad0` |
| 35 | `lemma` | [mk₀_add](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/DerivedCategoryExtBasicNamespaced.lean/declarations/mk-add.md) | 301 | `result-track:f2bfa191bcdb49e7f9e11fc9daa3d303fea50759c5fb3605e381dd60cbd6329d` |
| 36 | `def` | [addEquiv₀](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/DerivedCategoryExtBasicNamespaced.lean/declarations/addequiv.md) | 306 | `declaration-track:90ae8baedbdb465f179232dc055cdde1b99b3d75a307827ea36eb48e58b47675` |
| 37 | `lemma` | [mk₀_addEquiv₀_apply](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/DerivedCategoryExtBasicNamespaced.lean/declarations/mk-addequiv-apply.md) | 312 | `result-track:17d66949bfa4a7cbddf026a03ffc04e9442fbe7bb25e4b60935609341fbaf405` |
| 38 | `lemma` | [biprod_ext](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/DerivedCategoryExtBasicNamespaced.lean/declarations/biprod-ext.md) | 319 | `result-track:fbdd030b38a962476e2930362cee3e3e3cff94e80b149e6e17d63176c2844659` |
| 39 | `lemma` | [zero_hom](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/DerivedCategoryExtBasicNamespaced.lean/declarations/zero-hom.md) | 335 | `result-track:e5f80258946ed1bbf66cd4dc7de479d8f67adeb98253f11da03a7297368660e5` |
| 40 | `lemma` | [add_hom](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/DerivedCategoryExtBasicNamespaced.lean/declarations/add-hom-source-edition-2.md) | 342 | `result-track:ae87cbfb3de3c4fa1307f2b3d77644e41d877b2810383132c0b7314e4bf68f09` |
| 41 | `lemma` | [neg_hom](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/DerivedCategoryExtBasicNamespaced.lean/declarations/neg-hom-source-edition-2.md) | 363 | `result-track:8f577a65609e8231ae3429c3f619e4d1ca8154cbf2f47c3ce4a819e26a39bd6d` |
| 42 | `def` | [homAddEquiv](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/DerivedCategoryExtBasicNamespaced.lean/declarations/homaddequiv.md) | 368 | `declaration-track:562363f1ddd357caed1092e6cb7208907ce73e730ce9544a6440060fea0abc06` |
| 43 | `lemma` | [homAddEquiv_apply](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/DerivedCategoryExtBasicNamespaced.lean/declarations/homaddequiv-apply.md) | 375 | `result-track:d07f0bbad32bdbc897c16ac61b0906d8d70a0d17f9245f00fe308c58dade6dc7` |
| 44 | `def` | [bilinearComp](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/DerivedCategoryExtBasicNamespaced.lean/declarations/bilinearcomp.md) | 382 | `declaration-track:edb743f3c1a2017427e202120b3e5e687db49333e428be44a2225409b00278d8` |
| 45 | `abbrev` | [postcomp](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/DerivedCategoryExtBasicNamespaced.lean/declarations/postcomp.md) | 387 | `declaration-track:31eec8aabcac7484a24f9118dbb344d1bf49388b4836f315d5cbe3e9e7cbe441` |
| 46 | `abbrev` | [precomp](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/DerivedCategoryExtBasicNamespaced.lean/declarations/precomp.md) | 392 | `declaration-track:4ea7216f348efb7925a1a5a47cfe575c0072bed716bf0073b966418816d8f227` |
| 47 | `def` | [extFunctorObj](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/DerivedCategoryExtBasicNamespaced.lean/declarations/extfunctorobj.md) | 400 | `declaration-track:40e41b0d50e1b9202cfa0d0fa389fe88e24491d045021fd3dea542d2a9446bf0` |
| 48 | `def` | [extFunctor](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/DerivedCategoryExtBasicNamespaced.lean/declarations/extfunctor.md) | 414 | `declaration-track:73c988e26d3a3004bb2a68ae175c2246323b2d9dd1aed259be123d9861959d49` |
| 49 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/DerivedCategoryExtBasicNamespaced.lean/declarations/instance-source-edition-3.md) | 436 | `declaration-track:deb8fde78be7ef587324887c4a573f8ececfed71126ae0bc3688a2eae1d690d2` |
| 50 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/DerivedCategoryExtBasicNamespaced.lean/declarations/instance-source-edition-2.md) | 438 | `declaration-track:a4e8ea74f18fa53494ff5a1688e2de391362edcb66914a2ab3bd6cee7683e88d` |
| 51 | `lemma` | [Ext.comp_sum](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/DerivedCategoryExtBasicNamespaced.lean/declarations/ext-comp-sum.md) | 440 | `result-track:428277ff84ca0154830113afb33cd77e7bcb019463ef8fd729f399324dbac7cf` |
| 52 | `lemma` | [Ext.sum_comp](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/DerivedCategoryExtBasicNamespaced.lean/declarations/ext-sum-comp.md) | 445 | `result-track:8c2f041c28ce22560d99aca5ac81eb456297426cbba7fb6bc63457290b5ac9ac` |
| 53 | `lemma` | [Ext.mk₀_sum](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/DerivedCategoryExtBasicNamespaced.lean/declarations/ext-mk-sum.md) | 450 | `result-track:1360f689f3cf48a80d1fffab6561337195649ac1cdbb05df7556ec7b0359806f` |
| 54 | `def` | [Ext.biproductAddEquiv](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/DerivedCategoryExtBasicNamespaced.lean/declarations/ext-biproductaddequiv.md) | 455 | `declaration-track:8d55be12660af194a0c83be995597dd974b7d854cb9e213ede9d8566731d99b8` |
| 55 | `def` | [Ext.addEquivBiproduct](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/DerivedCategoryExtBasicNamespaced.lean/declarations/ext-addequivbiproduct.md) | 472 | `declaration-track:b760de70c0e42d6afeaf2a5da43222045c6214ecc263e413fc441417534102f4` |
| 56 | `def` | [chgUniv](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/DerivedCategoryExtBasicNamespaced.lean/declarations/chguniv.md) | 497 | `declaration-track:e07f44a434280506697df67e78ede2e30fa2505f5b69c11170aee6cc0139e95c` |
| 57 | `lemma` | [homEquiv_chgUniv](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/DerivedCategoryExtBasicNamespaced.lean/declarations/homequiv-chguniv.md) | 500 | `result-track:4d20e4836ce9de8440a6dcbdd3cff42a0176ccab2067c1496e9f157297d99b75` |
| 58 | `lemma` | [hasExt_iff_small_ext](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/DerivedCategoryExtBasicNamespaced.lean/declarations/hasext-iff-small-ext.md) | 513 | `result-track:4db01372624e9e389afec47d36de7f3662c7891b5c7b51d82291b56676f12715` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=84ff8724b6c2c04798668d1ee6ad552324cab6b7ab88fca095ecb1854c0a1d44 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8e509e031008d5f3b95d886c7786720b885a0125e967a58cae4f48b87c41df57.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8e509e031008d5f3b95d886c7786720b885a0125e967a58cae4f48b87c41df57.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
