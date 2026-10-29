# Verification target: NNReal Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "da6995dbc4ac53f9b4af503ec708df7b5f45a2b5",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/NNReal/Variant74fd5f9477b64611a6940b9cbf98934bc2471a48a1a879ff6c1c41795c97fef9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/NNRealNamespacedPublic.lean/index.md) · [Full source](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/NNRealNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `da6995dbc4ac53f9b4af503ec708df7b5f45a2b5`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/NNReal/Variant74fd5f9477b64611a6940b9cbf98934bc2471a48a1a879ff6c1c41795c97fef9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/NNReal/Variant74fd5f9477b64611a6940b9cbf98934bc2471a48a1a879ff6c1c41795c97fef9.lean.json)

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
| 1 | `theorem` | [integral_rieszMeasure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/NNRealNamespacedPublic.lean/declarations/integral-rieszmeasure.md) | 55 | `result-track:2b99c9cacaa49059ad419796c3513242407100b455c25977f5e2155d572d1c56` |
| 2 | `theorem` | [lintegral_rieszMeasure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/NNRealNamespacedPublic.lean/declarations/lintegral-rieszmeasure.md) | 64 | `result-track:85eb329aa69ac92c667059bdfffbf1bb45cffca48f7a55ac27656ff1cd5d61e4` |
| 3 | `instance` | [rieszMeasure_regular](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/NNRealNamespacedPublic.lean/declarations/rieszmeasure-regular.md) | 74 | `declaration-track:80fa876a5429483bf533cb4dbbde472a0ce51757c2bcb91be94392339a2fa86d` |
| 4 | `theorem` | [NNReal Namespaced Public](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/NNRealNamespacedPublic.lean/declarations/root-grwtsk-analysis-realanalysis-integration-integralrieszmeasure-varia.md) | 84 | `result-track:bb710da7d9bdc8c013db144309bdd8b60d7100c5667e713b51ecf34146c08b9c` |
| 5 | `theorem` | [integralLinearMap_inj](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/NNRealNamespacedPublic.lean/declarations/integrallinearmap-inj.md) | 96 | `result-track:7ff3929f60c3843dba57c2b18d533d0930ce008c163f7a9b5d7f11b9135a3d34` |
| 6 | `theorem` | [rieszMeasure_integralLinearMap](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/NNRealNamespacedPublic.lean/declarations/rieszmeasure-integrallinearmap.md) | 104 | `result-track:38aa88795022608bcaab99b158aa18e97b5f5cc520e2b7b3dba1fefa6ee6a798` |
| 7 | `theorem` | [integralLinearMap_rieszMeasure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/NNRealNamespacedPublic.lean/declarations/integrallinearmap-rieszmeasure.md) | 109 | `result-track:f84393c280b9b2e7ecabcc544e73be0cb3e152c62c5efaee7617706881d956a3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=cebfe177a625cfcf18373d866f17be7274856e645df232947a0aafb9f054124a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/NNReal/Variant74fd5f9477b64611a6940b9cbf98934bc2471a48a1a879ff6c1c41795c97fef9.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/NNReal/Variant74fd5f9477b64611a6940b9cbf98934bc2471a48a1a879ff6c1c41795c97fef9.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
