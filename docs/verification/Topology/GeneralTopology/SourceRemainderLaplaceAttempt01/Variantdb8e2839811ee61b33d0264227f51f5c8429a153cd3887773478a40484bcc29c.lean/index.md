# Verification target: GRWTSK.Topology.GeneralTopology.SourceRemainderLaplaceAttempt01.Variantdb8e2839811ee61b33d0264227f51f5c8429a153cd3887773478a40484bcc29c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6d79487de668697c9ee5c9b07c0245830675a8f2",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/SourceRemainderLaplaceAttempt01/Variantdb8e2839811ee61b33d0264227f51f5c8429a153cd3887773478a40484bcc29c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/SourceRemainderLaplaceAttempt01/Variantdb8e2839811ee61b33d0264227f51f5c8429a153cd3887773478a40484bcc29c.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/SourceRemainderLaplaceAttempt01/Variantdb8e2839811ee61b33d0264227f51f5c8429a153cd3887773478a40484bcc29c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6d79487de668697c9ee5c9b07c0245830675a8f2`.

Source path: `GRWTSK/Topology/GeneralTopology/SourceRemainderLaplaceAttempt01/Variantdb8e2839811ee61b33d0264227f51f5c8429a153cd3887773478a40484bcc29c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/SourceRemainderLaplaceAttempt01/Variantdb8e2839811ee61b33d0264227f51f5c8429a153cd3887773478a40484bcc29c.lean.json)

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
| 1 | `def` | [actualRemainder](../../../../../mathematics/Topology/GeneralTopology/SourceRemainderLaplaceAttempt01/Variantdb8e2839811ee61b33d0264227f51f5c8429a153cd3887773478a40484bcc29c.lean/declarations/actualremainder--8b298b0ae65803ce70f31957.md) | 21 | `declaration-track:8b298b0ae65803ce70f3195792309b4ce8e2854ea618a2e4421673e9b5e24e7f` |
| 2 | `def` | [actualLaplace](../../../../../mathematics/Topology/GeneralTopology/SourceRemainderLaplaceAttempt01/Variantdb8e2839811ee61b33d0264227f51f5c8429a153cd3887773478a40484bcc29c.lean/declarations/actuallaplace--ab1e389b4f3763b7438670f8.md) | 24 | `declaration-track:ab1e389b4f3763b7438670f8b5070289b6b4454d607626cfdaf843423b07f565` |
| 3 | `theorem` | [laplaceWeight_abs_le_one](../../../../../mathematics/Topology/GeneralTopology/SourceRemainderLaplaceAttempt01/Variantdb8e2839811ee61b33d0264227f51f5c8429a153cd3887773478a40484bcc29c.lean/declarations/laplaceweight-abs-le-one--5845e01707d4a5b74e8535d6.md) | 27 | `result-track:5845e01707d4a5b74e8535d63961af0641fa32d511790d4511e402358cab720f` |
| 4 | `theorem` | [actual_weighted_remainder_integrable](../../../../../mathematics/Topology/GeneralTopology/SourceRemainderLaplaceAttempt01/Variantdb8e2839811ee61b33d0264227f51f5c8429a153cd3887773478a40484bcc29c.lean/declarations/actual-weighted-remainder-integrable--ffd0c4a45fc7ca3b4d64df44.md) | 33 | `result-track:ffd0c4a45fc7ca3b4d64df44395e5d9009b8ce3c31cf7d841d607070b56867ed` |
| 5 | `theorem` | [actual_laplace_tendsto_right](../../../../../mathematics/Topology/GeneralTopology/SourceRemainderLaplaceAttempt01/Variantdb8e2839811ee61b33d0264227f51f5c8429a153cd3887773478a40484bcc29c.lean/declarations/actual-laplace-tendsto-right--2e31ee99410d33c72d0471dd.md) | 41 | `result-track:2e31ee99410d33c72d0471dd96dae21e6f4105034c4e71d05dfb7893a58524ca` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
