# Verification target: Module Cat Sheaf

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9d367cc61a8675210b08ab76f729bd218ce56512",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheaf/Variant014cfe6c11591e7ce19ec754eb3ac5a05f2085e87ff01f32cf2252a36012ff6c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatSheaf.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatSheaf.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9d367cc61a8675210b08ab76f729bd218ce56512`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheaf/Variant014cfe6c11591e7ce19ec754eb3ac5a05f2085e87ff01f32cf2252a36012ff6c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheaf/Variant014cfe6c11591e7ce19ec754eb3ac5a05f2085e87ff01f32cf2252a36012ff6c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Category.ModuleCat.Presheaf` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.ModuleCat.Limits` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Sites.LocallyBijective` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Sites.Whiskering` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [SheafOfModules](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatSheaf.lean/declarations/sheafofmodules.md) | 29 | `declaration-track:305c004ddd6ac72904496a6380b7eacb95502c7df7bbd33b43884e5d5975ed98` |
| 2 | `structure` | [Hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatSheaf.lean/declarations/hom.md) | 41 | `declaration-track:8827906cdd8f191022290ae35bc8243fe875109add06fa19056caae6e68f1f15` |
| 3 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatSheaf.lean/declarations/instance.md) | 45 | `declaration-track:1e00ff9b4f6dab995a29783d4e2d63993541e0215769bd1ef0518f9686433ff1` |
| 4 | `lemma` | [hom_ext](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatSheaf.lean/declarations/hom-ext.md) | 51 | `result-track:db6c9c94fe7cd6b3970865dc502da837a9151f595f8b362b3f8203da7ab4f958` |
| 5 | `lemma` | [id_val](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatSheaf.lean/declarations/id-val.md) | 55 | `result-track:112272308b5817e94cdd5d3f4dd68f6877beb7ce5a277bf8bb906d09812f3bfb` |
| 6 | `lemma` | [comp_val](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatSheaf.lean/declarations/comp-val.md) | 58 | `result-track:517b8abdb216fe6e9dc178c3f2f2d74c15791d2220a708ff89c93074848814d2` |
| 7 | `def` | [forget](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatSheaf.lean/declarations/forget.md) | 64 | `declaration-track:cb608adb859b58cd1a3c3fdd7de4aeec58ca83d2c89bb676739d479802c67870` |
| 8 | `def` | [fullyFaithfulForget](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatSheaf.lean/declarations/fullyfaithfulforget.md) | 70 | `declaration-track:eb8169135c253cecd8a3af9a8f262fc41bf9bd0d8303abd483d83a82f8da1e36` |
| 9 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatSheaf.lean/declarations/instance-source-edition-6.md) | 73 | `declaration-track:b60752e8acab7977f7cb457836c55db996899fe9fe48342a270a434d1d17575f` |
| 10 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatSheaf.lean/declarations/instance-source-edition-4.md) | 75 | `declaration-track:750f14d37256d136bc559f6d83f825d407e9d66c224cc9c6c3d8c2c79f27a175` |
| 11 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatSheaf.lean/declarations/instance-source-edition-8.md) | 77 | `declaration-track:d2cb44f4d540ded8ecca9e5dcbd3ba3d11b66feb5d2c1f97239b4baca04dcb7b` |
| 12 | `def` | [evaluation](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatSheaf.lean/declarations/evaluation.md) | 81 | `declaration-track:54c2a44bc96a10867cd417585ed9fd1b2b751aea0daa319a8641eb3132d0dbf9` |
| 13 | `def` | [toSheaf](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatSheaf.lean/declarations/tosheaf.md) | 86 | `declaration-track:3f3e62886cd9265133b9e08dc133311b89f1a48d9c6144f7aceddebf4381697e` |
| 14 | `def` | [forgetToSheafModuleCat](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatSheaf.lean/declarations/forgettosheafmodulecat.md) | 95 | `declaration-track:8cd441ef904c951874ecd1f80101aad499c492e5bdcc7661aea4d6b850fcb7f8` |
| 15 | `def` | [toSheafCompSheafToPresheafIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatSheaf.lean/declarations/tosheafcompsheaftopresheafiso.md) | 106 | `declaration-track:149a66aa4847b0d113529ab7404e46210b2bd7c12703b5514d3951f77293bc2d` |
| 16 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatSheaf.lean/declarations/instance-source-edition-5.md) | 110 | `declaration-track:82423b2f2f05e7260a00bf7c17763e36474716af3a384598b3d03b1e397f4df8` |
| 17 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatSheaf.lean/declarations/instance-source-edition-7.md) | 113 | `declaration-track:ccb1dc02c9fb7ee8e7a1706769d27fb754b31e477169ac4a7201ba4e8d8b535d` |
| 18 | `lemma` | [add_val](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatSheaf.lean/declarations/add-val.md) | 117 | `result-track:85d8594abbc63a70f3ca38c038a8f264979eaac6ef09e42094acb969261b35e0` |
| 19 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatSheaf.lean/declarations/instance-source-edition-9.md) | 120 | `declaration-track:eac061700faccc3af86754b5b59b7f01ef22d00594e21cd1e5bb5d6b0d70c2f8` |
| 20 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatSheaf.lean/declarations/instance-source-edition-2.md) | 124 | `declaration-track:2b03c70be9a777a7edd6eb16c750d5befc5e7ec0e4c777791a241ce05d9c4a76` |
| 21 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatSheaf.lean/declarations/instance-source-edition-3.md) | 126 | `declaration-track:40a32c44024a6bdad28851d446f193dd82252703f4e73a0665a648e9a5ab3357` |
| 22 | `abbrev` | [sections](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatSheaf.lean/declarations/sections.md) | 131 | `declaration-track:5cf571a78f9642d7e848d3cef823002a9855185ea8cf6d1d312af93cfd4f307e` |
| 23 | `abbrev` | [sectionsMap](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatSheaf.lean/declarations/sectionsmap.md) | 134 | `declaration-track:152aa585000b5ea30572586a09dd91ca5422276f5a467ccfd164a1d336d50dba` |
| 24 | `lemma` | [sectionsMap_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatSheaf.lean/declarations/sectionsmap-comp.md) | 138 | `result-track:491bd5aa0a7ca648bbcee7c177644da70a8cd42f9e6c2b9bfb73ad72d1357e50` |
| 25 | `lemma` | [sectionsMap_id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatSheaf.lean/declarations/sectionsmap-id.md) | 142 | `result-track:ef7d96d4db44d8a6d18594e9bc1dbc78d72892292254e6102a3250b488c8138e` |
| 26 | `def` | [sectionsFunctor](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatSheaf.lean/declarations/sectionsfunctor.md) | 148 | `declaration-track:d3e3f243d1069a142e8b3a2518a3d0c6c93ba509c4cb845f0da4903b8ec271f9` |
| 27 | `def` | [unit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatSheaf.lean/declarations/unit.md) | 157 | `declaration-track:d321dc9221d5380305d124e2637532a3dd3b46311232e53e39afa6e86ab5de96` |
| 28 | `def` | [unitHomEquiv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatSheaf.lean/declarations/unithomequiv.md) | 162 | `declaration-track:596a84d1a9fcfa9213f287d7f6252b8ee425bae280dd51c1843e486a1d45af1a` |
| 29 | `lemma` | [unitHomEquiv_apply_coe](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatSheaf.lean/declarations/unithomequiv-apply-coe.md) | 167 | `result-track:2e1f28a090c4c04b7430bb58c4756d74947960d75d7422bc6be64ea96eed1d6c` |
| 30 | `lemma` | [unitHomEquiv_comp_apply](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatSheaf.lean/declarations/unithomequiv-comp-apply.md) | 170 | `result-track:2cbf8a5d82fa634257eb5fa1d22eb9bea33f518b3f4de00ce1866dd16dacfe13` |
| 31 | `lemma` | [unitHomEquiv_symm_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatSheaf.lean/declarations/unithomequiv-symm-comp.md) | 174 | `result-track:d1a3b065672a7fd07699269371ab3a0b96fb889e9c45de80f06da782382c73ef` |
| 32 | `abbrev` | [IsLocallySurjective](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatSheaf.lean/declarations/islocallysurjective.md) | 187 | `declaration-track:29d09391f7c3b0e898baf7788c9cca5362306cc5aa03877655d5877fd096de68` |
| 33 | `abbrev` | [IsLocallyInjective](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatSheaf.lean/declarations/islocallyinjective.md) | 192 | `declaration-track:d60834d1507e36e8367a4ce95a781b0b906f09f33fc7b6df88397e1d90ef38b3` |
| 34 | `def` | [homEquivOfIsLocallyBijective](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatSheaf.lean/declarations/homequivofislocallybijective.md) | 204 | `declaration-track:a18b48d37566efe213b1541f29b7a156d0f7b472911b43514138697524e2b2a8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d6549ab9d5119f948f6df1268887856391ed8ceb6664974b814021b31fff5857 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheaf/Variant014cfe6c11591e7ce19ec754eb3ac5a05f2085e87ff01f32cf2252a36012ff6c.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheaf/Variant014cfe6c11591e7ce19ec754eb3ac5a05f2085e87ff01f32cf2252a36012ff6c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
