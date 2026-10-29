# Verification target: Authorization

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4b2cccb9960c15ef87f939a158cd654b1f5049a1",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Authorization/Variantaae17c697c0140443cad15c042a33eca563a2f764e4cd16748dc3e92f557aaca.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Authorization.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Authorization.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4b2cccb9960c15ef87f939a158cd654b1f5049a1`.

Source path: `GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Authorization/Variantaae17c697c0140443cad15c042a33eca563a2f764e4cd16748dc3e92f557aaca.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Authorization/Variantaae17c697c0140443cad15c042a33eca563a2f764e4cd16748dc3e92f557aaca.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Surface.ContinuousAssurance.Communication` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [ReviewDecision](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Authorization.lean/declarations/reviewdecision.md) | 15 | `declaration-track:be7f42066130944d16ec07377b0f3461da40beaecf676d4243da5c9b75917815` |
| 2 | `structure` | [ReviewRecord](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Authorization.lean/declarations/reviewrecord.md) | 21 | `declaration-track:4ab5f2898abc803dbe236b2fe679c0c487e8746f69e2ca5682e01b2bea604663` |
| 3 | `theorem` | [ReviewRecord.reviewer_is_independent](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Authorization.lean/declarations/reviewrecord-reviewer-is-independent.md) | 30 | `result-track:7fe8b321efa58996c9fa3b8e33fbc2bf6207a4fdf95c6c57217c5d8051337cc5` |
| 4 | `structure` | [AuthorizationRecord](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Authorization.lean/declarations/authorizationrecord.md) | 36 | `declaration-track:7f450cb66097b88931f271d47f24cc334dd1964ed3bf4f6719fdb91bf5d24f63` |
| 5 | `def` | [Authorizes](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Authorization.lean/declarations/authorizes.md) | 56 | `declaration-track:06f158ce33d688e068a27654fac627a593593179cfdac11d69a28fc3c75a75ec` |
| 6 | `theorem` | [authorizes_binds_proposal](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Authorization.lean/declarations/authorizes-binds-proposal.md) | 68 | `result-track:724b814cf76cc66160e5f51d839edd77f8bb2b0a90f1992f2460a0c79d5d2a91` |
| 7 | `theorem` | [authorizes_binds_full_request](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Authorization.lean/declarations/authorizes-binds-full-request.md) | 79 | `result-track:3cda74f3dd820cdf412c53b28535ee855d08c4df43f26a3a8b0af4360b2ef5ea` |
| 8 | `theorem` | [authorizes_binds_snapshot](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Authorization.lean/declarations/authorizes-binds-snapshot.md) | 90 | `result-track:9a6a1b5e793e4367a278e2aa653c4823046c92f61fda426b9ff88151df7e7a75` |
| 9 | `theorem` | [authorizes_binds_patch](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Authorization.lean/declarations/authorizes-binds-patch.md) | 101 | `result-track:4d32a6716711b43174f8589b9ea89f1d85def6613bd937ca159317aa88ec9c88` |
| 10 | `theorem` | [authorizes_binds_statement](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Authorization.lean/declarations/authorizes-binds-statement.md) | 112 | `result-track:d7ec9ca4a07d83f4a1e826804564a5f8cadbbd998bd002a9b9747b61add336be` |
| 11 | `theorem` | [authorizes_binds_category](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Authorization.lean/declarations/authorizes-binds-category.md) | 125 | `result-track:0b4af04b625a70c94f0f7fcf99aff7bdba845978db0bd2b092d9369a9ddbd989` |
| 12 | `theorem` | [cannot_authorize_another_proposal](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Authorization.lean/declarations/cannot-authorize-another-proposal.md) | 136 | `result-track:1cf6f46ef5e7db1b5bae49d8343b6dc963353f31c35ff17f95305ad6dd768b82` |
| 13 | `theorem` | [cannot_authorize_another_snapshot](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Authorization.lean/declarations/cannot-authorize-another-snapshot.md) | 148 | `result-track:7eaffd144a0da56b7a19b7635f5f00205e8ae2c23e3d1b5584eb93ca56540be0` |
| 14 | `theorem` | [cannot_authorize_another_patch](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Authorization.lean/declarations/cannot-authorize-another-patch.md) | 160 | `result-track:3c44e0614cd715c41690b267f350a6025c0bc30355fe812892d8ca4ac327bd24` |
| 15 | `theorem` | [cannot_authorize_another_statement](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Authorization.lean/declarations/cannot-authorize-another-statement.md) | 172 | `result-track:bf10c71e750f752f0a0013f33823cd3ced5f4d9dd885f94ad0dd7ad3cb612f10` |
| 16 | `theorem` | [cannot_authorize_another_category](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Authorization.lean/declarations/cannot-authorize-another-category.md) | 187 | `result-track:f4d076d50383c4ec9f6ba8d5eecedf4855c2c4fd63773f632202678f572cd8d8` |
| 17 | `structure` | [AcceptedSourceChange](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Authorization.lean/declarations/acceptedsourcechange.md) | 202 | `declaration-track:613d047c18b08c350d0332ff32c816f27e48e66541106b4f5a78806ec5488650` |
| 18 | `theorem` | [accepted_source_change_requires_authorization](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Authorization.lean/declarations/accepted-source-change-requires-authorization.md) | 211 | `result-track:948627e268ef08bb32382a84b791be75b23ca7d4df5964aa3f30da7ce0370819` |
| 19 | `theorem` | [unauthorized_proposal_cannot_be_accepted](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Authorization.lean/declarations/unauthorized-proposal-cannot-be-accepted.md) | 218 | `result-track:e6197f97d4c8ecb427db58d87954ba1f4ae760507005445d31cd8765834799c1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3cb46aa18bf893ab7881fd70cadd7cd537b3f1032debda48c3c132b829558724 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Authorization/Variantaae17c697c0140443cad15c042a33eca563a2f764e4cd16748dc3e92f557aaca.lean","GRWTSK/_verification/specifications/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Authorization/Variantaae17c697c0140443cad15c042a33eca563a2f764e4cd16748dc3e92f557aaca.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
