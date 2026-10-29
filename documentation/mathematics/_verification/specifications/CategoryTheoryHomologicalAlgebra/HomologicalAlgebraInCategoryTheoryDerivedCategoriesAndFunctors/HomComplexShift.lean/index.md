# Verification target: Hom Complex Shift

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "86ad3624d9548e8a273647bf6ecd2c40f29af049",
  "lexical_observation_count": 62,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomComplexShift/Variant0d2c91c7d9c8a2351fbd0459995685e35af403df471c4e9b9c52fa3050efb2fd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomComplexShift.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomComplexShift.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `86ad3624d9548e8a273647bf6ecd2c40f29af049`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomComplexShift/Variant0d2c91c7d9c8a2351fbd0459995685e35af403df471c4e9b9c52fa3050efb2fd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomComplexShift/Variant0d2c91c7d9c8a2351fbd0459995685e35af403df471c4e9b9c52fa3050efb2fd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Homology.HomotopyCategory.HomComplex` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Homology.HomotopyCategory.Shift` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [rightShift](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomComplexShift.lean/declarations/rightshift-source-edition-2.md) | 46 | `declaration-track:824384f0de55047a5b89799c2dafb8f531adce3af9e23f7b26ea51c3a7b4203c` |
| 2 | `lemma` | [rightShift_v](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomComplexShift.lean/declarations/rightshift-v.md) | 50 | `result-track:e983557d7f727c96dc8279dd9a512d1a0c1e5e5506f23eaca7319ceb0d237a6b` |
| 3 | `def` | [leftShift](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomComplexShift.lean/declarations/leftshift-source-edition-3.md) | 59 | `declaration-track:d1d2ff675cefadd71fa1db06194ab07b9231e17cbddc16f956afcaa077ec06d2` |
| 4 | `lemma` | [leftShift_v](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomComplexShift.lean/declarations/leftshift-v.md) | 63 | `result-track:a9f0045beebb6f7b0dd5d5677c5bf99149b86334152c5945463d251b5697bb9d` |
| 5 | `def` | [rightUnshift](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomComplexShift.lean/declarations/rightunshift-source-edition-2.md) | 73 | `declaration-track:7c15a0704a8ac2e5371b2d75bb7ab32e26d991376baa7525dbb633026a5e9fd5` |
| 6 | `lemma` | [rightUnshift_v](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomComplexShift.lean/declarations/rightunshift-v.md) | 78 | `result-track:ba323466758b62a6c17ced94eecc27fdaf7f92bc72ae3ca822e025196e62eedd` |
| 7 | `def` | [leftUnshift](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomComplexShift.lean/declarations/leftunshift-source-edition-3.md) | 87 | `declaration-track:b914d2a7f8c55d3883657560dcae35bb268607067e18a39b511878b2e6e2f7cb` |
| 8 | `lemma` | [leftUnshift_v](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomComplexShift.lean/declarations/leftunshift-v.md) | 92 | `result-track:e6d4df55ff9f84c82caec708678e3e33ed6fcddb7a86ce2e7b6e33b90944add1` |
| 9 | `def` | [shift](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomComplexShift.lean/declarations/shift-source-edition-3.md) | 100 | `declaration-track:84c4e066de2c87982f51804ef2cbc649def7d043bbaaa034413924d314b10251` |
| 10 | `lemma` | [shift_v](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomComplexShift.lean/declarations/shift-v.md) | 104 | `result-track:7783751b4a59f559f7951928cd4f7c71b07234cc3228b1583b2c97b37d29b18f` |
| 11 | `lemma` | [shift_v'](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomComplexShift.lean/declarations/shift-v-source-edition-2.md) | 112 | `result-track:fa431e97dd8b2fa0d3f15ed38a2ace1cade7e6290214cbedb8367616c90f4696` |
| 12 | `lemma` | [rightUnshift_rightShift](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomComplexShift.lean/declarations/rightunshift-rightshift.md) | 118 | `result-track:735445fd98ee78b8ca12884a510e4c695922ba2f337d19acc06695306efc1954` |
| 13 | `lemma` | [rightShift_rightUnshift](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomComplexShift.lean/declarations/rightshift-rightunshift.md) | 126 | `result-track:702cf909139dd7bdd1da71c886f60e6e3c50de0903be77ae66259da51c4cd58c` |
| 14 | `lemma` | [leftUnshift_leftShift](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomComplexShift.lean/declarations/leftunshift-leftshift.md) | 134 | `result-track:6df9b1a8856f53680ed836141203389e40bc671555d5361f605d62f08a009fc2` |
| 15 | `lemma` | [leftShift_leftUnshift](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomComplexShift.lean/declarations/leftshift-leftunshift.md) | 142 | `result-track:36cf59ccf0ed2743d4ca44c05c44f7ff7f3e10b2054d6003edee63033fc6ec05` |
| 16 | `lemma` | [rightShift_add](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomComplexShift.lean/declarations/rightshift-add.md) | 150 | `result-track:8b26011e40fab3fce68bb397618ed968f645aa2e0aa9b072cb6e000f180d3cb7` |
| 17 | `lemma` | [leftShift_add](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomComplexShift.lean/declarations/leftshift-add.md) | 157 | `result-track:a3f04685fd2fc49db14052faad29ea91d8d4b30b5f91af4ac6e2687c2be2081c` |
| 18 | `lemma` | [shift_add](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomComplexShift.lean/declarations/shift-add.md) | 164 | `result-track:dc504722b497d65e6dd8dbcd5488b221133ec19106467cc294f740ba4af82efc` |
| 19 | `def` | [rightShiftAddEquiv](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomComplexShift.lean/declarations/rightshiftaddequiv.md) | 174 | `declaration-track:8a1cca2b451a995b515a833ab4878ecf8172bbf44151a8f809a9cb81c4895006` |
| 20 | `def` | [leftShiftAddEquiv](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomComplexShift.lean/declarations/leftshiftaddequiv.md) | 184 | `declaration-track:dcf436372cc874ed1fa897b71b0cdd4ea4f573147e2054293115f640c24c1579` |
| 21 | `def` | [shiftAddHom](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomComplexShift.lean/declarations/shiftaddhom.md) | 194 | `declaration-track:b41c36ffea851ac5e6da38f28d9df7f8bcd6634184a26d3958811031d8691995` |
| 22 | `lemma` | [rightShift_zero](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomComplexShift.lean/declarations/rightshift-zero.md) | 200 | `result-track:c8f701d40fb5b4244339e35b5147f43d50e57ab14d3a0ea0ce179e7714289462` |
| 23 | `lemma` | [rightUnshift_zero](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomComplexShift.lean/declarations/rightunshift-zero.md) | 206 | `result-track:d9adc8bfcf3be81748ccc8efc26518a107280c025762ea55b33cd774e90537c9` |
| 24 | `lemma` | [leftShift_zero](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomComplexShift.lean/declarations/leftshift-zero.md) | 212 | `result-track:049c792297c55beaa0f4b3b25f3f8e0b72c67caa64617fb145791b366c2f7ec7` |
| 25 | `lemma` | [leftUnshift_zero](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomComplexShift.lean/declarations/leftunshift-zero.md) | 218 | `result-track:adfe29d02c54e2f02d8b0cbae053bba97c2655060d3b2532e694ae9e46662bb9` |
| 26 | `lemma` | [shift_zero](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomComplexShift.lean/declarations/shift-zero.md) | 224 | `result-track:4ec4c068f3c2c0d61332ae62581b8159eb11685c5e315d89da60bec33d90dc97` |
| 27 | `lemma` | [rightShift_neg](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomComplexShift.lean/declarations/rightshift-neg.md) | 232 | `result-track:686252783f1f5afb29cd88108da1d1a564084cfcfbcfcfa2077ff17f53ac01e0` |
| 28 | `lemma` | [rightUnshift_neg](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomComplexShift.lean/declarations/rightunshift-neg.md) | 238 | `result-track:cce979f7fa22bd949f4639c2cdc694fac2485b663d364f367f6961811b0cb099` |
| 29 | `lemma` | [leftShift_neg](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomComplexShift.lean/declarations/leftshift-neg.md) | 244 | `result-track:106129feda51a92817c4e1c3b3725f8fc567c0bb0880924da2ef0caeb2967469` |
| 30 | `lemma` | [leftUnshift_neg](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomComplexShift.lean/declarations/leftunshift-neg.md) | 250 | `result-track:0fa8ad79e0a094af7327d8c5ff8ede9732d895efd5cec8e2efcaccc56228cb0d` |
| 31 | `lemma` | [shift_neg](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomComplexShift.lean/declarations/shift-neg.md) | 256 | `result-track:471de91cf7affa6df983ee4ede2829b21fa4123e186a71ed79323f5777e03a61` |
| 32 | `lemma` | [rightUnshift_add](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomComplexShift.lean/declarations/rightunshift-add.md) | 262 | `result-track:ee52c189e4650cbf385d60d77b8ec3dcfde33b129cab3b882c0404e12861fe4a` |
| 33 | `lemma` | [leftUnshift_add](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomComplexShift.lean/declarations/leftunshift-add.md) | 268 | `result-track:cee05d8cc1d1c612e5de7dcc9ac1411abe9c6a5b1c97ebb18351e42c28c49bce` |
| 34 | `lemma` | [rightShift_smul](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomComplexShift.lean/declarations/rightshift-smul.md) | 274 | `result-track:8ea1676b38c9e9ce7acf6629bee46664b334c295e4c0c63c6ace5fc08c959010` |
| 35 | `lemma` | [leftShift_smul](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomComplexShift.lean/declarations/leftshift-smul.md) | 281 | `result-track:7721baf9e53480816ac891ae9ee59855ebd3d471a55271f7ede94e189eb560e9` |
| 36 | `lemma` | [shift_smul](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomComplexShift.lean/declarations/shift-smul.md) | 289 | `result-track:7c363b0e218bf1c491fd0f4edcc654fe4fa088b4fd941934f2e0ccc46c863054` |
| 37 | `def` | [rightShiftLinearEquiv](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomComplexShift.lean/declarations/rightshiftlinearequiv.md) | 300 | `declaration-track:74c12a80f01e3dd2913292b662dd8c28db74c48c1794ff359608a967e3a83162` |
| 38 | `def` | [leftShiftLinearEquiv](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomComplexShift.lean/declarations/leftshiftlinearequiv.md) | 308 | `declaration-track:df0e8ecaa8261b8d10eb7a747b628484da12b8b0b73259bd7546ee2287488815` |
| 39 | `def` | [shiftLinearMap](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomComplexShift.lean/declarations/shiftlinearmap.md) | 315 | `declaration-track:c9b21f25f0456e4bc1add8bbd541008f3ab4c5f6740eb4c1ee6bf57a5da171c2` |
| 40 | `lemma` | [rightShift_units_smul](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomComplexShift.lean/declarations/rightshift-units-smul.md) | 323 | `result-track:db885cdf8816ec4f72ff97324c389bfc20a5b0a522c1c1324e7d0a5815a3e594` |
| 41 | `lemma` | [leftShift_units_smul](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomComplexShift.lean/declarations/leftshift-units-smul.md) | 328 | `result-track:bdce07e6c280ce3b8f750021a064c287fe864fba9fae3dc57c470bd94ee7bd99` |
| 42 | `lemma` | [shift_units_smul](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomComplexShift.lean/declarations/shift-units-smul.md) | 333 | `result-track:ca059092a08f450c7505c7e675e430e6ef3d1960c450f538eaf4cdb36540f6d2` |
| 43 | `lemma` | [rightUnshift_smul](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomComplexShift.lean/declarations/rightunshift-smul.md) | 340 | `result-track:af4b5e6d74295208fbdff1dfdc09b18b23015be2755d7346167f9654c351d0ac` |
| 44 | `lemma` | [rightUnshift_units_smul](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomComplexShift.lean/declarations/rightunshift-units-smul.md) | 346 | `result-track:7d0f151fa7ca30569afb31b8326e1bc66a9f5c78ee1c90198ccdfa12281f886e` |
| 45 | `lemma` | [leftUnshift_smul](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomComplexShift.lean/declarations/leftunshift-smul.md) | 352 | `result-track:1fb65ee1346fd78ef30edc7c1c11cc807d8cad986cfbe029afb65f1c72e07c6f` |
| 46 | `lemma` | [leftUnshift_units_smul](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomComplexShift.lean/declarations/leftunshift-units-smul.md) | 358 | `result-track:f4367493d9f323ba3a91cea18e0dc56766ad398f230cdb6d115107a129faba0e` |
| 47 | `lemma` | [rightUnshift_comp](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomComplexShift.lean/declarations/rightunshift-comp.md) | 363 | `result-track:1d1fe78a367e3862da3f244f133d9efe122c4d6070d589f2f64b1c9485c15614` |
| 48 | `lemma` | [leftShift_comp](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomComplexShift.lean/declarations/leftshift-comp.md) | 373 | `result-track:bd7403cc2b61d0abeeddd470defb07f7e395fd2126a7cd61ba970bfa8b122213` |
| 49 | `lemma` | [leftShift_comp_zero_cochain](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomComplexShift.lean/declarations/leftshift-comp-zero-cochain.md) | 389 | `result-track:d3cf8ee462d761dd69db5286b7b7f045578eb6d0323e0059b058497bf084fec0` |
| 50 | `lemma` | [δ_rightShift](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomComplexShift.lean/declarations/rightshift-source-edition-3.md) | 394 | `result-track:d9e08d7828e803604767db59643266455ca00461fdcd5f2db283604bd0e48557` |
| 51 | `lemma` | [δ_rightUnshift](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomComplexShift.lean/declarations/rightunshift.md) | 415 | `result-track:4662c42e488bd55a775f08399a5fb7b9e941d40baa1c422a52c127599218e14a` |
| 52 | `lemma` | [δ_leftShift](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomComplexShift.lean/declarations/leftshift.md) | 423 | `result-track:0395bed61401f8c51f62a5238b5f45c6dd188b28777c06a9057b21fdb713c7fa` |
| 53 | `lemma` | [δ_leftUnshift](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomComplexShift.lean/declarations/leftunshift.md) | 446 | `result-track:06a66809a2fc9d751528d9f2a7da6717e1a501e07007a6830c791ad551271c1d` |
| 54 | `lemma` | [δ_shift](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomComplexShift.lean/declarations/shift.md) | 455 | `result-track:34684fc5f4e01452107fdbd39e2fdb235e884d22df0679d9c04f3a9ae8c10123` |
| 55 | `lemma` | [leftShift_rightShift](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomComplexShift.lean/declarations/leftshift-rightshift.md) | 468 | `result-track:a15d069664acdc7bb88bf39bd8baa8039c9e0358c8c604b5e9945a5a08a76204` |
| 56 | `lemma` | [rightShift_leftShift](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomComplexShift.lean/declarations/rightshift-leftshift.md) | 477 | `result-track:d607cf68c96331d2a600b9b89e1a4f1f467fd4cae41aecdc0dcc410d67a98660` |
| 57 | `lemma` | [leftShift_rightShift_eq_negOnePow_rightShift_leftShift](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomComplexShift.lean/declarations/leftshift-rightshift-eq-negonepow-rightshift-leftshift.md) | 487 | `result-track:c97fce69682cbd6d9637ae8f688d6a05afbb5b94fad546eadd52b5d27033e889` |
| 58 | `def` | [rightShift](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomComplexShift.lean/declarations/rightshift.md) | 501 | `declaration-track:1b05f4f74ef3a600953e8ad55caedbe5f9f8730016ce1b00b69f161d6d84ab46` |
| 59 | `def` | [rightUnshift](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomComplexShift.lean/declarations/rightunshift-source-edition-3.md) | 509 | `declaration-track:e2d86165231169824ac5d97111c95a5d4d3bbd0a8325722bd73ba94f8a170a42` |
| 60 | `def` | [leftShift](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomComplexShift.lean/declarations/leftshift-source-edition-2.md) | 517 | `declaration-track:238b2f4aaf119d444a939cf4a806facaec6fc8a4751f951df7f1d8cacca86d27` |
| 61 | `def` | [leftUnshift](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomComplexShift.lean/declarations/leftunshift-source-edition-2.md) | 525 | `declaration-track:5fbed5e20f22a15fc7b3b11be09fa18568241afef2d78eb1ab4a9bd5071a3e47` |
| 62 | `def` | [shift](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomComplexShift.lean/declarations/shift-source-edition-2.md) | 533 | `declaration-track:3d70baacfb8d5f434015fec85f4164e3e97b5b13a6eaaaac11d95d3be8105e82` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4961c4aa3433400a703490923644908e314c649509f161cdc492e7586d7bb5a0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomComplexShift/Variant0d2c91c7d9c8a2351fbd0459995685e35af403df471c4e9b9c52fa3050efb2fd.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomComplexShift/Variant0d2c91c7d9c8a2351fbd0459995685e35af403df471c4e9b9c52fa3050efb2fd.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
