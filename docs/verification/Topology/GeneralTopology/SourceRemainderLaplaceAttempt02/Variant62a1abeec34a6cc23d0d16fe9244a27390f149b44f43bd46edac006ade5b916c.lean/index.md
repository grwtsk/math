# Verification target: GRWTSK.Topology.GeneralTopology.SourceRemainderLaplaceAttempt02.Variant62a1abeec34a6cc23d0d16fe9244a27390f149b44f43bd46edac006ade5b916c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5d693c720d14961f3be99641dd221d0d6398ffff",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/SourceRemainderLaplaceAttempt02/Variant62a1abeec34a6cc23d0d16fe9244a27390f149b44f43bd46edac006ade5b916c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/SourceRemainderLaplaceAttempt02/Variant62a1abeec34a6cc23d0d16fe9244a27390f149b44f43bd46edac006ade5b916c.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/SourceRemainderLaplaceAttempt02/Variant62a1abeec34a6cc23d0d16fe9244a27390f149b44f43bd46edac006ade5b916c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5d693c720d14961f3be99641dd221d0d6398ffff`.

Source path: `GRWTSK/Topology/GeneralTopology/SourceRemainderLaplaceAttempt02/Variant62a1abeec34a6cc23d0d16fe9244a27390f149b44f43bd46edac006ade5b916c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/SourceRemainderLaplaceAttempt02/Variant62a1abeec34a6cc23d0d16fe9244a27390f149b44f43bd46edac006ade5b916c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceMangoldtAbel` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.DominatedConvergence` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [actualRemainder](../../../../../mathematics/Topology/GeneralTopology/SourceRemainderLaplaceAttempt02/Variant62a1abeec34a6cc23d0d16fe9244a27390f149b44f43bd46edac006ade5b916c.lean/declarations/actualremainder--15ef6cbe4d50c76306031f01.md) | 21 | `declaration-track:15ef6cbe4d50c76306031f017f53a4770ab68c09d92807c42b99d328715973c3` |
| 2 | `def` | [actualLaplace](../../../../../mathematics/Topology/GeneralTopology/SourceRemainderLaplaceAttempt02/Variant62a1abeec34a6cc23d0d16fe9244a27390f149b44f43bd46edac006ade5b916c.lean/declarations/actuallaplace--fe93c4dae6884cc82144f679.md) | 24 | `declaration-track:fe93c4dae6884cc82144f679422caa15cb69e96f0dd3404d260d5bf704af4f1d` |
| 3 | `theorem` | [laplaceWeight_abs_le_one](../../../../../mathematics/Topology/GeneralTopology/SourceRemainderLaplaceAttempt02/Variant62a1abeec34a6cc23d0d16fe9244a27390f149b44f43bd46edac006ade5b916c.lean/declarations/laplaceweight-abs-le-one--1a3ad3137fb9575f522e8ccd.md) | 27 | `result-track:1a3ad3137fb9575f522e8ccd38457f9028d0070fa1dfb5eb6008bacc4be95a60` |
| 4 | `theorem` | [actual_weighted_remainder_integrable](../../../../../mathematics/Topology/GeneralTopology/SourceRemainderLaplaceAttempt02/Variant62a1abeec34a6cc23d0d16fe9244a27390f149b44f43bd46edac006ade5b916c.lean/declarations/actual-weighted-remainder-integrable--5a1a20fd3baf1a06f79ec2c6.md) | 33 | `result-track:5a1a20fd3baf1a06f79ec2c6e6629aee87d6b380d9c5bfca26e81465ddbb33ce` |
| 5 | `theorem` | [actual_laplace_tendsto_right](../../../../../mathematics/Topology/GeneralTopology/SourceRemainderLaplaceAttempt02/Variant62a1abeec34a6cc23d0d16fe9244a27390f149b44f43bd46edac006ade5b916c.lean/declarations/actual-laplace-tendsto-right--a3cbd753dd60cfd1246f0ed4.md) | 41 | `result-track:a3cbd753dd60cfd1246f0ed4f65fb01d21ae5ef7994a9243acfe67c80249fa89` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
