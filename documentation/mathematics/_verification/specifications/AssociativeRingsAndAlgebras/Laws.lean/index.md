# Verification target: Laws

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d8aedbb45b708def1d6539a1c764cf0ff9804be2",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Laws/Variantcf4750a4d1cb71655389a4dc25134e182989aed118efdde7ea8ce558297263be.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../AssociativeRingsAndAlgebras/Laws.lean/index.md) · [Full source](../../../../AssociativeRingsAndAlgebras/Laws.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d8aedbb45b708def1d6539a1c764cf0ff9804be2`.

Source path: `GRWTSK/Algebra/Laws/Variantcf4750a4d1cb71655389a4dc25134e182989aed118efdde7ea8ce558297263be.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Laws/Variantcf4750a4d1cb71655389a4dc25134e182989aed118efdde7ea8ce558297263be.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Boolean.Algebra` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [bot_join](../../../../AssociativeRingsAndAlgebras/Laws.lean/declarations/bot-join.md) | 9 | `result-track:59bf4f405e0fea4ba9b2ae8234dec6a431d6237cf45d4a18c8902e16cb948382` |
| 2 | `theorem` | [top_meet](../../../../AssociativeRingsAndAlgebras/Laws.lean/declarations/top-meet.md) | 13 | `result-track:f36e75ab94547f3d23a872fc11cfdd1688f50947d4e5b4fb97721e514c66a0c0` |
| 3 | `theorem` | [compl_join](../../../../AssociativeRingsAndAlgebras/Laws.lean/declarations/compl-join.md) | 17 | `result-track:07f26ac26ef2449933978eb0fed6b20a47826f7cc5999358e749006661065d7d` |
| 4 | `theorem` | [compl_meet](../../../../AssociativeRingsAndAlgebras/Laws.lean/declarations/compl-meet.md) | 21 | `result-track:5546f9572f9957901c89ef2bd3282ec6a9f365f26be8070bfa5ed5c16c46d8e4` |
| 5 | `theorem` | [join_idem](../../../../AssociativeRingsAndAlgebras/Laws.lean/declarations/join-idem.md) | 26 | `result-track:e9e8fdd03dea11a7da78d228b150baf62f0b5d09a218667c6e8e6172729055e2` |
| 6 | `theorem` | [meet_idem](../../../../AssociativeRingsAndAlgebras/Laws.lean/declarations/meet-idem.md) | 40 | `result-track:e32c8a64b5782ea8ebc3b65bd5278c85cd9d1589c123dbbe9d67b0649300529d` |
| 7 | `theorem` | [join_top](../../../../AssociativeRingsAndAlgebras/Laws.lean/declarations/join-top.md) | 54 | `result-track:ad97b69d95ae1b2ad37cb950bad09e56d7c9a4e6d3df7276f52df19fa050f2fb` |
| 8 | `theorem` | [top_join](../../../../AssociativeRingsAndAlgebras/Laws.lean/declarations/top-join.md) | 66 | `result-track:fd0fc7c834349eed46f10541467143c01d23f348412ec6c2bdaea5282d1e5e25` |
| 9 | `theorem` | [meet_bot](../../../../AssociativeRingsAndAlgebras/Laws.lean/declarations/meet-bot.md) | 71 | `result-track:9feb8ecaed2fe05c5404b1eb2d6c7a07ec1f1a1c39b7ac198405f1126b3b40a3` |
| 10 | `theorem` | [bot_meet](../../../../AssociativeRingsAndAlgebras/Laws.lean/declarations/bot-meet.md) | 83 | `result-track:b694a62dc6ccee1028ed8a71817d0ad9f9cd5ddfda6a5107eb1a97cc43eb64d7` |
| 11 | `theorem` | [join_absorb](../../../../AssociativeRingsAndAlgebras/Laws.lean/declarations/join-absorb.md) | 88 | `result-track:6f04c8b1bc16085bb0b6e8565e24cddb52228e4c353a4818c589465756db5bfc` |
| 12 | `theorem` | [meet_absorb](../../../../AssociativeRingsAndAlgebras/Laws.lean/declarations/meet-absorb.md) | 101 | `result-track:2725c91647ff52f85c49f03dec7c29e484981e5cdf1acd6a30607a944a889335` |
| 13 | `theorem` | [join_left_comm](../../../../AssociativeRingsAndAlgebras/Laws.lean/declarations/join-left-comm.md) | 113 | `result-track:ceb9d11d4d1efc4863d754352534709808b758af62406f390c0f4f4250aedefb` |
| 14 | `theorem` | [meet_left_comm](../../../../AssociativeRingsAndAlgebras/Laws.lean/declarations/meet-left-comm.md) | 123 | `result-track:4dc50b0be5102fc1a586e2a7d0b2da52e560a8d4624c63d8a9ad97c67903adf8` |
| 15 | `theorem` | [compl_unique](../../../../AssociativeRingsAndAlgebras/Laws.lean/declarations/compl-unique.md) | 134 | `result-track:27cf164abbcfbdf88967bf280b11ee924c41aa7f1f4ee960d7f9dd074f73b9e4` |
| 16 | `theorem` | [compl_involutive](../../../../AssociativeRingsAndAlgebras/Laws.lean/declarations/compl-involutive.md) | 167 | `result-track:d310d74b806e7285800089afe3429d549161e0b9529ea731528dde840fe87e67` |
| 17 | `theorem` | [compl_join_eq_meet_compl](../../../../AssociativeRingsAndAlgebras/Laws.lean/declarations/compl-join-eq-meet-compl.md) | 174 | `result-track:ff1d3478f478fa328f4c39811d53b349e1cb6835571f0c87d7db09681f09fb7e` |
| 18 | `theorem` | [compl_meet_eq_join_compl](../../../../AssociativeRingsAndAlgebras/Laws.lean/declarations/compl-meet-eq-join-compl.md) | 245 | `result-track:9589bdbf64de3c060190de523803d51dff3ad6d88ba300b8b37d469e856de773` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=70900ce67d14812639529b531eb8e4676d867f1caa9cbc528c8943cecf45d089 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Laws/Variantcf4750a4d1cb71655389a4dc25134e182989aed118efdde7ea8ce558297263be.lean","GRWTSK/_verification/specifications/Algebra/Laws/Variantcf4750a4d1cb71655389a4dc25134e182989aed118efdde7ea8ce558297263be.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
