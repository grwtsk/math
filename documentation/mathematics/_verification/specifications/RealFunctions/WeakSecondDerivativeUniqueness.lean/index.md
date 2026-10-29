# Verification target: GRWTSK.Analysis.Distribution.WeakSecondDerivativeUniqueness

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b11b6ce451baf386e668a95fa76477041e3c3fd9",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Distribution/WeakSecondDerivativeUniqueness.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../RealFunctions/WeakSecondDerivativeUniqueness.lean/index.md) · [Full source](../../../../RealFunctions/WeakSecondDerivativeUniqueness.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b11b6ce451baf386e668a95fa76477041e3c3fd9`.

Source path: `GRWTSK/Analysis/Distribution/WeakSecondDerivativeUniqueness.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Distribution/WeakSecondDerivativeUniqueness.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.Distribution.CompactProfileDilation`](../../../../MeasureAndIntegration/CompactProfileDilation.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.Analysis.Distribution.AEEqOfIntegralContDiff` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [weak_second_derivative_ae_unique](../../../../RealFunctions/WeakSecondDerivativeUniqueness.lean/declarations/weak-second-derivative-ae-unique.md) | 25 | `result-track:e67a0746c12779b568c39ac34aedaad5873ef029964b1c393187a36347632f6b` |
| 2 | `theorem` | [source_realization_unique](../../../../RealFunctions/WeakSecondDerivativeUniqueness.lean/declarations/source-realization-unique.md) | 34 | `result-track:44b2e65e4e0fd0c0953be955b9cd999de1951d182047cb6ea64cc4b9ad4e641e` |
| 3 | `theorem` | [realization_second_derivative_ae_eq](../../../../RealFunctions/WeakSecondDerivativeUniqueness.lean/declarations/realization-second-derivative-ae-eq.md) | 39 | `result-track:ce5cacfca8fcf1d5d3576deb80f4e3fc705531bb4b56378cbed93cf0e0c2d5f2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=085ee8d91f87543f426fb6255b6fb82669a5d816141aaa50bd942beadeb99bd2 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/Distribution/WeakSecondDerivativeUniqueness.lean","GRWTSK/_verification/specifications/Analysis/Distribution/WeakSecondDerivativeUniqueness.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
