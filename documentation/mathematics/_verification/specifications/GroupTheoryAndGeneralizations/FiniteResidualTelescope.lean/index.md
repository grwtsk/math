# Verification target: GRWTSK.Analysis.ErrorBounds.FiniteResidualTelescope

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "da5a7c1f966592f1d1451a34d46f24d52b8884ff",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/ErrorBounds/FiniteResidualTelescope.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GroupTheoryAndGeneralizations/FiniteResidualTelescope.lean/index.md) · [Full source](../../../../GroupTheoryAndGeneralizations/FiniteResidualTelescope.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `da5a7c1f966592f1d1451a34d46f24d52b8884ff`.

Source path: `GRWTSK/Analysis/ErrorBounds/FiniteResidualTelescope.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/ErrorBounds/FiniteResidualTelescope.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [residualTotal](../../../../GroupTheoryAndGeneralizations/FiniteResidualTelescope.lean/declarations/residualtotal.md) | 28 | `declaration-track:43ad755a55beb7865c1173ff7579522f07a1cfe31362ef8e32005c16b5569834` |
| 2 | `theorem` | [residualTotal_zero](../../../../GroupTheoryAndGeneralizations/FiniteResidualTelescope.lean/declarations/residualtotal-zero.md) | 32 | `result-track:cb8b8ded1da415f1c94495e1df4c51a30f1eb32d322f87aa71f7e4410d4fd11d` |
| 3 | `theorem` | [residualTotal_succ](../../../../GroupTheoryAndGeneralizations/FiniteResidualTelescope.lean/declarations/residualtotal-succ.md) | 34 | `result-track:661105a8402ac58c037e7dc8663bd4226990945f252dc2f2770a9ec08ad623c2` |
| 4 | `theorem` | [residualTotal_eq_endpointDifference](../../../../GroupTheoryAndGeneralizations/FiniteResidualTelescope.lean/declarations/residualtotal-eq-endpointdifference.md) | 38 | `result-track:d0ce89dae669025e4b299f2d92229a8e5cb8562de1a0362851bfd285ae5de99c` |
| 5 | `theorem` | [exact_residual_telescope](../../../../GroupTheoryAndGeneralizations/FiniteResidualTelescope.lean/declarations/exact-residual-telescope.md) | 46 | `result-track:c1b664f0c9b54a53f69f710892e75600404af642fb92ac2affd69ecd5ee6202f` |
| 6 | `def` | [VanishesAtInfinity](../../../../GroupTheoryAndGeneralizations/FiniteResidualTelescope.lean/declarations/vanishesatinfinity.md) | 54 | `declaration-track:12a1c6c7b503ba318a426689548fea1cc3a686d8cb255338de04ce0f34ca3297` |
| 7 | `theorem` | [zero](../../../../GroupTheoryAndGeneralizations/FiniteResidualTelescope.lean/declarations/zero.md) | 60 | `result-track:18d4490b9874614c276b3ea8bb74d3eb09807b3500d0e01d80d23a2dfd9949f1` |
| 8 | `theorem` | [neg](../../../../GroupTheoryAndGeneralizations/FiniteResidualTelescope.lean/declarations/neg.md) | 65 | `result-track:82731f81a8cabf1548d39bf01bc7c80617b5f3749eeeb1ba888160cb4d5b6e6b` |
| 9 | `theorem` | [add](../../../../GroupTheoryAndGeneralizations/FiniteResidualTelescope.lean/declarations/add.md) | 74 | `result-track:fb08603f7d83eea5e6e6a76adad6106d9e7c7d1b8bdf1b6cf13b5a7c85c22d18` |
| 10 | `theorem` | [sub](../../../../GroupTheoryAndGeneralizations/FiniteResidualTelescope.lean/declarations/sub.md) | 91 | `result-track:fc02287c5a5ccad9c246e600d8f2fd5b4c965f164d8d6cf8a88abef41df8db75` |
| 11 | `theorem` | [of_nonnegative_bound](../../../../GroupTheoryAndGeneralizations/FiniteResidualTelescope.lean/declarations/of-nonnegative-bound.md) | 97 | `result-track:edde10f64817797842b864ad6fbbd5666ca01fb94f3026d3b4d58695c961361d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2e18bd350f6b2700cfd87b73b4c407719be637b691b1a37b1f504aae36e81d5a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/ErrorBounds/FiniteResidualTelescope.lean","GRWTSK/_verification/specifications/Analysis/ErrorBounds/FiniteResidualTelescope.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
