# Verification target: Spectral Sequence Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c58cd3a6ccdc358167bdb86c3433f2aa7319ab51",
  "lexical_observation_count": 44,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SpectralSequence/Variant6321287eceb5b9ba795285f77bebe6a10f3a0258604b9402dc4d8721e346ff89.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/SpectralSequenceNamespacedPublic.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/SpectralSequenceNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c58cd3a6ccdc358167bdb86c3433f2aa7319ab51`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SpectralSequence/Variant6321287eceb5b9ba795285f77bebe6a10f3a0258604b9402dc4d8721e346ff89.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/SpectralSequence/Variant6321287eceb5b9ba795285f77bebe6a10f3a0258604b9402dc4d8721e346ff89.lean.json)

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
| 1 | `def` | [pageX](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/SpectralSequenceNamespacedPublic.lean/declarations/pagex.md) | 105 | `declaration-track:f225e4d783f2c22ec2b410ca23f968f2d78225800b7ce078083694b9a21db297` |
| 2 | `def` | [pageXIso](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/SpectralSequenceNamespacedPublic.lean/declarations/pagexiso.md) | 111 | `declaration-track:796b00e3ad4181c949f5300693a8d7aa26eff01a0b0ee0976a2120cb0916f8d4` |
| 3 | `def` | [pageD](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/SpectralSequenceNamespacedPublic.lean/declarations/paged.md) | 128 | `declaration-track:6289efe27f8ebc6d08e04ac9593e89d88ca2b8d84b3493e7e101bacd3d2ab20e` |
| 4 | `lemma` | [pageD_eq](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/SpectralSequenceNamespacedPublic.lean/declarations/paged-eq.md) | 142 | `result-track:ccc52dffd004e7b1ac30cadd8bddf9d9351a869df82a5b8eae3ca895eca2528e` |
| 5 | `lemma` | [pageD_pageD](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/SpectralSequenceNamespacedPublic.lean/declarations/paged-paged.md) | 164 | `result-track:e905c85adaadfc0e66d0c7f6aaef6341ee235df25f807fa12bce41d2c979c91f` |
| 6 | `def` | [page](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/SpectralSequenceNamespacedPublic.lean/declarations/page.md) | 190 | `declaration-track:8075514d092911551196eb7b02a44e17a7fa80dcc19ccfd8ce73ca252e9a2253` |
| 7 | `def` | [shortComplexIso](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/SpectralSequenceNamespacedPublic.lean/declarations/shortcomplexiso.md) | 203 | `declaration-track:e9f03728cc869bf61d99d4a7ad6928271770925f18136d31b7e1b9aa575dccc9` |
| 8 | `lemma` | [kf_w](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/SpectralSequenceNamespacedPublic.lean/declarations/kf-w.md) | 245 | `result-track:1b7d5da8eaea753f608fc1d812a4a53f69fa8093401f43c192dc20e77a4caa82` |
| 9 | `abbrev` | [kf](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/SpectralSequenceNamespacedPublic.lean/declarations/kf.md) | 263 | `declaration-track:761ad54f4c7232e218d9f1910f643241fbe78bf4b58578838171d01fc79f9899` |
| 10 | `def` | [kfSc](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/SpectralSequenceNamespacedPublic.lean/declarations/kfsc.md) | 270 | `declaration-track:7aa67727217f13970a63daf478b589779c8452ba0a8c1608589d3f36dc858cbc` |
| 11 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/SpectralSequenceNamespacedPublic.lean/declarations/instance.md) | 276 | `declaration-track:3ececb0795b30c0591dc33af8593dab639dee510d17ffd7b9dd85b15f57065f7` |
| 12 | `lemma` | [isIso_mapFourδ₁Toδ₀'](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/SpectralSequenceNamespacedPublic.lean/declarations/isiso-mapfour-to-source-edition-2.md) | 284 | `result-track:d048ae25e74a806d2c181c87daf6395e58508d46c5a53af4f158667d643c09a3` |
| 13 | `lemma` | [kfSc_exact](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/SpectralSequenceNamespacedPublic.lean/declarations/kfsc-exact.md) | 298 | `result-track:9ef7ec92a36f87369a9811177b636bcc9d8ac951cefbfc1db67a75403d34af79` |
| 14 | `def` | [isLimitKf](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/SpectralSequenceNamespacedPublic.lean/declarations/islimitkf.md) | 330 | `declaration-track:8feac307a56dd0318598e3735048786b09091093605e8c26665006a05b54f7a9` |
| 15 | `lemma` | [cc_w](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/SpectralSequenceNamespacedPublic.lean/declarations/cc-w.md) | 337 | `result-track:4621d5196e5567a8790b07e67ee7cf32cd472a8df4f88844eefdd2c170eb70a6` |
| 16 | `abbrev` | [cc](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/SpectralSequenceNamespacedPublic.lean/declarations/cc.md) | 358 | `declaration-track:51d9cccd922c422f4878f51551a9de625ad247a2efa5444f5abc58bcd4f58816` |
| 17 | `def` | [ccSc](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/SpectralSequenceNamespacedPublic.lean/declarations/ccsc.md) | 365 | `declaration-track:c8418016adc039f8ac407772088539bd25b6f271fa785db77d6d378153b2ed04` |
| 18 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/SpectralSequenceNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 371 | `declaration-track:e8ad445da78942fdac0c6c68d54b9e30179143585853a470052c15e638dd3650` |
| 19 | `lemma` | [isIso_mapFourδ₄Toδ₃'](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/SpectralSequenceNamespacedPublic.lean/declarations/isiso-mapfour-to.md) | 379 | `result-track:5fa624a90562773d6c0eb079e0c117d166272f06556e095c675eb3f757da68c1` |
| 20 | `lemma` | [ccSc_exact](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/SpectralSequenceNamespacedPublic.lean/declarations/ccsc-exact.md) | 393 | `result-track:9a1937780aed7f7b34f61e1a548cd1834e4c01076fc36f6fc81312b83aae1647` |
| 21 | `def` | [isColimitCc](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/SpectralSequenceNamespacedPublic.lean/declarations/iscolimitcc.md) | 427 | `declaration-track:82decf33a299af78031c06d50f5f226f4e183a0fabdab02977f030c00eaaf2e2` |
| 22 | `lemma` | [fac](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/SpectralSequenceNamespacedPublic.lean/declarations/fac.md) | 433 | `result-track:3ece3192722d49d0d104cd7d87b99825f91f3dbf49826b0ae3b1287a3a897458` |
| 23 | `def` | [homologyData](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/SpectralSequenceNamespacedPublic.lean/declarations/homologydata.md) | 453 | `declaration-track:904e8728805e8d646e16473367353c558ae7ab4d58777b76bfea45c61a69512a` |
| 24 | `def` | [homologyIso'](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/SpectralSequenceNamespacedPublic.lean/declarations/homologyiso.md) | 466 | `declaration-track:4cc9940cf11d30e19eb7d43d59664a681dbce49e6782a6803a6c9e873f114a3a` |
| 25 | `def` | [homologyIso](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/SpectralSequenceNamespacedPublic.lean/declarations/homologyiso-source-edition-2.md) | 474 | `declaration-track:bd59c44fb036c551d763406c9b0feb02e4e97bc355cd976b1749d284fb175ca5` |
| 26 | `def` | [spectralSequence](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/SpectralSequenceNamespacedPublic.lean/declarations/spectralsequence.md) | 489 | `declaration-track:0dde85e19b215b5b34704ae1e1cab9c15c04dbcf4c80f6f1bd5113ed93324556` |
| 27 | `def` | [spectralSequencePageXIso](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/SpectralSequenceNamespacedPublic.lean/declarations/spectralsequencepagexiso.md) | 498 | `declaration-track:b9c2ec66ea46077b4a7168828d1f0ba07664be6165479bc60e9046b81e7813e1` |
| 28 | `lemma` | [spectralSequence_page_d_eq](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/SpectralSequenceNamespacedPublic.lean/declarations/spectralsequence-page-d-eq.md) | 510 | `result-track:4ef03877f8549888a1c092413383e5c88a4930bc02b58c875a2b9fbd89fe7420` |
| 29 | `lemma` | [isZero_spectralSequence_page_X_iff](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/SpectralSequenceNamespacedPublic.lean/declarations/iszero-spectralsequence-page-x-iff.md) | 527 | `result-track:e6f6fd492c2e91043949f5dddc0ad604c0692246b0b85444f41373beb9359ffc` |
| 30 | `lemma` | [isZero_spectralSequence_page_X_of_isZero_H](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/SpectralSequenceNamespacedPublic.lean/declarations/iszero-spectralsequence-page-x-of-iszero-h.md) | 539 | `result-track:21e1b4450f6db52937c843f3bb6df332385277c876e738daadcfcd1e8abbcfd4` |
| 31 | `lemma` | [isZero_spectralSequence_page_X_of_isZero_H'](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/SpectralSequenceNamespacedPublic.lean/declarations/iszero-spectralsequence-page-x-of-iszero-h-source-edition-2.md) | 549 | `result-track:b40e946947b6dfd21870d98687296583fca50aa95c124e27ee24836bb1ecb58c` |
| 32 | `def` | [spectralSequencePageSc'Iso](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/SpectralSequenceNamespacedPublic.lean/declarations/spectralsequencepagesc-iso.md) | 561 | `declaration-track:e51757ee7809281ad0bc000882ba0059cdfe58dda0f6cfe80e07402132d6f348` |
| 33 | `def` | [spectralSequenceHomologyData](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/SpectralSequenceNamespacedPublic.lean/declarations/spectralsequencehomologydata.md) | 597 | `declaration-track:e202970ad861643fd938b2db4b0c8cea9f8b6dfad794c39d35bc0b0ca746ade9` |
| 34 | `lemma` | [spectralSequenceHomologyData_left_i](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/SpectralSequenceNamespacedPublic.lean/declarations/spectralsequencehomologydata-left-i.md) | 605 | `result-track:7c3794410c1acfe82e366b3c6bb000cb9f7d5fc7efcf3c1e013908921473ae24` |
| 35 | `lemma` | [spectralSequenceHomologyData_right_p](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/SpectralSequenceNamespacedPublic.lean/declarations/spectralsequencehomologydata-right-p.md) | 617 | `result-track:662866aec9836853258bbe442eeea5a12067a459ecd752c30bd1ff41a92604ac` |
| 36 | `lemma` | [spectralSequenceHomologyData_right_homologyIso_eq_left_homologyIso](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/SpectralSequenceNamespacedPublic.lean/declarations/spectralsequencehomologydata-right-homologyiso-eq-left-homologyiso.md) | 628 | `result-track:e1d245adec80cc9112b5f4401be9ba01e5d754bef22ea2648b158605ff6e2f52` |
| 37 | `lemma` | [spectralSequence_iso](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/SpectralSequenceNamespacedPublic.lean/declarations/spectralsequence-iso.md) | 639 | `result-track:4b70254fec66fa34fb8a9ee9162913de6914617d907cd55309a4bdf13d148b4a` |
| 38 | `abbrev` | [E₂SpectralSequence](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/SpectralSequenceNamespacedPublic.lean/declarations/e-spectralsequence.md) | 663 | `declaration-track:b1eece4530613a87399093a8ca08a024fb9e22a2904cca61238e1b9fddb9caad` |
| 39 | `example` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/SpectralSequenceNamespacedPublic.lean/declarations/example-source-edition-4.md) | 670 | `declaration-track:eec4b95bd74ec9adc1a0020da9facdf9c3ab1433c62a3e47f755c8de0aec2603` |
| 40 | `example` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/SpectralSequenceNamespacedPublic.lean/declarations/example-source-edition-2.md) | 675 | `declaration-track:a660a4d82e757516c1c862160c862465327d228293ce52f210d908b5da8bdf5d` |
| 41 | `abbrev` | [E₂SpectralSequenceNat](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/SpectralSequenceNamespacedPublic.lean/declarations/e-spectralsequencenat.md) | 682 | `declaration-track:89ac463660c2e580cda3dc60fc8e9ad4a77dbb8292980b3e65e58bebe1b3551c` |
| 42 | `example` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/SpectralSequenceNamespacedPublic.lean/declarations/example.md) | 690 | `declaration-track:14274b5e4086ed044597268a31edb7c68608b5df7fb639de6b9409aa8112c035` |
| 43 | `example` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/SpectralSequenceNamespacedPublic.lean/declarations/example-source-edition-3.md) | 697 | `declaration-track:bdd25e61383ec9163136b7e8021aafde0567fcd9f24a6cff20d04b79758221fe` |
| 44 | `abbrev` | [E₂HomologicalSpectralSequenceNat](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/SpectralSequenceNamespacedPublic.lean/declarations/e-homologicalspectralsequencenat.md) | 706 | `declaration-track:e9531a4f2ef7ab699a009a06c3e4baf7b5e6876a1fc0e655778be1c495344409` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2585cb6bf26c9b67468a539b4d67e327158aee5fb3986c5991c91b1f2b7cf3d3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SpectralSequence/Variant6321287eceb5b9ba795285f77bebe6a10f3a0258604b9402dc4d8721e346ff89.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/SpectralSequence/Variant6321287eceb5b9ba795285f77bebe6a10f3a0258604b9402dc4d8721e346ff89.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
