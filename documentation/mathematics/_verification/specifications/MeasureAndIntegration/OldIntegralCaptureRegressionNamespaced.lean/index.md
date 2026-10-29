# Verification target: Old Integral Capture Regression Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f04621ea64b317d466dbc56e2ffc5331e679a391",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/A8c415447d70c0c0412fcac704014a8a1b570e1f68867ec67d110b02007831c5OldIntegralCaptu/Variant27a0fd69e7800d75cbebc4572a307d8c74ebe724cfa054c97fd0988592d15c16.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/OldIntegralCaptureRegressionNamespaced.lean/index.md) · [Full source](../../../../MeasureAndIntegration/OldIntegralCaptureRegressionNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f04621ea64b317d466dbc56e2ffc5331e679a391`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/A8c415447d70c0c0412fcac704014a8a1b570e1f68867ec67d110b02007831c5OldIntegralCaptu/Variant27a0fd69e7800d75cbebc4572a307d8c74ebe724cfa054c97fd0988592d15c16.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/A8c415447d70c0c0412fcac704014a8a1b570e1f68867ec67d110b02007831c5OldIntegralCaptu/Variant27a0fd69e7800d75cbebc4572a307d8c74ebe724cfa054c97fd0988592d15c16.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.ThetaXiPhiTransform` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [oldUnparenthesized0](../../../../MeasureAndIntegration/OldIntegralCaptureRegressionNamespaced.lean/declarations/oldunparenthesized0.md) | 18 | `declaration-track:07ebc518b5d43e29315c985b7507a93b6716b6cd7bf016b7ed79516ecbe9f5d7` |
| 2 | `theorem` | [oldUnparenthesized0_false_at_zero](../../../../MeasureAndIntegration/OldIntegralCaptureRegressionNamespaced.lean/declarations/oldunparenthesized0-false-at-zero.md) | 28 | `result-track:ad501751a5ea44d1eb8d305049e4ac2e31d3a1fe2ccd8b6a362b7206d3222a29` |
| 3 | `def` | [oldUnparenthesized1](../../../../MeasureAndIntegration/OldIntegralCaptureRegressionNamespaced.lean/declarations/oldunparenthesized1.md) | 32 | `declaration-track:10af23f29ead18d967278f2c1404d38fd100d0bb3481372c26d7f426cd796a4a` |
| 4 | `theorem` | [oldUnparenthesized1_false_at_zero](../../../../MeasureAndIntegration/OldIntegralCaptureRegressionNamespaced.lean/declarations/oldunparenthesized1-false-at-zero.md) | 43 | `result-track:b72ae4b4894f35ea10aadda5a47eb30178ecd9101168a11c0e99badb106ee512` |
| 5 | `theorem` | [corrected_identity_valid_at_zero](../../../../MeasureAndIntegration/OldIntegralCaptureRegressionNamespaced.lean/declarations/corrected-identity-valid-at-zero.md) | 47 | `result-track:dab746c2ad2ab6cecb3fced5f8f75a9d23aab6e4b184dd03ad4a1d878360cc87` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ae67a97ee1f3de49c49d69bd24686efd39d3f317b0577479691285201e2fcb8b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/A8c415447d70c0c0412fcac704014a8a1b570e1f68867ec67d110b02007831c5OldIntegralCaptu/Variant27a0fd69e7800d75cbebc4572a307d8c74ebe724cfa054c97fd0988592d15c16.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/A8c415447d70c0c0412fcac704014a8a1b570e1f68867ec67d110b02007831c5OldIntegralCaptu/Variant27a0fd69e7800d75cbebc4572a307d8c74ebe724cfa054c97fd0988592d15c16.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
