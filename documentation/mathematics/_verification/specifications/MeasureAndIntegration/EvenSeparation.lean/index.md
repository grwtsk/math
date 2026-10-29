# Verification target: GRWTSK.Analysis.TestFunctions.EvenSeparation

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "53159b59a2f060d91e5c83a29746931dbceee1ee",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/TestFunctions/EvenSeparation.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/EvenSeparation.lean/index.md) · [Full source](../../../../MeasureAndIntegration/EvenSeparation.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `53159b59a2f060d91e5c83a29746931dbceee1ee`.

Source path: `GRWTSK/Analysis/TestFunctions/EvenSeparation.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/TestFunctions/EvenSeparation.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.TestFunctions.Separation`](../../../../MeasureAndIntegration/Separation.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.MeasureTheory.Group.Integral` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [exists_even_smooth_test_positive_pairing](../../../../MeasureAndIntegration/EvenSeparation.lean/declarations/exists-even-smooth-test-positive-pairing.md) | 25 | `result-track:40c7026527fe41bb31f99c541990acc487279fb2308b450d96f5f6a8cac3ff39` |
| 2 | `theorem` | [exists_even_smooth_test_of_not_contDiffOn_two](../../../../MeasureAndIntegration/EvenSeparation.lean/declarations/exists-even-smooth-test-of-not-contdiffon-two.md) | 64 | `result-track:e8fee40577cb0031fbcbb5dd15c9a0046ce479c034cf826559626ae962d7d862` |
| 3 | `theorem` | [eq_zero_on_of_even_smooth_test_pairings_zero](../../../../MeasureAndIntegration/EvenSeparation.lean/declarations/eq-zero-on-of-even-smooth-test-pairings-zero.md) | 73 | `result-track:c3246c04880d32ea7b4a87138333e78d505a898ccaa30938d8d81ff52bba8dd4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7a2c6c9132966fd7939459ad1bb160455c6f4bcb1810c328a7079d01ee5da0db -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/TestFunctions/EvenSeparation.lean","GRWTSK/_verification/specifications/Analysis/TestFunctions/EvenSeparation.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
