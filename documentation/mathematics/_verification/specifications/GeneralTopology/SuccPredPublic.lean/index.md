# Verification target: Succ Pred Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8202120bfb699f6aad17c1f5c7c82d5c952e5a9f",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/SuccPred/Variant8738b69889aeee119516b52627283dda8ddcc1e632a04909f53a162698e72a01.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/SuccPredPublic.lean/index.md) · [Full source](../../../../GeneralTopology/SuccPredPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8202120bfb699f6aad17c1f5c7c82d5c952e5a9f`.

Source path: `GRWTSK/Topology/GeneralTopology/SuccPred/Variant8738b69889aeee119516b52627283dda8ddcc1e632a04909f53a162698e72a01.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/SuccPred/Variant8738b69889aeee119516b52627283dda8ddcc1e632a04909f53a162698e72a01.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [isOpen_singleton_of_not_isSuccPrelimit](../../../../GeneralTopology/SuccPredPublic.lean/declarations/isopen-singleton-of-not-issuccprelimit.md) | 31 | `result-track:ed1fa5ffa86ae26f55ad8095b33fda482128c5ae4f7ab151b57224bd14d228f5` |
| 2 | `theorem` | [isOpen_singleton_iff](../../../../GeneralTopology/SuccPredPublic.lean/declarations/isopen-singleton-iff.md) | 43 | `result-track:e1b70702db88276d6383b2b9715b41444692460f6f3cd1ff58d7a9c3feb89188` |
| 3 | `theorem` | [nhds_eq_pure](../../../../GeneralTopology/SuccPredPublic.lean/declarations/nhds-eq-pure.md) | 58 | `result-track:16873b8bc23811c39ae0660b2645c350082c3300bb76fba3c6e7eb5bff164c5e` |
| 4 | `theorem` | [nhds_of_isMin](../../../../GeneralTopology/SuccPredPublic.lean/declarations/nhds-of-ismin.md) | 62 | `result-track:0127ced1f92eb17016945e604ed503272154586f82949b9a57d9a81b05460cad` |
| 5 | `theorem` | [nhds_bot](../../../../GeneralTopology/SuccPredPublic.lean/declarations/nhds-bot.md) | 67 | `result-track:0e2290e8dd20fedc703609a77f2f7caddba9e8e7c3e7e4530e586ecc16b109e0` |
| 6 | `theorem` | [isOpen_iff](../../../../GeneralTopology/SuccPredPublic.lean/declarations/isopen-iff.md) | 71 | `result-track:5654300195c49ee74d6a32d168baa7eabf592f640d894e9e69a5b3082aaf805e` |
| 7 | `theorem` | [accPt_principal](../../../../GeneralTopology/SuccPredPublic.lean/declarations/accpt-principal.md) | 80 | `result-track:3002257961b4aceb219759effcef591dadb864b582cbad12927492429cc77734` |
| 8 | `theorem` | [_root_.AccPt.not_isMin](../../../../GeneralTopology/SuccPredPublic.lean/declarations/root-accpt-not-ismin.md) | 90 | `result-track:ee6966b43f1cada27d89d246811a27fa88854cee2cd95156f83bbec3c13a8d18` |
| 9 | `theorem` | [_root_.AccPt.isSuccLimit](../../../../GeneralTopology/SuccPredPublic.lean/declarations/root-accpt-issucclimit.md) | 94 | `result-track:1737590bb83b22b217798ad97fb94b0de51f7e4b286504ee2ddb4bb0f5d449f8` |
| 10 | `theorem` | [isSuccLimit_of_mem_frontier](../../../../GeneralTopology/SuccPredPublic.lean/declarations/issucclimit-of-mem-frontier.md) | 100 | `result-track:56c250375766192e75a051fa34295b595c4ffc96b04c89cf03a6f925bea17270` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=823168b2206f4f136b46f6f123ab7260c799336a2984038a7861d2f2416037c1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/SuccPred/Variant8738b69889aeee119516b52627283dda8ddcc1e632a04909f53a162698e72a01.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/SuccPred/Variant8738b69889aeee119516b52627283dda8ddcc1e632a04909f53a162698e72a01.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
