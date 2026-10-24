# Verification target: GRWTSK.Topology.GeneralTopology.SourceRemainderLaplaceAttempt01.Variantf87a44d985bde8aea3f62b190f8a04d765d74cd07bfeb4264fe26b32068b2fa0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "84a4d86f66e714d53e703f1fc825deb0aa9c6872",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/SourceRemainderLaplaceAttempt01/Variantf87a44d985bde8aea3f62b190f8a04d765d74cd07bfeb4264fe26b32068b2fa0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/SourceRemainderLaplaceAttempt01/Variantf87a44d985bde8aea3f62b190f8a04d765d74cd07bfeb4264fe26b32068b2fa0.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/SourceRemainderLaplaceAttempt01/Variantf87a44d985bde8aea3f62b190f8a04d765d74cd07bfeb4264fe26b32068b2fa0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `84a4d86f66e714d53e703f1fc825deb0aa9c6872`.

Source path: `GRWTSK/Topology/GeneralTopology/SourceRemainderLaplaceAttempt01/Variantf87a44d985bde8aea3f62b190f8a04d765d74cd07bfeb4264fe26b32068b2fa0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/SourceRemainderLaplaceAttempt01/Variantf87a44d985bde8aea3f62b190f8a04d765d74cd07bfeb4264fe26b32068b2fa0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceMangoldtAbel` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.DominatedConvergence` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [actualRemainder](../../../../../mathematics/Topology/GeneralTopology/SourceRemainderLaplaceAttempt01/Variantf87a44d985bde8aea3f62b190f8a04d765d74cd07bfeb4264fe26b32068b2fa0.lean/declarations/actualremainder--86eaebf8c58221d161b0ab75.md) | 13 | `declaration-track:86eaebf8c58221d161b0ab75a5264e8c5342efc9dd910c3bda8cbb48be128a77` |
| 2 | `def` | [actualLaplace](../../../../../mathematics/Topology/GeneralTopology/SourceRemainderLaplaceAttempt01/Variantf87a44d985bde8aea3f62b190f8a04d765d74cd07bfeb4264fe26b32068b2fa0.lean/declarations/actuallaplace--128efaa4cdd464bc0824c64c.md) | 16 | `declaration-track:128efaa4cdd464bc0824c64c10868a664a10c82b91b1821c8e7d16cfd323b103` |
| 3 | `theorem` | [laplaceWeight_abs_le_one](../../../../../mathematics/Topology/GeneralTopology/SourceRemainderLaplaceAttempt01/Variantf87a44d985bde8aea3f62b190f8a04d765d74cd07bfeb4264fe26b32068b2fa0.lean/declarations/laplaceweight-abs-le-one--7ce7b2f264bc0f3db14a7b79.md) | 19 | `result-track:7ce7b2f264bc0f3db14a7b798232658750d4cae4a0123312d3cdda99dda0fe52` |
| 4 | `theorem` | [actual_weighted_remainder_integrable](../../../../../mathematics/Topology/GeneralTopology/SourceRemainderLaplaceAttempt01/Variantf87a44d985bde8aea3f62b190f8a04d765d74cd07bfeb4264fe26b32068b2fa0.lean/declarations/actual-weighted-remainder-integrable--8a55474cd2a6d2f49715fb3a.md) | 25 | `result-track:8a55474cd2a6d2f49715fb3aad144217fb707ce2ab88431950db346a8b4909b2` |
| 5 | `theorem` | [actual_laplace_tendsto_right](../../../../../mathematics/Topology/GeneralTopology/SourceRemainderLaplaceAttempt01/Variantf87a44d985bde8aea3f62b190f8a04d765d74cd07bfeb4264fe26b32068b2fa0.lean/declarations/actual-laplace-tendsto-right--d16fd372aa0a0f5882df6dff.md) | 33 | `result-track:d16fd372aa0a0f5882df6dff04c0b421e7999d5b46d49c05ef85a7a7bbe182af` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
