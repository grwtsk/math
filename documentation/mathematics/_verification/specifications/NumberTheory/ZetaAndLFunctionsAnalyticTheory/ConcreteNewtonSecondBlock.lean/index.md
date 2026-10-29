# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.ConcreteNewtonSecondBlock

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4708d051d2d3c4d9862dc4f75d3a327221df193c",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/ConcreteNewtonSecondBlock.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ConcreteNewtonSecondBlock.lean/index.md) · [Full source](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ConcreteNewtonSecondBlock.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4708d051d2d3c4d9862dc4f75d3a327221df193c`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/ConcreteNewtonSecondBlock.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/ConcreteNewtonSecondBlock.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.ConcreteNewtonSecondBlockSeeds`](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ConcreteNewtonSecondBlockSeeds.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [output](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ConcreteNewtonSecondBlock.lean/declarations/output.md) | 24 | `declaration-track:bfd3f85947fedf17bdd7fd935d4355e2677756072ca9e1d5e3320875d6aafd50` |
| 2 | `theorem` | [endpoint_compute](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ConcreteNewtonSecondBlock.lean/declarations/endpoint-compute.md) | 26 | `result-track:772063c4ab9a7e1a5768f1c7b64620c4289cb9be4bf90c429f22f0eb7b127803` |
| 3 | `theorem` | [endpoint_enclosure](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ConcreteNewtonSecondBlock.lean/declarations/endpoint-enclosure.md) | 31 | `result-track:e18947a6885cf50b0aba2eb83229c6236c27d143c7f93465dcdcff4f2e11fbe0` |
| 4 | `def` | [prefixIndex](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ConcreteNewtonSecondBlock.lean/declarations/prefixindex.md) | 39 | `declaration-track:305b524a3026eec5fa70105b1b1528b24187669de32504e45b1c700d6a281f7c` |
| 5 | `theorem` | [base_at_index](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ConcreteNewtonSecondBlock.lean/declarations/base-at-index.md) | 42 | `result-track:250fa6c33722824dcea1725437b397df79b20b7927832a7eaf66129542650e7c` |
| 6 | `theorem` | [rational_base_at_index](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ConcreteNewtonSecondBlock.lean/declarations/rational-base-at-index.md) | 44 | `result-track:21544435b9e02da96b03b5bf5b0b49240a07b1e49cfa04cb118ee73b2c8e3315` |
| 7 | `theorem` | [schedule_at_index](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ConcreteNewtonSecondBlock.lean/declarations/schedule-at-index.md) | 48 | `result-track:833f5fe72c7490f626dc124e17fa4a693469ae69e983af3afa451bf0f69551cb` |
| 8 | `theorem` | [mem_second_block](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ConcreteNewtonSecondBlock.lean/declarations/mem-second-block.md) | 50 | `result-track:6a96c5c0584fcf9c0d078548d06a3af2a2e21d37db64a97c809c971a2339f843` |
| 9 | `theorem` | [index_mem](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ConcreteNewtonSecondBlock.lean/declarations/index-mem.md) | 55 | `result-track:6a3debbea5abe13ec098c2acf3090dffd23964dc027878dac2faae78a487748f` |
| 10 | `theorem` | [index_cover](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ConcreteNewtonSecondBlock.lean/declarations/index-cover.md) | 61 | `result-track:818bb5568abd108c91eb416ee8453b2e04b0a60e0ea2576bd580f4796c8ae31a` |
| 11 | `theorem` | [second_block_of_records](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ConcreteNewtonSecondBlock.lean/declarations/second-block-of-records.md) | 71 | `result-track:81c2580442a4064621f4e36f179e72f5f7c84f1db2e69d247086032aa84afcd1` |
| 12 | `def` | [fill](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ConcreteNewtonSecondBlock.lean/declarations/fill.md) | 81 | `declaration-track:4188e5d951585028fc648dac8cca0a51aa4e8187665a9705a51927d5809119a0` |
| 13 | `theorem` | [fill_record](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ConcreteNewtonSecondBlock.lean/declarations/fill-record.md) | 86 | `result-track:3474876e7158711124950d84f09cd53ce8e7db5088403f7fd3482fdc6642b677` |
| 14 | `theorem` | [second_block_check](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ConcreteNewtonSecondBlock.lean/declarations/second-block-check.md) | 94 | `result-track:d570e9a6ccca32d94f52593494dc17d48c7d4c337783da729b3d9236df2f46c4` |
| 15 | `theorem` | [fill_preserves_outside](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ConcreteNewtonSecondBlock.lean/declarations/fill-preserves-outside.md) | 99 | `result-track:c18939ff20565ccdb08ff0e108cfe82bed6082ca61fac7dc49554f8f54bc88ae` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a94b623646d97cc6aaff76ec159500e807c8cab7b1a046ae3b4dc023fe766a99 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Zeta/Riemann/ConcreteNewtonSecondBlock.lean","GRWTSK/_verification/specifications/NumberTheory/Zeta/Riemann/ConcreteNewtonSecondBlock.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
