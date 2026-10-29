# Verification target: GRWTSK.Topology.GeneralTopology.Interval.Variant11dacbbf7a626989077e3c33bc01cd1d23018c652c0b9e40f6ab85b76cb81ec4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3fcd44115781dc5501a6acab15964937dfae07d1",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Interval/Variant11dacbbf7a626989077e3c33bc01cd1d23018c652c0b9e40f6ab85b76cb81ec4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../Topology/GeneralTopology/Interval/Variant11dacbbf7a626989077e3c33bc01cd1d23018c652c0b9e40f6ab85b76cb81ec4.lean/index.md) · [Full source](../../../../../../Topology/GeneralTopology/Interval/Variant11dacbbf7a626989077e3c33bc01cd1d23018c652c0b9e40f6ab85b76cb81ec4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3fcd44115781dc5501a6acab15964937dfae07d1`.

Source path: `GRWTSK/Topology/GeneralTopology/Interval/Variant11dacbbf7a626989077e3c33bc01cd1d23018c652c0b9e40f6ab85b76cb81ec4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Interval/Variant11dacbbf7a626989077e3c33bc01cd1d23018c652c0b9e40f6ab85b76cb81ec4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Integrals.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Order.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [mem_Icc](../../../../../../Topology/GeneralTopology/Interval/Variant11dacbbf7a626989077e3c33bc01cd1d23018c652c0b9e40f6ab85b76cb81ec4.lean/declarations/mem-icc--6a67e09502a40fe1cf508c20.md) | 40 | `declaration-track:6a67e09502a40fe1cf508c2090a74342b2dfa4d20d3c17b36db91b1c2e829434` |
| 2 | `theorem` | [mem_Icc_iff](../../../../../../Topology/GeneralTopology/Interval/Variant11dacbbf7a626989077e3c33bc01cd1d23018c652c0b9e40f6ab85b76cb81ec4.lean/declarations/mem-icc-iff--e2c33508341d3680ef5911a2.md) | 42 | `result-track:e2c33508341d3680ef5911a29abfa6bfefb31637fdaa12e3dfe4c22cc378ca26` |
| 3 | `theorem` | [add_mem_Icc](../../../../../../Topology/GeneralTopology/Interval/Variant11dacbbf7a626989077e3c33bc01cd1d23018c652c0b9e40f6ab85b76cb81ec4.lean/declarations/add-mem-icc--252427a1247c01c38eac8109.md) | 51 | `result-track:252427a1247c01c38eac81094ac1d25f05411ea970e18e042a8ea553c736d4bd` |
| 4 | `theorem` | [neg_mem_Icc](../../../../../../Topology/GeneralTopology/Interval/Variant11dacbbf7a626989077e3c33bc01cd1d23018c652c0b9e40f6ab85b76cb81ec4.lean/declarations/neg-mem-icc--78e6bb7ba58194c0979d8882.md) | 57 | `result-track:78e6bb7ba58194c0979d88829a94dd8d05704eeacc50d7da4ed08b01821d70a0` |
| 5 | `theorem` | [sub_mem_Icc](../../../../../../Topology/GeneralTopology/Interval/Variant11dacbbf7a626989077e3c33bc01cd1d23018c652c0b9e40f6ab85b76cb81ec4.lean/declarations/sub-mem-icc--01dee259765c9371b1957899.md) | 63 | `result-track:01dee259765c9371b19578993f7c07771c522897b8c82626772c0f21129b87fc` |
| 6 | `theorem` | [Icc_convex](../../../../../../Topology/GeneralTopology/Interval/Variant11dacbbf7a626989077e3c33bc01cd1d23018c652c0b9e40f6ab85b76cb81ec4.lean/declarations/icc-convex--76f6c939131c2e32005a3559.md) | 71 | `result-track:76f6c939131c2e32005a3559391f502df3b8008becc3deacf54b513349455b43` |
| 7 | `theorem` | [Icc_compact](../../../../../../Topology/GeneralTopology/Interval/Variant11dacbbf7a626989077e3c33bc01cd1d23018c652c0b9e40f6ab85b76cb81ec4.lean/declarations/icc-compact--022bc25cee7398284d1f33ea.md) | 76 | `result-track:022bc25cee7398284d1f33ea3c28259aa0dd56d87d08de67f3f704ece97e5838` |
| 8 | `theorem` | [continuous_Icc_bounds](../../../../../../Topology/GeneralTopology/Interval/Variant11dacbbf7a626989077e3c33bc01cd1d23018c652c0b9e40f6ab85b76cb81ec4.lean/declarations/continuous-icc-bounds--573561cb1f4f414ffb2ff78d.md) | 81 | `result-track:573561cb1f4f414ffb2ff78d2c9c85528ee90f28e78072dcc2b26a7ae02ae656` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b59b79d78da90af7c8529d89cebaa8948f26be878dd0924ae4c8af6b548218cb -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Interval/Variant11dacbbf7a626989077e3c33bc01cd1d23018c652c0b9e40f6ab85b76cb81ec4.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Interval/Variant11dacbbf7a626989077e3c33bc01cd1d23018c652c0b9e40f6ab85b76cb81ec4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
