# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.ConcreteNewtonNinthBlock

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bc0c4938a72feb5d45ec39452e0f1bcd40a4b550",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/ConcreteNewtonNinthBlock.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ConcreteNewtonNinthBlock.lean/index.md) · [Full source](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ConcreteNewtonNinthBlock.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bc0c4938a72feb5d45ec39452e0f1bcd40a4b550`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/ConcreteNewtonNinthBlock.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/ConcreteNewtonNinthBlock.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.ConcreteNewtonNinthBlockSeeds`](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ConcreteNewtonNinthBlockSeeds.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [output](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ConcreteNewtonNinthBlock.lean/declarations/output.md) | 24 | `declaration-track:9e47f385cca836ec7c69a2ff9924da6d1e89f7218ccce572f28f975264c4a86d` |
| 2 | `theorem` | [endpoint_compute](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ConcreteNewtonNinthBlock.lean/declarations/endpoint-compute.md) | 26 | `result-track:589d076bd03022532be293f6b63eb4a38d2cfad36cff23f75a89983f7f78aec8` |
| 3 | `theorem` | [endpoint_enclosure](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ConcreteNewtonNinthBlock.lean/declarations/endpoint-enclosure.md) | 31 | `result-track:ce7f477c5a76b47d598bf43846e12d55ff4290ada923a2da776d809df107a810` |
| 4 | `def` | [prefixIndex](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ConcreteNewtonNinthBlock.lean/declarations/prefixindex.md) | 38 | `declaration-track:ba995f71c9ca06506413748f3bae782b5bde8d4e7c6e756dba1d656884922184` |
| 5 | `theorem` | [base_at_index](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ConcreteNewtonNinthBlock.lean/declarations/base-at-index.md) | 41 | `result-track:704d96e64082c4de28c8fac799f55fcaaa10308b09b3d6e566aa409f29bdd557` |
| 6 | `theorem` | [rational_base_at_index](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ConcreteNewtonNinthBlock.lean/declarations/rational-base-at-index.md) | 43 | `result-track:22ae37d6a721c2a0b81616ba9c3f24773d3d2166348fde5913aed5c51b9599e4` |
| 7 | `theorem` | [schedule_at_index](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ConcreteNewtonNinthBlock.lean/declarations/schedule-at-index.md) | 47 | `result-track:a9069a82a6357bbd46f154beb5a92f4095d01b5821812e707a4e8528f76777f4` |
| 8 | `theorem` | [mem_ninth_block](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ConcreteNewtonNinthBlock.lean/declarations/mem-ninth-block.md) | 49 | `result-track:133eb9be40f119eba763df8107e2cd8ef3da468b56a4cce1a98b8fb32c8b8e65` |
| 9 | `theorem` | [index_mem](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ConcreteNewtonNinthBlock.lean/declarations/index-mem.md) | 54 | `result-track:1a59f7ab6f4d6f186ca97aecef53e63f62d83082fd754b019f0eb9f62c6195ce` |
| 10 | `theorem` | [index_cover](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ConcreteNewtonNinthBlock.lean/declarations/index-cover.md) | 60 | `result-track:9b946a67cc6956bc0671dad92d11b4abbb50bf2fffba3376feeec161a5943503` |
| 11 | `theorem` | [ninth_block_of_records](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ConcreteNewtonNinthBlock.lean/declarations/ninth-block-of-records.md) | 69 | `result-track:486261da3c2fef595148b6b228f2a1b26d647b5f3a34f5775356748e2db8eef7` |
| 12 | `def` | [fill](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ConcreteNewtonNinthBlock.lean/declarations/fill.md) | 78 | `declaration-track:12197a42b5f3ba0e45f3c61c4cd102fc9d54eb47f79e397d37abfc496976b83f` |
| 13 | `theorem` | [fill_record](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ConcreteNewtonNinthBlock.lean/declarations/fill-record.md) | 83 | `result-track:0791992e8e98aac30b0c19f2d654cacdf6e2ba81399ab719de0561c6fcd63f4d` |
| 14 | `theorem` | [ninth_block_check](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ConcreteNewtonNinthBlock.lean/declarations/ninth-block-check.md) | 91 | `result-track:08465936ff57965afea312cf08904786492220a0aac61f289eb8336b7f1913b4` |
| 15 | `theorem` | [fill_preserves_outside](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ConcreteNewtonNinthBlock.lean/declarations/fill-preserves-outside.md) | 96 | `result-track:f987930bdda8f1feb72227e92ccd2cec2a8b2e25d09960a18bb09c1257a2f519` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=532bda0785e22f1b478905051cd4e2de539796e6557e8efd44fce925ca995f87 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Zeta/Riemann/ConcreteNewtonNinthBlock.lean","GRWTSK/_verification/specifications/NumberTheory/Zeta/Riemann/ConcreteNewtonNinthBlock.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
