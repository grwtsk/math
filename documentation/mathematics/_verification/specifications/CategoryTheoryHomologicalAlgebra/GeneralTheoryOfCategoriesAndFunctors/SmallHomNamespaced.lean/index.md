# Verification target: Small Hom Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "39f6c16314b60f0baecf1d074fb09726ed71914e",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/SmallHom/Variant54cd8d664af5f6e131da1f5943502f83106492c9c089be70eecf156fe23242be.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SmallHomNamespaced.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SmallHomNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `39f6c16314b60f0baecf1d074fb09726ed71914e`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/SmallHom/Variant54cd8d664af5f6e131da1f5943502f83106492c9c089be70eecf156fe23242be.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/SmallHom/Variant54cd8d664af5f6e131da1f5943502f83106492c9c089be70eecf156fe23242be.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Localization.HomEquiv` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Small.Defs` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [HasSmallLocalizedHom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SmallHomNamespaced.lean/declarations/hassmalllocalizedhom.md) | 50 | `declaration-track:a5c4f5b37f3ed406853314ef4d82d0f4c33922de3ac8decfbdf6211ca9490006` |
| 2 | `lemma` | [hasSmallLocalizedHom_iff](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SmallHomNamespaced.lean/declarations/hassmalllocalizedhom-iff.md) | 57 | `result-track:f84be939c010df0da1c68235c4e0421a8bddf1d23d81a8a20d48a37de02d323f` |
| 3 | `lemma` | [hasSmallLocalizedHom_of_isLocalization](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SmallHomNamespaced.lean/declarations/hassmalllocalizedhom-of-islocalization.md) | 67 | `result-track:42f4c27511fbb2897787e9488fa7160f12ba4332f3d1cebff87227e2dcf7f219` |
| 4 | `lemma` | [small_of_hasSmallLocalizedHom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SmallHomNamespaced.lean/declarations/small-of-hassmalllocalizedhom.md) | 73 | `result-track:ae38375aa1abe874ce116d8387b6c95f5bde7a6a6a75efb84d2f75e12ddb4c85` |
| 5 | `lemma` | [hasSmallLocalizedHom_iff_of_isos](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SmallHomNamespaced.lean/declarations/hassmalllocalizedhom-iff-of-isos.md) | 77 | `result-track:0afe69e2b201b42c6714288cb57e9977ec4160c5e1ca6839ee61c4053c26f851` |
| 6 | `lemma` | [hasSmallLocalizedHom_iff_target](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SmallHomNamespaced.lean/declarations/hassmalllocalizedhom-iff-target.md) | 83 | `result-track:e3fc6dcc0ed40a6a19a19aecc778f37fbb2d8652a2e8abaff447b31d7f679f17` |
| 7 | `lemma` | [hasSmallLocalizedHom_iff_source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SmallHomNamespaced.lean/declarations/hassmalllocalizedhom-iff-source.md) | 88 | `result-track:fe3cf0ee36a0c0c1e9192584a6d7b0383deade8780cada47f867ab2a9518fcb6` |
| 8 | `def` | [SmallHom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SmallHomNamespaced.lean/declarations/smallhom.md) | 98 | `declaration-track:56da5d9f64b57cedad29d39bc5fe983a615c037847bbc586ce8e9eaf33dbd1d9` |
| 9 | `def` | [equiv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SmallHomNamespaced.lean/declarations/equiv.md) | 106 | `declaration-track:4ec2b4d3fd6989d2d7a44d94ff9e45a9cddd031eef02a1a3484a2ef735c018c8` |
| 10 | `lemma` | [equiv_equiv_symm](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SmallHomNamespaced.lean/declarations/equiv-equiv-symm.md) | 112 | `result-track:dfe5763ba5b92243f9a2485be3ac5b6825442d1ca15f6e777a6acc7dbd2aa68c` |
| 11 | `def` | [mk](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SmallHomNamespaced.lean/declarations/mk.md) | 123 | `declaration-track:ba44ca04c450313cad97ecfbd17377c3ffe8812910bcc8a27a475f5b6fc5bcf4` |
| 12 | `lemma` | [equiv_mk](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SmallHomNamespaced.lean/declarations/equiv-mk.md) | 128 | `result-track:779503e148db3549106dd80f005be7396a747fc8d4250b63bb76934a44ee1a44` |
| 13 | `def` | [mkInv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SmallHomNamespaced.lean/declarations/mkinv.md) | 136 | `declaration-track:625e182e774c08750590b31c3b24e57d6f1f96122b84a2dd901db745f00f163e` |
| 14 | `lemma` | [equiv_mkInv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SmallHomNamespaced.lean/declarations/equiv-mkinv.md) | 141 | `result-track:e6865f75516fd53484869e493e47519527f2977563fe6c437b5472e0d62fce54` |
| 15 | `def` | [comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SmallHomNamespaced.lean/declarations/comp.md) | 148 | `declaration-track:4478096e17d8f2c38eb542abec83c61ac665e02f712c05bcf2686e23a355400a` |
| 16 | `lemma` | [equiv_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SmallHomNamespaced.lean/declarations/equiv-comp.md) | 154 | `result-track:20ba82a4937d1ab524157395d22e99478e36886c595b112a31be5dc39f9aab7c` |
| 17 | `lemma` | [mk_comp_mk](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SmallHomNamespaced.lean/declarations/mk-comp-mk.md) | 171 | `result-track:666cce649870882579c33b9b813a0c30d659bd0b94ae74fbbb6725efb8fe6c62` |
| 18 | `lemma` | [comp_mk_id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SmallHomNamespaced.lean/declarations/comp-mk-id.md) | 177 | `result-track:0c0cc81303acc204b17c9bf09e1517f2eb9696612f00ff58f74bf1a995f411c8` |
| 19 | `lemma` | [mk_id_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SmallHomNamespaced.lean/declarations/mk-id-comp.md) | 183 | `result-track:ccf3759bb000f8e7f647d90eb7e205000c36b3679e7914cb34594879a5ff75b1` |
| 20 | `lemma` | [comp_assoc](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SmallHomNamespaced.lean/declarations/comp-assoc.md) | 189 | `result-track:c17fc7012ee94b0401d3d7aeddfec7035408e0ec37449216ac67698cd5905507` |
| 21 | `lemma` | [mk_comp_mkInv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SmallHomNamespaced.lean/declarations/mk-comp-mkinv.md) | 198 | `result-track:1adb1e05757c287ef6fc48bdc4849a4186119bff2452d1235f7cd872d3ce1f82` |
| 22 | `lemma` | [mkInv_comp_mk](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SmallHomNamespaced.lean/declarations/mkinv-comp-mk.md) | 204 | `result-track:3af87fadc4bc544a979af1f4fa40370c97eff5e29f6c3975297e895b54e786fb` |
| 23 | `def` | [chgUniv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SmallHomNamespaced.lean/declarations/chguniv.md) | 214 | `declaration-track:b33c44ed2e12c4b1cfdda9566b5f5a08b2525c9d8d071612c8265a9118dbb736` |
| 24 | `lemma` | [equiv_chgUniv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SmallHomNamespaced.lean/declarations/equiv-chguniv.md) | 219 | `result-track:3baacaa514546b9c322ff53afda18c05b74e6ca6a1bd2a4dba5862521ffc5441` |
| 25 | `def` | [smallHomMap](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SmallHomNamespaced.lean/declarations/smallhommap.md) | 252 | `declaration-track:0bf3f44c9a5a31785b378e1f8f630811781ce14350d6eb772f6c4b25b9c360a5` |
| 26 | `lemma` | [equiv_smallHomMap](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SmallHomNamespaced.lean/declarations/equiv-smallhommap.md) | 259 | `result-track:b2c680c5d0d7f36fa782983f1146d7bc1b364f9c18571f9cfbfd46bbcf88bfdc` |
| 27 | `lemma` | [smallHomMap_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SmallHomNamespaced.lean/declarations/smallhommap-comp.md) | 302 | `result-track:31dd2441b75d431b7126ce74d9ea6d69640b624af201dd3d8e9b63f1a2bd537e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3c31d67bf4087fc01a825d25dfc088ff2ce04482bc221926ed490fb7de51cf88 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/SmallHom/Variant54cd8d664af5f6e131da1f5943502f83106492c9c089be70eecf156fe23242be.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/SmallHom/Variant54cd8d664af5f6e131da1f5943502f83106492c9c089be70eecf156fe23242be.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
