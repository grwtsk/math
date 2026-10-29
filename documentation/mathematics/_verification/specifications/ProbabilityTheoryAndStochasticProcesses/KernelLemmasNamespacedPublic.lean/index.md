# Verification target: Kernel Lemmas Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1dbd3b119f64c29a1fa64360c0d6e6b0c16b8380",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/KernelLemmas/Variant384ab49f6ab5a88c6ce6641b5b228689a7b30d176bdcb8f0aa7d284083ef7329.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../ProbabilityTheoryAndStochasticProcesses/KernelLemmasNamespacedPublic.lean/index.md) · [Full source](../../../../ProbabilityTheoryAndStochasticProcesses/KernelLemmasNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1dbd3b119f64c29a1fa64360c0d6e6b0c16b8380`.

Source path: `GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/KernelLemmas/Variant384ab49f6ab5a88c6ce6641b5b228689a7b30d176bdcb8f0aa7d284083ef7329.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/KernelLemmas/Variant384ab49f6ab5a88c6ce6641b5b228689a7b30d176bdcb8f0aa7d284083ef7329.lean.json)

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
| 1 | `theorem` | [comp_eq_snd_compProd](../../../../ProbabilityTheoryAndStochasticProcesses/KernelLemmasNamespacedPublic.lean/declarations/comp-eq-snd-compprod.md) | 45 | `result-track:e23997bfa040c86809c3863e3fc4faf2f0826ff403106556338b67d7acd59f14` |
| 2 | `lemma` | [snd_compProd_prodMkLeft](../../../../ProbabilityTheoryAndStochasticProcesses/KernelLemmasNamespacedPublic.lean/declarations/snd-compprod-prodmkleft.md) | 51 | `result-track:20277d038751f3fbe57f4a480fadfd6aa6b9930940ff200e4b3eaa3ae8a3cb83` |
| 3 | `lemma` | [compProd_prodMkLeft_eq_comp](../../../../ProbabilityTheoryAndStochasticProcesses/KernelLemmasNamespacedPublic.lean/declarations/compprod-prodmkleft-eq-comp.md) | 55 | `result-track:b43cecec0b0f7b3c4b025b47a61fdfdffda836f07e2dd8db18cf4211bab7ab17` |
| 4 | `lemma` | [swap_parallelComp](../../../../ProbabilityTheoryAndStochasticProcesses/KernelLemmasNamespacedPublic.lean/declarations/swap-parallelcomp.md) | 67 | `result-track:c4cb3b2d525ae7a3d61ccfd9ee1fc7f8fe994d4053cdfc4b52ba45a6d47d01e8` |
| 5 | `lemma` | [parallelComp_id_left_comp_parallelComp](../../../../ProbabilityTheoryAndStochasticProcesses/KernelLemmasNamespacedPublic.lean/declarations/parallelcomp-id-left-comp-parallelcomp.md) | 88 | `result-track:5a6fd7025f068e8b423f5255f26f898eb4133c6d664ec052d0d6a919633d175e` |
| 6 | `lemma` | [parallelComp_id_right_comp_parallelComp](../../../../ProbabilityTheoryAndStochasticProcesses/KernelLemmasNamespacedPublic.lean/declarations/parallelcomp-id-right-comp-parallelcomp.md) | 103 | `result-track:78bedae8967692da5ccdadb6600c712da6b24dd7f4f8021284a52fd2fdef3970` |
| 7 | `lemma` | [parallelComp_comp_parallelComp](../../../../ProbabilityTheoryAndStochasticProcesses/KernelLemmasNamespacedPublic.lean/declarations/parallelcomp-comp-parallelcomp.md) | 115 | `result-track:c149cd97487e4787124637cce85d8ac91b0989d2fda56372441a8fc2909bc700` |
| 8 | `lemma` | [parallelComp_comp_prod](../../../../ProbabilityTheoryAndStochasticProcesses/KernelLemmasNamespacedPublic.lean/declarations/parallelcomp-comp-prod.md) | 121 | `result-track:6bddab85505f1267f1cc6ced428247532b5f7066a52c90a8d301d06c5d86af6a` |
| 9 | `lemma` | [parallelComp_comm](../../../../ProbabilityTheoryAndStochasticProcesses/KernelLemmasNamespacedPublic.lean/declarations/parallelcomp-comm.md) | 127 | `result-track:472ef4d650ed76cb95e2c4d2fb75c840ab7acbe12ebe5b45f87d65938489a1bd` |
| 10 | `lemma` | [id_parallelComp_comp_parallelComp_id](../../../../ProbabilityTheoryAndStochasticProcesses/KernelLemmasNamespacedPublic.lean/declarations/id-parallelcomp-comp-parallelcomp-id.md) | 136 | `result-track:1f8a0925841e012835ae594954df2ecd2006bd90092748a6d90839db6605640b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c7ced8e78b13dea65d694d2730c75992306993e24556894479c7a8b3e26fc6db -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/KernelLemmas/Variant384ab49f6ab5a88c6ce6641b5b228689a7b30d176bdcb8f0aa7d284083ef7329.lean","GRWTSK/_verification/specifications/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/KernelLemmas/Variant384ab49f6ab5a88c6ce6641b5b228689a7b30d176bdcb8f0aa7d284083ef7329.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
