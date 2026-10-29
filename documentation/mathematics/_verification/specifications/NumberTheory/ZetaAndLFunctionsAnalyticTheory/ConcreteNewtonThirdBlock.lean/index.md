# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.ConcreteNewtonThirdBlock

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f217479cdd17eaab93ff904ad61c2e770963ee5d",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/ConcreteNewtonThirdBlock.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ConcreteNewtonThirdBlock.lean/index.md) · [Full source](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ConcreteNewtonThirdBlock.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f217479cdd17eaab93ff904ad61c2e770963ee5d`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/ConcreteNewtonThirdBlock.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/ConcreteNewtonThirdBlock.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.ConcreteNewtonThirdBlockSeeds`](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ConcreteNewtonThirdBlockSeeds.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [output](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ConcreteNewtonThirdBlock.lean/declarations/output.md) | 24 | `declaration-track:60f39536f491d79f6a6dcd03a939a131ae03ef039b707f489c7f761a4e92903c` |
| 2 | `theorem` | [endpoint_compute](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ConcreteNewtonThirdBlock.lean/declarations/endpoint-compute.md) | 26 | `result-track:46dbf83c13b1ff7575b8ba63ad62365bc4c3b9a98d40e82baac33b445054869e` |
| 3 | `theorem` | [endpoint_enclosure](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ConcreteNewtonThirdBlock.lean/declarations/endpoint-enclosure.md) | 31 | `result-track:3681e6ebdb1550dab95a2d323a6fc4ca6fc0053308744fcbb54eb5dedb6dc004` |
| 4 | `def` | [prefixIndex](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ConcreteNewtonThirdBlock.lean/declarations/prefixindex.md) | 38 | `declaration-track:7781d253c69d49bdc369306e943ae2285933bfc8336a3a18ccc8bc5880c65193` |
| 5 | `theorem` | [base_at_index](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ConcreteNewtonThirdBlock.lean/declarations/base-at-index.md) | 41 | `result-track:ad36782d2a8008083bb03a34e574b8595261c1615bd5f2b333a90a6401358729` |
| 6 | `theorem` | [rational_base_at_index](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ConcreteNewtonThirdBlock.lean/declarations/rational-base-at-index.md) | 43 | `result-track:7cf1ba012a2bb5f5598da3fdfffd33e50bfee6121cc0dcd48bbd31b23b4b9c98` |
| 7 | `theorem` | [schedule_at_index](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ConcreteNewtonThirdBlock.lean/declarations/schedule-at-index.md) | 47 | `result-track:638d58fe9978cdb8a95b22b6a713a551ac36a77760536d2a58d90e3b191df813` |
| 8 | `theorem` | [mem_third_block](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ConcreteNewtonThirdBlock.lean/declarations/mem-third-block.md) | 49 | `result-track:35195a89588a89e12a95f0f340eb62a345f4193002f9d628e38ca66f1ba56fbd` |
| 9 | `theorem` | [index_mem](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ConcreteNewtonThirdBlock.lean/declarations/index-mem.md) | 54 | `result-track:559987698b7bd6d13db8a7803f784c709fec303aa90a8d650bfacce2222077bb` |
| 10 | `theorem` | [index_cover](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ConcreteNewtonThirdBlock.lean/declarations/index-cover.md) | 60 | `result-track:f679f03a55e254c677e8edd4ad37ca42d81af794878fd29ad475d5bd3cff3ee6` |
| 11 | `theorem` | [third_block_of_records](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ConcreteNewtonThirdBlock.lean/declarations/third-block-of-records.md) | 69 | `result-track:85f2a4968384f6d8aa2a2fa80917da5c0257d559a5842e777fa88731b5e0c8a0` |
| 12 | `def` | [fill](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ConcreteNewtonThirdBlock.lean/declarations/fill.md) | 78 | `declaration-track:e1b6ea63efe95c41ad04a2d245eabedca4ace7c7f45459c1388e30a1f1fcb7a5` |
| 13 | `theorem` | [fill_record](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ConcreteNewtonThirdBlock.lean/declarations/fill-record.md) | 83 | `result-track:8486da8625126cf09d1fe55f0f073f4ae0e2111883042e13f0d41d2dcd28401b` |
| 14 | `theorem` | [third_block_check](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ConcreteNewtonThirdBlock.lean/declarations/third-block-check.md) | 91 | `result-track:dcec9ed45f791c2b617d940ace8e083638a1ab8198ebc99cd42b8298bca0d9ef` |
| 15 | `theorem` | [fill_preserves_outside](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ConcreteNewtonThirdBlock.lean/declarations/fill-preserves-outside.md) | 96 | `result-track:efefdba9eb72d40530db74351da3349e14a80b969a8480192c227a298a03df80` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=292c2f52537a9ee9e0de09ba3ae39be38bf151f7e143cf833179cc66949c476b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Zeta/Riemann/ConcreteNewtonThirdBlock.lean","GRWTSK/_verification/specifications/NumberTheory/Zeta/Riemann/ConcreteNewtonThirdBlock.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
