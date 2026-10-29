# Verification target: Reflexive Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "763a0a69e8651f038032eb9c3655bf7078c2c97b",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Reflexive/Variantb7dd16375abca11f75a00d2117c77ace51e0bb646a4b3b6883d7a466208880a5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../ProbabilityTheoryAndStochasticProcesses/ReflexiveNamespaced.lean/index.md) · [Full source](../../../../ProbabilityTheoryAndStochasticProcesses/ReflexiveNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `763a0a69e8651f038032eb9c3655bf7078c2c97b`.

Source path: `GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Reflexive/Variantb7dd16375abca11f75a00d2117c77ace51e0bb646a4b3b6883d7a466208880a5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Reflexive/Variantb7dd16375abca11f75a00d2117c77ace51e0bb646a4b3b6883d7a466208880a5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Surface.ContinuousAssurance.Dependency` — import line 6; external provider; requires a separately pinned dependency.
- `Surface.ContinuousAssurance.Evidence` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [AssuranceRun](../../../../ProbabilityTheoryAndStochasticProcesses/ReflexiveNamespaced.lean/declarations/assurancerun.md) | 24 | `declaration-track:5458b10ffeea149ff7391ddf590e4f09c6c0035625808d2cf91b823e31319c4c` |
| 2 | `theorem` | [cannot_authorize_controller_version](../../../../ProbabilityTheoryAndStochasticProcesses/ReflexiveNamespaced.lean/declarations/cannot-authorize-controller-version.md) | 39 | `result-track:dd8acfe3f0b344a8c5bda0b09433272e13b62caa4b8f2ba4f4ae812f8d49e210` |
| 3 | `theorem` | [cannot_alter_governing_policy](../../../../ProbabilityTheoryAndStochasticProcesses/ReflexiveNamespaced.lean/declarations/cannot-alter-governing-policy.md) | 45 | `result-track:cb4941e2dc1117f5ff28aa618783e39d13d1fb663b4b747410892284ac2790db` |
| 4 | `def` | [versionDependencyGraph](../../../../ProbabilityTheoryAndStochasticProcesses/ReflexiveNamespaced.lean/declarations/versiondependencygraph.md) | 53 | `declaration-track:3b8acd1088837d997847189d97ceaebd8a1476f10e6a1895091693adab706f20` |
| 5 | `theorem` | [strictlyIncreasingReflexiveChain_no_cycle](../../../../ProbabilityTheoryAndStochasticProcesses/ReflexiveNamespaced.lean/declarations/strictlyincreasingreflexivechain-no-cycle.md) | 61 | `result-track:28b11db7acd9d1d07c67898b923efa531db7dfa5d2fc4e70100a5f2924a36036` |
| 6 | `inductive` | [ReviewClassification](../../../../ProbabilityTheoryAndStochasticProcesses/ReflexiveNamespaced.lean/declarations/reviewclassification.md) | 67 | `declaration-track:4b9f6bbaa07b32200b28a03343176875f67c7ca7f5f14e00a9357c6cfe04ad0c` |
| 7 | `def` | [classifyReview](../../../../ProbabilityTheoryAndStochasticProcesses/ReflexiveNamespaced.lean/declarations/classifyreview.md) | 76 | `declaration-track:b314b4a86e6b6db554b5feb243256683b6739aea8392e9302089f1f91ba7e522` |
| 8 | `theorem` | [classify_same_version_self_check](../../../../ProbabilityTheoryAndStochasticProcesses/ReflexiveNamespaced.lean/declarations/classify-same-version-self-check.md) | 87 | `result-track:ab88acfa9a0cd61cbcc8b7af35591f67463711d7875e13f929f4b8648d470780` |
| 9 | `theorem` | [classifyReview_eq_independentReview_iff](../../../../ProbabilityTheoryAndStochasticProcesses/ReflexiveNamespaced.lean/declarations/classifyreview-eq-independentreview-iff.md) | 94 | `result-track:ad1dd2a9494707e35247a750c8522e7265a6a2e772814fed9d657a31c0da9e3f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0316e51089c64a225c27495a513e81b890226044151e9d5da3974760f5dc8605 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Reflexive/Variantb7dd16375abca11f75a00d2117c77ace51e0bb646a4b3b6883d7a466208880a5.lean","GRWTSK/_verification/specifications/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Reflexive/Variantb7dd16375abca11f75a00d2117c77ace51e0bb646a4b3b6883d7a466208880a5.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
