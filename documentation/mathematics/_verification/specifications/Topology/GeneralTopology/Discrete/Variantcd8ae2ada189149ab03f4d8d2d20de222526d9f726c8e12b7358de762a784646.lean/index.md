# Verification target: GRWTSK.Topology.GeneralTopology.Discrete.Variantcd8ae2ada189149ab03f4d8d2d20de222526d9f726c8e12b7358de762a784646

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4acd7704810695888ef965ba1ee7545150165bc3",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Discrete/Variantcd8ae2ada189149ab03f4d8d2d20de222526d9f726c8e12b7358de762a784646.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../Topology/GeneralTopology/Discrete/Variantcd8ae2ada189149ab03f4d8d2d20de222526d9f726c8e12b7358de762a784646.lean/index.md) · [Full source](../../../../../../Topology/GeneralTopology/Discrete/Variantcd8ae2ada189149ab03f4d8d2d20de222526d9f726c8e12b7358de762a784646.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4acd7704810695888ef965ba1ee7545150165bc3`.

Source path: `GRWTSK/Topology/GeneralTopology/Discrete/Variantcd8ae2ada189149ab03f4d8d2d20de222526d9f726c8e12b7358de762a784646.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Discrete/Variantcd8ae2ada189149ab03f4d8d2d20de222526d9f726c8e12b7358de762a784646.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Order.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Order.SuccPred.LinearLocallyFinite` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../../Topology/GeneralTopology/Discrete/Variantcd8ae2ada189149ab03f4d8d2d20de222526d9f726c8e12b7358de762a784646.lean/declarations/instance--738f17cd9131fcf12727b497.md) | 28 | `declaration-track:738f17cd9131fcf12727b4975af8c6ad7ee7ad19776d0cfe3610ecad4de3c90b` |
| 2 | `instance` | [(anonymous)](../../../../../../Topology/GeneralTopology/Discrete/Variantcd8ae2ada189149ab03f4d8d2d20de222526d9f726c8e12b7358de762a784646.lean/declarations/instance--a207903205726c937c3b9d3b.md) | 32 | `declaration-track:a207903205726c937c3b9d3b4ab817bb2956a115674e9f5bf91aa3b74fbabaf4` |
| 3 | `theorem` | [LinearOrder.bot_topologicalSpace_eq_generateFrom](../../../../../../Topology/GeneralTopology/Discrete/Variantcd8ae2ada189149ab03f4d8d2d20de222526d9f726c8e12b7358de762a784646.lean/declarations/linearorder-bot-topologicalspace-eq-generatefrom--fb9ccd2e3794a69277628da4.md) | 40 | `result-track:fb9ccd2e3794a69277628da4c96b8b71621dfc3bd8eee452d2843d2d8561bf5b` |
| 4 | `theorem` | [discreteTopology_iff_orderTopology_of_pred_succ](../../../../../../Topology/GeneralTopology/Discrete/Variantcd8ae2ada189149ab03f4d8d2d20de222526d9f726c8e12b7358de762a784646.lean/declarations/discretetopology-iff-ordertopology-of-pred-succ--e255892984f82e6ef60306cf.md) | 50 | `result-track:e255892984f82e6ef60306cf39128ae0d4e3098eb701220d88b7b6ab69325d51` |
| 5 | `instance` | [OrderTopology.of_discreteTopology](../../../../../../Topology/GeneralTopology/Discrete/Variantcd8ae2ada189149ab03f4d8d2d20de222526d9f726c8e12b7358de762a784646.lean/declarations/ordertopology-of-discretetopology--fad75a968bf77f5fd9cc5999.md) | 59 | `declaration-track:fad75a968bf77f5fd9cc59995dab55670f7f3192790934c9ba002f82f0a09279` |
| 6 | `instance` | [OrderTopology.of_linearLocallyFinite](../../../../../../Topology/GeneralTopology/Discrete/Variantcd8ae2ada189149ab03f4d8d2d20de222526d9f726c8e12b7358de762a784646.lean/declarations/ordertopology-of-linearlocallyfinite--8e436804eda727a44d89097c.md) | 63 | `declaration-track:8e436804eda727a44d89097c0d9c0a752ba9327206f8d4d50b85fa0fa753126b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6c087396941fff3d1151d0fbe6f1f0ca700c23ed7649ad0330fc3a142f039615 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Discrete/Variantcd8ae2ada189149ab03f4d8d2d20de222526d9f726c8e12b7358de762a784646.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Discrete/Variantcd8ae2ada189149ab03f4d8d2d20de222526d9f726c8e12b7358de762a784646.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
