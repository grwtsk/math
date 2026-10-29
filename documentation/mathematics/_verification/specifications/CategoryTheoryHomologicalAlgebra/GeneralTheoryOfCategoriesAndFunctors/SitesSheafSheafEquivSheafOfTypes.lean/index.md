# Verification target: Sites Sheaf Sheaf Equiv Sheaf Of Types

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a3c35e2a64a836226141760d9b33c9d8c8047bcc",
  "lexical_observation_count": 52,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheaf/Variantfaf696424d48a7cfae0f7ebc4e35865a6877702ca2a0127ef983b0c7d5adc1ce.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesSheafSheafEquivSheafOfTypes.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesSheafSheafEquivSheafOfTypes.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a3c35e2a64a836226141760d9b33c9d8c8047bcc`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheaf/Variantfaf696424d48a7cfae0f7ebc4e35865a6877702ca2a0127ef983b0c7d5adc1ce.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheaf/Variantfaf696424d48a7cfae0f7ebc4e35865a6877702ca2a0127ef983b0c7d5adc1ce.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.Preserves.Shapes.Equalizers` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Preserves.Shapes.Products` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Yoneda` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Preadditive.FunctorCategory` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Sites.SheafOfTypes` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsSheaf](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesSheafSheafEquivSheafOfTypes.lean/declarations/issheaf.md) | 75 | `declaration-track:56926ad0f0f795f7173a9d81f5e5dcff29e942a4ffca091698daf3fc30cc8542` |
