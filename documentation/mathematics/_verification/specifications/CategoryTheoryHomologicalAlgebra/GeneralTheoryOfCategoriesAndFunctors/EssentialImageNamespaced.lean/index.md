# Verification target: Essential Image Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "54824f975d2710a1bacb8080d1a8ce3b8abd487c",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/EssentialImage/Variant3887ab854e5589fbdeee5b8be081a44010fe309214d3d0756c543fb21be9da09.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/EssentialImageNamespaced.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/EssentialImageNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `54824f975d2710a1bacb8080d1a8ce3b8abd487c`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/EssentialImage/Variant3887ab854e5589fbdeee5b8be081a44010fe309214d3d0756c543fb21be9da09.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/EssentialImage/Variant3887ab854e5589fbdeee5b8be081a44010fe309214d3d0756c543fb21be9da09.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.NatIso` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.ObjectProperty.ClosedUnderIsomorphisms` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.ObjectProperty.FullSubcategory` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [essImage](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/EssentialImageNamespaced.lean/declarations/essimage.md) | 49 | `declaration-track:a18279eac99fc1ad3180ba933305a2a3a02c3e1be73e2d78020f71d2188cba69` |
| 2 | `def` | [essImage.witness](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/EssentialImageNamespaced.lean/declarations/essimage-witness.md) | 52 | `declaration-track:233544888b602d52e89df1ce4a4e49fa0c08e1b66a3ec0dae4b7a7c80ea81877` |
| 3 | `def` | [essImage.getIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/EssentialImageNamespaced.lean/declarations/essimage-getiso.md) | 56 | `declaration-track:d6856d4ea50e137a0c027148319d0d87a6f5cd24290e953b8d363039100855ef` |
| 4 | `theorem` | [essImage.ofIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/EssentialImageNamespaced.lean/declarations/essimage-ofiso.md) | 60 | `result-track:170a2ff0ffa656f1317e40ddd03ac8e0bf468d856e4fcd4d31caf2497fdea4b3` |
| 5 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/EssentialImageNamespaced.lean/declarations/instance.md) | 63 | `declaration-track:a222a19e0c5c2da1cbfe16d08e6b0835d9725e600f279e228578fe1156b3ab48` |
| 6 | `theorem` | [essImage.ofNatIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/EssentialImageNamespaced.lean/declarations/essimage-ofnatiso.md) | 69 | `result-track:a8b572b131eb8ea2b4accd78195da5ef733250fc394599e4885243acbf36ba73` |
| 7 | `theorem` | [essImage_eq_of_natIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/EssentialImageNamespaced.lean/declarations/essimage-eq-of-natiso.md) | 74 | `result-track:6403e8c7304c73a710b41d468bc5512958308cf34e56f392f3db93a7cc1376b4` |
| 8 | `theorem` | [obj_mem_essImage](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/EssentialImageNamespaced.lean/declarations/obj-mem-essimage.md) | 78 | `result-track:35fda9512b6a17beba0ccb01c4b4b4d07f1d5251dc692c1aafe7ffa141949af2` |
| 9 | `abbrev` | [EssImageSubcategory](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/EssentialImageNamespaced.lean/declarations/essimagesubcategory.md) | 82 | `declaration-track:2c22c6b1ae35cfca587d85f834f018bb393ce627391ea65fb0a0e0962fd7529c` |
| 10 | `def` | [essImageInclusion](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/EssentialImageNamespaced.lean/declarations/essimageinclusion.md) | 86 | `declaration-track:1352fe672d371c8844294a6d2608f94bbaeece513aed0c655f6ad04abb948bf5` |
| 11 | `lemma` | [essImage_ext](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/EssentialImageNamespaced.lean/declarations/essimage-ext.md) | 89 | `result-track:99f9d0cd455706018a45229c0de0e45c6d2c9a4e4107e4615502abc0c1a9cc6d` |
| 12 | `def` | [toEssImage](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/EssentialImageNamespaced.lean/declarations/toessimage.md) | 98 | `declaration-track:3e72f99d288c72a93373a3dcbdda52c953bff73d4e5a695835105889b74970a7` |
| 13 | `def` | [toEssImageCompι](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/EssentialImageNamespaced.lean/declarations/toessimagecomp.md) | 105 | `declaration-track:4f042d46da8e3b974ddc36c2dbe20a40659af0fc7626cbbf92acc756508ebcbe` |
| 14 | `class` | [EssSurj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/EssentialImageNamespaced.lean/declarations/esssurj.md) | 114 | `declaration-track:2c31adabad5b29dd68bbfd14be9cb523b7ad861d170ba820005fdc1ab6676cc7` |
| 15 | `instance` | [EssSurj.toEssImage](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/EssentialImageNamespaced.lean/declarations/esssurj-toessimage.md) | 118 | `declaration-track:befe1b0b40a5e29382e71819f65a8d76753524e9ef72aee3828aca468b47bfe3` |
| 16 | `theorem` | [essSurj_of_surj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/EssentialImageNamespaced.lean/declarations/esssurj-of-surj.md) | 122 | `result-track:4895910e47a15b207e366508ed2c6bea3a5a4f005f3f66de82020a7681dc49d5` |
| 17 | `def` | [objPreimage](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/EssentialImageNamespaced.lean/declarations/objpreimage.md) | 134 | `declaration-track:0ea23a46d869a8464f5b02b383d5c2d4254a8a21d0582dd58932f61132470d21` |
| 18 | `def` | [objObjPreimageIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/EssentialImageNamespaced.lean/declarations/objobjpreimageiso.md) | 139 | `declaration-track:ce99d294f699ee0bca345da53f62365460ac34bd97b2cc9e87658c5bf979eddf` |
| 19 | `instance` | [Faithful.toEssImage](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/EssentialImageNamespaced.lean/declarations/faithful-toessimage.md) | 143 | `declaration-track:697d0bafa9b0f6ec83bb14a5b04cb41366807aabc58f85eaf605e202fcb388a5` |
| 20 | `instance` | [Full.toEssImage](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/EssentialImageNamespaced.lean/declarations/full-toessimage.md) | 148 | `declaration-track:3a9ecf8f4b34ab6bcf3f08c67a4a614db08c30b48659c528c5b58a2b7a969875` |
| 21 | `instance` | [instEssSurjId](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/EssentialImageNamespaced.lean/declarations/instesssurjid.md) | 152 | `declaration-track:f89747bebaa97855beef176c41b6a4035e0115ce7cd84cf08e6712ab7cc9656e` |
| 22 | `lemma` | [essSurj_of_iso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/EssentialImageNamespaced.lean/declarations/esssurj-of-iso.md) | 155 | `result-track:da55dd1e5cdd052af53727292b1ef2f4795e9da2b1eff818f8e18efc7495e9ef` |
| 23 | `instance` | [essSurj_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/EssentialImageNamespaced.lean/declarations/esssurj-comp.md) | 158 | `declaration-track:476b1676d13875e6ffc8ced7a428f62e38a51c78ee61f7268a16be085340d683` |
| 24 | `lemma` | [essSurj_of_comp_fully_faithful](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/EssentialImageNamespaced.lean/declarations/esssurj-of-comp-fully-faithful.md) | 162 | `result-track:355649585f36818c1ef51053a5b7fc803b690292a8f4d5c2bcb4e33c7a7b5a81` |
| 25 | `lemma` | [essImage_comp_apply_of_essSurj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/EssentialImageNamespaced.lean/declarations/essimage-comp-apply-of-esssurj.md) | 169 | `result-track:cda535c70d8e5ecaa8273b52e6c3b2e04cac284e310d7c5263af49278960991a` |
| 26 | `lemma` | [essImage_comp_of_essSurj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/EssentialImageNamespaced.lean/declarations/essimage-comp-of-esssurj.md) | 175 | `result-track:8003594da2f5fd61c08c077b284ec254556c18305e77912e99c609d8fc931263` |
| 27 | `def` | [essImage.liftFunctor](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/EssentialImageNamespaced.lean/declarations/essimage-liftfunctor.md) | 185 | `declaration-track:7fef7f82e81bc640cadcd705bb7b3de35c355d5ffcd698b57d0b72a96f85d1ab` |
| 28 | `def` | [essImage.liftFunctorCompIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/EssentialImageNamespaced.lean/declarations/essimage-liftfunctorcompiso.md) | 203 | `declaration-track:9dade7bb472a95e4d29393b59e3928b441b7065ac3741c1059702b4aa31d35a6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d793641306672ebc163389638703237942b231a4e16500fda5b2e6988954ae11 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/EssentialImage/Variant3887ab854e5589fbdeee5b8be081a44010fe309214d3d0756c543fb21be9da09.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/EssentialImage/Variant3887ab854e5589fbdeee5b8be081a44010fe309214d3d0756c543fb21be9da09.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
