# Verification target: GRWTSK.Analysis.Complex.LogarithmicPrincipalPart

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3095d3336a3ccaa39846b8448646d86fe692206c",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Complex/LogarithmicPrincipalPart.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/LogarithmicPrincipalPart.lean/index.md) · [Full source](../../../../GeneralTopology/LogarithmicPrincipalPart.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3095d3336a3ccaa39846b8448646d86fe692206c`.

Source path: `GRWTSK/Analysis/Complex/LogarithmicPrincipalPart.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Complex/LogarithmicPrincipalPart.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Complex.Basic` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Analytic.Order` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Deriv.ZPow` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.LogDeriv` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FunProp` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FieldSimp` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ring` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [logDeriv_principal_part](../../../../GeneralTopology/LogarithmicPrincipalPart.lean/declarations/logderiv-principal-part.md) | 34 | `result-track:1948dacd067377e0affef5e710b27c4f157cc1a8cee562272d023e713e8ea987` |
| 2 | `theorem` | [tendsto_scaled_neg_logDeriv_of_principal_part](../../../../GeneralTopology/LogarithmicPrincipalPart.lean/declarations/tendsto-scaled-neg-logderiv-of-principal-part.md) | 55 | `result-track:239d25ae50df42dc2513e99c09a3699c285201a52d36a27c436bf57aba173c8c` |
| 3 | `theorem` | [tendsto_scaled_neg_logDeriv_of_factorization](../../../../GeneralTopology/LogarithmicPrincipalPart.lean/declarations/tendsto-scaled-neg-logderiv-of-factorization.md) | 72 | `result-track:be2e19da4a27e3f25efaa3a8a31decf671182d75c6368f9d234bde1777779100` |
| 4 | `theorem` | [tendsto_scaled_weighted_neg_logDeriv](../../../../GeneralTopology/LogarithmicPrincipalPart.lean/declarations/tendsto-scaled-weighted-neg-logderiv.md) | 83 | `result-track:21c3f55d05cff053a42e836e8e361766fa81a41c3f0d3666d439bc69fb918d89` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7a2ac7adc58cb730bbd96d1ba5405d37067764a7cad69d3624a0f737d84edffc -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/Complex/LogarithmicPrincipalPart.lean","GRWTSK/_verification/specifications/Analysis/ComplexAnalysis/LogarithmicPrincipalPart.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
