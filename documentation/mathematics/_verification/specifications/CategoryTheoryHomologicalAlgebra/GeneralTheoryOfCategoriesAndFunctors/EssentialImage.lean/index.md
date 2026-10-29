# Verification target: Essential Image

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "13ffab6f9cf114426f85d1dfd79679c598eab56d",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/EssentialImage/Variant980263f1e2c1743dac7b7c2cee93c94111e92ed44f85d1065eb8870d215b471d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/EssentialImage.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/EssentialImage.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `13ffab6f9cf114426f85d1dfd79679c598eab56d`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/EssentialImage/Variant980263f1e2c1743dac7b7c2cee93c94111e92ed44f85d1065eb8870d215b471d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/EssentialImage/Variant980263f1e2c1743dac7b7c2cee93c94111e92ed44f85d1065eb8870d215b471d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.NatIso` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.ObjectProperty.ClosedUnderIsomorphisms` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.ObjectProperty.FullSubcategory` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [essImage](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/EssentialImage.lean/declarations/essimage.md) | 41 | `declaration-track:c2a8bda22bb71ad2292897e673c373aa134271a75958ad5c7b10db51b4e52b0a` |
| 2 | `def` | [essImage.witness](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/EssentialImage.lean/declarations/essimage-witness.md) | 44 | `declaration-track:e1a38ca16b47a654d9c50c6c3daab625be18f6f24c23ee12091a31c4635192d5` |
| 3 | `def` | [essImage.getIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/EssentialImage.lean/declarations/essimage-getiso.md) | 48 | `declaration-track:89a706ae649073314a1d51a1f4e24646e1bb5585288a74545c0b1edfb85ee0da` |
| 4 | `theorem` | [essImage.ofIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/EssentialImage.lean/declarations/essimage-ofiso.md) | 52 | `result-track:506867d26693197a58ae9d255697b7cbaab5348775a250c1ba39134c4bc21756` |
| 5 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/EssentialImage.lean/declarations/instance.md) | 55 | `declaration-track:7aaa6f27356b27e6fd2290c8b487e258edc36f832ee3cd881cf33284206de6ac` |
| 6 | `theorem` | [essImage.ofNatIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/EssentialImage.lean/declarations/essimage-ofnatiso.md) | 61 | `result-track:635539bb0f31687b6909a0086469667a515737537e9280463c2190625c442880` |
| 7 | `theorem` | [essImage_eq_of_natIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/EssentialImage.lean/declarations/essimage-eq-of-natiso.md) | 66 | `result-track:1ab3aa5f21c12b2d371b2f48870083370b1a5726b6906e22dbd027e596c7eed7` |
| 8 | `theorem` | [obj_mem_essImage](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/EssentialImage.lean/declarations/obj-mem-essimage.md) | 70 | `result-track:9e515809b3dfafc7ee55fe19f0ddaf6c7f936d507307bd732465bfa753612485` |
| 9 | `abbrev` | [EssImageSubcategory](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/EssentialImage.lean/declarations/essimagesubcategory.md) | 74 | `declaration-track:92915ed2f4c502e118a928a32896a21cfed9c135397b54361d60b62008300761` |
| 10 | `def` | [essImageInclusion](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/EssentialImage.lean/declarations/essimageinclusion.md) | 78 | `declaration-track:3dbb2c278a040f372b6cb3e4abeb93a7d8d407747c44cf5433ec346951633c65` |
| 11 | `lemma` | [essImage_ext](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/EssentialImage.lean/declarations/essimage-ext.md) | 81 | `result-track:834d533df957c7f8faa520da27ea0b30f2dbabc04d06a58528e0eb234c06803f` |
| 12 | `def` | [toEssImage](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/EssentialImage.lean/declarations/toessimage.md) | 90 | `declaration-track:a767fb71b80f4b59effd5abc6e3f4bf9e58cd956ca76cc5fe92c010c6fe42da7` |
| 13 | `def` | [toEssImageCompι](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/EssentialImage.lean/declarations/toessimagecomp.md) | 97 | `declaration-track:fb649be6bb7aeaa999d575f2d895ccd3ce719ae2a44373f1bd97182af17f27fe` |
| 14 | `class` | [EssSurj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/EssentialImage.lean/declarations/esssurj.md) | 106 | `declaration-track:29b59b8f7a1617820f6660fa0de9993a8b6949aac0c7b792fffc522d17402b40` |
| 15 | `instance` | [EssSurj.toEssImage](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/EssentialImage.lean/declarations/esssurj-toessimage.md) | 110 | `declaration-track:daa63229db09e8ea5e1df1863a37965e8feef5481b53c8bfef4f184714bf53ee` |
| 16 | `theorem` | [essSurj_of_surj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/EssentialImage.lean/declarations/esssurj-of-surj.md) | 114 | `result-track:ff6b0fdcaeae0f5dbefdb175274acc7b8d20581059d647af6322f179e43a051b` |
| 17 | `def` | [objPreimage](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/EssentialImage.lean/declarations/objpreimage.md) | 126 | `declaration-track:c9db8dd82edf3e920fbcb50c8de94661b1eceab7e4042a14540295d08fc041ec` |
| 18 | `def` | [objObjPreimageIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/EssentialImage.lean/declarations/objobjpreimageiso.md) | 131 | `declaration-track:eaebb270029f10a20396b6d2f6846afaaa43528651233fb2c02f980a3b029c4b` |
| 19 | `instance` | [Faithful.toEssImage](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/EssentialImage.lean/declarations/faithful-toessimage.md) | 135 | `declaration-track:04c3bdc2dc8f8a9ff6b47d68a0900935ecce237a2c7db205d4a4e5f9083893f5` |
| 20 | `instance` | [Full.toEssImage](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/EssentialImage.lean/declarations/full-toessimage.md) | 140 | `declaration-track:e2d25fe032bc2c019967daee09f1c9f2474ede381b90e17ede4d42273437570a` |
| 21 | `instance` | [instEssSurjId](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/EssentialImage.lean/declarations/instesssurjid.md) | 144 | `declaration-track:7766115631b0748e9b2d4a92790d1978c4945e45464806df2fafa7b36c24e850` |
| 22 | `lemma` | [essSurj_of_iso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/EssentialImage.lean/declarations/esssurj-of-iso.md) | 147 | `result-track:f91ba60272094b1dc5d90106054fd51e81680b7dc36138cd2ee949e0bb900000` |
| 23 | `instance` | [essSurj_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/EssentialImage.lean/declarations/esssurj-comp.md) | 150 | `declaration-track:46db69c20ddc97c73cf0a146d1d2ac55971d1f846710804d71b5f65e9841e199` |
| 24 | `lemma` | [essSurj_of_comp_fully_faithful](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/EssentialImage.lean/declarations/esssurj-of-comp-fully-faithful.md) | 154 | `result-track:17b31e87960ae74687a1cd0b9f565fa165f6d68a5bdf15d164e5cc7571cef8bf` |
| 25 | `lemma` | [essImage_comp_apply_of_essSurj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/EssentialImage.lean/declarations/essimage-comp-apply-of-esssurj.md) | 161 | `result-track:17a3ad254a2f062b4b5da8d956d7b9b14b5b449522cf3a3979ba75e6b516a8e2` |
| 26 | `lemma` | [essImage_comp_of_essSurj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/EssentialImage.lean/declarations/essimage-comp-of-esssurj.md) | 167 | `result-track:bd9e74c8afdfe42ca9ec8a4b0523d9fa99ad72a661d2bb925e9d215ecbabae17` |
| 27 | `def` | [essImage.liftFunctor](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/EssentialImage.lean/declarations/essimage-liftfunctor.md) | 177 | `declaration-track:352a324998af6e4a8821c1ab88bbc42b428bb52a8fc0832d87892bc398e3f37b` |
| 28 | `def` | [essImage.liftFunctorCompIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/EssentialImage.lean/declarations/essimage-liftfunctorcompiso.md) | 195 | `declaration-track:871729ab469346ef16462b5a10582d639016bffe665e98504674270c30778920` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=73d6c76685604c517d68930e2b3cd8c5cd84862cf5e19a005bc224b8ec2c75b6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/EssentialImage/Variant980263f1e2c1743dac7b7c2cee93c94111e92ed44f85d1065eb8870d215b471d.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/EssentialImage/Variant980263f1e2c1743dac7b7c2cee93c94111e92ed44f85d1065eb8870d215b471d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
