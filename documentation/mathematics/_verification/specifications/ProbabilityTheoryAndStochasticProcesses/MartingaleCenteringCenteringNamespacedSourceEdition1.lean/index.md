# Verification target: Martingale Centering Centering Namespaced Source Edition1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e4c4dfa22cb6a8dd58acb73990fde7f5ddf999ef",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/ProbabilityAndMathematicalStatistics/Centering/Variant088f251f9049e647536a9b3d57855b490127cebf70f6cf2864489f04231a301f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../ProbabilityTheoryAndStochasticProcesses/MartingaleCenteringCenteringNamespacedSourceEdition1.lean/index.md) · [Full source](../../../../ProbabilityTheoryAndStochasticProcesses/MartingaleCenteringCenteringNamespacedSourceEdition1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e4c4dfa22cb6a8dd58acb73990fde7f5ddf999ef`.

Source path: `GRWTSK/ProbabilityAndMathematicalStatistics/Centering/Variant088f251f9049e647536a9b3d57855b490127cebf70f6cf2864489f04231a301f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/ProbabilityAndMathematicalStatistics/Centering/Variant088f251f9049e647536a9b3d57855b490127cebf70f6cf2864489f04231a301f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Probability.Martingale.Basic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [predictablePart](../../../../ProbabilityTheoryAndStochasticProcesses/MartingaleCenteringCenteringNamespacedSourceEdition1.lean/declarations/predictablepart.md) | 51 | `declaration-track:370bc48d6a74b290177ab9d53478188b4b38e7adacdd22674ac16111d3b97480` |
| 2 | `theorem` | [predictablePart_zero](../../../../ProbabilityTheoryAndStochasticProcesses/MartingaleCenteringCenteringNamespacedSourceEdition1.lean/declarations/predictablepart-zero.md) | 55 | `result-track:61b73704e1d83dd9c484dc290cb47235f22681e755d23cd60c01504b75cdc4a5` |
| 3 | `theorem` | [adapted_predictablePart](../../../../ProbabilityTheoryAndStochasticProcesses/MartingaleCenteringCenteringNamespacedSourceEdition1.lean/declarations/adapted-predictablepart-source-edition-2.md) | 58 | `result-track:7454c8d2f46ce669826c510d0556985a1be6817ece13db34b2dbb9eceeddb281` |
| 4 | `theorem` | [adapted_predictablePart'](../../../../ProbabilityTheoryAndStochasticProcesses/MartingaleCenteringCenteringNamespacedSourceEdition1.lean/declarations/adapted-predictablepart.md) | 62 | `result-track:6cd8a5c31ceec31aec0ceb9ba09bf9dce88bbd3f33ec7fe8bdf1d16fae8ce39e` |
| 5 | `def` | [martingalePart](../../../../ProbabilityTheoryAndStochasticProcesses/MartingaleCenteringCenteringNamespacedSourceEdition1.lean/declarations/martingalepart.md) | 68 | `declaration-track:0d0cd679f650ba3bc4d59903b8af1d1bcb792c028c7e1755e1c00cdb19723573` |
| 6 | `theorem` | [martingalePart_add_predictablePart](../../../../ProbabilityTheoryAndStochasticProcesses/MartingaleCenteringCenteringNamespacedSourceEdition1.lean/declarations/martingalepart-add-predictablepart.md) | 71 | `result-track:1c7497d496fda8e9991fe1d3758014b9aa3b848dd2c5f46ebcf391001303eaba` |
| 7 | `theorem` | [martingalePart_eq_sum](../../../../ProbabilityTheoryAndStochasticProcesses/MartingaleCenteringCenteringNamespacedSourceEdition1.lean/declarations/martingalepart-eq-sum.md) | 75 | `result-track:1b4bcf6a3993a562253a3b59b4887ec44d52aa1d1666b45a333f036ce3a8366d` |
| 8 | `theorem` | [adapted_martingalePart](../../../../ProbabilityTheoryAndStochasticProcesses/MartingaleCenteringCenteringNamespacedSourceEdition1.lean/declarations/adapted-martingalepart.md) | 81 | `result-track:4fac3b5a52d4b155ed102eb4a92484a1e028725fa51b5da4f48ba7f039b255d1` |
| 9 | `theorem` | [integrable_martingalePart](../../../../ProbabilityTheoryAndStochasticProcesses/MartingaleCenteringCenteringNamespacedSourceEdition1.lean/declarations/integrable-martingalepart.md) | 84 | `result-track:13eda1d81a30c313c3f52ad911293d8da693d12b05ecfb8876633fbdbb0dcec7` |
| 10 | `theorem` | [martingale_martingalePart](../../../../ProbabilityTheoryAndStochasticProcesses/MartingaleCenteringCenteringNamespacedSourceEdition1.lean/declarations/martingale-martingalepart.md) | 89 | `result-track:6b59cc66d317c57b64b955613d4a9da2ab32b90cb2a5328b3b1f218c87822237` |
| 11 | `theorem` | [martingalePart_add_ae_eq](../../../../ProbabilityTheoryAndStochasticProcesses/MartingaleCenteringCenteringNamespacedSourceEdition1.lean/declarations/martingalepart-add-ae-eq.md) | 128 | `result-track:323c3c85f14aec350ed46a44fe7800c04b417da474a40376953451fbee25266e` |
| 12 | `theorem` | [predictablePart_add_ae_eq](../../../../ProbabilityTheoryAndStochasticProcesses/MartingaleCenteringCenteringNamespacedSourceEdition1.lean/declarations/predictablepart-add-ae-eq.md) | 148 | `result-track:ec488f8e15c46796da1368ed32779115887194b82c175edd193d49a1cc81fca6` |
| 13 | `theorem` | [predictablePart_bdd_difference](../../../../ProbabilityTheoryAndStochasticProcesses/MartingaleCenteringCenteringNamespacedSourceEdition1.lean/declarations/predictablepart-bdd-difference.md) | 158 | `result-track:696d0c0d438a0cf864d983defa3cde14112b38572f95abd3ff7a9d35bb3df265` |
| 14 | `theorem` | [martingalePart_bdd_difference](../../../../ProbabilityTheoryAndStochasticProcesses/MartingaleCenteringCenteringNamespacedSourceEdition1.lean/declarations/martingalepart-bdd-difference.md) | 164 | `result-track:5419e90c2cca445566c918ef7333642226472fa24726847646ab9eb1f48fc816` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=df2141c8f850cdc6e1dfc75c5987ab2ffad4b7cb6d6063cd54fda64ee25eb2f3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/ProbabilityAndMathematicalStatistics/Centering/Variant088f251f9049e647536a9b3d57855b490127cebf70f6cf2864489f04231a301f.lean","GRWTSK/_verification/specifications/ProbabilityAndMathematicalStatistics/Centering/Variant088f251f9049e647536a9b3d57855b490127cebf70f6cf2864489f04231a301f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
