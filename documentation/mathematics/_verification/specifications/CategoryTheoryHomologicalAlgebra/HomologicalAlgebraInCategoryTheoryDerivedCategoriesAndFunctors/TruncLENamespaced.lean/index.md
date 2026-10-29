# Verification target: Trunc LENamespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a40534ddb6eb1c3f6127ed17f0cbe0accc275eb5",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TruncLE/Varianteab6619dafe69b6707e1f94616c6053030ed5850ac8e986735737a3eb694ed0c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/TruncLENamespaced.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/TruncLENamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a40534ddb6eb1c3f6127ed17f0cbe0accc275eb5`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TruncLE/Varianteab6619dafe69b6707e1f94616c6053030ed5850ac8e986735737a3eb694ed0c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TruncLE/Varianteab6619dafe69b6707e1f94616c6053030ed5850ac8e986735737a3eb694ed0c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Homology.Embedding.TruncGE` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [truncLE'](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/TruncLENamespaced.lean/declarations/truncle.md) | 43 | `declaration-track:0b05509e4847bbc2e979544d2409e61799a304efbb038fac5a9ff12897769e6b` |
| 2 | `def` | [truncLE'XIso](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/TruncLENamespaced.lean/declarations/truncle-xiso.md) | 47 | `declaration-track:d54a477a1b31b260be8dcd1ab8252e3e8d170926f392fb4b22aff855bf104af1` |
| 3 | `def` | [truncLE'XIsoCycles](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/TruncLENamespaced.lean/declarations/truncle-xisocycles.md) | 53 | `declaration-track:bb88824f0c6e5b19756c085806a62460029f79eb03953842caed5feb18f656c7` |
| 4 | `lemma` | [truncLE'_d_eq](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/TruncLENamespaced.lean/declarations/truncle-d-eq.md) | 58 | `result-track:ef1437e54589a8df4704776d98aa95fe356c5cde5681bde782af0a9109019075` |
| 5 | `lemma` | [truncLE'_d_eq_toCycles](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/TruncLENamespaced.lean/declarations/truncle-d-eq-tocycles.md) | 64 | `result-track:f5941d6148a743588c7b3908bbca814d41d6bf7ddd30f1e2ee6d759588723821` |
| 6 | `def` | [truncLE](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/TruncLENamespaced.lean/declarations/truncle-source-edition-2.md) | 78 | `declaration-track:111f1112312ee0969c119aab76a94a70d331dbc9de34f0c155e4eb8af037c71b` |
| 7 | `def` | [truncLEIso](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/TruncLENamespaced.lean/declarations/truncleiso.md) | 81 | `declaration-track:8655c4078604297d592f833759876b8c3fc0c52e6f5fc001e096e38c005ce138` |
| 8 | `def` | [truncLEXIso](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/TruncLENamespaced.lean/declarations/trunclexiso.md) | 86 | `declaration-track:e33050dd7da4e19dc3562956c9a2ea0bf06790013a884ef9410cc7a28757ea3b` |
| 9 | `def` | [truncLEXIsoCycles](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/TruncLENamespaced.lean/declarations/trunclexisocycles.md) | 92 | `declaration-track:66e518e7ca70b5eddb3f6b868b29737e63e2dda3291678d53b41573c347eeeb0` |
| 10 | `def` | [truncLE'Map](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/TruncLENamespaced.lean/declarations/truncle-map.md) | 104 | `declaration-track:8d1a5a7cfe2834d3804269e9d3767a17b5f22121fc2d0a663ec37aad93bfeea1` |
| 11 | `lemma` | [truncLE'Map_f_eq_cyclesMap](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/TruncLENamespaced.lean/declarations/truncle-map-f-eq-cyclesmap.md) | 107 | `result-track:5011a726819c50dd354129db2cfe267cacbf774cf3c9d2d618f3e95487ccc289` |
| 12 | `lemma` | [truncLE'Map_f_eq](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/TruncLENamespaced.lean/declarations/truncle-map-f-eq.md) | 116 | `result-track:db0435d49f743b441c5300e71e034463e1ad7bee6f253415f358a19f95bb2035` |
| 13 | `lemma` | [truncLE'Map_id](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/TruncLENamespaced.lean/declarations/truncle-map-id.md) | 124 | `result-track:c41282ee7323db8d73cd56b7ca8d2c58e38448915efe2ce8b1dfae87258d592a` |
| 14 | `lemma` | [truncLE'Map_comp](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/TruncLENamespaced.lean/declarations/truncle-map-comp.md) | 128 | `result-track:86cd276d8a8f772590d89b0521d507cf34745924c793e4aea2dc23a19b90df35` |
| 15 | `def` | [truncLEMap](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/TruncLENamespaced.lean/declarations/trunclemap.md) | 135 | `declaration-track:e8758488d72c20b8430140646557de0fb6eb80fe8227f28d47ba7a5899c7ad1f` |
| 16 | `lemma` | [truncLEMap_id](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/TruncLENamespaced.lean/declarations/trunclemap-id.md) | 140 | `result-track:516abfd6cb05d789ee3e405e2b088309e9b2ac3fbf3931f1e90f3e2f7f2bb811` |
| 17 | `lemma` | [truncLEMap_comp](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/TruncLENamespaced.lean/declarations/trunclemap-comp.md) | 144 | `result-track:b0c5d1faa9773e3fb566e010944b8f77a2fc5ab4a59d273e4e6ba38abad4e655` |
| 18 | `def` | [truncLE'ToRestriction](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/TruncLENamespaced.lean/declarations/truncle-torestriction.md) | 151 | `declaration-track:5bd4c6dd93f44ead2d132022246d421a7feeb12f904c50f34211a3c75c196f2b` |
| 19 | `lemma` | [isIso_truncLE'ToRestriction](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/TruncLENamespaced.lean/declarations/isiso-truncle-torestriction.md) | 155 | `result-track:eefe89211b2d20dd26017abe190e90735f9df56cb25920d9cfbd6036ebc5c1bd` |
| 20 | `lemma` | [truncLE'ToRestriction_naturality](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/TruncLENamespaced.lean/declarations/truncle-torestriction-naturality.md) | 163 | `result-track:08cbd93e92a3a8e422ab3a9e6b31473ad0203fe9beff8bdeb6b9cf5ac9f94c1c` |
| 21 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/TruncLENamespaced.lean/declarations/instance.md) | 169 | `declaration-track:02dd360f8f6f29bafdca42221505d4b18be7f27f81f706071c36d6dba4080853` |
| 22 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/TruncLENamespaced.lean/declarations/instance-source-edition-5.md) | 172 | `declaration-track:8cecc099154a9ccd60e94dc2e75e49c92b50b7a4839d8a10b6db2ea97941b697` |
| 23 | `def` | [ιTruncLE](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/TruncLENamespaced.lean/declarations/truncle-source-edition-3.md) | 182 | `declaration-track:86c39b15659108084f9eb1b57dec97b07774b6dbeab4cd1863a946a4bf62491f` |
| 24 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/TruncLENamespaced.lean/declarations/instance-source-edition-6.md) | 185 | `declaration-track:add9434749906cef39aaa01335a0f2f2a04de82a2e44498026814b1272fabd08` |
| 25 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/TruncLENamespaced.lean/declarations/instance-source-edition-3.md) | 188 | `declaration-track:4ccd758e8d68a3d907a5421599013ee7511bacfc5082525e0a65483465c0f1db` |
| 26 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/TruncLENamespaced.lean/declarations/instance-source-edition-7.md) | 190 | `declaration-track:ce6c0d796729f41da1e32308c69af01b4c73ffadf5578205dff5905c8a605425` |
| 27 | `lemma` | [ιTruncLE_naturality](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/TruncLENamespaced.lean/declarations/truncle-naturality.md) | 196 | `result-track:d95c175393b7bc4eaf2918b7e58b05b0244054a262bd1a5b0eaaac9c116f3f7e` |
| 28 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/TruncLENamespaced.lean/declarations/instance-source-edition-2.md) | 201 | `declaration-track:2351b873b0b775a1e85d1e7408925f29acb6b6afe4d50bec130f2b579588cda2` |
| 29 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/TruncLENamespaced.lean/declarations/instance-source-edition-4.md) | 206 | `declaration-track:53fff588c66e20d5528643a7a386dbe90344f20014ee7f0ca05b7542b75eaf97` |
| 30 | `lemma` | [isIso_ιTruncLE_iff](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/TruncLENamespaced.lean/declarations/isiso-truncle-iff.md) | 209 | `result-track:d51caa6815aab33e621a6057a1d9e458a487ac1c2475dfe1557cdb0db50a76d5` |
| 31 | `def` | [truncLE'Functor](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/TruncLENamespaced.lean/declarations/truncle-functor.md) | 226 | `declaration-track:2904b9f5d1ee945fa9ce0178e750af3bc41cd111c8d238be1b1805c8e6926ad4` |
| 32 | `def` | [truncLE'ToRestrictionNatTrans](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/TruncLENamespaced.lean/declarations/truncle-torestrictionnattrans.md) | 233 | `declaration-track:1306164ef22600ce937f8467965aadb5addb008e071344b2aa8c71faf0d982ef` |
| 33 | `def` | [truncLEFunctor](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/TruncLENamespaced.lean/declarations/trunclefunctor.md) | 241 | `declaration-track:94353aedd659f9f7c1107755f737466772abd7877e425385e615a754b05392ee` |
| 34 | `def` | [ιTruncLENatTrans](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/TruncLENamespaced.lean/declarations/trunclenattrans.md) | 248 | `declaration-track:dc9f4ed578b9a04808e489fef9aef83e690d145f768c17ab950a70bb71491df2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0f8155565ec368d0721010c466999daeffc2849f13e368de7906e6c2df399887 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TruncLE/Varianteab6619dafe69b6707e1f94616c6053030ed5850ac8e986735737a3eb694ed0c.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TruncLE/Varianteab6619dafe69b6707e1f94616c6053030ed5850ac8e986735737a3eb694ed0c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
