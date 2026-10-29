# Verification target: Proper Space Lemmas Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ace82b8ec65e0dedff15fb47fe8933f7f112d140",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Lemmas/Variant50984cd8d85bb54554db1fc69f7f518fd2dec39cf2bf637d61a068acb939a65f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/ProperSpaceLemmasNamespaced.lean/index.md) · [Full source](../../../../GeneralTopology/ProperSpaceLemmasNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ace82b8ec65e0dedff15fb47fe8933f7f112d140`.

Source path: `GRWTSK/Topology/GeneralTopology/Lemmas/Variant50984cd8d85bb54554db1fc69f7f518fd2dec39cf2bf637d61a068acb939a65f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Lemmas/Variant50984cd8d85bb54554db1fc69f7f518fd2dec39cf2bf637d61a068acb939a65f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Order.Compact` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.MetricSpace.ProperSpace` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Order.IntermediateValue` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Order.LocalExtr` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [exists_pos_lt_subset_ball](../../../../GeneralTopology/ProperSpaceLemmasNamespaced.lean/declarations/exists-pos-lt-subset-ball.md) | 38 | `result-track:96f6ce901c14f1528c1a8d10cf8f372f5a5bbba11ecadca4e4b3b69a1f56070b` |
| 2 | `theorem` | [exists_lt_subset_ball](../../../../GeneralTopology/ProperSpaceLemmasNamespaced.lean/declarations/exists-lt-subset-ball.md) | 52 | `result-track:ee75391da3440b13d7aa87e5add94a6989c2fe058adfac37b0b4674df5e65c61` |
| 3 | `theorem` | [Metric.exists_isLocalMin_mem_ball](../../../../GeneralTopology/ProperSpaceLemmasNamespaced.lean/declarations/metric-exists-islocalmin-mem-ball.md) | 59 | `result-track:51f69d1b80975801a561495a5711348d2a340f241407dce203a7d2bc3312ff77` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=00167923fdb6ad6c6d0a58619cce0bf1ce3744d38ae1221c9280015ae994007d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Lemmas/Variant50984cd8d85bb54554db1fc69f7f518fd2dec39cf2bf637d61a068acb939a65f.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Lemmas/Variant50984cd8d85bb54554db1fc69f7f518fd2dec39cf2bf637d61a068acb939a65f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
