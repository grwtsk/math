# Verification target: GRWTSK.Analysis.Complex.RationalTentEvaluation

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2d5a94a9b3306e31e3d819315c91046fa2cc75a9",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Complex/RationalTentEvaluation.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FunctionsOfAComplexVariable/RationalTentEvaluation.lean/index.md) · [Full source](../../../../FunctionsOfAComplexVariable/RationalTentEvaluation.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2d5a94a9b3306e31e3d819315c91046fa2cc75a9`.

Source path: `GRWTSK/Analysis/Complex/RationalTentEvaluation.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Complex/RationalTentEvaluation.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.Complex.RationalPowerEvaluation`](../../../../FunctionsOfAComplexVariable/RationalPowerEvaluation.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.Analysis.Complex.RationalComplexQuotient`](../../../../FunctionsOfAComplexVariable/RationalComplexQuotient.lean/index.md) — import line 5; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Input](../../../../FunctionsOfAComplexVariable/RationalTentEvaluation.lean/declarations/input.md) | 26 | `declaration-track:297282d0ad627234b0196caa066fdff0c98e4b36615248c07acab30ec1fbf780` |
| 2 | `def` | [exponent](../../../../FunctionsOfAComplexVariable/RationalTentEvaluation.lean/declarations/exponent.md) | 36 | `declaration-track:0a82a4f3a09da29de4373b30c52b09012c370980992c0178dd813a539b3c216f` |
| 3 | `def` | [Admissible](../../../../FunctionsOfAComplexVariable/RationalTentEvaluation.lean/declarations/admissible.md) | 38 | `declaration-track:e45b7eb57b8320a5b48de5775bde61776798d4d96ab3d80a239bb8048d9aee24` |
| 4 | `instance` | [(anonymous)](../../../../FunctionsOfAComplexVariable/RationalTentEvaluation.lean/declarations/instance.md) | 46 | `declaration-track:4b720d57e121db4472e22db2da9ac4e2eb23bffb18a8cebe36b0e71f6984a0fd` |
| 5 | `def` | [numerator](../../../../FunctionsOfAComplexVariable/RationalTentEvaluation.lean/declarations/numerator.md) | 50 | `declaration-track:64273f463cf1243716ddc879e9ac72b5c403551dbe2f57603ef27d1415e22e80` |
| 6 | `def` | [denominator](../../../../FunctionsOfAComplexVariable/RationalTentEvaluation.lean/declarations/denominator.md) | 56 | `declaration-track:c4c1c3fef2e694d4e907a076562d2b0276ccfbde63acca928f9a6824a2bfb237` |
| 7 | `def` | [quotient](../../../../FunctionsOfAComplexVariable/RationalTentEvaluation.lean/declarations/quotient.md) | 59 | `declaration-track:8b07e2992398e227e5eb1a7af6550f93e9ce03cd7975da3a749923056f036d1b` |
| 8 | `def` | [unroundedError](../../../../FunctionsOfAComplexVariable/RationalTentEvaluation.lean/declarations/unroundederror.md) | 63 | `declaration-track:1103b1ba83a3858dd78a5030d38807fe3262f941ccd0454fa1563c6968812879` |
| 9 | `def` | [compute](../../../../FunctionsOfAComplexVariable/RationalTentEvaluation.lean/declarations/compute.md) | 70 | `declaration-track:98e6b4eed069c1a813512a0f2c771199a5b448bc9f31d3a398aa9782259ada11` |
| 10 | `def` | [evaluate](../../../../FunctionsOfAComplexVariable/RationalTentEvaluation.lean/declarations/evaluate.md) | 73 | `declaration-track:121ccf2aed72145b39effbd7053e687f2535bf966ecad89c7849e23073cafc5e` |
| 11 | `def` | [verify](../../../../FunctionsOfAComplexVariable/RationalTentEvaluation.lean/declarations/verify.md) | 79 | `declaration-track:4cde475f86ecf333d9b5a704f9a1e269b03b22bbc834f7c0bd5c3f7f0b7517fd` |
| 12 | `theorem` | [embed_exponent](../../../../FunctionsOfAComplexVariable/RationalTentEvaluation.lean/declarations/embed-exponent.md) | 82 | `result-track:028c19a86aa702dd4419592b23c175656717bcf6c03566312d86a2d3b1be15a6` |
| 13 | `theorem` | [quotient_refines](../../../../FunctionsOfAComplexVariable/RationalTentEvaluation.lean/declarations/quotient-refines.md) | 86 | `result-track:200a0e56c2ef18de4c185a64dfecef409b983475550b40d714d556a3bea8cdce` |
| 14 | `theorem` | [unrounded_sound](../../../../FunctionsOfAComplexVariable/RationalTentEvaluation.lean/declarations/unrounded-sound.md) | 96 | `result-track:154d0ee20063230775b9febe75abc8b91fa27f3536decb6014453f8a4d309526` |
| 15 | `theorem` | [compute_sound](../../../../FunctionsOfAComplexVariable/RationalTentEvaluation.lean/declarations/compute-sound.md) | 151 | `result-track:0634e6188ae40e51f2ec812ab7cdfdd84125edcd0ed0e93417e6d02544954068` |
| 16 | `theorem` | [evaluate_some_iff](../../../../FunctionsOfAComplexVariable/RationalTentEvaluation.lean/declarations/evaluate-some-iff.md) | 158 | `result-track:6746d6d8ad9e601cbb6744054e83df60fc34d24d16318631e9ec7cab873d8688` |
| 17 | `theorem` | [evaluate_none_iff](../../../../FunctionsOfAComplexVariable/RationalTentEvaluation.lean/declarations/evaluate-none-iff.md) | 164 | `result-track:841afb8120658d4fc41926d39c9eb8b45ad43caeb00f3b0fbbfba7c499371885` |
| 18 | `theorem` | [verify_sound](../../../../FunctionsOfAComplexVariable/RationalTentEvaluation.lean/declarations/verify-sound.md) | 170 | `result-track:1c2a41b1740a5a47ef6879104cb9fb73a196e53f4518bd95e31c4b724c51633c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=45dd3de8af5ccf5d1f96d3cf1c46a746616b58ceedb3a2c0950412d46ffcf05b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/Complex/RationalTentEvaluation.lean","GRWTSK/_verification/specifications/Analysis/ComplexAnalysis/RationalTentEvaluation.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
