# Verification target: Reduce Option Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "18c57b76876f7a1aab20ee68d75f53cfd08fbf67",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ReduceOption/Variantfff7ebfa3b3c0156e5c47c3b89192d4218676759c2e8bd766f7c4671aec9373b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfData/DataStructures/ReduceOptionNamespaced.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfData/DataStructures/ReduceOptionNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `18c57b76876f7a1aab20ee68d75f53cfd08fbf67`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ReduceOption/Variantfff7ebfa3b3c0156e5c47c3b89192d4218676759c2e8bd766f7c4671aec9373b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ReduceOption/Variantfff7ebfa3b3c0156e5c47c3b89192d4218676759c2e8bd766f7c4671aec9373b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.List.Basic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [reduceOption_cons_of_some](../../../../../../ComputerScience/TheoryOfData/DataStructures/ReduceOptionNamespaced.lean/declarations/reduceoption-cons-of-some.md) | 27 | `result-track:6d1ec77c06de0a2ad0ab7de061d6c5f213e3083c961465a68136b1bc8eac1aba` |
| 2 | `theorem` | [reduceOption_cons_of_none](../../../../../../ComputerScience/TheoryOfData/DataStructures/ReduceOptionNamespaced.lean/declarations/reduceoption-cons-of-none.md) | 32 | `result-track:493d92f81c99665f64ec4b0231185ff16e68254982657a29be2a89605a6058e6` |
| 3 | `theorem` | [reduceOption_nil](../../../../../../ComputerScience/TheoryOfData/DataStructures/ReduceOptionNamespaced.lean/declarations/reduceoption-nil.md) | 36 | `result-track:1f62e0362b69eb2df8ad4ac018e76d3fd523b683f13ba76be52dee38eb296bf4` |
| 4 | `theorem` | [reduceOption_map](../../../../../../ComputerScience/TheoryOfData/DataStructures/ReduceOptionNamespaced.lean/declarations/reduceoption-map.md) | 40 | `result-track:44418c69124b71bd56910d545242f3cf8b440f4c8adbb48c079823686c6710ea` |
| 5 | `theorem` | [reduceOption_append](../../../../../../ComputerScience/TheoryOfData/DataStructures/ReduceOptionNamespaced.lean/declarations/reduceoption-append.md) | 47 | `result-track:b1ab54f9ff32583e2875c18dfd8974592556db992fde4b8c95e3430297bad7cf` |
| 6 | `theorem` | [reduceOption_replicate_none](../../../../../../ComputerScience/TheoryOfData/DataStructures/ReduceOptionNamespaced.lean/declarations/reduceoption-replicate-none.md) | 52 | `result-track:d34a9efaaf306c36726185c035a74821e0df83d408dae753bac1e113a3fb4a77` |
| 7 | `theorem` | [reduceOption_eq_nil_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/ReduceOptionNamespaced.lean/declarations/reduceoption-eq-nil-iff.md) | 56 | `result-track:230f85542a5a51a5802f07087d82b7fec6860668ef749d4121db76a17c19bde5` |
| 8 | `theorem` | [reduceOption_eq_singleton_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/ReduceOptionNamespaced.lean/declarations/reduceoption-eq-singleton-iff.md) | 67 | `result-track:7a96cc520e4032c9bc5bae63e357b06320d97e148115bf0904237c02ed9f8d82` |
| 9 | `theorem` | [reduceOption_eq_append_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/ReduceOptionNamespaced.lean/declarations/reduceoption-eq-append-iff.md) | 83 | `result-track:299d32c3127fa74692fa12f9ed0afa16fd980225d8ba27dbaa374d4a0fbfb4f1` |
| 10 | `theorem` | [reduceOption_eq_concat_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/ReduceOptionNamespaced.lean/declarations/reduceoption-eq-concat-iff.md) | 89 | `result-track:b0b2626c8d99cc3fdda43e9d77d64e5061aa98fded4348522b36f801771cf5ce` |
| 11 | `theorem` | [reduceOption_length_eq](../../../../../../ComputerScience/TheoryOfData/DataStructures/ReduceOptionNamespaced.lean/declarations/reduceoption-length-eq.md) | 105 | `result-track:43e70dc311a022880ae998648c7a9c5d73e76963027cd21295059315acbf88d6` |
| 12 | `theorem` | [length_eq_reduceOption_length_add_filter_none](../../../../../../ComputerScience/TheoryOfData/DataStructures/ReduceOptionNamespaced.lean/declarations/length-eq-reduceoption-length-add-filter-none.md) | 111 | `result-track:ddec52cec64dfe43316e5a30927360b59abae671201661b1e4756e8927f5e491` |
| 13 | `theorem` | [reduceOption_length_le](../../../../../../ComputerScience/TheoryOfData/DataStructures/ReduceOptionNamespaced.lean/declarations/reduceoption-length-le.md) | 115 | `result-track:651248817c728b86aade38728ebdecb3575243cd99392d022315a4ddb0d20e93` |
| 14 | `theorem` | [reduceOption_length_eq_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/ReduceOptionNamespaced.lean/declarations/reduceoption-length-eq-iff.md) | 119 | `result-track:1568a29c7484dbf86afaa86a09cc032e62c2fe3eec86544264d95da4fec0482e` |
| 15 | `theorem` | [reduceOption_length_lt_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/ReduceOptionNamespaced.lean/declarations/reduceoption-length-lt-iff.md) | 123 | `result-track:dd66c59638323b025b44cc034b61c3292083f1d33cd9e3382218f18de14020a6` |
| 16 | `theorem` | [reduceOption_singleton](../../../../../../ComputerScience/TheoryOfData/DataStructures/ReduceOptionNamespaced.lean/declarations/reduceoption-singleton.md) | 130 | `result-track:1bc40d7f9b7f1738d85df3270cb166cea2cb03d8bb19969ad78dc4185764278e` |
| 17 | `theorem` | [reduceOption_concat](../../../../../../ComputerScience/TheoryOfData/DataStructures/ReduceOptionNamespaced.lean/declarations/reduceoption-concat.md) | 132 | `result-track:09cf799e83385ac9fd0d48ed8a106a41aac2c9f252c9cd76795865b3071dd1b5` |
| 18 | `theorem` | [reduceOption_concat_of_some](../../../../../../ComputerScience/TheoryOfData/DataStructures/ReduceOptionNamespaced.lean/declarations/reduceoption-concat-of-some.md) | 139 | `result-track:e00e0a429787f263b1f0e17ac53e88d2894560f80c164cead80fae7bd76c1f1c` |
| 19 | `theorem` | [reduceOption_mem_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/ReduceOptionNamespaced.lean/declarations/reduceoption-mem-iff.md) | 143 | `result-track:a127e5dcf212ed0769f1b709488e25a57b2bad9f0adb8d0b1b6c18b43bd2f546` |
| 20 | `theorem` | [reduceOption_getElem?_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/ReduceOptionNamespaced.lean/declarations/reduceoption-getelem-iff.md) | 146 | `result-track:164021d4559f99e9ade29ad821d93bf99774a53dfccd62fb23973c73ca1e0765` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3a0a84d874d7ad3052f8f27cc3ab866fcc2212abdc10d2ad8e77ef20bfd14954 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ReduceOption/Variantfff7ebfa3b3c0156e5c47c3b89192d4218676759c2e8bd766f7c4671aec9373b.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ReduceOption/Variantfff7ebfa3b3c0156e5c47c3b89192d4218676759c2e8bd766f7c4671aec9373b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