| 2 | `def` | [conesEquivSieveCompatibleFamily](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesSheafSheafEquivSheafOfTypes.lean/declarations/conesequivsievecompatiblefamily.md) | 90 | `declaration-track:ae84827c5138160e2d24d02f7c419ffb5ea78dbdca975b49c0ba6fe90d45152d` |
| 3 | `def` | [_root_.CategoryTheory.Presieve.FamilyOfElements.SieveCompatible.cone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesSheafSheafEquivSheafOfTypes.lean/declarations/root-categorytheory-presieve-familyofelements-sievecompatible-cone.md) | 114 | `declaration-track:f97200a4c7d6aea08bc2edbbf68993b4b4e5c6780614d95234f032ea4329b4a2` |
| 4 | `def` | [homEquivAmalgamation](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesSheafSheafEquivSheafOfTypes.lean/declarations/homequivamalgamation.md) | 123 | `declaration-track:fe82174f07b02ce095d53742e228c36041ce311622d15c2337a97911a6e37a52` |
| 5 | `theorem` | [isLimit_iff_isSheafFor](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesSheafSheafEquivSheafOfTypes.lean/declarations/islimit-iff-issheaffor.md) | 135 | `result-track:d337fca9502775c7f09f4de4c08bed8bea200df4bf8f38fdd1bf1d4111418f1a` |
| 6 | `theorem` | [subsingleton_iff_isSeparatedFor](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesSheafSheafEquivSheafOfTypes.lean/declarations/subsingleton-iff-isseparatedfor.md) | 156 | `result-track:1f566b2fbca8dc67b7c26571498dacea5ae0c219b2e2a2bb35085506332b370a` |
| 7 | `theorem` | [isSheaf_iff_isLimit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesSheafSheafEquivSheafOfTypes.lean/declarations/issheaf-iff-islimit.md) | 180 | `result-track:435426e98ea3086d22b4c9da1be6fb46c3feec581eeb7aa190b9be234b12dd80` |
| 8 | `theorem` | [isSeparated_iff_subsingleton](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesSheafSheafEquivSheafOfTypes.lean/declarations/isseparated-iff-subsingleton.md) | 190 | `result-track:69d0769afa2db3bbe0e451347530204d3140d20e72a80892d3660c7d99073c5c` |
| 9 | `theorem` | [isLimit_iff_isSheafFor_presieve](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesSheafSheafEquivSheafOfTypes.lean/declarations/islimit-iff-issheaffor-presieve.md) | 200 | `result-track:bf95b6a94840a1609d6186a8146c369e19a0b6ecc687a0a1090d4eb8846b8360` |
| 10 | `theorem` | [isSheaf_iff_isLimit_pretopology](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesSheafSheafEquivSheafOfTypes.lean/declarations/issheaf-iff-islimit-pretopology.md) | 209 | `result-track:a01701b3af2172a00b0d3f32abcbc33ccd7211c2535d68b4027dbfa3fa61e759` |
| 11 | `def` | [IsSheaf.amalgamate](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesSheafSheafEquivSheafOfTypes.lean/declarations/issheaf-amalgamate.md) | 228 | `declaration-track:05977c3c44175a3f72aeeeaacf25fe95442587965c820463f2d151516f37c8f0` |
| 12 | `theorem` | [IsSheaf.amalgamate_map](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesSheafSheafEquivSheafOfTypes.lean/declarations/issheaf-amalgamate-map.md) | 236 | `result-track:599cae73a982ba5959bc3f2954cd6ecadeb1e2bfa13c5279e64980a84a449719` |
| 13 | `theorem` | [IsSheaf.hom_ext](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesSheafSheafEquivSheafOfTypes.lean/declarations/issheaf-hom-ext.md) | 246 | `result-track:ab69988171b729e89f8cbe8de21d309a01e894d2b7a77806dcbb0d9135c164f2` |
| 14 | `theorem` | [isSheaf_of_iso_iff](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesSheafSheafEquivSheafOfTypes.lean/declarations/issheaf-of-iso-iff.md) | 252 | `result-track:f6c80dd000a78b46eb0a9ba9961f677596c8ad64433b482c90bf4a88c19cb309` |
| 15 | `theorem` | [isSheaf_of_isTerminal](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesSheafSheafEquivSheafOfTypes.lean/declarations/issheaf-of-isterminal.md) | 260 | `result-track:7121d5849eddb082a6478a06ed4e57a765071c295255bee5794adb6c19a8191e` |
| 16 | `structure` | [Sheaf](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesSheafSheafEquivSheafOfTypes.lean/declarations/sheaf.md) | 274 | `declaration-track:ed4ac48c7bb206b056de2888017a86618525691303b9b92c9c3311dfe00539cb` |
| 17 | `structure` | [Hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesSheafSheafEquivSheafOfTypes.lean/declarations/hom.md) | 288 | `declaration-track:8b37133ce811709924a46004281d2035231706256a6c729469a737ec642247c8` |
| 18 | `instance` | [instCategorySheaf](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesSheafSheafEquivSheafOfTypes.lean/declarations/instcategorysheaf.md) | 295 | `declaration-track:578ba7b60c46117dedec35a943a3f9e53feeec4c8aba60177a086aec2c107006` |
| 19 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesSheafSheafEquivSheafOfTypes.lean/declarations/instance-source-edition-5.md) | 304 | `declaration-track:a08d31703f15adca44893c73b1ca1f787b8a91ee8b3814749662db55211f4dfb` |
| 20 | `lemma` | [hom_ext](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesSheafSheafEquivSheafOfTypes.lean/declarations/hom-ext.md) | 309 | `result-track:4e52bacb5785cb020037d984b099fc13f6bcef28afe111565e8582e3769cda7d` |
| 21 | `def` | [sheafToPresheaf](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesSheafSheafEquivSheafOfTypes.lean/declarations/sheaftopresheaf.md) | 316 | `declaration-track:48f0381dbf731cafb3d1cd562ea924408203aafa7f07c8d32131f0885fd7ec0b` |
| 22 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesSheafSheafEquivSheafOfTypes.lean/declarations/instance-source-edition-3.md) | 324 | `declaration-track:1b403363507fa5721425db40429838654f38ec52683a569d9ba298c8585e1205` |
| 23 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesSheafSheafEquivSheafOfTypes.lean/declarations/instance-source-edition-7.md) | 326 | `declaration-track:e52bb9d89b6b4968cfff36477be56eaf234314423597bfd837c11d9780314afb` |
| 24 | `theorem` | [Sheaf.Hom.mono_of_presheaf_mono](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesSheafSheafEquivSheafOfTypes.lean/declarations/sheaf-hom-mono-of-presheaf-mono.md) | 330 | `result-track:11a4ebd89493fcb9cc5e64d974366fa1e788eec063fc59d70c6d7169edabca3a` |
| 25 | `instance` | [Sheaf.Hom.epi_of_presheaf_epi](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesSheafSheafEquivSheafOfTypes.lean/declarations/sheaf-hom-epi-of-presheaf-epi.md) | 335 | `declaration-track:690d1101516700cc51ab1ad59fead8991f73a7381cc9351df11f11f9499252e4` |
| 26 | `def` | [sheafOver](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesSheafSheafEquivSheafOfTypes.lean/declarations/sheafover.md) | 342 | `declaration-track:f0b247996839f8d9b81d05757527eb86ddd07aeb4ea0b739699a8fedf46b4779` |
| 27 | `theorem` | [isSheaf_iff_isSheaf_of_type](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesSheafSheafEquivSheafOfTypes.lean/declarations/issheaf-iff-issheaf-of-type.md) | 347 | `result-track:52e7493eef07ca9754a690b0fa0214582ba7ed52c0fe2e0e303250035af04f8a` |
| 28 | `def` | [sheafEquivSheafOfTypes](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesSheafSheafEquivSheafOfTypes.lean/declarations/sheafequivsheafoftypes.md) | 371 | `declaration-track:5f05857b67419380faac64375d19ecd8c8c0aa43719956b65dc643bb41d7a5a1` |
| 29 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesSheafSheafEquivSheafOfTypes.lean/declarations/instance-source-edition-8.md) | 383 | `declaration-track:fa04dc2bb261bf42493703a1ab02c7b41795ad2b81dc30695962b8df5a18810c` |
| 30 | `def` | [Sheaf.isTerminalOfBotCover](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesSheafSheafEquivSheafOfTypes.lean/declarations/sheaf-isterminalofbotcover.md) | 389 | `declaration-track:158aee87a86c01267c43eb44aa2e96480a5b9e8f900139c5396cdeb1974d3ee0` |
| 31 | `instance` | [sheafHomHasZsmul](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesSheafSheafEquivSheafOfTypes.lean/declarations/sheafhomhaszsmul.md) | 404 | `declaration-track:bb514d453f3edea6e33a6c67373ccfba8d6092b0d84f1ce4a52ab90b74297bce` |
| 32 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesSheafSheafEquivSheafOfTypes.lean/declarations/instance-source-edition-4.md) | 418 | `declaration-track:522c59bf1663d2e0690ccaa560ac19d3b8442628eedf3fb4a89744d8b1ff4150` |
| 33 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesSheafSheafEquivSheafOfTypes.lean/declarations/instance-source-edition-6.md) | 420 | `declaration-track:cd9b79e619b379cebc728dd2378286526619016a9fbf77f9a902d9ca4eca9751` |
| 34 | `instance` | [sheafHomHasNsmul](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesSheafSheafEquivSheafOfTypes.lean/declarations/sheafhomhasnsmul.md) | 422 | `declaration-track:b90fcfaf1fabc667a9f8f113af04c10c0a5b7dcf74a098ea392ebd4fdde28c1e` |
| 35 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesSheafSheafEquivSheafOfTypes.lean/declarations/instance-source-edition-2.md) | 434 | `declaration-track:18fb7ecb04fe0092c3b3250231eafdca8aa8054149f53bb6b5d0abff03be01c2` |
| 36 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesSheafSheafEquivSheafOfTypes.lean/declarations/instance.md) | 436 | `declaration-track:0cfa1bbff82ea152cff7451a94f3dbc00de4c403f8dfa968950df8b39aa7014b` |
| 37 | `theorem` | [Sheaf.Hom.add_app](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesSheafSheafEquivSheafOfTypes.lean/declarations/sheaf-hom-add-app.md) | 439 | `result-track:02422904291de7eccbb79b5dcf0b7eb3031fbf49eb82deed1f6684bdfdfa6b2e` |
| 38 | `instance` | [Sheaf.Hom.addCommGroup](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesSheafSheafEquivSheafOfTypes.lean/declarations/sheaf-hom-addcommgroup.md) | 444 | `declaration-track:6752926e1eaa1acaa2c1d29dc6a669e4e437ba13d94c36674b65f28bbf7b407c` |
| 39 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesSheafSheafEquivSheafOfTypes.lean/declarations/instance-source-edition-9.md) | 449 | `declaration-track:fcd64356a9091ece8189d2b84d0fa78f0ae50c3007461ba2fef23ea6c7cb55ab` |
| 40 | `def` | [isLimitOfIsSheaf](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesSheafSheafEquivSheafOfTypes.lean/declarations/islimitofissheaf.md) | 485 | `declaration-track:2bbc1b340d4df029d9776757a762a79386924a658e9a54f53ed60084231d13ae` |
| 41 | `theorem` | [isSheaf_iff_multifork](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesSheafSheafEquivSheafOfTypes.lean/declarations/issheaf-iff-multifork.md) | 503 | `result-track:e50fbb7e8fb665b9b99bb8e14117be125cbcc1f1cc42a405e9087e815b2c9a9e` |
| 42 | `theorem` | [isSheaf_iff_multiequalizer](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesSheafSheafEquivSheafOfTypes.lean/declarations/issheaf-iff-multiequalizer.md) | 524 | `result-track:65741dcf213f7180fd4c25680bf5412d0c7b019fe96dbb962e537789cbceb23b` |
| 43 | `def` | [firstObj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesSheafSheafEquivSheafOfTypes.lean/declarations/firstobj.md) | 553 | `declaration-track:2707737396a72b1cfc2f7954188c3f647bbc88b8e8fff41d20c124b39d9633ed` |
| 44 | `def` | [forkMap](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesSheafSheafEquivSheafOfTypes.lean/declarations/forkmap.md) | 561 | `declaration-track:4a2dbfa8e971f214cd7b7d6e4ed972267a5f42c1a8a00f128558c67d433f5671` |
| 45 | `def` | [secondObj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesSheafSheafEquivSheafOfTypes.lean/declarations/secondobj.md) | 570 | `declaration-track:f23e13f21c6ab14fef42001d40281ad83f9b6766a24863abb544f41738904276` |
| 46 | `def` | [firstMap](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesSheafSheafEquivSheafOfTypes.lean/declarations/firstmap.md) | 576 | `declaration-track:f184d7eb51368aa760d17085b3430f53be6c1b9526ad146c5b98ce439bf5d9e4` |
| 47 | `def` | [secondMap](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesSheafSheafEquivSheafOfTypes.lean/declarations/secondmap.md) | 581 | `declaration-track:2323969122956ab6df91aff1a82252b42f1afeec6d0380167c85355b1035abdb` |
| 48 | `theorem` | [w](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesSheafSheafEquivSheafOfTypes.lean/declarations/w.md) | 585 | `result-track:f72c91d2e560ab0084fe64d0afb4912dc79eec6cd9d099cf14dc167d6037b7b7` |
| 49 | `def` | [IsSheaf'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesSheafSheafEquivSheafOfTypes.lean/declarations/issheaf-source-edition-2.md) | 597 | `declaration-track:6deb8716cb24272cb4a6dfb8510337619ca9e5d76c741f9091f2a409a277420f` |
| 50 | `def` | [isSheafForIsSheafFor'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesSheafSheafEquivSheafOfTypes.lean/declarations/issheafforissheaffor.md) | 604 | `declaration-track:f6c3fe91afedb5acc6c79207817ea573838da866dd15fc4d114c48c968022f46` |
| 51 | `theorem` | [isSheaf_iff_isSheaf'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesSheafSheafEquivSheafOfTypes.lean/declarations/issheaf-iff-issheaf.md) | 633 | `result-track:edbc4a1a85f864218f6a4d9845018e8b467a45de62668af19d8d7f83f804de4d` |
| 52 | `theorem` | [isSheaf_iff_isSheaf_forget](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesSheafSheafEquivSheafOfTypes.lean/declarations/issheaf-iff-issheaf-forget.md) | 669 | `result-track:e594602cbe1e0bf5c0729ef3557d71435a255d879541a896ad67b31946aa48d3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e8ca405ae965064223c30cdbdee0a5532753f194a7a52eecef9810b2d538219d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheaf/Variantfaf696424d48a7cfae0f7ebc4e35865a6877702ca2a0127ef983b0c7d5adc1ce.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheaf/Variantfaf696424d48a7cfae0f7ebc4e35865a6877702ca2a0127ef983b0c7d5adc1ce.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
