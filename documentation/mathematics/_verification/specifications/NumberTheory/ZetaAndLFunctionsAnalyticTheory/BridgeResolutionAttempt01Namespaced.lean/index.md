# Verification target: Bridge Resolution Attempt01 Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ed46e57049b10f93b57283bffd1b00cafe420969",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/BridgeResolutionAttempt01/Variantc2a615bc44c279a5d93c2fbeae709c92cd9b6578f0016484da0de3715152c14b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/BridgeResolutionAttempt01Namespaced.lean/index.md) · [Full source](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/BridgeResolutionAttempt01Namespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ed46e57049b10f93b57283bffd1b00cafe420969`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/BridgeResolutionAttempt01/Variantc2a615bc44c279a5d93c2fbeae709c92cd9b6578f0016484da0de3715152c14b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/BridgeResolutionAttempt01/Variantc2a615bc44c279a5d93c2fbeae709c92cd9b6578f0016484da0de3715152c14b.lean.json)

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
| 1 | `def` | [bridgeResolutionCount](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/BridgeResolutionAttempt01Namespaced.lean/declarations/bridgeresolutioncount.md) | 20 | `declaration-track:e650dd68b043f0a397954842f50ef0012b8096724e023e8edeee96fe11d4bf6b` |
| 2 | `theorem` | [bridgeResolutionCount_pos](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/BridgeResolutionAttempt01Namespaced.lean/declarations/bridgeresolutioncount-pos.md) | 22 | `result-track:804fc6d3d60b5ce154ceb6d8d55a8d5d09967503a4182c23bbd2b08148b08fad` |
| 3 | `theorem` | [bridgeResolutionCount_mono](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/BridgeResolutionAttempt01Namespaced.lean/declarations/bridgeresolutioncount-mono.md) | 26 | `result-track:2ff9376d8f8352e17e7113560f652295432a5c62979d1a907defa436b7c8996b` |
| 4 | `theorem` | [actual_mesh_error](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/BridgeResolutionAttempt01Namespaced.lean/declarations/actual-mesh-error.md) | 34 | `result-track:43258ed7287e7a59f6f4a35535a1b02162dcf1c6b1040ac21b70ea939c696814` |
| 5 | `theorem` | [selected_mesh_budget](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/BridgeResolutionAttempt01Namespaced.lean/declarations/selected-mesh-budget.md) | 45 | `result-track:6e307f3046f7537112b14cb87a9a79963f1f09c7233147e8ed739cdadaafef2c` |
| 6 | `theorem` | [actual_joint_mesh_accuracy](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/BridgeResolutionAttempt01Namespaced.lean/declarations/actual-joint-mesh-accuracy.md) | 60 | `result-track:7616ba01f59a751066c6514811aabd4a522fa4ae2a431d78fc8d67d0ed504d45` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=75ec69d0c1df8c2f2259f33ce597e21bcb3fbd014883bbd23cb88eca9770de5c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/BridgeResolutionAttempt01/Variantc2a615bc44c279a5d93c2fbeae709c92cd9b6578f0016484da0de3715152c14b.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/BridgeResolutionAttempt01/Variantc2a615bc44c279a5d93c2fbeae709c92cd9b6578f0016484da0de3715152c14b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
