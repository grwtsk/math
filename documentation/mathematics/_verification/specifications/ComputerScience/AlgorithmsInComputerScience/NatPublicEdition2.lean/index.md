# Verification target: Nat Public Edition2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "64dc876db62502b67b0163c29c7b773381ece2b9",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Nat/Variant458906de8d1737985ae2971fe3b3a7e9657c9b7981b8b6a55c82b3692c3873e0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/NatPublicEdition2.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/NatPublicEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `64dc876db62502b67b0163c29c7b773381ece2b9`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Nat/Variant458906de8d1737985ae2971fe3b3a7e9657c9b7981b8b6a55c82b3692c3873e0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Nat/Variant458906de8d1737985ae2971fe3b3a7e9657c9b7981b8b6a55c82b3692c3873e0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.Array.Nat` — import line 10; external provider; requires a separately pinned dependency.
- `Init.Data.Vector.Lemmas` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [sum_pos_iff_exists_pos_nat](../../../../../ComputerScience/AlgorithmsInComputerScience/NatPublicEdition2.lean/declarations/sum-pos-iff-exists-pos-nat.md) | 21 | `result-track:82a639f39f1c0948a263f4f249575b4409211b90571e396c543a34542c80f2fa` |
| 2 | `theorem` | [sum_eq_zero_iff_forall_eq_nat](../../../../../ComputerScience/AlgorithmsInComputerScience/NatPublicEdition2.lean/declarations/sum-eq-zero-iff-forall-eq-nat.md) | 24 | `result-track:0e1a66e4ef30348f3260cc64bcc5569435b032c6b396676edd4d21edd4786c1e` |
| 3 | `theorem` | [sum_replicate_nat](../../../../../ComputerScience/AlgorithmsInComputerScience/NatPublicEdition2.lean/declarations/sum-replicate-nat.md) | 28 | `result-track:e13673c753d5f75e2a6586b5a6ca86701be26b6a73d464d2106b5277455e9b9e` |
| 4 | `theorem` | [sum_append_nat](../../../../../ComputerScience/AlgorithmsInComputerScience/NatPublicEdition2.lean/declarations/sum-append-nat.md) | 31 | `result-track:1b07ab1cf50feda6ddc4d9b820a5ad926a2ff452ea906101bfc41b5ae0fe3091` |
| 5 | `theorem` | [sum_reverse_nat](../../../../../ComputerScience/AlgorithmsInComputerScience/NatPublicEdition2.lean/declarations/sum-reverse-nat.md) | 35 | `result-track:7884ff0a0f04969c4944e98b2fae4ca98f4163fef5540c3d831ba731a313c291` |
| 6 | `theorem` | [sum_eq_foldl_nat](../../../../../ComputerScience/AlgorithmsInComputerScience/NatPublicEdition2.lean/declarations/sum-eq-foldl-nat.md) | 38 | `result-track:293a0efdecde0be8c5666c9feefddac88ecb3afcac33486f1e2494acd394afe8` |
| 7 | `theorem` | [prod_pos_iff_forall_pos_nat](../../../../../ComputerScience/AlgorithmsInComputerScience/NatPublicEdition2.lean/declarations/prod-pos-iff-forall-pos-nat.md) | 41 | `result-track:7b997acef200c53604afc3f80b8153519b32ef83b50adef96e20c78e8788d7cd` |
| 8 | `theorem` | [prod_eq_zero_iff_exists_zero_nat](../../../../../ComputerScience/AlgorithmsInComputerScience/NatPublicEdition2.lean/declarations/prod-eq-zero-iff-exists-zero-nat.md) | 44 | `result-track:4c97699a084ce57b0e305ee0a6c2f7a0eca888febf412434952482d3fed14bed` |
| 9 | `theorem` | [prod_replicate_nat](../../../../../ComputerScience/AlgorithmsInComputerScience/NatPublicEdition2.lean/declarations/prod-replicate-nat.md) | 48 | `result-track:9b157ccffd4a00aff62c66e06d326ab200c93a51cdd3fb798cffb8b94bea0920` |
| 10 | `theorem` | [prod_append_nat](../../../../../ComputerScience/AlgorithmsInComputerScience/NatPublicEdition2.lean/declarations/prod-append-nat.md) | 51 | `result-track:dc1fc3d2f81373cf7f43d7f1be2300cb0346021cf3760a83127e71c6d12d1890` |
| 11 | `theorem` | [prod_reverse_nat](../../../../../ComputerScience/AlgorithmsInComputerScience/NatPublicEdition2.lean/declarations/prod-reverse-nat.md) | 55 | `result-track:e388d58abb6db0f9650b236e6d6835e5c06afbcc186fe98f4d2b3a9a96159cba` |
| 12 | `theorem` | [prod_eq_foldl_nat](../../../../../ComputerScience/AlgorithmsInComputerScience/NatPublicEdition2.lean/declarations/prod-eq-foldl-nat.md) | 58 | `result-track:894852c9fa01e5e049803fbfea70796ac59219de4d6948c66f4ef70d40209a68` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7d150d641ac936a3a5c3c6d5623b44630493c6522fae01f23ac399f0b23f4cef -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Nat/Variant458906de8d1737985ae2971fe3b3a7e9657c9b7981b8b6a55c82b3692c3873e0.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Nat/Variant458906de8d1737985ae2971fe3b3a7e9657c9b7981b8b6a55c82b3692c3873e0.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
