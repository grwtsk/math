# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.ConcreteNewtonFifthBlock

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2300d3739a1fcf314b059bf9bd9601afb58406f2",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/ConcreteNewtonFifthBlock.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ConcreteNewtonFifthBlock.lean/index.md) · [Full source](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ConcreteNewtonFifthBlock.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2300d3739a1fcf314b059bf9bd9601afb58406f2`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/ConcreteNewtonFifthBlock.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/ConcreteNewtonFifthBlock.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.ConcreteNewtonFifthBlockSeeds`](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ConcreteNewtonFifthBlockSeeds.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [output](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ConcreteNewtonFifthBlock.lean/declarations/output.md) | 15 | `declaration-track:9dbcb5104080d4503f849039c68dc0fafdeec4d135eb31337e1e86ab00aaa331` |
| 2 | `theorem` | [endpoint_compute](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ConcreteNewtonFifthBlock.lean/declarations/endpoint-compute.md) | 17 | `result-track:0806e83d09ae987eab6a6f181283b77fcead30c5b3917bf596a3eeb97cde8a50` |
| 3 | `theorem` | [endpoint_enclosure](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ConcreteNewtonFifthBlock.lean/declarations/endpoint-enclosure.md) | 22 | `result-track:5895e6ab623acd5c7626e02418afaa06f6c8c37306b659d8a4012f78978840eb` |
| 4 | `def` | [prefixIndex](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ConcreteNewtonFifthBlock.lean/declarations/prefixindex.md) | 29 | `declaration-track:83c6925ba3365a403f6328480623912adba0a991683ec6f5888b889ccdf067c1` |
| 5 | `theorem` | [base_at_index](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ConcreteNewtonFifthBlock.lean/declarations/base-at-index.md) | 32 | `result-track:615c36ff38f48f8d999533716388a5adaa9690c426e1d3ed0123bd764eb6cd0f` |
| 6 | `theorem` | [rational_base_at_index](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ConcreteNewtonFifthBlock.lean/declarations/rational-base-at-index.md) | 34 | `result-track:33d7253976b649598b3ecd4a3ade5b3975aaee18e97b8f88dab389856d2ca28a` |
| 7 | `theorem` | [schedule_at_index](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ConcreteNewtonFifthBlock.lean/declarations/schedule-at-index.md) | 38 | `result-track:95261430d82d076d41571233a65e82d775b7e9197affab905a12feee8963ca22` |
| 8 | `theorem` | [mem_fifth_block](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ConcreteNewtonFifthBlock.lean/declarations/mem-fifth-block.md) | 40 | `result-track:64629e3254d79c7552a67d26a621f1776724527434d6908fc4a90d48ad77f17f` |
| 9 | `theorem` | [index_mem](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ConcreteNewtonFifthBlock.lean/declarations/index-mem.md) | 45 | `result-track:bf73f180201ef051d42f89443a2f1425d7e04bae5444eadffc2aec29ae539048` |
| 10 | `theorem` | [index_cover](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ConcreteNewtonFifthBlock.lean/declarations/index-cover.md) | 51 | `result-track:b0ebde5a4663ac78b3b1016dabef019965621441ec00dc86d23a170f4b820cdf` |
| 11 | `theorem` | [fifth_block_of_records](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ConcreteNewtonFifthBlock.lean/declarations/fifth-block-of-records.md) | 60 | `result-track:bfcf71e4f130b2adb81f9aed41d220045c9e8a1f210fc8db6ea86fcf1130e739` |
| 12 | `def` | [fill](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ConcreteNewtonFifthBlock.lean/declarations/fill.md) | 69 | `declaration-track:875bf587abf107e26b94bb85cde9e74566e921c525d62ae8b9b40edaf9755439` |
| 13 | `theorem` | [fill_record](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ConcreteNewtonFifthBlock.lean/declarations/fill-record.md) | 74 | `result-track:fb48f6cc0d7d81fe8a46647215ff4921553ea48f367cfa585f9b3eb6097d7f47` |
| 14 | `theorem` | [fifth_block_check](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ConcreteNewtonFifthBlock.lean/declarations/fifth-block-check.md) | 82 | `result-track:2eba03cd55d0b1442689b50ec4a3e4527d7310947a6ada713f820471c73d0338` |
| 15 | `theorem` | [fill_preserves_outside](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ConcreteNewtonFifthBlock.lean/declarations/fill-preserves-outside.md) | 87 | `result-track:535d41cd51e330086bce13d4d57c9617574cda5d5e4423a631731bd8980cea49` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4ed4cf0fdc2cc833c3a7932848fec5329fcb0010a6533ed888665788182d82f9 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Zeta/Riemann/ConcreteNewtonFifthBlock.lean","GRWTSK/_verification/specifications/NumberTheory/Zeta/Riemann/ConcreteNewtonFifthBlock.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
