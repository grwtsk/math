# Verification target: Bialg Cat Basic Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8de45312e92bd1ee58e54bdafe3352118aa7812c",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8cc0c7712f02979441ab3e2d355d76b4edfdfdc5eae3a2809355deb701f2fc7a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BialgCatBasicPublic.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BialgCatBasicPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8de45312e92bd1ee58e54bdafe3352118aa7812c`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8cc0c7712f02979441ab3e2d355d76b4edfdfdc5eae3a2809355deb701f2fc7a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8cc0c7712f02979441ab3e2d355d76b4edfdfdc5eae3a2809355deb701f2fc7a.lean.json)

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
| 1 | `structure` | [BialgCat](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BialgCatBasicPublic.lean/declarations/bialgcat.md) | 31 | `declaration-track:02db4b8773dd333881d839e3fdb33749cbb9d4c309c3cc6bf17ed2d8f9b0f576` |
| 2 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BialgCatBasicPublic.lean/declarations/instance.md) | 46 | `declaration-track:dc30a5855b0d586094b2099f969953541daa0b421f07847512329b75027cdc47` |
| 3 | `def` | [of](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BialgCatBasicPublic.lean/declarations/of.md) | 52 | `declaration-track:4dbe91e08c7bcf1051b0153328e33d752514d7849ce353b86b8a6ae48d421a3c` |
| 4 | `def` | [delabOf](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BialgCatBasicPublic.lean/declarations/delabof.md) | 59 | `declaration-track:8966f5651ddb100784149ae77cfcb9626d8dc2e3ed3a96754de803aee34c7c08` |
| 5 | `lemma` | [of_comul](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BialgCatBasicPublic.lean/declarations/of-comul.md) | 63 | `result-track:a8fa5a941cd4f30d1b428fdd57ed1eb2af920041e0566c0ef7ffa1a59e46390d` |
| 6 | `lemma` | [of_counit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BialgCatBasicPublic.lean/declarations/of-counit.md) | 68 | `result-track:019db1d8825dfb1459e15881947475f765abfc7bd229478f92a886f0ab5d8a34` |
| 7 | `structure` | [Hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BialgCatBasicPublic.lean/declarations/hom.md) | 74 | `declaration-track:4ae64349cffbb5baa9728c88f73e781db599c845d25f00b37524031aee8337f8` |
| 8 | `instance` | [category](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BialgCatBasicPublic.lean/declarations/category.md) | 78 | `declaration-track:dda3e12bfd33629bb63b929e1cdf2679075bce3219cdd977d1de0689ac2d1d66` |
| 9 | `instance` | [concreteCategory](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BialgCatBasicPublic.lean/declarations/concretecategory.md) | 83 | `declaration-track:9e2fb66c4ba96de2de894371d8faf7479b28b4f6dc2b116fa5f031013795faa5` |
| 10 | `abbrev` | [Hom.toBialgHom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BialgCatBasicPublic.lean/declarations/hom-tobialghom.md) | 88 | `declaration-track:6064f117695381dadc4b9c462a88315d62cea49419e19a8913331aa7b524b612` |
| 11 | `abbrev` | [ofHom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BialgCatBasicPublic.lean/declarations/ofhom.md) | 92 | `declaration-track:3e8ce29e4ba38ff17cbb6936bea6e378d6aebc975277d47539c2b780af3d9b9e` |
| 12 | `lemma` | [Hom.toBialgHom_injective](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BialgCatBasicPublic.lean/declarations/hom-tobialghom-injective.md) | 97 | `result-track:3e28469a86c816f7a0f7e9de0f305c3d0f132fffc91222c1e6b1b10cbf62350b` |
| 13 | `lemma` | [hom_ext](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BialgCatBasicPublic.lean/declarations/hom-ext.md) | 103 | `result-track:51ce261dd1888087e2e3522e977f2e2509b140599e6dedd80444d7b0c61c0015` |
| 14 | `theorem` | [toBialgHom_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BialgCatBasicPublic.lean/declarations/tobialghom-comp.md) | 107 | `result-track:fbd474388ef749e401a02839abc3e7c5371a01e4199ecc18f166f7d90c2ca932` |
| 15 | `theorem` | [toBialgHom_id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BialgCatBasicPublic.lean/declarations/tobialghom-id.md) | 111 | `result-track:41e33893804e52b7a39641f726f5e5c5718481927a670d284ad7685dbe10d52e` |
| 16 | `instance` | [hasForgetToAlgebra](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BialgCatBasicPublic.lean/declarations/hasforgettoalgebra.md) | 115 | `declaration-track:40131e9c1dd8b0f3798656253adbe5c3e7993a9f7938366751097b8335598263` |
| 17 | `theorem` | [forget₂_algebra_obj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BialgCatBasicPublic.lean/declarations/forget-algebra-obj.md) | 121 | `result-track:6487427764b1ea5024347c7e8f47a28dcf70abe9a4cfcf41498bf90048a6c8f0` |
| 18 | `theorem` | [forget₂_algebra_map](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BialgCatBasicPublic.lean/declarations/forget-algebra-map.md) | 126 | `result-track:0a06208accc15af46426a091d34d294d892d3683446390e79e00b26badcf1768` |
| 19 | `instance` | [hasForgetToCoalgebra](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BialgCatBasicPublic.lean/declarations/hasforgettocoalgebra.md) | 130 | `declaration-track:19d4a25c13e1629cd83669dbd962c85fb87c3504516724b4e9fce6c9f0bf0402` |
| 20 | `theorem` | [forget₂_coalgebra_obj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BialgCatBasicPublic.lean/declarations/forget-coalgebra-obj.md) | 136 | `result-track:356c49344eda72287133bd760b3ea2ed4962597edb6eba696eaac801710ab003` |
| 21 | `theorem` | [forget₂_coalgebra_map](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BialgCatBasicPublic.lean/declarations/forget-coalgebra-map.md) | 141 | `result-track:2551707adbefeb342e9b1de8c99f4567ab02c002ea5b88073a5efbf654ca9454` |
| 22 | `def` | [toBialgIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BialgCatBasicPublic.lean/declarations/tobialgiso.md) | 158 | `declaration-track:964609dc3370669fa02ec59f930fbb8bbcf713472e6f9c1596ee1ab72c438c0e` |
| 23 | `theorem` | [toBialgIso_refl](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BialgCatBasicPublic.lean/declarations/tobialgiso-refl.md) | 164 | `result-track:d8d71829bac795e358e8848a9f691618500fb49dbaeabf523d357755b640111d` |
| 24 | `theorem` | [toBialgIso_symm](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BialgCatBasicPublic.lean/declarations/tobialgiso-symm.md) | 167 | `result-track:52785c20ef8082a4f8b5610b491bca1e8496cb020d8fdf643450e28cc6408986` |
| 25 | `theorem` | [toBialgIso_trans](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BialgCatBasicPublic.lean/declarations/tobialgiso-trans.md) | 171 | `result-track:2f81062a7ad3883fbd73c2986062a342a3057de0c0136d2c064a8d8b816f29f1` |
| 26 | `def` | [toBialgEquiv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BialgCatBasicPublic.lean/declarations/tobialgequiv.md) | 185 | `declaration-track:a6ee7b426c1c5ef5ad6624d305f8bbe32bd20dacf74c3461f7154c587a5e1686` |
| 27 | `theorem` | [toBialgEquiv_toBialgHom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BialgCatBasicPublic.lean/declarations/tobialgequiv-tobialghom.md) | 191 | `result-track:f11c6bfcc1924dd59b396fb977d1e5f3bca9f8fcc421e7c9fd68ecdcc2c97629` |
| 28 | `theorem` | [toBialgEquiv_refl](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BialgCatBasicPublic.lean/declarations/tobialgequiv-refl.md) | 194 | `result-track:a7b1b3494e13a6ff1e3bb681dd830c6d8f078ae71a28814a3aeb8656eccf0407` |
| 29 | `theorem` | [toBialgEquiv_symm](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BialgCatBasicPublic.lean/declarations/tobialgequiv-symm.md) | 197 | `result-track:2c250329c75876472133e2eed1611d5c3ac8c1e3b1fc80fdeb0cf6f39925fda4` |
| 30 | `theorem` | [toBialgEquiv_trans](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BialgCatBasicPublic.lean/declarations/tobialgequiv-trans.md) | 201 | `result-track:d30e5cf4870e84fd782a3ff35405245495f22adf09d835e3dacd0b7481c8a5e7` |
| 31 | `instance` | [BialgCat.forget_reflects_isos](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BialgCatBasicPublic.lean/declarations/bialgcat-forget-reflects-isos.md) | 207 | `declaration-track:b24aff74159d7050b1e3a6310b6581cf7f7a185c2e834e1909069c71f0356657` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8cf3c33515ee6f945d1cb53bb47a8ba0c1fa374cce230fd07ab81b7697e41e85 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8cc0c7712f02979441ab3e2d355d76b4edfdfdc5eae3a2809355deb701f2fc7a.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8cc0c7712f02979441ab3e2d355d76b4edfdfdc5eae3a2809355deb701f2fc7a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
