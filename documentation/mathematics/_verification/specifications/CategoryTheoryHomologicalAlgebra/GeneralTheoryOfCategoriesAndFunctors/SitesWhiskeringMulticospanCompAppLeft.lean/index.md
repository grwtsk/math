# Verification target: Sites Whiskering Multicospan Comp App Left

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "071e1b36be904bd8dddadc0b3ece0a267cf6126e",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Whiskering/Variantdaa1d3c733e1c64175ab9ecda47a39e87001e2467dae327510dc24ccad1d95f3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesWhiskeringMulticospanCompAppLeft.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesWhiskeringMulticospanCompAppLeft.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `071e1b36be904bd8dddadc0b3ece0a267cf6126e`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Whiskering/Variantdaa1d3c733e1c64175ab9ecda47a39e87001e2467dae327510dc24ccad1d95f3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Whiskering/Variantdaa1d3c733e1c64175ab9ecda47a39e87001e2467dae327510dc24ccad1d95f3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Sites.Sheaf` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [multicospanComp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesWhiskeringMulticospanCompAppLeft.lean/declarations/multicospancomp.md) | 51 | `declaration-track:2acf822ba4491f3fc155a931c6bd28b56b4fc45cbef861684b5158903b859789` |
| 2 | `theorem` | [multicospanComp_app_left](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesWhiskeringMulticospanCompAppLeft.lean/declarations/multicospancomp-app-left.md) | 63 | `result-track:4d11e51844b049ea87b09cebdae493ff19ff87cb17c0bf8a0d5a8043c22ecba1` |
| 3 | `theorem` | [multicospanComp_app_right](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesWhiskeringMulticospanCompAppLeft.lean/declarations/multicospancomp-app-right.md) | 69 | `result-track:9fef0f0182b038cb6d101157957a4e4861bd288b959d2e741da5cd0494e162fb` |
| 4 | `theorem` | [multicospanComp_hom_app_left](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesWhiskeringMulticospanCompAppLeft.lean/declarations/multicospancomp-hom-app-left.md) | 75 | `result-track:f2cf9927803f72726881514e6977829131bfeae12e7bce7691e7cb69175b677d` |
| 5 | `theorem` | [multicospanComp_hom_app_right](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesWhiskeringMulticospanCompAppLeft.lean/declarations/multicospancomp-hom-app-right.md) | 81 | `result-track:8acfeb0edd86f3198c4c8d8f246e02a3817dbc34a3cccefd91ab603fc731f548` |
| 6 | `theorem` | [multicospanComp_hom_inv_left](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesWhiskeringMulticospanCompAppLeft.lean/declarations/multicospancomp-hom-inv-left.md) | 87 | `result-track:dd1118c2c286394722155bd1c9c53b7a9da9ede2df8d14c254106088551fa959` |
| 7 | `theorem` | [multicospanComp_hom_inv_right](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesWhiskeringMulticospanCompAppLeft.lean/declarations/multicospancomp-hom-inv-right.md) | 93 | `result-track:c20dec67c03fda2217bd1c23ab8ec1bf8fe3821e5a1c1e24211d3ee06a86903f` |
| 8 | `def` | [mapMultifork](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesWhiskeringMulticospanCompAppLeft.lean/declarations/mapmultifork.md) | 101 | `declaration-track:1e9b280c87f47d312158613d49ff0b0e5f1d13e19963f40be2e9c16629a05708` |
| 9 | `theorem` | [Presheaf.IsSheaf.comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesWhiskeringMulticospanCompAppLeft.lean/declarations/presheaf-issheaf-comp.md) | 121 | `result-track:bfd07ec6969621863af582e9be1ae7f9828d78778dc0e9a0f816da1a82b01beb` |
| 10 | `def` | [sheafCompose](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesWhiskeringMulticospanCompAppLeft.lean/declarations/sheafcompose.md) | 136 | `declaration-track:4cbd94c44ac4a2f68c13e30421ff036eae21f461e4092d6e04472eadaae61dc9` |
| 11 | `def` | [sheafCompose_map](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesWhiskeringMulticospanCompAppLeft.lean/declarations/sheafcompose-map.md) | 150 | `declaration-track:ef473898deeebbdbf1ede0dd7d13de3ec4fd82a58e130dc52b4571973bfe6d77` |
| 12 | `lemma` | [sheafCompose_id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesWhiskeringMulticospanCompAppLeft.lean/declarations/sheafcompose-id.md) | 154 | `result-track:1af02368dc501edb04bf2464a584a45353d9768ca3ecb91e5efdbea0f8c4110f` |
| 13 | `lemma` | [sheafCompose_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesWhiskeringMulticospanCompAppLeft.lean/declarations/sheafcompose-comp.md) | 157 | `result-track:36f3d2174a9c1baf98f8d265f20233547e5fbda57aa88bcbe65f5b68f4c09e05` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=543be1a849d5d5f943ea87bb346c82d341bd8ca67cbb8d8cbd86c2a8a8757456 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Whiskering/Variantdaa1d3c733e1c64175ab9ecda47a39e87001e2467dae327510dc24ccad1d95f3.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Whiskering/Variantdaa1d3c733e1c64175ab9ecda47a39e87001e2467dae327510dc24ccad1d95f3.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
