# Verification target: GRWTSK.Analysis.Calculus.CompactProfileBoundaryCounterexamples

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bf7807e88639aa3eef31297a2523922376cdc6d5",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Calculus/CompactProfileBoundaryCounterexamples.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../Analysis/RealAnalysis/DifferentialCalculus/CompactProfileBoundaryCounterexamples.lean/index.md) · [Full source](../../../../../../Analysis/RealAnalysis/DifferentialCalculus/CompactProfileBoundaryCounterexamples.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bf7807e88639aa3eef31297a2523922376cdc6d5`.

Source path: `GRWTSK/Analysis/Calculus/CompactProfileBoundaryCounterexamples.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Calculus/CompactProfileBoundaryCounterexamples.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.Convolution.CompactProfileHigherDerivatives`](../../../../../../Analysis/Convolution/CompactProfileHigherDerivatives.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [indicator_not_differentiable_at_right](../../../../../../Analysis/RealAnalysis/DifferentialCalculus/CompactProfileBoundaryCounterexamples.lean/declarations/indicator-not-differentiable-at-right--179494c7833fe8abcb1e5ed2.md) | 29 | `result-track:179494c7833fe8abcb1e5ed2d249a23c81ab73a6c7487a73a3e0582bca79c73f` |
| 2 | `theorem` | [normalized_second_interior_right_eq](../../../../../../Analysis/RealAnalysis/DifferentialCalculus/CompactProfileBoundaryCounterexamples.lean/declarations/normalized-second-interior-right-eq--11b6c0b37d8952499c898058.md) | 64 | `result-track:11b6c0b37d8952499c898058d5935de88f2d3f809d8685205eb7a9c866829550` |
| 3 | `theorem` | [normalized_second_interior_right_pos](../../../../../../Analysis/RealAnalysis/DifferentialCalculus/CompactProfileBoundaryCounterexamples.lean/declarations/normalized-second-interior-right-pos--ddb0e85da6131dd29d1def5f.md) | 71 | `result-track:ddb0e85da6131dd29d1def5f92d1cfd1a005891092065963ec4abfcb30a5e7d0` |
| 4 | `theorem` | [native_first_not_differentiable_at_right](../../../../../../Analysis/RealAnalysis/DifferentialCalculus/CompactProfileBoundaryCounterexamples.lean/declarations/native-first-not-differentiable-at-right--64a17ed0b7ffe143dc9584cb.md) | 82 | `result-track:64a17ed0b7ffe143dc9584cb9a411e0de6353791c8b37a767bddd0aeb91b0595` |
| 5 | `theorem` | [normalized_source_first_not_differentiable_at_right](../../../../../../Analysis/RealAnalysis/DifferentialCalculus/CompactProfileBoundaryCounterexamples.lean/declarations/normalized-source-first-not-differentiable-at-right--32822212fcdebac89b3b31e3.md) | 94 | `result-track:32822212fcdebac89b3b31e30d9b9f7aeb72acaa41ce0b9c4058165ba2d9873b` |
| 6 | `theorem` | [normalized_source_not_contDiff_two](../../../../../../Analysis/RealAnalysis/DifferentialCalculus/CompactProfileBoundaryCounterexamples.lean/declarations/normalized-source-not-contdiff-two--b7b0f0914c09f0c493f2bbb9.md) | 100 | `result-track:b7b0f0914c09f0c493f2bbb9903c651496936a28bbbf0db2b236b3ca34365264` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ffbd69d6aed76fd835de30eff60213565b3c80404f1c1aa60ccb2628585a1752 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/Calculus/CompactProfileBoundaryCounterexamples.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/DifferentialCalculus/CompactProfileBoundaryCounterexamples.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
