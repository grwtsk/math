# Verification target: GRWTSK.Topology.GeneralTopology.TruncatedDivisorResidual.Variant9549d6384057a08ac68c36728d7f4d3615ea9bdeeccdcd49a64a3ba7b1c92f31

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "05c09f58b33946fbfca88bc36bf4041d31844db8",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/TruncatedDivisorResidual/Variant9549d6384057a08ac68c36728d7f4d3615ea9bdeeccdcd49a64a3ba7b1c92f31.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/TruncatedDivisorResidual/Variant9549d6384057a08ac68c36728d7f4d3615ea9bdeeccdcd49a64a3ba7b1c92f31.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/TruncatedDivisorResidual/Variant9549d6384057a08ac68c36728d7f4d3615ea9bdeeccdcd49a64a3ba7b1c92f31.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `05c09f58b33946fbfca88bc36bf4041d31844db8`.

Source path: `GRWTSK/Topology/GeneralTopology/TruncatedDivisorResidual/Variant9549d6384057a08ac68c36728d7f4d3615ea9bdeeccdcd49a64a3ba7b1c92f31.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/TruncatedDivisorResidual/Variant9549d6384057a08ac68c36728d7f4d3615ea9bdeeccdcd49a64a3ba7b1c92f31.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceComparison.DivisorFloorTransport` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [truncatedDivisorCoefficient](../../../../../mathematics/Topology/GeneralTopology/TruncatedDivisorResidual/Variant9549d6384057a08ac68c36728d7f4d3615ea9bdeeccdcd49a64a3ba7b1c92f31.lean/declarations/truncateddivisorcoefficient--944ea0dcb135d1c2ebbb1e9a.md) | 22 | `declaration-track:944ea0dcb135d1c2ebbb1e9a3f182dcf912c50977a627ff32f1c572b1d676f1a` |
| 2 | `theorem` | [truncatedDivisorCoefficient_eq_full](../../../../../mathematics/Topology/GeneralTopology/TruncatedDivisorResidual/Variant9549d6384057a08ac68c36728d7f4d3615ea9bdeeccdcd49a64a3ba7b1c92f31.lean/declarations/truncateddivisorcoefficient-eq-full--3b39a00d3998de88f9e18007.md) | 27 | `result-track:3b39a00d3998de88f9e18007085268f058af6dc5bd1a9faf04d8fb9469fd3fe3` |
| 3 | `theorem` | [finite_floor_prefix](../../../../../mathematics/Topology/GeneralTopology/TruncatedDivisorResidual/Variant9549d6384057a08ac68c36728d7f4d3615ea9bdeeccdcd49a64a3ba7b1c92f31.lean/declarations/finite-floor-prefix--0126807dae6ec9d0191c1c1c.md) | 35 | `result-track:0126807dae6ec9d0191c1c1ca2a6d33a05ec4282cb85c31b7f44750ea93d68d6` |
| 4 | `theorem` | [damped_floor_eq_truncated_prefix](../../../../../mathematics/Topology/GeneralTopology/TruncatedDivisorResidual/Variant9549d6384057a08ac68c36728d7f4d3615ea9bdeeccdcd49a64a3ba7b1c92f31.lean/declarations/damped-floor-eq-truncated-prefix--f2e0ac98cecd407724fafce8.md) | 64 | `result-track:f2e0ac98cecd407724fafce83853dad06100e6628a5ebbb66aa9eb1fb4949f9b` |
| 5 | `theorem` | [residual_floor](../../../../../mathematics/Topology/GeneralTopology/TruncatedDivisorResidual/Variant9549d6384057a08ac68c36728d7f4d3615ea9bdeeccdcd49a64a3ba7b1c92f31.lean/declarations/residual-floor--d9de7f0c53960331f65f9351.md) | 74 | `result-track:d9de7f0c53960331f65f9351be5456c8e2327273622533d8e50c1909d4ecf73b` |
| 6 | `theorem` | [arithmeticResidual_eq_truncated_prefix](../../../../../mathematics/Topology/GeneralTopology/TruncatedDivisorResidual/Variant9549d6384057a08ac68c36728d7f4d3615ea9bdeeccdcd49a64a3ba7b1c92f31.lean/declarations/arithmeticresidual-eq-truncated-prefix--90c810ef62ef00c10169905a.md) | 92 | `result-track:90c810ef62ef00c10169905ab6d03ca001173d518152351776293d4e2b08bd90` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
