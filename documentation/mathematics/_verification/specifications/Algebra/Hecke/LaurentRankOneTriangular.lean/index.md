# Verification target: GRWTSK.Algebra.Hecke.LaurentRankOneTriangular

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6447c0fa1c08a34abcc288a2b47e8ce2e7d423f3",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Hecke/LaurentRankOneTriangular.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../Algebra/Hecke/LaurentRankOneTriangular.lean/index.md) · [Full source](../../../../../Algebra/Hecke/LaurentRankOneTriangular.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6447c0fa1c08a34abcc288a2b47e8ce2e7d423f3`.

Source path: `GRWTSK/Algebra/Hecke/LaurentRankOneTriangular.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Hecke/LaurentRankOneTriangular.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Algebra.Hecke.LaurentRankOneBar`](../../../../../Algebra/Hecke/LaurentRankOneBar.lean/index.md) — import line 1; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [StrictlyNegativeLaurent](../../../../../Algebra/Hecke/LaurentRankOneTriangular.lean/declarations/strictlynegativelaurent--4983c9779714a0194fc2a9d0.md) | 9 | `declaration-track:4983c9779714a0194fc2a9d004832e06a6dae5ab9f85e66223e262818c80f02a` |
| 2 | `theorem` | [inverse_parameter_strictly_negative](../../../../../Algebra/Hecke/LaurentRankOneTriangular.lean/declarations/inverse-parameter-strictly-negative--4846fe51c80d033dca6d9059.md) | 13 | `result-track:4846fe51c80d033dca6d9059853cf025a4fd5a543d8220584dffab76b2c870da` |
| 3 | `theorem` | [negative_laurent_invert_fixed_zero](../../../../../Algebra/Hecke/LaurentRankOneTriangular.lean/declarations/negative-laurent-invert-fixed-zero--25525a3ad92c8c8397002778.md) | 20 | `result-track:25525a3ad92c8c8397002778cbf565339445ba6ff57a691e151d2e55d60f35f1` |
| 4 | `theorem` | [laurent_rankOne_triangular_bar_unique](../../../../../Algebra/Hecke/LaurentRankOneTriangular.lean/declarations/laurent-rankone-triangular-bar-unique--d57fb2d3b2ec6f2615f2f790.md) | 33 | `result-track:d57fb2d3b2ec6f2615f2f7908204303a6324ba5f3ebd9196feff225d9b47c439` |
| 5 | `theorem` | [laurent_rankOne_triangular_bar_existsUnique](../../../../../Algebra/Hecke/LaurentRankOneTriangular.lean/declarations/laurent-rankone-triangular-bar-existsunique--8fd0f62fe78cd748b5aab62b.md) | 54 | `result-track:8fd0f62fe78cd748b5aab62b8e9e22a4a12731151f8f2be3585d66f08feff35b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f0a57651c73a5a44ed4156ad7587b183b62c4bda658f28670e5e70af5507c004 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Hecke/LaurentRankOneTriangular.lean","GRWTSK/_verification/specifications/Algebra/Hecke/LaurentRankOneTriangular.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
