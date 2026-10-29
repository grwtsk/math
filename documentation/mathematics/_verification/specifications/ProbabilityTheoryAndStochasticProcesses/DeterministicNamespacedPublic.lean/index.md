# Verification target: Deterministic Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9b3bcab2373afa18b082371138b8d6872f5bac12",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/Deterministic/Variantc071f475d9491a78fbf98757b39dd6daefa6a55f7567173ce23e2de41993e2e9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../ProbabilityTheoryAndStochasticProcesses/DeterministicNamespacedPublic.lean/index.md) · [Full source](../../../../ProbabilityTheoryAndStochasticProcesses/DeterministicNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9b3bcab2373afa18b082371138b8d6872f5bac12`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/Deterministic/Variantc071f475d9491a78fbf98757b39dd6daefa6a55f7567173ce23e2de41993e2e9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/Deterministic/Variantc071f475d9491a78fbf98757b39dd6daefa6a55f7567173ce23e2de41993e2e9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [IsDeterministic](../../../../ProbabilityTheoryAndStochasticProcesses/DeterministicNamespacedPublic.lean/declarations/isdeterministic.md) | 67 | `declaration-track:ec51f25e2d0db6f83050cbf4f520bc098e478396ebb2367267e6d9bd42ff12cf` |
| 2 | `lemma` | [parallelComp_self_comp_copy](../../../../ProbabilityTheoryAndStochasticProcesses/DeterministicNamespacedPublic.lean/declarations/parallelcomp-self-comp-copy.md) | 72 | `result-track:ba60dad3b9d2bc6f7942ca3908326201f69e7bd0fc9badec2daf6d658dd8616b` |
| 3 | `instance` | [(anonymous)](../../../../ProbabilityTheoryAndStochasticProcesses/DeterministicNamespacedPublic.lean/declarations/instance-source-edition-7.md) | 76 | `declaration-track:cad324a29b806c3aeb943fe8d0a440db42c9bbcc0334665942c4ad8e7f25c358` |
| 4 | `instance` | [(anonymous)](../../../../ProbabilityTheoryAndStochasticProcesses/DeterministicNamespacedPublic.lean/declarations/instance-source-edition-3.md) | 81 | `declaration-track:6691e8581277f7ffa30a0e99061fd6b7a6e8c1823d0867a5a37a9a97984e49ca` |
| 5 | `instance` | [(anonymous)](../../../../ProbabilityTheoryAndStochasticProcesses/DeterministicNamespacedPublic.lean/declarations/instance.md) | 83 | `declaration-track:0f97bb408dde84022379918414a6667632116128f49dbde8d3a98b603a2519fa` |
| 6 | `instance` | [(anonymous)](../../../../ProbabilityTheoryAndStochasticProcesses/DeterministicNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 85 | `declaration-track:133f3967000241c7b944d5a35712f03b34d533b430570a3ada935620be2e6c51` |
| 7 | `instance` | [(anonymous)](../../../../ProbabilityTheoryAndStochasticProcesses/DeterministicNamespacedPublic.lean/declarations/instance-source-edition-6.md) | 87 | `declaration-track:af615adc50c19326eb7d0a84357874b4c04a9c191dafe6d3ffad328e9b68a12e` |
| 8 | `lemma` | [isDeterministic_iff_isZeroOneMeasure](../../../../ProbabilityTheoryAndStochasticProcesses/DeterministicNamespacedPublic.lean/declarations/isdeterministic-iff-iszeroonemeasure.md) | 91 | `result-track:f7ad1e39063e71c961fb8c80099d8a3e73a63e5f4b25008376769c2d42defd1e` |
| 9 | `instance` | [(anonymous)](../../../../ProbabilityTheoryAndStochasticProcesses/DeterministicNamespacedPublic.lean/declarations/instance-source-edition-5.md) | 111 | `declaration-track:956ca7985429f1fc962c9c3977b087a7142a2e5511845cb5142ddca53476220c` |
| 10 | `theorem` | [IsDeterministic.exists_eq_deterministic](../../../../ProbabilityTheoryAndStochasticProcesses/DeterministicNamespacedPublic.lean/declarations/isdeterministic-exists-eq-deterministic.md) | 116 | `result-track:8004718b30a997ca1c6cb2d9e295108df8b71793deb2f5fb82a606747d599925` |
| 11 | `lemma` | [comp_parallelComp_comp_copy](../../../../ProbabilityTheoryAndStochasticProcesses/DeterministicNamespacedPublic.lean/declarations/comp-parallelcomp-comp-copy.md) | 135 | `result-track:d135b0078a7984204fcef443a93a01741f644588707caa6561df0e266c4af983` |
| 12 | `instance` | [(anonymous)](../../../../ProbabilityTheoryAndStochasticProcesses/DeterministicNamespacedPublic.lean/declarations/instance-source-edition-4.md) | 188 | `declaration-track:93defb0546a53d07ed87b56ab0f470a00d2e194e66ea777983a7b5bc629daeba` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b98e398aba01f86155434efae087c95295ac9ffdddb28ec772725a8bbd1c5f5f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/Deterministic/Variantc071f475d9491a78fbf98757b39dd6daefa6a55f7567173ce23e2de41993e2e9.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/Deterministic/Variantc071f475d9491a78fbf98757b39dd6daefa6a55f7567173ce23e2de41993e2e9.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
