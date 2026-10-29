# Verification target: Bochner Fund Thm Calculus Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5644e34c51c924ec081f118530ff66d5b89e59a9",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/FundThmCalculus/Variant194e2da335324feb9e939cedba6da568726f4d3ffaaca84cffebec3768164afd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BochnerFundThmCalculusNamespaced.lean/index.md) · [Full source](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BochnerFundThmCalculusNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5644e34c51c924ec081f118530ff66d5b89e59a9`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/FundThmCalculus/Variant194e2da335324feb9e939cedba6da568726f4d3ffaaca84cffebec3768164afd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/FundThmCalculus/Variant194e2da335324feb9e939cedba6da568726f4d3ffaaca84cffebec3768164afd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Integral.Bochner.Set` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Filter.Tendsto.integral_sub_linear_isLittleO_ae](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BochnerFundThmCalculusNamespaced.lean/declarations/filter-tendsto-integral-sub-linear-islittleo-ae.md) | 45 | `result-track:6f31d67044f458a8e0b5300f79cfdef1970607e77a4f58a029274f667191a3ca` |
| 2 | `theorem` | [ContinuousWithinAt.integral_sub_linear_isLittleO_ae](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BochnerFundThmCalculusNamespaced.lean/declarations/continuouswithinat-integral-sub-linear-islittleo-ae.md) | 77 | `result-track:440254a87aa1ce33d2d20a759eb170f09ce4cd0c759d66f1bba9131c7ee15b0e` |
| 3 | `theorem` | [ContinuousAt.integral_sub_linear_isLittleO_ae](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BochnerFundThmCalculusNamespaced.lean/declarations/continuousat-integral-sub-linear-islittleo-ae.md) | 97 | `result-track:02bdd5cd04eb70145b44b21ec359b034499899c4d17a0422d734fefe33189fab` |
| 4 | `theorem` | [ContinuousOn.integral_sub_linear_isLittleO_ae](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BochnerFundThmCalculusNamespaced.lean/declarations/continuouson-integral-sub-linear-islittleo-ae.md) | 113 | `result-track:888b49dde7898da48787ab490356f7d87713e1bba8688b2ae0a093128090fc6f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a61f0060c4410eed0f299e850d52f213a7270fef19bc3ceeaa69a9bb538712ad -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/FundThmCalculus/Variant194e2da335324feb9e939cedba6da568726f4d3ffaaca84cffebec3768164afd.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/FundThmCalculus/Variant194e2da335324feb9e939cedba6da568726f4d3ffaaca84cffebec3768164afd.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
