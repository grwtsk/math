# Verification target: Hom Complex Namespaced Zsmul V

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1cf14308cb73f6f64ca8d6c10af11c61dc299b8b",
  "lexical_observation_count": 37,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomComplex/Variant38c09ecfa01c56396ac47c6c4343637b14049c7f527d67c06dc89c3520fa0dbd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomComplexNamespacedZsmulV.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomComplexNamespacedZsmulV.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1cf14308cb73f6f64ca8d6c10af11c61dc299b8b`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomComplex/Variant38c09ecfa01c56396ac47c6c4343637b14049c7f527d67c06dc89c3520fa0dbd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomComplex/Variant38c09ecfa01c56396ac47c6c4343637b14049c7f527d67c06dc89c3520fa0dbd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Homology.Homotopy` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Linarith` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Triplet](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomComplexNamespacedZsmulV.lean/declarations/triplet.md) | 56 | `declaration-track:12c54b7cda206c01674cbdc43970f3a7bb7911186369e5343ce9b02a7c323dce` |
| 2 | `def` | [Cochain](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomComplexNamespacedZsmulV.lean/declarations/cochain.md) | 69 | `declaration-track:d4fe8d198f554663d2c6020f55f401649bc0c09009a50017c5eb5aaf7fe66251` |
| 3 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomComplexNamespacedZsmulV.lean/declarations/instance.md) | 71 | `declaration-track:74f862f80a7fef19db6ba7f3e90743fc872b7208ddbf7c17c230388ed15c1de0` |
| 4 | `def` | [mk](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomComplexNamespacedZsmulV.lean/declarations/mk.md) | 80 | `declaration-track:0ffcf0abcd1c93dbb33ba956e2801ff0fdefeba31ca535661a04b9f7a7b5ba06` |
| 5 | `def` | [v](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomComplexNamespacedZsmulV.lean/declarations/v.md) | 85 | `declaration-track:11009857b2e5a2a7fddb53001c76f95bf63290507b91f596395898b5f3edd22b` |
| 6 | `lemma` | [mk_v](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomComplexNamespacedZsmulV.lean/declarations/mk-v.md) | 89 | `result-track:746d03c5e30d8fcc8f78abba02022fb6bf8b1d4356f3dc15e5717f3bd24682fa` |
| 7 | `lemma` | [congr_v](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomComplexNamespacedZsmulV.lean/declarations/congr-v.md) | 92 | `result-track:071773388cbfeb79548ca653b3d183b163c1993cde3351a778458bfa1dc9ac5a` |
| 8 | `lemma` | [ext](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomComplexNamespacedZsmulV.lean/declarations/ext.md) | 96 | `result-track:93efd905b5e4e4ed0ca0efa89bcb92c42ca00df1fcac12c50b2a18529d93d57a` |
| 9 | `lemma` | [ext₀](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomComplexNamespacedZsmulV.lean/declarations/ext-source-edition-2.md) | 101 | `result-track:9b72a5f0e510cd70abff4413ca1565ab037d4b2725a41ae1d7ede224ad33b045` |
| 10 | `lemma` | [zero_v](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomComplexNamespacedZsmulV.lean/declarations/zero-v.md) | 108 | `result-track:554af6050da56b677ccee810bd935722f8770e0f684580238458053eb74c5faa` |
| 11 | `lemma` | [add_v](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomComplexNamespacedZsmulV.lean/declarations/add-v.md) | 112 | `result-track:ecc8e26a6a5546425042b5bc99895922dfe5e4f29efb9d5eceba0e68130b0abc` |
| 12 | `lemma` | [sub_v](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomComplexNamespacedZsmulV.lean/declarations/sub-v.md) | 116 | `result-track:735a414e638e9c44c334686096fcdbde186980d5d59f216b1abc00cb33459c69` |
| 13 | `lemma` | [neg_v](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomComplexNamespacedZsmulV.lean/declarations/neg-v.md) | 120 | `result-track:52a1ccd171dba5ed7d016801571defeb69449df676117fd8d87363e06ee8c8bc` |
| 14 | `lemma` | [zsmul_v](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomComplexNamespacedZsmulV.lean/declarations/zsmul-v.md) | 124 | `result-track:b0259bf95be805bb2c9162fc51b5820982a03b1eff66009fa3fa17ecd054f4a4` |
| 15 | `def` | [ofHoms](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomComplexNamespacedZsmulV.lean/declarations/ofhoms.md) | 129 | `declaration-track:b5cd2ca0238a6f56505bb05f4a413e773bff6ab2f38491afa4bc5511cc02385d` |
| 16 | `lemma` | [ofHoms_v](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomComplexNamespacedZsmulV.lean/declarations/ofhoms-v.md) | 133 | `result-track:b1bccde70fa09c07a8a322a6b307fbef675fc155362253573890f72e87141496` |
| 17 | `lemma` | [ofHoms_zero](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomComplexNamespacedZsmulV.lean/declarations/ofhoms-zero.md) | 138 | `result-track:cfaa1862c1aa34a3fbbfbf35e4edf8cc77735bd79a60859d25dcb0785db872a9` |
| 18 | `lemma` | [ofHoms_v_comp_d](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomComplexNamespacedZsmulV.lean/declarations/ofhoms-v-comp-d.md) | 141 | `result-track:ea0299246fe24d2aa4dc8199378f675feca540cad4dfb8f6c5b849ed7871833c` |
| 19 | `lemma` | [d_comp_ofHoms_v](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomComplexNamespacedZsmulV.lean/declarations/d-comp-ofhoms-v.md) | 148 | `result-track:6731180eee595f576ddaa033f730a56fc262258e3901e290fca09ce11ac3010b` |
| 20 | `def` | [ofHom](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomComplexNamespacedZsmulV.lean/declarations/ofhom.md) | 155 | `declaration-track:ac23963242632ffe66d62407aaafcea1db54cee32a2edbbb59de3e0f50fc5b99` |
| 21 | `lemma` | [ofHom_zero](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomComplexNamespacedZsmulV.lean/declarations/ofhom-zero.md) | 160 | `result-track:d7e5e4e1f57ab23db7ddf10281f86af22c3f5888260de141601f2fab8777e177` |
| 22 | `lemma` | [ofHom_v](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomComplexNamespacedZsmulV.lean/declarations/ofhom-v.md) | 166 | `result-track:936ba475c84d020ad3822dd8728374567b271498362649a0b5c90ffb8ba1e5dd` |
| 23 | `lemma` | [ofHom_v_comp_d](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomComplexNamespacedZsmulV.lean/declarations/ofhom-v-comp-d.md) | 170 | `result-track:4b155bae552c7279b4f0acce903ba8e03970bddb1e4084ffb14a51bc4c41738a` |
| 24 | `lemma` | [d_comp_ofHom_v](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomComplexNamespacedZsmulV.lean/declarations/d-comp-ofhom-v.md) | 175 | `result-track:1265e446df2e15a7ceb72906fe64e5feb5bca27d075c58608fee8dce5cfb5e89` |
| 25 | `lemma` | [ofHom_add](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomComplexNamespacedZsmulV.lean/declarations/ofhom-add.md) | 180 | `result-track:a019b5db15dc5f362907e086116bbd26da8a5f505a10b48f3da81320c976d966` |
| 26 | `lemma` | [ofHom_sub](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomComplexNamespacedZsmulV.lean/declarations/ofhom-sub.md) | 184 | `result-track:a0159fac26fe0d960023b6e703dc0dbba08016c1977fa016989dbe455c5c1e99` |
| 27 | `lemma` | [ofHom_neg](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomComplexNamespacedZsmulV.lean/declarations/ofhom-neg.md) | 188 | `result-track:842f4d439b78fca2cf36ed90dd6837c8693502599b1efb4fc22514e2aa982262` |
| 28 | `def` | [ofHomotopy](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomComplexNamespacedZsmulV.lean/declarations/ofhomotopy.md) | 192 | `declaration-track:d305b59f286a0e533625e5e1df14831f1a671c29421020142b86f6cd18bcbb61` |
| 29 | `lemma` | [ofHomotopy_ofEq](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomComplexNamespacedZsmulV.lean/declarations/ofhomotopy-ofeq.md) | 196 | `result-track:4d72f6e937128ccedc76960e180ef0a498ad66076c598f7305c2bc1bae9b5bc1` |
| 30 | `lemma` | [ofHomotopy_refl](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomComplexNamespacedZsmulV.lean/declarations/ofhomotopy-refl.md) | 200 | `result-track:7678ba541c1c81d5cb5ac25662e382c1a3614f4f1bbed9d513b13e0bd895a668` |
| 31 | `lemma` | [v_comp_XIsoOfEq_hom](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomComplexNamespacedZsmulV.lean/declarations/v-comp-xisoofeq-hom.md) | 204 | `result-track:e20fc1fdfb77db38f486c1d95fa74ae84e42611c979099d075a6398a4f7255bb` |
| 32 | `lemma` | [v_comp_XIsoOfEq_inv](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomComplexNamespacedZsmulV.lean/declarations/v-comp-xisoofeq-inv.md) | 211 | `result-track:5f84dce018e30f4a8b3330016930e6f0cdf7b98e8e9987da0657d607ca718314` |
| 33 | `def` | [comp](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomComplexNamespacedZsmulV.lean/declarations/comp.md) | 219 | `declaration-track:bd8b6219308d1b9961fcc76f438db228be9e2a085db6e9a4573862667dc64433` |
| 34 | `lemma` | [comp_v](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomComplexNamespacedZsmulV.lean/declarations/comp-v.md) | 236 | `result-track:7fd862e98b7bed50a5fc8743704edadc5bb45cf89db039d69548d29b5272c0bd` |
| 35 | `lemma` | [comp_zero_cochain_v](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomComplexNamespacedZsmulV.lean/declarations/comp-zero-cochain-v.md) | 244 | `result-track:70322803cc0a01fe5b19b526937673dc327d4d934ce9de4279bb94fdf867571f` |
| 36 | `lemma` | [zero_cochain_comp_v](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomComplexNamespacedZsmulV.lean/declarations/zero-cochain-comp-v.md) | 249 | `result-track:c3b52b76a1bdfb99bb217594a1ba65caab6912e1a757d93312a59b3537b66c70` |
| 37 | `lemma` | [comp_assoc](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomComplexNamespacedZsmulV.lean/declarations/comp-assoc.md) | 254 | `result-track:ee42e418e4fcf50296b64f75f29c989a84cf3ec15b7339ca0d0c92b4365be2be` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ea58627d2950db67cfbc275a0908ffddcd9d336d877244f70208867716a29f49 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomComplex/Variant38c09ecfa01c56396ac47c6c4343637b14049c7f527d67c06dc89c3520fa0dbd.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomComplex/Variant38c09ecfa01c56396ac47c6c4343637b14049c7f527d67c06dc89c3520fa0dbd.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
