# Verification target: Bridge Resolution Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ff67988dac63708b1e5db00856f2e438a43f310c",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/BridgeResolution/Variant3753c129d12700c79fc44ee03bfb3e2dc11743bdc9cfed46c5f3a1144dd70fde.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/BridgeResolutionNamespaced.lean/index.md) · [Full source](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/BridgeResolutionNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ff67988dac63708b1e5db00856f2e438a43f310c`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/BridgeResolution/Variant3753c129d12700c79fc44ee03bfb3e2dc11743bdc9cfed46c5f3a1144dd70fde.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/BridgeResolution/Variant3753c129d12700c79fc44ee03bfb3e2dc11743bdc9cfed46c5f3a1144dd70fde.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `BridgeLipschitz` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [bridgeResolutionCount](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/BridgeResolutionNamespaced.lean/declarations/bridgeresolutioncount.md) | 20 | `declaration-track:64d56f4c5cbe09636a2777d7d53ea6ce7f52c6952dcc17997e991f8e414e62b4` |
| 2 | `theorem` | [bridgeResolutionCount_pos](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/BridgeResolutionNamespaced.lean/declarations/bridgeresolutioncount-pos.md) | 22 | `result-track:b3864631484661bee3840903b4021116a6051c77104e9648bae4673638c3ffa4` |
| 3 | `theorem` | [bridgeResolutionCount_mono](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/BridgeResolutionNamespaced.lean/declarations/bridgeresolutioncount-mono.md) | 26 | `result-track:ff3a0d13b01ac1e87f7cf88561c28e4ed38d28ba7942b87f97f084d7528e6f38` |
| 4 | `theorem` | [actual_mesh_error](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/BridgeResolutionNamespaced.lean/declarations/actual-mesh-error.md) | 34 | `result-track:dfcdcf2d7277d44efb82147dd4837c52a6712dd48c2481335e7b31217c59b1f5` |
| 5 | `theorem` | [selected_mesh_budget](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/BridgeResolutionNamespaced.lean/declarations/selected-mesh-budget.md) | 45 | `result-track:cd528f761b7d349187f5d5f3863d3e67251a9ab920275d231f5b952c1a83eb1d` |
| 6 | `theorem` | [actual_joint_mesh_accuracy](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/BridgeResolutionNamespaced.lean/declarations/actual-joint-mesh-accuracy.md) | 60 | `result-track:0bd3edf8f447040e7a1e0f26986e91dd9cce3f30d9ea232f4e9184174e881e05` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2e2a4aec84ce12f361c42e20fa741cbfceef1d3893f347c70d8bb406f7e1e038 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/BridgeResolution/Variant3753c129d12700c79fc44ee03bfb3e2dc11743bdc9cfed46c5f3a1144dd70fde.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/BridgeResolution/Variant3753c129d12700c79fc44ee03bfb3e2dc11743bdc9cfed46c5f3a1144dd70fde.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
