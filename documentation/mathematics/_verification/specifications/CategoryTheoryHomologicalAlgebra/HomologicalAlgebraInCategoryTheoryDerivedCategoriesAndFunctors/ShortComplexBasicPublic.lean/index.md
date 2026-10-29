# Verification target: Short Complex Basic Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "dbed55d20ef07d8d5cc495ae730c264dc7ab3bde",
  "lexical_observation_count": 52,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant97e6920aea53d672f60060967ce4bc4ef48d984c5ef48758b700b187a1983e3f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ShortComplexBasicPublic.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ShortComplexBasicPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `dbed55d20ef07d8d5cc495ae730c264dc7ab3bde`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant97e6920aea53d672f60060967ce4bc4ef48d984c5ef48758b700b187a1983e3f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant97e6920aea53d672f60060967ce4bc4ef48d984c5ef48758b700b187a1983e3f.lean.json)

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
| 1 | `structure` | [ShortComplex](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ShortComplexBasicPublic.lean/declarations/shortcomplex.md) | 34 | `declaration-track:7280de675512b79eac4bee581715a016df41eb41cc294268dcd348fb9a5a3d2b` |
| 2 | `structure` | [Hom](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ShortComplexBasicPublic.lean/declarations/hom.md) | 54 | `declaration-track:36891cc1894c6f709c8b3832c5ddcff7896682821cbe7c4abc578e7415dfe161` |
| 3 | `def` | [Hom.id](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ShortComplexBasicPublic.lean/declarations/hom-id.md) | 73 | `declaration-track:9383bac1d1dd4c6c009a0b0e35bc785d93500b919b445f82fa84291e3663e909` |
| 4 | `def` | [Hom.comp](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ShortComplexBasicPublic.lean/declarations/hom-comp.md) | 80 | `declaration-track:b79fc9531af62dbb0f961b472547d86a35b179f5b562b36f0e8cc57aee56f644` |
| 5 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ShortComplexBasicPublic.lean/declarations/instance.md) | 85 | `declaration-track:051998ead02def9e218d23c600b5b9b900254f3fc6545d4b7652e7177daadddc` |
| 6 | `lemma` | [hom_ext](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ShortComplexBasicPublic.lean/declarations/hom-ext.md) | 91 | `result-track:248d9259be8375025dea011c6a72d16b209c63e2995725174a2ec49d801b989f` |
| 7 | `def` | [homMk](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ShortComplexBasicPublic.lean/declarations/hommk.md) | 97 | `declaration-track:6cd64f6ac85be0fc3fb8c78e6c80583db72746038dcc22ff1e1a414dc0752d76` |
| 8 | `lemma` | [id_τ₁](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ShortComplexBasicPublic.lean/declarations/id.md) | 101 | `result-track:0e1fdebbf9323dd3bbd4b0c0ca2a27ef8f912fdd776925dd3cb34dd9ca5de1f7` |
| 9 | `lemma` | [id_τ₂](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ShortComplexBasicPublic.lean/declarations/id-source-edition-2.md) | 102 | `result-track:7285fc2e52f2cf765bb7b64c19cb55b3524c1bbc1b2b68a0ad61bab8d35478f7` |
| 10 | `lemma` | [id_τ₃](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ShortComplexBasicPublic.lean/declarations/id-source-edition-3.md) | 103 | `result-track:a9f69f91bf9bfa1403f7e0f6af178bbd81239f0b00cbb48042ebf37fdae38076` |
| 11 | `lemma` | [comp_τ₁](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ShortComplexBasicPublic.lean/declarations/comp-source-edition-2.md) | 104 | `result-track:30ee243cd96d93eb03cceb994ddbb976e19d32e38af2cce1f1323bc379a397f1` |
| 12 | `lemma` | [comp_τ₂](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ShortComplexBasicPublic.lean/declarations/comp.md) | 106 | `result-track:0c5c633903b08711188049fbfb92def1be1a0c8aefe68c11c000c1f08a9e1c58` |
| 13 | `lemma` | [comp_τ₃](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ShortComplexBasicPublic.lean/declarations/comp-source-edition-3.md) | 108 | `result-track:640465c516f45aaffbd30819258092bbe3bd9cd14243e0d453b5be4daff84656` |
| 14 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ShortComplexBasicPublic.lean/declarations/instance-source-edition-3.md) | 113 | `declaration-track:5022acd2051a40b3af636a12d99f191a8b0ccda4c49a7c013625e9fd2fcc567f` |
| 15 | `lemma` | [zero_τ₁](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ShortComplexBasicPublic.lean/declarations/zero-source-edition-3.md) | 117 | `result-track:ed608e19c8c2ebaa6f51ac06e4c92383cbf013cd46cd813dca54788f403481f6` |
| 16 | `lemma` | [zero_τ₂](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ShortComplexBasicPublic.lean/declarations/zero-source-edition-2.md) | 118 | `result-track:409e0eaca32787d3ea67b9664ecb8dcc07a0603b4dbd6076609f27cc1f7f904e` |
| 17 | `lemma` | [zero_τ₃](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ShortComplexBasicPublic.lean/declarations/zero.md) | 119 | `result-track:3591adcc0b19c2ccedaf8b57b0a7185f710f8bf8e6fd6fedb9fa30a663d2884c` |
| 18 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ShortComplexBasicPublic.lean/declarations/instance-source-edition-2.md) | 123 | `declaration-track:29f8c83eb46efdff8a43034e00c4a013d09f494d23706387490c699c613704d9` |
| 19 | `def` | [π₁](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ShortComplexBasicPublic.lean/declarations/anonymous.md) | 127 | `declaration-track:13f105f841bcce567f3dbba6f70a92aa3767854a523a2adf195b1459644e6cc4` |
| 20 | `def` | [π₂](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ShortComplexBasicPublic.lean/declarations/anonymous-source-edition-3.md) | 133 | `declaration-track:7e09966e89b22932fa95e5e74f23d710c2a1272f23286e1f189826f466e326ae` |
| 21 | `def` | [π₃](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ShortComplexBasicPublic.lean/declarations/anonymous-source-edition-2.md) | 139 | `declaration-track:288d255af2e5a1a16cdbf51ba1c7f494f12a8b5f6e63ec06acb35ede55bf873d` |
| 22 | `instance` | [preservesZeroMorphisms_π₁](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ShortComplexBasicPublic.lean/declarations/preserveszeromorphisms-source-edition-2.md) | 143 | `declaration-track:97f5ff1d82f6d6adafa84816fc591392d7e01cca6b9385131c2d7534759ac92d` |
| 23 | `instance` | [preservesZeroMorphisms_π₂](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ShortComplexBasicPublic.lean/declarations/preserveszeromorphisms-source-edition-3.md) | 144 | `declaration-track:f516e2ae31f3e4448599f7f5115444119f00bfd8975b0330a0c605da289ed6bb` |
| 24 | `instance` | [preservesZeroMorphisms_π₃](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ShortComplexBasicPublic.lean/declarations/preserveszeromorphisms.md) | 145 | `declaration-track:1030fa978b8f0aa74d3916f75aff88d794378248ee27a440c0d4d894fc4b0ba0` |
| 25 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ShortComplexBasicPublic.lean/declarations/instance-source-edition-5.md) | 147 | `declaration-track:897c6fa924a1020651940a0e7e8d842cf8003b8889f29528186a354e9b53c498` |
| 26 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ShortComplexBasicPublic.lean/declarations/instance-source-edition-4.md) | 148 | `declaration-track:691cc147298a6218bdd3e7affcd7e5e3368c1b9c40bc71b3a2779e2b5c8698f5` |
| 27 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ShortComplexBasicPublic.lean/declarations/instance-source-edition-6.md) | 149 | `declaration-track:ce8088d6a480c3c77665f3a9856dfdae24fd4a14433b8924db866d93de5f628f` |
| 28 | `def` | [π₁Toπ₂](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ShortComplexBasicPublic.lean/declarations/to.md) | 153 | `declaration-track:04927bdb14979156aaa96821098f5c367cd7b7c7a11a723334f47776e591031c` |
| 29 | `def` | [π₂Toπ₃](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ShortComplexBasicPublic.lean/declarations/to-source-edition-2.md) | 158 | `declaration-track:eb35352955bd02cb726676568044870ac57ec63d1b6feac9c0f5b7a8d25d7cf1` |
| 30 | `lemma` | [π₁Toπ₂_comp_π₂Toπ₃](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ShortComplexBasicPublic.lean/declarations/to-comp-to.md) | 163 | `result-track:5ae803d4ced27521f366625ede1b79c42ef6d97dcaa4c64e8e562ac20b43d74c` |
| 31 | `def` | [map](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ShortComplexBasicPublic.lean/declarations/map.md) | 168 | `declaration-track:924b3d94ffb5dd96c2e4dec691e2237a6d892bec816b0786143def0c3df863af` |
| 32 | `lemma` | [map_id](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ShortComplexBasicPublic.lean/declarations/map-id.md) | 171 | `result-track:08ff25910416f31a95ea5710e9d5c93dbda1349c1f61b7d9d4248272133ec338` |
| 33 | `lemma` | [map_comp](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ShortComplexBasicPublic.lean/declarations/map-comp.md) | 173 | `result-track:5b799a46ef379e0bfa77bf1668263b06c0d8f861aa9bd2fb5e6c138fff3c66d4` |
| 34 | `def` | [mapNatTrans](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ShortComplexBasicPublic.lean/declarations/mapnattrans.md) | 180 | `declaration-track:37591597bc5a9accad1a57792a916448019bbbf369e46c5f5fc8f15cf8824648` |
| 35 | `def` | [mapNatIso](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ShortComplexBasicPublic.lean/declarations/mapnatiso.md) | 189 | `declaration-track:ec1147326848fe20f90e224a3b0ed5221be9a49a6f7fdd3a1e0025be70149992` |
| 36 | `def` | [_root_.CategoryTheory.Functor.mapShortComplex](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ShortComplexBasicPublic.lean/declarations/root-categorytheory-functor-mapshortcomplex.md) | 197 | `declaration-track:cfed8a0e0656dd51cd32bb3f96fb67f129545407b9dfc4d872d9fd58457fea22` |
| 37 | `def` | [isoMk](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ShortComplexBasicPublic.lean/declarations/isomk.md) | 213 | `declaration-track:197b6e44b400c101f49d51683814d6b1186282a7c15005b3dcdd6061dd1a349b` |
| 38 | `lemma` | [isIso_of_isIso](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ShortComplexBasicPublic.lean/declarations/isiso-of-isiso.md) | 224 | `result-track:088ae09ed7ab88724f1c482c0f865418a9111fa8ec6f1a6c065c66d262b32c75` |
| 39 | `lemma` | [isIso_iff](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ShortComplexBasicPublic.lean/declarations/isiso-iff.md) | 227 | `result-track:776bfcac000ab1648578b795c80b6b160fe1a833d6d481d4d0ab1ebd626401fb` |
| 40 | `def` | [fFunctor](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ShortComplexBasicPublic.lean/declarations/ffunctor.md) | 234 | `declaration-track:dcee302a98f2f293904aaf52eae9a008a9cc4c1e59c70ac474eebab77d9982a6` |
| 41 | `def` | [gFunctor](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ShortComplexBasicPublic.lean/declarations/gfunctor.md) | 239 | `declaration-track:e8d794b703ab73abcf253e1dd586bc48537064d3456aedd502303169589165ce` |
| 42 | `def` | [op](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ShortComplexBasicPublic.lean/declarations/op.md) | 245 | `declaration-track:2e188c529669e4cdb9b3bf13b614200e95daf04e082b047f8d9d95c6c570d6bd` |
| 43 | `def` | [opMap](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ShortComplexBasicPublic.lean/declarations/opmap.md) | 251 | `declaration-track:337667aa58bc1a196e8305c84554091011b601681f73fac0751ef6b0916f2a01` |
| 44 | `lemma` | [opMap_id](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ShortComplexBasicPublic.lean/declarations/opmap-id.md) | 263 | `result-track:9f32b6950e6368488e53ad42457dc499f6cbf540be9666a895e2a36f95cdc94f` |
| 45 | `def` | [unop](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ShortComplexBasicPublic.lean/declarations/unop.md) | 267 | `declaration-track:984b684180342101e718ab91c212817fc3924411a92d133c3c42f339e3e8722e` |
| 46 | `def` | [unopMap](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ShortComplexBasicPublic.lean/declarations/unopmap.md) | 273 | `declaration-track:b4d7a3489c8922aa0cc14d0fb2765ea21d23ab8fac8aa149e0159cf814bd5154` |
| 47 | `lemma` | [unopMap_id](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ShortComplexBasicPublic.lean/declarations/unopmap-id.md) | 285 | `result-track:e705bb7de0b76e0ea5b7c3adeec7cc1ba15bb0cd216f7b928d237ff0b45b3aa9` |
| 48 | `def` | [opFunctor](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ShortComplexBasicPublic.lean/declarations/opfunctor.md) | 291 | `declaration-track:213fc6cbaff9aad8f8220463d53026b12ff664ab4c8a4c67d415088ed6129e6f` |
| 49 | `def` | [unopFunctor](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ShortComplexBasicPublic.lean/declarations/unopfunctor.md) | 297 | `declaration-track:4dc0f80aa6d538f08d88c61e8817eaf3c3a2ce6d6c49f4434c1a83eab2f80f6f` |
| 50 | `def` | [opEquiv](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ShortComplexBasicPublic.lean/declarations/opequiv.md) | 305 | `declaration-track:91254d0544a6f9f4a122d3ad65200a8f3100910ad9684bf509f26c89281a796a` |
| 51 | `abbrev` | [unopOp](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ShortComplexBasicPublic.lean/declarations/unopop.md) | 314 | `declaration-track:d944b3ff3f202ee1658489aefa751672b5400396da6430e546ea595691ba866d` |
| 52 | `abbrev` | [opUnop](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ShortComplexBasicPublic.lean/declarations/opunop.md) | 317 | `declaration-track:54f1b38da4d7e97c78e065c8e5ba4d63fb065a0ea29f3bd777c49d2acae1d211` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=733bf0c1d9f05851fc7161fec7178c29a8ba76576eabfd527e6450b9b94692f0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant97e6920aea53d672f60060967ce4bc4ef48d984c5ef48758b700b187a1983e3f.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant97e6920aea53d672f60060967ce4bc4ef48d984c5ef48758b700b187a1983e3f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
