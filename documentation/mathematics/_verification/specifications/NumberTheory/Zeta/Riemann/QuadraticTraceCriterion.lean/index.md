# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.QuadraticTraceCriterion

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7a14f52760075ecc0d56f1ab8602ec472db6d13a",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/QuadraticTraceCriterion.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/Zeta/Riemann/QuadraticTraceCriterion.lean/index.md) · [Full source](../../../../../../NumberTheory/Zeta/Riemann/QuadraticTraceCriterion.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7a14f52760075ecc0d56f1ab8602ec472db6d13a`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/QuadraticTraceCriterion.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/QuadraticTraceCriterion.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Algebra.Polynomial.ConjugateQuartic`](../../../../../../Algebra/Polynomial/ConjugateQuartic.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.ZeroDefinitions`](../../../../../../NumberTheory/Zeta/Riemann/ZeroDefinitions.lean/index.md) — import line 5; pinned internal source present.
- `Mathlib.Topology.Order.Basic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [QuadraticTraceNonnegative](../../../../../../NumberTheory/Zeta/Riemann/QuadraticTraceCriterion.lean/declarations/quadratictracenonnegative--9556625197df354be077d818.md) | 21 | `declaration-track:9556625197df354be077d818030bdc77b0ba661eeb34655164219cd535eafb80` |
| 2 | `theorem` | [riemannHypothesis_iff_quadraticTraceNonnegative](../../../../../../NumberTheory/Zeta/Riemann/QuadraticTraceCriterion.lean/declarations/riemannhypothesis-iff-quadratictracenonnegative--7cd9ea6dc032a5534cce0efb.md) | 24 | `result-track:7cd9ea6dc032a5534cce0efbe907bde0b77bea77b7d8d4e81dacead0c36fe645` |
| 3 | `theorem` | [riemannHypothesis_of_trace_extraction](../../../../../../NumberTheory/Zeta/Riemann/QuadraticTraceCriterion.lean/declarations/riemannhypothesis-of-trace-extraction--408874f8d17773e69c0b6116.md) | 37 | `result-track:408874f8d17773e69c0b61165394750fecb205eb28c74eb51c3cf2de51491ed6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c8fa100e551edb38062191194f200774246d28ec28f32349d23757c15730d1bb -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Zeta/Riemann/QuadraticTraceCriterion.lean","GRWTSK/_verification/specifications/NumberTheory/Zeta/Riemann/QuadraticTraceCriterion.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
