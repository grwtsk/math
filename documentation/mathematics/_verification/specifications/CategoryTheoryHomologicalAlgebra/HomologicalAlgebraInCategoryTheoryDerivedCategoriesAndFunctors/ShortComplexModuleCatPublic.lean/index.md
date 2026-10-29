# Verification target: Short Complex Module Cat Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2b633dbfb07d98f6f9a3fc157c6008f94f98e7d1",
  "lexical_observation_count": 38,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/ModuleCat/Variant24dd94f0c8dbc9ed5cb75d4c0281ff69cbd589156887cbff723046c2ecf9de2c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ShortComplexModuleCatPublic.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ShortComplexModuleCatPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2b633dbfb07d98f6f9a3fc157c6008f94f98e7d1`.

Source path: `GRWTSK/Algebra/LinearAlgebra/ModuleCat/Variant24dd94f0c8dbc9ed5cb75d4c0281ff69cbd589156887cbff723046c2ecf9de2c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/ModuleCat/Variant24dd94f0c8dbc9ed5cb75d4c0281ff69cbd589156887cbff723046c2ecf9de2c.lean.json)

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
| 1 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ShortComplexModuleCatPublic.lean/declarations/instance.md) | 30 | `declaration-track:04fa21b98e2fd39d917d1ca5da3f4e839e84c4afb2e37faef53a283acaa011b0` |
| 2 | `def` | [moduleCatMk](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ShortComplexModuleCatPublic.lean/declarations/modulecatmk.md) | 35 | `declaration-track:ea839e54d9e3235dd7b78c9a5e1f4638cb490c8b0de026767284b2ab345f5ed0` |
| 3 | `lemma` | [moduleCat_zero_apply](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ShortComplexModuleCatPublic.lean/declarations/modulecat-zero-apply.md) | 43 | `result-track:17ed199be9280d9909386827cdb91fc97e6dcc4c297a12b8894eb1fcc18f5f75` |
| 4 | `lemma` | [moduleCat_exact_iff](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ShortComplexModuleCatPublic.lean/declarations/modulecat-exact-iff.md) | 46 | `result-track:ab0e77bcf47ef9f7c00c42deedccc2a42ea470f3971e42fb7f884e22c0985e42` |
| 5 | `lemma` | [moduleCat_exact_iff_ker_sub_range](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ShortComplexModuleCatPublic.lean/declarations/modulecat-exact-iff-ker-sub-range.md) | 50 | `result-track:ec1c6311e2f11d321afc8a0ecd434a7c48ed66ae907a769069b2495be9df6a06` |
| 6 | `lemma` | [moduleCat_exact_iff_range_eq_ker](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ShortComplexModuleCatPublic.lean/declarations/modulecat-exact-iff-range-eq-ker.md) | 55 | `result-track:6a92afc047f4ca64b9aba8b557264e20ae86e7f3d6657e2575496b8a84fd1633` |
| 7 | `lemma` | [Exact.moduleCat_range_eq_ker](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ShortComplexModuleCatPublic.lean/declarations/exact-modulecat-range-eq-ker.md) | 62 | `result-track:7a6dc284199e2694f07ae1eca4322b9269f08e68c003bbacb990804baab305d4` |
| 8 | `lemma` | [ShortExact.moduleCat_injective_f](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ShortComplexModuleCatPublic.lean/declarations/shortexact-modulecat-injective-f.md) | 66 | `result-track:4972c5db1f90cf30f3f9ae66627e1df310187cbc022fac7089831366348380de` |
| 9 | `lemma` | [ShortExact.moduleCat_surjective_g](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ShortComplexModuleCatPublic.lean/declarations/shortexact-modulecat-surjective-g.md) | 70 | `result-track:9a8a0aaec07f83dd92476756ed30df6c8b23f2c92ebe00547c9058bb9c9544bb` |
| 10 | `lemma` | [ShortExact.moduleCat_exact_iff_function_exact](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ShortComplexModuleCatPublic.lean/declarations/shortexact-modulecat-exact-iff-function-exact.md) | 76 | `result-track:1f7e1881aa55192406ad390741bae0a49f422e8374debfec9a3ef75a405dd846` |
| 11 | `def` | [moduleCatMkOfKerLERange](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ShortComplexModuleCatPublic.lean/declarations/modulecatmkofkerlerange.md) | 84 | `declaration-track:f4aa84a2de7e7c40a8292a9c49bcbbae08e1d106dbc98ee0c53847270b844989` |
| 12 | `lemma` | [Exact.moduleCat_of_range_eq_ker](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ShortComplexModuleCatPublic.lean/declarations/exact-modulecat-of-range-eq-ker.md) | 88 | `result-track:6a8f696ddd233fab24340eecdfffe2d9d8a792b4db39d90f302a05328acda905` |
| 13 | `abbrev` | [moduleCatToCycles](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ShortComplexModuleCatPublic.lean/declarations/modulecattocycles.md) | 94 | `declaration-track:23fa9690789840bab3f2db0a40e2cf002e81984f849b127e5822a0663e81fc29` |
| 14 | `def` | [moduleCatLeftHomologyData](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ShortComplexModuleCatPublic.lean/declarations/modulecatlefthomologydata.md) | 102 | `declaration-track:3f9f033cb332ff70d385b0922e2e1f2597a127e9b724b45e85f1ef4ebd9b085b` |
| 15 | `lemma` | [moduleCatLeftHomologyData_f'_hom](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ShortComplexModuleCatPublic.lean/declarations/modulecatlefthomologydata-f-hom.md) | 113 | `result-track:8f59b46dfb5b08aeb177eef304a78d323484c268161b4bbfd86c42621402e030` |
| 16 | `lemma` | [moduleCatLeftHomologyData_descH_hom](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ShortComplexModuleCatPublic.lean/declarations/modulecatlefthomologydata-desch-hom.md) | 117 | `result-track:8f2416b7db2d7c412d772ef9137e9242fca58b7217ff79611321838dbc7f1278` |
| 17 | `lemma` | [moduleCatLeftHomologyData_liftK_hom](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ShortComplexModuleCatPublic.lean/declarations/modulecatlefthomologydata-liftk-hom.md) | 124 | `result-track:9902931bba919dde64fa81f069292134354031a8db96aded0c47cfae5b2c3491` |
| 18 | `def` | [moduleCatCyclesIso](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ShortComplexModuleCatPublic.lean/declarations/modulecatcyclesiso.md) | 131 | `declaration-track:87ada399ebab3fbbc6671401d2216276b89c3ed462cfe03d252500aa8bbd101b` |
| 19 | `lemma` | [moduleCatCyclesIso_hom_i](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ShortComplexModuleCatPublic.lean/declarations/modulecatcyclesiso-hom-i.md) | 135 | `result-track:962f2ba11a05cd883df53018c3a5c58a5d4d744d86fe06b9fa3d9dcd239f38cd` |
| 20 | `lemma` | [moduleCatCyclesIso_inv_iCycles](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ShortComplexModuleCatPublic.lean/declarations/modulecatcyclesiso-inv-icycles.md) | 140 | `result-track:90c91173ff5c331be1ad996912be9c7880ffd9e099c5e7b9d440173d77ddd2c5` |
| 21 | `lemma` | [toCycles_moduleCatCyclesIso_hom](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ShortComplexModuleCatPublic.lean/declarations/tocycles-modulecatcyclesiso-hom.md) | 145 | `result-track:23ef5d3e2dbfb5849ffa19d17b0e5cc71d7c9334201b459d05a4f94acd4fe2c2` |
| 22 | `def` | [moduleCatOpcyclesIso](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ShortComplexModuleCatPublic.lean/declarations/modulecatopcyclesiso.md) | 151 | `declaration-track:18e7668d5f841edf06e6f28481525123b9170a62b27131c6c09fb604f9deccea` |
| 23 | `theorem` | [pOpcycles_comp_moduleCatOpcyclesIso_hom](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ShortComplexModuleCatPublic.lean/declarations/popcycles-comp-modulecatopcyclesiso-hom.md) | 155 | `result-track:bc1402fad8edf251b6f29e798b42abe3b55f33b823c3dbac061462c94ec3c330` |
| 24 | `theorem` | [moduleCat_pOpcycles_eq_iff](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ShortComplexModuleCatPublic.lean/declarations/modulecat-popcycles-eq-iff.md) | 159 | `result-track:53bbe12c53b9d1dbfe1e6cf28f73f61171f6a8deeaea648539bd277d80577958` |
| 25 | `theorem` | [moduleCat_pOpcycles_eq_zero_iff](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ShortComplexModuleCatPublic.lean/declarations/modulecat-popcycles-eq-zero-iff.md) | 165 | `result-track:0c553429c3b949157e86355c6d0ed410e1ac644a303471d6afe6e0c27198b0bc` |
| 26 | `def` | [moduleCatHomologyIso](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ShortComplexModuleCatPublic.lean/declarations/modulecathomologyiso.md) | 173 | `declaration-track:4c24536e7e80966e7036f548b53f7f166884490b1d54309f4d04e6188bdc24c4` |
| 27 | `lemma` | [π_moduleCatCyclesIso_hom](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ShortComplexModuleCatPublic.lean/declarations/modulecatcyclesiso-hom.md) | 178 | `result-track:b544310bc6404fd0518855e55da6d9c1e952dc86070a98fc435e93a8c7a315bb` |
| 28 | `lemma` | [moduleCatCyclesIso_inv_π](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ShortComplexModuleCatPublic.lean/declarations/modulecatcyclesiso-inv.md) | 184 | `result-track:a02551fb607ff2c49a022f269b8e83d04a0236ddbfa1dc9f17070d288d991d21` |
| 29 | `lemma` | [exact_iff_surjective_moduleCatToCycles](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ShortComplexModuleCatPublic.lean/declarations/exact-iff-surjective-modulecattocycles.md) | 191 | `result-track:e0ced7236cae4f307310ac0671d5360d89f8f80f76c26215a9e279381b49b6db` |
| 30 | `abbrev` | [LinearMap.shortComplexKer](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ShortComplexModuleCatPublic.lean/declarations/linearmap-shortcomplexker.md) | 207 | `declaration-track:e12164d876dd5f324f824acf6e4903c9f593f11c467daad18566a84c943947a1` |
| 31 | `theorem` | [LinearMap.shortExact_shortComplexKer](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ShortComplexModuleCatPublic.lean/declarations/linearmap-shortexact-shortcomplexker.md) | 212 | `result-track:299fff9f364f313171f5c3a7b4651ce2d3d881767a2ab929f22675790567f0c4` |
| 32 | `abbrev` | [ModuleCat.shortComplexOfCompEqZero](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ShortComplexModuleCatPublic.lean/declarations/modulecat-shortcomplexofcompeqzero.md) | 222 | `declaration-track:a75451a15faaf1cde8426c32fa1b1b12f01f6f9384bc710203bc3a23181608c4` |
| 33 | `lemma` | [ModuleCat.shortComplex_exact](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ShortComplexModuleCatPublic.lean/declarations/modulecat-shortcomplex-exact.md) | 227 | `result-track:593e7043eec68b522de54bf89f9b4061dda72c39c41400224a61e484967a3bf6` |
| 34 | `lemma` | [ModuleCat.shortComplex_shortExact](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ShortComplexModuleCatPublic.lean/declarations/modulecat-shortcomplex-shortexact.md) | 231 | `result-track:1d737a5daa2b1c4486bc3d631628e64bf7a1d9c29990833f6ad161ff90620e90` |
| 35 | `abbrev` | [ModuleCat.shortComplexOfConj](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ShortComplexModuleCatPublic.lean/declarations/modulecat-shortcomplexofconj.md) | 256 | `declaration-track:37455a9c2c48df44f39abfa23d833b13ec484a32e4bb8bd94dad139ef4096028` |
| 36 | `lemma` | [exact_conj_of_exact](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ShortComplexModuleCatPublic.lean/declarations/exact-conj-of-exact.md) | 263 | `result-track:53f608f33d116193de7c143b70636ad9761560e2625eeac397a1aa0759166570` |
| 37 | `lemma` | [ModuleCat.shortComplexOfConj_exact](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ShortComplexModuleCatPublic.lean/declarations/modulecat-shortcomplexofconj-exact.md) | 268 | `result-track:c336f906929b7820e3a61aaeffb2f9055f247108e94209efdf7c6f6980a3db40` |
| 38 | `lemma` | [ModuleCat.shortComplexOfConj_shortExact](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ShortComplexModuleCatPublic.lean/declarations/modulecat-shortcomplexofconj-shortexact.md) | 272 | `result-track:9a22f0fc25ff987a468a8b835b20e76df24fd67c27bd457453f9e8e9822310eb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f59949a6515723d62ad87fbd9a6bf30a83134be03d1e2d04b068c4f862c3a841 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/ModuleCat/Variant24dd94f0c8dbc9ed5cb75d4c0281ff69cbd589156887cbff723046c2ecf9de2c.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/ModuleCat/Variant24dd94f0c8dbc9ed5cb75d4c0281ff69cbd589156887cbff723046c2ecf9de2c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
