# Verification target: Five Cesaro Kernel Budget

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5b54020659211e261c163ccb431365dfd53e9341",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FiveCesaroKernelBudget/Variant5da4e40048d1f1143ae02987149a57cf81ff826f7e3450701e237be4f9997f03.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/FiveCesaroKernelBudget.lean/index.md) · [Full source](../../../../MeasureAndIntegration/FiveCesaroKernelBudget.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5b54020659211e261c163ccb431365dfd53e9341`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FiveCesaroKernelBudget/Variant5da4e40048d1f1143ae02987149a57cf81ff826f7e3450701e237be4f9997f03.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FiveCesaroKernelBudget/Variant5da4e40048d1f1143ae02987149a57cf81ff826f7e3450701e237be4f9997f03.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SourceCesaroPrimitiveConsumer` — import line 1; external provider; requires a separately pinned dependency.
- `SourceLeadingFullKappaReduction` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [actualDerivativeEnergy_le_five](../../../../MeasureAndIntegration/FiveCesaroKernelBudget.lean/declarations/actualderivativeenergy-le-five.md) | 31 | `result-track:277b7b462422ecb1777656e7a83744fa337998a3ebbae902cfc1575751e5eba3` |
| 2 | `theorem` | [actualCorrelation_second_abs_le_five](../../../../MeasureAndIntegration/FiveCesaroKernelBudget.lean/declarations/actualcorrelation-second-abs-le-five.md) | 49 | `result-track:e5dea9bd38fa6eecf137e95bb979cd760709c366c0dd8fac9bd15257f34e44b1` |
| 3 | `theorem` | [cesaroWeight_second_abs_le_upper](../../../../MeasureAndIntegration/FiveCesaroKernelBudget.lean/declarations/cesaroweight-second-abs-le-upper.md) | 55 | `result-track:1d3adb013ac7b3475da2fa52aa429c93ff399904d6af2c677def4efd096a0946` |
| 4 | `theorem` | [cesaroWeight_second_abs_le_origin](../../../../MeasureAndIntegration/FiveCesaroKernelBudget.lean/declarations/cesaroweight-second-abs-le-origin.md) | 72 | `result-track:303c76562ef8200b05bab2b04d9f197b3ad526a627e97ead4c617b3b4fa6aad2` |
| 5 | `theorem` | [cesaroWeight_second_abs_le_both_distances](../../../../MeasureAndIntegration/FiveCesaroKernelBudget.lean/declarations/cesaroweight-second-abs-le-both-distances.md) | 91 | `result-track:c749ef1cefab7cf313f416e898657c2b2f6e900c17fb13df472cc8a519ca455d` |
| 6 | `theorem` | [integral_quadratic](../../../../MeasureAndIntegration/FiveCesaroKernelBudget.lean/declarations/integral-quadratic.md) | 101 | `result-track:0cc7fd68a958ac993b1e35efb6adf8df11b94d6c7993943c9486d72b5e49c7bf` |
| 7 | `theorem` | [cesaroWeight_weighted_budget_five](../../../../MeasureAndIntegration/FiveCesaroKernelBudget.lean/declarations/cesaroweight-weighted-budget-five.md) | 114 | `result-track:7aa44c843c0808cba8ea3092f8ce00bc08b9e2eb9afce1781cbfefffd69770f7` |
| 8 | `theorem` | [cesaroWeight_weighted_budget_five_uniform](../../../../MeasureAndIntegration/FiveCesaroKernelBudget.lean/declarations/cesaroweight-weighted-budget-five-uniform.md) | 156 | `result-track:cce85fd182c74ff41ad99eeea99dd427fd05dcc8629455c1894ce47ab6cbde1a` |
| 9 | `theorem` | [cesaroWeight_weighted_budget_both_distances](../../../../MeasureAndIntegration/FiveCesaroKernelBudget.lean/declarations/cesaroweight-weighted-budget-both-distances.md) | 165 | `result-track:26862b828f2e3669c42ac3f6aec2d72146b2701b54f768e5d8546014c6005f1f` |
| 10 | `theorem` | [cesaroWeight_weighted_budget_both_distances_uniform](../../../../MeasureAndIntegration/FiveCesaroKernelBudget.lean/declarations/cesaroweight-weighted-budget-both-distances-uniform.md) | 226 | `result-track:e01f9a69cba4417dcb372b26dedbb4cc15a29d50ebbdbbab9b646cf00861d12f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3b74242c7bafac6b72567fbb8b8f9ac56e01bb599954ac496612177ff42dee95 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FiveCesaroKernelBudget/Variant5da4e40048d1f1143ae02987149a57cf81ff826f7e3450701e237be4f9997f03.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FiveCesaroKernelBudget/Variant5da4e40048d1f1143ae02987149a57cf81ff826f7e3450701e237be4f9997f03.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
