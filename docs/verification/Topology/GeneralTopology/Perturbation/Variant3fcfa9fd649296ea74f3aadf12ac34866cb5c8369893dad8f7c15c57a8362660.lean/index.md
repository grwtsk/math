# Verification target: GRWTSK.Topology.GeneralTopology.Perturbation.Variant3fcfa9fd649296ea74f3aadf12ac34866cb5c8369893dad8f7c15c57a8362660

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "91fb5eab5ac244f46edcad8ca60b50a6d874d07a",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Perturbation/Variant3fcfa9fd649296ea74f3aadf12ac34866cb5c8369893dad8f7c15c57a8362660.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Perturbation/Variant3fcfa9fd649296ea74f3aadf12ac34866cb5c8369893dad8f7c15c57a8362660.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Perturbation/Variant3fcfa9fd649296ea74f3aadf12ac34866cb5c8369893dad8f7c15c57a8362660.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `91fb5eab5ac244f46edcad8ca60b50a6d874d07a`.

Source path: `GRWTSK/Topology/GeneralTopology/Perturbation/Variant3fcfa9fd649296ea74f3aadf12ac34866cb5c8369893dad8f7c15c57a8362660.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Perturbation/Variant3fcfa9fd649296ea74f3aadf12ac34866cb5c8369893dad8f7c15c57a8362660.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.StratifiedBoundary.Boundary.LimitKernel` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [LimitInvariantLawPerturbation](../../../../../mathematics/Topology/GeneralTopology/Perturbation/Variant3fcfa9fd649296ea74f3aadf12ac34866cb5c8369893dad8f7c15c57a8362660.lean/declarations/limitinvariantlawperturbation--fb8b44b28f55414ec507635c.md) | 24 | `declaration-track:fb8b44b28f55414ec507635caab75b9b7d292b35aaf16f81d2a2609582db9157` |
| 2 | `theorem` | [limit_invariant_law_perturbation_bound](../../../../../mathematics/Topology/GeneralTopology/Perturbation/Variant3fcfa9fd649296ea74f3aadf12ac34866cb5c8369893dad8f7c15c57a8362660.lean/declarations/limit-invariant-law-perturbation-bound--87e92ff3e1f3b4e9b4d609dc.md) | 52 | `result-track:87e92ff3e1f3b4e9b4d609dc341e6f87f701bcfd85d6bad0b308c02079bd574d` |
| 3 | `structure` | [StratumConnectorDefect](../../../../../mathematics/Topology/GeneralTopology/Perturbation/Variant3fcfa9fd649296ea74f3aadf12ac34866cb5c8369893dad8f7c15c57a8362660.lean/declarations/stratumconnectordefect--b1714b2ec543c2a598f8a6ff.md) | 139 | `declaration-track:b1714b2ec543c2a598f8a6ffcec0a213481c4be4b952a8162ca161059590b2c8` |
| 4 | `def` | [StratumConnectorDefect.residualRadius](../../../../../mathematics/Topology/GeneralTopology/Perturbation/Variant3fcfa9fd649296ea74f3aadf12ac34866cb5c8369893dad8f7c15c57a8362660.lean/declarations/stratumconnectordefect-residualradius--0a6c318639a3d026678c1970.md) | 146 | `declaration-track:0a6c318639a3d026678c1970ac46a5b0d798f2d05214ca7a65a886df36bedfb3` |
| 5 | `structure` | [LimitCoherenceResidual](../../../../../mathematics/Topology/GeneralTopology/Perturbation/Variant3fcfa9fd649296ea74f3aadf12ac34866cb5c8369893dad8f7c15c57a8362660.lean/declarations/limitcoherenceresidual--73a99ddc18b4bb9032f72d04.md) | 151 | `declaration-track:73a99ddc18b4bb9032f72d04ea1afdd4d99850979196e77a13a05816a3f3260d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
