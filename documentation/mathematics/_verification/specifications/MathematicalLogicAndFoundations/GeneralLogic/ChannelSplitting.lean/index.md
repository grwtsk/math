# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.FiniteSets.ChannelSplitting

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "24a87668f8e50d762bf4388aed8c40ebf2278bfa",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/FiniteSets/ChannelSplitting.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ChannelSplitting.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ChannelSplitting.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `24a87668f8e50d762bf4388aed8c40ebf2278bfa`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/FiniteSets/ChannelSplitting.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/FiniteSets/ChannelSplitting.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Residual](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ChannelSplitting.lean/declarations/residual.md) | 14 | `declaration-track:38c53664351a3d1381b24671f3c6f1f7d47b73786c05ac6a95d72a27999d8dac` |
| 2 | `theorem` | [lossless](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ChannelSplitting.lean/declarations/lossless.md) | 17 | `result-track:b76a00c2b87db658004b41d764b3bc5d4fce1c9821bce45b8da855d6d6ca1540` |
| 3 | `theorem` | [filter_split](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ChannelSplitting.lean/declarations/filter-split.md) | 24 | `result-track:702ba1446076288245904d65ba90d1cafe6f2e1835834d71c01e1de91cdbacb6` |
| 4 | `theorem` | [residual_disjoint](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ChannelSplitting.lean/declarations/residual-disjoint.md) | 34 | `result-track:b3123d434f9ffd83701ebbf8968c2394fb148ddb72fde38de489105b8069dbe3` |
| 5 | `theorem` | [routing_does_not_imply_payload](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ChannelSplitting.lean/declarations/routing-does-not-imply-payload.md) | 38 | `result-track:dd64ccbee83d815aa5bd72a6131804323a0ad18bb690cff249f39ae449ab90df` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d1ea685cc24e35effd6eee7c466eab7c4c3cc401c1b5e252906e7f7eaf8dbda5 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/FiniteSets/ChannelSplitting.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/FiniteSets/ChannelSplitting.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
