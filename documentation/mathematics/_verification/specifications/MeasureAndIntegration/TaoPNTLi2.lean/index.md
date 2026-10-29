# Verification target: Tao PNTLi2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6d804da7ff17157bb958bbbbe5b0182c2ac568e9",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/TaoPNTLi2/Variantd540692bf17d30c3e7da6dec54cb95fec6f802795bc3f5de9a6d6118570f558e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/TaoPNTLi2.lean/index.md) · [Full source](../../../../MeasureAndIntegration/TaoPNTLi2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6d804da7ff17157bb958bbbbe5b0182c2ac568e9`.

Source path: `GRWTSK/Topology/GeneralTopology/TaoPNTLi2/Variantd540692bf17d30c3e7da6dec54cb95fec6f802795bc3f5de9a6d6118570f558e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/TaoPNTLi2/Variantd540692bf17d30c3e7da6dec54cb95fec6f802795bc3f5de9a6d6118570f558e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `LeanCert` — import line 6; external provider; requires a separately pinned dependency.
- `LeanCert.Engine.TaylorModel.Log1p` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [symmetric_combination_removable_singularity](../../../../MeasureAndIntegration/TaoPNTLi2.lean/declarations/symmetric-combination-removable-singularity.md) | 34 | `result-track:c8c8d15d90c124215f01462c424f5aafea608d4c2956eabf949bddc150d5c06e` |
| 2 | `theorem` | [symmetric_combination_bounded](../../../../MeasureAndIntegration/TaoPNTLi2.lean/declarations/symmetric-combination-bounded.md) | 41 | `result-track:798882914ca9118d8c5b8b03de0c0422b524c83048366f35caaa3e8ce78283c6` |
| 3 | `theorem` | [symmetric_combination_alt_form](../../../../MeasureAndIntegration/TaoPNTLi2.lean/declarations/symmetric-combination-alt-form.md) | 46 | `result-track:954c0d783df3931f29d41fe0dbbe8846380253841184408bb90b53821c6aacb0` |
| 4 | `def` | [li2](../../../../MeasureAndIntegration/TaoPNTLi2.lean/declarations/li2.md) | 65 | `declaration-track:efc7226d1ac26b34c8e9a44c7840ba2a24c9e52da1097506b5d771452cae2dad` |
| 5 | `theorem` | [li2_le_two](../../../../MeasureAndIntegration/TaoPNTLi2.lean/declarations/li2-le-two.md) | 74 | `result-track:03fd257097647cceadd8015ed8131eebceb62822ebc1a950fdc7667d33d8d177` |
| 6 | `theorem` | [li2_pos](../../../../MeasureAndIntegration/TaoPNTLi2.lean/declarations/li2-pos.md) | 78 | `result-track:0f9a41d20c13ef60d2ef1d70ed492ec9990c6014717d6e9e94d49e858289aed7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a264b600177f2d63864ae7ab6eb6dfd3cab8b5651d269beed7bf8417c221989c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/TaoPNTLi2/Variantd540692bf17d30c3e7da6dec54cb95fec6f802795bc3f5de9a6d6118570f558e.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/TaoPNTLi2/Variantd540692bf17d30c3e7da6dec54cb95fec6f802795bc3f5de9a6d6118570f558e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
