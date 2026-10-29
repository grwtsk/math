# Verification target: Invariance Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a92c904bcfbf84213510f84191b31e37a181bf06",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Invariance/Variantd4781f9e83276459b94679e02b8c96e3a5237e544b17f021f5e04ca55c40916b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../ProbabilityTheoryAndStochasticProcesses/InvarianceNamespacedPublic.lean/index.md) · [Full source](../../../../ProbabilityTheoryAndStochasticProcesses/InvarianceNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a92c904bcfbf84213510f84191b31e37a181bf06`.

Source path: `GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Invariance/Variantd4781f9e83276459b94679e02b8c96e3a5237e544b17f021f5e04ca55c40916b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Invariance/Variantd4781f9e83276459b94679e02b8c96e3a5237e544b17f021f5e04ca55c40916b.lean.json)

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
| 1 | `def` | [Invariant](../../../../ProbabilityTheoryAndStochasticProcesses/InvarianceNamespacedPublic.lean/declarations/invariant.md) | 47 | `declaration-track:1e354f90198c4c55061ef7cfb2f39275f4e748a4775340c0831016330418cd68` |
| 2 | `theorem` | [Invariant.def](../../../../ProbabilityTheoryAndStochasticProcesses/InvarianceNamespacedPublic.lean/declarations/def.md) | 52 | `result-track:b3f117c2fab395499108cbe9f4a9e2d0d4f619bde87e540df92d571714350816` |
| 3 | `theorem` | [Invariant.comp_const](../../../../ProbabilityTheoryAndStochasticProcesses/InvarianceNamespacedPublic.lean/declarations/comp-const.md) | 55 | `result-track:8513b11c4decca5188d711accd4fc81d9605ae8a83e88aff7cf619055999de86` |
| 4 | `theorem` | [Invariant.comp](../../../../ProbabilityTheoryAndStochasticProcesses/InvarianceNamespacedPublic.lean/declarations/comp.md) | 58 | `result-track:cb70b2c493e712ed0eb70a9d12be6e9b502f5c402044960e699ecca0583bfd94` |
| 5 | `def` | [IsReversible](../../../../ProbabilityTheoryAndStochasticProcesses/InvarianceNamespacedPublic.lean/declarations/isreversible.md) | 68 | `declaration-track:589d68f618fa76bbc040a3bca722fe9f7d4ad33a8fb281daf3c0a2640772a2a7` |
| 6 | `theorem` | [IsReversible.invariant](../../../../ProbabilityTheoryAndStochasticProcesses/InvarianceNamespacedPublic.lean/declarations/invariant-source-line-73-occurrence-2.md) | 73 | `result-track:5f14313eca22b717286b33546315a2b001c0fa878cc72c9e1ff67f8589bcee44` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7e76685bcb22f062023d54bb84d2ce5316ae1fc3b79b1986fbdb5ad41d4c5d65 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Invariance/Variantd4781f9e83276459b94679e02b8c96e3a5237e544b17f021f5e04ca55c40916b.lean","GRWTSK/_verification/specifications/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Invariance/Variantd4781f9e83276459b94679e02b8c96e3a5237e544b17f021f5e04ca55c40916b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
