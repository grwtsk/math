# Verification target: GRWTSK.Topology.GeneralTopology.Topology.Variant622a2949a5738ab783f58b8589cdc73edbd13385056248b6b0b81b0711bd3cab

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "567b6997cedf167bca5cccafcd16fa5b9a4761f5",
  "lexical_observation_count": 2,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Topology/Variant622a2949a5738ab783f58b8589cdc73edbd13385056248b6b0b81b0711bd3cab.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant622a2949a5738ab783f58b8589cdc73edbd13385056248b6b0b81b0711bd3cab.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant622a2949a5738ab783f58b8589cdc73edbd13385056248b6b0b81b0711bd3cab.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `567b6997cedf167bca5cccafcd16fa5b9a4761f5`.

Source path: `GRWTSK/Topology/GeneralTopology/Topology/Variant622a2949a5738ab783f58b8589cdc73edbd13385056248b6b0b81b0711bd3cab.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Topology/Variant622a2949a5738ab783f58b8589cdc73edbd13385056248b6b0b81b0711bd3cab.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Dynamics.FixedPoints.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Separation.Hausdorff` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [isFixedPt_of_tendsto_iterate](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant622a2949a5738ab783f58b8589cdc73edbd13385056248b6b0b81b0711bd3cab.lean/declarations/isfixedpt-of-tendsto-iterate--dedf7c67cdb21619c471b9b1.md) | 39 | `result-track:dedf7c67cdb21619c471b9b1e19f192cb92b3c49c43bb0fdceb12ca809e15ca0` |
| 2 | `theorem` | [isClosed_fixedPoints](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant622a2949a5738ab783f58b8589cdc73edbd13385056248b6b0b81b0711bd3cab.lean/declarations/isclosed-fixedpoints--fb3ca1a2fdb4af5679e4cfa1.md) | 46 | `result-track:fb3ca1a2fdb4af5679e4cfa123ad5d74bf99a345430c6012a536f2a49a00ebde` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
