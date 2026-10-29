# Verification target: Lax Milgram Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0e205e31afdde4e23cd7f99b9dd44da3d553e95d",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/LaxMilgram/Varianteba401b4723e7107cb57769a28232f1f1d1eb670eaca647f7cdc66a9c67091cb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FunctionalAnalysis/LaxMilgramPublic.lean/index.md) · [Full source](../../../../FunctionalAnalysis/LaxMilgramPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0e205e31afdde4e23cd7f99b9dd44da3d553e95d`.

Source path: `GRWTSK/Analysis/LaxMilgram/Varianteba401b4723e7107cb57769a28232f1f1d1eb670eaca647f7cdc66a9c67091cb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/LaxMilgram/Varianteba401b4723e7107cb57769a28232f1f1d1eb670eaca647f7cdc66a9c67091cb.lean.json)

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
| 1 | `theorem` | [bounded_below](../../../../FunctionalAnalysis/LaxMilgramPublic.lean/declarations/bounded-below.md) | 53 | `result-track:e0d0dbd3a86095edfe21272626d84685e3e1e053e1c8c130eab4395ee49a8491` |
| 2 | `theorem` | [antilipschitz](../../../../FunctionalAnalysis/LaxMilgramPublic.lean/declarations/antilipschitz.md) | 66 | `result-track:529d5a2cdca9a1e174788f0a44702776595c5524b20fc9cf1b02020b7a449ea4` |
| 3 | `theorem` | [ker_eq_bot](../../../../FunctionalAnalysis/LaxMilgramPublic.lean/declarations/ker-eq-bot.md) | 74 | `result-track:841e2031bf2dc9462895245f3e73a364ea3765f8d138976cfa60da6df4c5ca03` |
| 4 | `theorem` | [isClosed_range](../../../../FunctionalAnalysis/LaxMilgramPublic.lean/declarations/isclosed-range.md) | 79 | `result-track:eb3f36466263b0f76a1ab3053c36360e8d065cdcf3dd7fe9c26ae84da0460ad0` |
| 5 | `theorem` | [range_eq_top](../../../../FunctionalAnalysis/LaxMilgramPublic.lean/declarations/range-eq-top.md) | 83 | `result-track:5ec42ead379cac17d05a9b6827cdf380e15d81d88cc830fa9381c41ad76caaa1` |
| 6 | `def` | [continuousLinearEquivOfBilin](../../../../FunctionalAnalysis/LaxMilgramPublic.lean/declarations/continuouslinearequivofbilin.md) | 105 | `declaration-track:0a590543899838d6026c893c5ba01b3b3a1d783061d832a58be7ca6eb92fdea2` |
| 7 | `theorem` | [continuousLinearEquivOfBilin_apply](../../../../FunctionalAnalysis/LaxMilgramPublic.lean/declarations/continuouslinearequivofbilin-apply.md) | 109 | `result-track:1db0678e0e7f4c796b13a94213517699b216d053552322c35c5857f51082186e` |
| 8 | `theorem` | [unique_continuousLinearEquivOfBilin](../../../../FunctionalAnalysis/LaxMilgramPublic.lean/declarations/unique-continuouslinearequivofbilin.md) | 113 | `result-track:783ed5f40549dc8d424c097d4d0e1cf9915ccf8e4bd2c94c9a0e85ef019a147c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=79f9ecfda154bef3b5a4c6f6fc03227e22c07941bf70a5c13ffb54d76e8ea266 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/LaxMilgram/Varianteba401b4723e7107cb57769a28232f1f1d1eb670eaca647f7cdc66a9c67091cb.lean","GRWTSK/_verification/specifications/Analysis/LaxMilgram/Varianteba401b4723e7107cb57769a28232f1f1d1eb670eaca647f7cdc66a9c67091cb.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
