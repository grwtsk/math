# Verification target: Coverage Namespaced Saturate Edition2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c3fec638e7a98836422b4553d968b45db814b5b1",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Coverage/Variant6117ef9aac48ea59d2c0a7dc6c1d313a0924e1a202a93ee21ba453eaa7112cfc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CoverageNamespacedSaturateEdition2.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CoverageNamespacedSaturateEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c3fec638e7a98836422b4553d968b45db814b5b1`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Coverage/Variant6117ef9aac48ea59d2c0a7dc6c1d313a0924e1a202a93ee21ba453eaa7112cfc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Coverage/Variant6117ef9aac48ea59d2c0a7dc6c1d313a0924e1a202a93ee21ba453eaa7112cfc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Sites.Sheaf` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [FactorsThruAlong](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CoverageNamespacedSaturateEdition2.lean/declarations/factorsthrualong.md) | 73 | `declaration-track:8e2a01d41e7c269434ac71757e446134f6c49016c66ca54cfba38c11d4cda672` |
| 2 | `def` | [FactorsThru](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CoverageNamespacedSaturateEdition2.lean/declarations/factorsthru.md) | 85 | `declaration-track:d8a6d49b9ea6647ae792188f77afe6255403a4e4d425f8b3f39bcc008eb498c7` |
| 3 | `lemma` | [factorsThruAlong_id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CoverageNamespacedSaturateEdition2.lean/declarations/factorsthrualong-id.md) | 90 | `result-track:b9493af8fafe413cbbd5b25959937b8d1de15143baec46cbd9c91849a7873fc1` |
| 4 | `lemma` | [factorsThru_of_le](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CoverageNamespacedSaturateEdition2.lean/declarations/factorsthru-of-le.md) | 94 | `result-track:a50c160dfc50e712a22642a4f28ebbc1718fe0edcb2586a50a6c37c14be16c78` |
| 5 | `lemma` | [le_of_factorsThru_sieve](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CoverageNamespacedSaturateEdition2.lean/declarations/le-of-factorsthru-sieve.md) | 98 | `result-track:c6496ae2a316270d3b6a7745eabd43b8c51c331cdd4985b25f727680b3367edc` |
| 6 | `lemma` | [factorsThru_top](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CoverageNamespacedSaturateEdition2.lean/declarations/factorsthru-top.md) | 104 | `result-track:089356ff65ec7916b1601510a630785f93bd1ceb96d74408d0676d1c6a1df61d` |
| 7 | `lemma` | [isSheafFor_of_factorsThru](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CoverageNamespacedSaturateEdition2.lean/declarations/issheaffor-of-factorsthru.md) | 107 | `result-track:3a35a0bf0557e2694e8213b224383dbe8e4674ec082279f9fffd5a6a12e2bf94` |
| 8 | `structure` | [Coverage](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CoverageNamespacedSaturateEdition2.lean/declarations/coverage.md) | 153 | `declaration-track:6b6e1921f277c1077401679278d54c837e5119b20650cca6209b7214f7b73473` |
| 9 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CoverageNamespacedSaturateEdition2.lean/declarations/instance-source-edition-3.md) | 163 | `declaration-track:c552e4474b7a41675139595b5e5fd93e384d197fce9f923ebbac4b130d847cd0` |
| 10 | `def` | [ofGrothendieck](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CoverageNamespacedSaturateEdition2.lean/declarations/ofgrothendieck.md) | 173 | `declaration-track:8c9391dc4273911c638a5e4804ba8e24bfcda2d5b6d299fc9bfe3754868a3c06` |
| 11 | `lemma` | [ofGrothendieck_iff](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CoverageNamespacedSaturateEdition2.lean/declarations/ofgrothendieck-iff.md) | 182 | `result-track:aed182195cfc2899c68b729936fca31f75602cb0ed805f255fda5d5c2f705ffd` |
| 12 | `inductive` | [Saturate](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CoverageNamespacedSaturateEdition2.lean/declarations/saturate.md) | 189 | `declaration-track:2b9df57c4a835e3a5b27ccaed2b2d60ec3bc35fc99491f37dbe9c48f02b61700` |
| 13 | `lemma` | [eq_top_pullback](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CoverageNamespacedSaturateEdition2.lean/declarations/eq-top-pullback.md) | 197 | `result-track:5e056de8f7efe2dc2ba1313e22a1d7529b5ca29a96f49509cddb498664da6112` |
| 14 | `lemma` | [saturate_of_superset](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CoverageNamespacedSaturateEdition2.lean/declarations/saturate-of-superset.md) | 205 | `result-track:852cbbfaa9dfe2e99bf7e447c5a7240a90a0c73e1d3abf704ba2beb78bcac6e0` |
| 15 | `def` | [toGrothendieck](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CoverageNamespacedSaturateEdition2.lean/declarations/togrothendieck.md) | 226 | `declaration-track:b9474946bfdee5fde4725b184d80adfa4c49903c935536c6fcc1acfd5fbfaec6` |
| 16 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CoverageNamespacedSaturateEdition2.lean/declarations/instance.md) | 249 | `declaration-track:2fd72974d4179c1db3daaeadadf431f2137ee8b706eedd061e614be0a6d864ec` |
| 17 | `def` | [gi](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CoverageNamespacedSaturateEdition2.lean/declarations/gi.md) | 261 | `declaration-track:926f523d04c53bb6ddff2df29720adaf3b1f3a651208ecb9b8ca7746f862000a` |
| 18 | `theorem` | [toGrothendieck_eq_sInf](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CoverageNamespacedSaturateEdition2.lean/declarations/togrothendieck-eq-sinf.md) | 283 | `result-track:d1a3ddb1beecc33a657977b06d3d3698a867484bf8eeadc809dc4c363567f25c` |
| 19 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CoverageNamespacedSaturateEdition2.lean/declarations/instance-source-edition-2.md) | 296 | `declaration-track:7560f2445a3f28ae9e86b0105921468eda7b18c0b1f37766ecd2e592951a7561` |
| 20 | `lemma` | [sup_covering](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CoverageNamespacedSaturateEdition2.lean/declarations/sup-covering.md) | 311 | `result-track:7a2565cdad31471d02422b7e8169526cbbce5ac0d950e6beb0a2109587d8b69d` |
| 21 | `theorem` | [mem_toGrothendieck_sieves_of_superset](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CoverageNamespacedSaturateEdition2.lean/declarations/mem-togrothendieck-sieves-of-superset.md) | 319 | `result-track:173ef09622d42eb3c7b1aa10f987b1e0469c3bcb19d29d2f26cf13b28f391bd7` |
| 22 | `theorem` | [isSheaf_coverage](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CoverageNamespacedSaturateEdition2.lean/declarations/issheaf-coverage.md) | 334 | `result-track:e37b33daa3d5a1863def40f820688403f0c0f17ad0691e61d581b89ce27efa63` |
| 23 | `theorem` | [isSheaf_sup](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CoverageNamespacedSaturateEdition2.lean/declarations/issheaf-sup-source-edition-2.md) | 408 | `result-track:8253d1efe4fcd0feb219cab4c2a0303ec9a1a4b0783a2c45020af97c5b9d3b30` |
| 24 | `theorem` | [isSheaf_iff_isLimit_coverage](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CoverageNamespacedSaturateEdition2.lean/declarations/issheaf-iff-islimit-coverage.md) | 424 | `result-track:cbd69d213d29f81e625c75d15b270c5df766f12a598ba9846d4416b70b432011` |
| 25 | `theorem` | [isSheaf_sup](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CoverageNamespacedSaturateEdition2.lean/declarations/issheaf-sup.md) | 432 | `result-track:0bc2ce28e00db097140c78785930a870f5cba59de3e5530e2e66c8d90d4bf0ca` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=892a01c03af3995e6c98cd275b5e4f0bb1adbd21c074e5255a703935297cf403 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Coverage/Variant6117ef9aac48ea59d2c0a7dc6c1d313a0924e1a202a93ee21ba453eaa7112cfc.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Coverage/Variant6117ef9aac48ea59d2c0a7dc6c1d313a0924e1a202a93ee21ba453eaa7112cfc.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
