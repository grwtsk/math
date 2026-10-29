# Verification target: Site Category Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e991da6e3511fe6ed228bd835415e51a85e469b5",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SiteCategory/Variante5f3c46a113001b86b5e6897455588e5b3fe27e0aa0eee2e6969c32364410349.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SiteCategoryNamespaced.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SiteCategoryNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e991da6e3511fe6ed228bd835415e51a85e469b5`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SiteCategory/Variante5f3c46a113001b86b5e6897455588e5b3fe27e0aa0eee2e6969c32364410349.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SiteCategory/Variante5f3c46a113001b86b5e6897455588e5b3fe27e0aa0eee2e6969c32364410349.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Think.SourceTree.Legacy.Compression.GrothendieckTopology` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [SiteCategorySurface](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SiteCategoryNamespaced.lean/declarations/sitecategorysurface.md) | 26 | `declaration-track:b3240d19940cd3b0b90a6c03e7b0cec353e4a07ac3b6dad28873f9debac3de92` |
| 2 | `def` | [defaultSiteCategorySurface](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SiteCategoryNamespaced.lean/declarations/defaultsitecategorysurface.md) | 40 | `declaration-track:d976006094dadcca0d748e2a053f94b6bab8fdfd696464b2476ebb5813a75458` |
| 3 | `theorem` | [site_morphism_id_left](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SiteCategoryNamespaced.lean/declarations/site-morphism-id-left.md) | 54 | `result-track:b2a7564602cbc4adaabb8d66f5d8a0e5b8145b92542e02d73b84a5da44ac8d0a` |
| 4 | `theorem` | [site_morphism_id_right](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SiteCategoryNamespaced.lean/declarations/site-morphism-id-right.md) | 61 | `result-track:a16086122101eef9fa571606e802ffcf5b56fe70e96ce97052a24245cb8ba029` |
| 5 | `theorem` | [site_morphism_assoc](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SiteCategoryNamespaced.lean/declarations/site-morphism-assoc.md) | 68 | `result-track:aa1a90f239cb9686aa6dede65ddb8fe0b860e3a5f6c42070a5b32f5b6d7b4d9c` |
| 6 | `theorem` | [default_site_category_surface_has_laws](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SiteCategoryNamespaced.lean/declarations/default-site-category-surface-has-laws.md) | 80 | `result-track:e9e31f6425ed2a0b96221752affce83c172d21488872034d07aed0203aae5bff` |
| 7 | `theorem` | [site_category_surface_denies_mathlib_category_instance](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SiteCategoryNamespaced.lean/declarations/site-category-surface-denies-mathlib-category-instance.md) | 87 | `result-track:ccd1d5ae3afa933596e06651907ebd5d376655593184bf9eab3f7dbc52352b37` |
| 8 | `theorem` | [site_category_surface_denies_grothendieck_topology_instance](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SiteCategoryNamespaced.lean/declarations/site-category-surface-denies-grothendieck-topology-instance.md) | 93 | `result-track:ce96290eaacaf3429ad5a9f7b8748a7b4917f841bb41755e2a3b12fd077b0f51` |
| 9 | `theorem` | [site_category_surface_denies_sheaf_category](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SiteCategoryNamespaced.lean/declarations/site-category-surface-denies-sheaf-category.md) | 99 | `result-track:c201e11eef7cc5e32312ba4b7f85df49daaf180a9f33515f5bc5134688098e4f` |
| 10 | `theorem` | [site_category_surface_denies_topos](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SiteCategoryNamespaced.lean/declarations/site-category-surface-denies-topos.md) | 104 | `result-track:f6979f4bcfc4ce786c54e476abd84a8c3231990ea17f7b08e9bd8c1697f08585` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f667e3ab63191d34e7f7555d5bbe582111224d4973a252d2c2667d0de7cc8749 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SiteCategory/Variante5f3c46a113001b86b5e6897455588e5b3fe27e0aa0eee2e6969c32364410349.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SiteCategory/Variante5f3c46a113001b86b5e6897455588e5b3fe27e0aa0eee2e6969c32364410349.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
