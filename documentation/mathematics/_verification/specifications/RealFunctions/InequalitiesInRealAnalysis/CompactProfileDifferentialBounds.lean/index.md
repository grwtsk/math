# Verification target: GRWTSK.Analysis.Inequalities.CompactProfileDifferentialBounds

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8d1fe53b7c9b23e37f849a3e6a14475579161ccf",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Inequalities/CompactProfileDifferentialBounds.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../RealFunctions/InequalitiesInRealAnalysis/CompactProfileDifferentialBounds.lean/index.md) · [Full source](../../../../../RealFunctions/InequalitiesInRealAnalysis/CompactProfileDifferentialBounds.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8d1fe53b7c9b23e37f849a3e6a14475579161ccf`.

Source path: `GRWTSK/Analysis/Inequalities/CompactProfileDifferentialBounds.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Inequalities/CompactProfileDifferentialBounds.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.Inequalities.FiniteShiftedDerivativeBounds`](../../../../../RealFunctions/InequalitiesInRealAnalysis/InequalitiesFiniteShiftedDerivativeBounds.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [differential_hasDerivAt](../../../../../RealFunctions/InequalitiesInRealAnalysis/CompactProfileDifferentialBounds.lean/declarations/differential-hasderivat.md) | 23 | `result-track:4a1f9eeeebbefeba998a5bc5a274d5a5ea4e60ac5210bbce6fa897071534aa67` |
| 2 | `theorem` | [differential_abs_le](../../../../../RealFunctions/InequalitiesInRealAnalysis/CompactProfileDifferentialBounds.lean/declarations/differential-abs-le.md) | 35 | `result-track:295a1452cd4a577464c5cb0866e17ab7e5efba87c805f66c6d84eeb31b3b266a` |
| 3 | `theorem` | [differential_derivative_abs_le](../../../../../RealFunctions/InequalitiesInRealAnalysis/CompactProfileDifferentialBounds.lean/declarations/differential-derivative-abs-le.md) | 43 | `result-track:afb377a3780e5d72c6e91e492ec9298be3b9ed611b749214dc2f03b7c8692f98` |
| 4 | `theorem` | [differential_zero_upper](../../../../../RealFunctions/InequalitiesInRealAnalysis/CompactProfileDifferentialBounds.lean/declarations/differential-zero-upper.md) | 53 | `result-track:d167d071768d279e4ecd721fb6fb791f76acd99afedb1db8aa032a439e435814` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e6801da1e2bb4666ad75afdc00bc526756892502597b46a7a67de9c5df2bc917 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/Inequalities/CompactProfileDifferentialBounds.lean","GRWTSK/_verification/specifications/Analysis/Inequalities/CompactProfileDifferentialBounds.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
