# Verification target: Normalized Gamma Budget

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b758682ba01e501403f8c06b13ae215b177a3d81",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/NormalizedGammaBudget/Variant800559ca27e32effa937f47496d2501f49b5d0770d0ab85a9ed864b3d174d80f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/NormalizedGammaBudget.lean/index.md) · [Full source](../../../../MeasureAndIntegration/NormalizedGammaBudget.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b758682ba01e501403f8c06b13ae215b177a3d81`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/NormalizedGammaBudget/Variant800559ca27e32effa937f47496d2501f49b5d0770d0ab85a9ed864b3d174d80f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/NormalizedGammaBudget/Variant800559ca27e32effa937f47496d2501f49b5d0770d0ab85a9ed864b3d174d80f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `QuarterDigammaEndpoint` — import line 1; external provider; requires a separately pinned dependency.
- `ActualGammaBudget` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [paperEndpoint](../../../../MeasureAndIntegration/NormalizedGammaBudget.lean/declarations/paperendpoint.md) | 15 | `declaration-track:3e335f220cac169eb5dd28dae262b1fb5bc9d8dacf5553b32cea61353d0ce1ee` |
| 2 | `theorem` | [actual_endpoint_eq_paper](../../../../MeasureAndIntegration/NormalizedGammaBudget.lean/declarations/actual-endpoint-eq-paper.md) | 18 | `result-track:a7e9f925eecd844a741aea5f5079971989f2d40b436c5fecad1e7ba940f52e66` |
| 3 | `theorem` | [sourceGammaValue_identity](../../../../MeasureAndIntegration/NormalizedGammaBudget.lean/declarations/sourcegammavalue-identity.md) | 23 | `result-track:b2733da11c31a8382f1f4594cf5feddcedf9ed52883e1c68e1e840f6fccb0e21` |
| 4 | `theorem` | [sourceGammaValue_budget](../../../../MeasureAndIntegration/NormalizedGammaBudget.lean/declarations/sourcegammavalue-budget.md) | 31 | `result-track:71a0b964bb2af076665b17bdc0b8f8a00b3b2fb9ce8df5481584d1eaf0d2d0de` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8b1ddcc043dd38505c08a3f58f254dba8dd3d3f2b38fc2b4ac782aaa472f9792 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/NormalizedGammaBudget/Variant800559ca27e32effa937f47496d2501f49b5d0770d0ab85a9ed864b3d174d80f.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/NormalizedGammaBudget/Variant800559ca27e32effa937f47496d2501f49b5d0770d0ab85a9ed864b3d174d80f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
