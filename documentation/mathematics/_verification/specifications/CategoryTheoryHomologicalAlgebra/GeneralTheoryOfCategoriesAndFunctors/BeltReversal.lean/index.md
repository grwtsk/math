# Verification target: Belt Reversal

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8b56772e95ecf0fb09f1c21d069e54667534ee72",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/BeltReversal/Variant4337840061bf23b73f524fcbf69387766a01f5a366905ca63b978b0f1c8bd1aa.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BeltReversal.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BeltReversal.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8b56772e95ecf0fb09f1c21d069e54667534ee72`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/BeltReversal/Variant4337840061bf23b73f524fcbf69387766a01f5a366905ca63b978b0f1c8bd1aa.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/BeltReversal/Variant4337840061bf23b73f524fcbf69387766a01f5a366905ca63b978b0f1c8bd1aa.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Surface.SmoothFramedSurgery.CollaredGluing` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ProductFramedBeltReversal](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BeltReversal.lean/declarations/productframedbeltreversal.md) | 22 | `declaration-track:fb98d868678fc3ae1b92e1c8838c01042af3edb87a60718a4fad13a7526b9834` |
| 2 | `def` | [reversal](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BeltReversal.lean/declarations/reversal.md) | 118 | `declaration-track:24e816fdabc07c615c646392f734909f1183ff95ca120abb632894ba55904d6e` |
| 3 | `theorem` | [isProductFramed](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BeltReversal.lean/declarations/isproductframed.md) | 132 | `result-track:214ba99ec5701ae9d56cbb9435311bac6bba207c9b1bcc62bec058efbf5addea` |
| 4 | `theorem` | [chart_induces_belt_framing](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BeltReversal.lean/declarations/chart-induces-belt-framing.md) | 140 | `result-track:f42934a10163350e57f0f2df12a2c74d0ecd6ba92b4057f3f8fc24e7845e9815` |
| 5 | `theorem` | [productChart_is_core_chart](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BeltReversal.lean/declarations/productchart-is-core-chart.md) | 149 | `result-track:7f9da6999691774bf5c66a634c2360bcd4e216f81a358d874a7a7c69c540163e` |
| 6 | `theorem` | [annulus_absorbed_by_collar](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BeltReversal.lean/declarations/annulus-absorbed-by-collar.md) | 156 | `result-track:ed94b167c6d4bdd709903745a6cfd1d91e82b766144866559767894a457c82a8` |
| 7 | `theorem` | [factor_switch_compatible](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BeltReversal.lean/declarations/factor-switch-compatible.md) | 164 | `result-track:8984b4065fadc215dc6a382649e1669cb3271e3a71dbdd5e8c0e72aa0bd38ed5` |
| 8 | `theorem` | [reversal_has_gluing_origin](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BeltReversal.lean/declarations/reversal-has-gluing-origin.md) | 177 | `result-track:b4ba6b0f5d11cb595e495106402b9915a95def8c2312b83865b75cc7b5ec65e5` |
| 9 | `theorem` | [reversal_extension_uses_selected_exterior](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BeltReversal.lean/declarations/reversal-extension-uses-selected-exterior.md) | 192 | `result-track:6bd87f973dacf321b89c85064543d20ea04e21703b70ff522f3f42ccef4f68f6` |
| 10 | `theorem` | [reversal_factor_switch_preserves_seam](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BeltReversal.lean/declarations/reversal-factor-switch-preserves-seam.md) | 207 | `result-track:c4fd83d22759cb85046e228e863d966590c0296ccf1f5fc4ea2e306db55e6175` |
| 11 | `theorem` | [reversal_annulus_collar_is_factor_switch](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BeltReversal.lean/declarations/reversal-annulus-collar-is-factor-switch.md) | 224 | `result-track:25ccd7bb32c0e41a77facd677c8059edc5573e26f4e6cc7155098c09591e15ec` |
| 12 | `theorem` | [reversal_geometric_data](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BeltReversal.lean/declarations/reversal-geometric-data.md) | 236 | `result-track:6ebe1d5f59116ff2bf6e06a28785ee0220e30ee76020827bf298170fd59ee7d1` |
| 13 | `def` | [toDualSurgeryCertificate](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BeltReversal.lean/declarations/todualsurgerycertificate.md) | 261 | `declaration-track:64ee5ef22423958df8fe17c73c3eb21a87cdae99cea1614457e8a3374544029c` |
| 14 | `theorem` | [surgery_on_belt_restores](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BeltReversal.lean/declarations/surgery-on-belt-restores.md) | 271 | `result-track:46cddb85b8a4ac5749f4b941f95de23dbd96faefc8801c9782a1f0a0706a9b2c` |
| 15 | `theorem` | [reversal_trans_inverse](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BeltReversal.lean/declarations/reversal-trans-inverse.md) | 281 | `result-track:c8d5b32571c0c76fe1474cbba9261a51ec252711ced52fda729c90b81e5ef56d` |
| 16 | `theorem` | [invariant_restored](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BeltReversal.lean/declarations/invariant-restored.md) | 290 | `result-track:84af0991eb64b9272d62af5e51538bf379c323a2551c44050303493a80285025` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e1989c972ea3a1683bc5cd4c3628a40c41dbe5c89a6454191edf382da9312a15 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/BeltReversal/Variant4337840061bf23b73f524fcbf69387766a01f5a366905ca63b978b0f1c8bd1aa.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/BeltReversal/Variant4337840061bf23b73f524fcbf69387766a01f5a366905ca63b978b0f1c8bd1aa.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
