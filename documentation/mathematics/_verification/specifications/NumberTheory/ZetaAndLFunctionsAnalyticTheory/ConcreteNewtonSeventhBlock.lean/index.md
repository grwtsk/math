# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.ConcreteNewtonSeventhBlock

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "dd66dd530d7c1c7955905cb3c938385787f1e807",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/ConcreteNewtonSeventhBlock.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ConcreteNewtonSeventhBlock.lean/index.md) · [Full source](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ConcreteNewtonSeventhBlock.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `dd66dd530d7c1c7955905cb3c938385787f1e807`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/ConcreteNewtonSeventhBlock.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/ConcreteNewtonSeventhBlock.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.ConcreteNewtonSeventhBlockSeeds`](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ConcreteNewtonSeventhBlockSeeds.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [output](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ConcreteNewtonSeventhBlock.lean/declarations/output.md) | 24 | `declaration-track:b71a82c62b4b51cb0b282e6d557cc055690df133232ce08bb3600ee71594cf39` |
| 2 | `theorem` | [endpoint_compute](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ConcreteNewtonSeventhBlock.lean/declarations/endpoint-compute.md) | 26 | `result-track:fc4e1f863feb0045ce03129efe064ced879b167f4b3d113c1b25d86f84804d82` |
| 3 | `theorem` | [endpoint_enclosure](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ConcreteNewtonSeventhBlock.lean/declarations/endpoint-enclosure.md) | 31 | `result-track:dd563c28dde033a0f58765c95e5e6897f3062dad03ffc883b59117cb85dad493` |
| 4 | `def` | [prefixIndex](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ConcreteNewtonSeventhBlock.lean/declarations/prefixindex.md) | 38 | `declaration-track:7ee7d82213bd33c863ad37699175c2d7754d5e398d70f8bf74da1b5bed9ff09d` |
| 5 | `theorem` | [base_at_index](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ConcreteNewtonSeventhBlock.lean/declarations/base-at-index.md) | 41 | `result-track:27f0b0147c37222962ebb406534ad0e3a0b7d985b5c204d5bac47b081edfeef7` |
| 6 | `theorem` | [rational_base_at_index](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ConcreteNewtonSeventhBlock.lean/declarations/rational-base-at-index.md) | 43 | `result-track:14725c5841d0b6a4c6dad2e03acb6d7d6d19cc69408b5c5cf008ab9b7b3733d1` |
| 7 | `theorem` | [schedule_at_index](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ConcreteNewtonSeventhBlock.lean/declarations/schedule-at-index.md) | 47 | `result-track:c5f6277a87ce9c5ab0f329f6d8667b83d7c7c5dc212409c02433566d69350323` |
| 8 | `theorem` | [mem_seventh_block](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ConcreteNewtonSeventhBlock.lean/declarations/mem-seventh-block.md) | 49 | `result-track:d24c049ee60da03f5f4bf2c259926c55fecd9845e25a20b39ecec0aa451b924a` |
| 9 | `theorem` | [index_mem](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ConcreteNewtonSeventhBlock.lean/declarations/index-mem.md) | 54 | `result-track:86f4d7f9c18796a91a4360c267ec6434b1406b3ae63b821039f04e22d498f39c` |
| 10 | `theorem` | [index_cover](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ConcreteNewtonSeventhBlock.lean/declarations/index-cover.md) | 60 | `result-track:17fc1f4c71e0e3ddec53bf288dd79fc4e71e678f9d83549ddb38ab53e739dded` |
| 11 | `theorem` | [seventh_block_of_records](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ConcreteNewtonSeventhBlock.lean/declarations/seventh-block-of-records.md) | 69 | `result-track:efd99bb4c6c19bc137d7e395f5a2fbb934791531e76efd5a6529169c3c796f1e` |
| 12 | `def` | [fill](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ConcreteNewtonSeventhBlock.lean/declarations/fill.md) | 78 | `declaration-track:446edfd24656755a4c38b4fe352e68b5df6393b89372ca4943abebb8d35ef9f4` |
| 13 | `theorem` | [fill_record](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ConcreteNewtonSeventhBlock.lean/declarations/fill-record.md) | 83 | `result-track:d6a753cf92328286bc58dd010c1327591a3dfab0e36b8a5cac8560e61ccf74d0` |
| 14 | `theorem` | [seventh_block_check](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ConcreteNewtonSeventhBlock.lean/declarations/seventh-block-check.md) | 91 | `result-track:a4161bbeb8d41349a912ff380f27bb7d1937e1cea9a5874139494976eebc4d67` |
| 15 | `theorem` | [fill_preserves_outside](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ConcreteNewtonSeventhBlock.lean/declarations/fill-preserves-outside.md) | 96 | `result-track:cfd6d1901c2f29feb36721ef1b5f81f6b5ee2b8eba6aa8c0e84d2f78535c411d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c55e0f323560befcfe045846a05199329d09081c5c7d156e353475ab648fd877 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Zeta/Riemann/ConcreteNewtonSeventhBlock.lean","GRWTSK/_verification/specifications/NumberTheory/Zeta/Riemann/ConcreteNewtonSeventhBlock.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
