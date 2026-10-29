# Verification target: Lease Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "55c3450c22d2b0161997f67c5246f2249cac6f43",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lease/Variant0cbe3d4c563085b1e7ab39bfe7db36efe1ecd739c21411b4e9c8d8bc503af8d8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/LeaseNamespaced.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/LeaseNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `55c3450c22d2b0161997f67c5246f2249cac6f43`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lease/Variant0cbe3d4c563085b1e7ab39bfe7db36efe1ecd739c21411b4e9c8d8bc503af8d8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lease/Variant0cbe3d4c563085b1e7ab39bfe7db36efe1ecd739c21411b4e9c8d8bc503af8d8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.Capability.Grant` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Lease](../../../../../ComputerScience/AlgorithmsInComputerScience/LeaseNamespaced.lean/declarations/lease.md) | 20 | `declaration-track:6f9c0fb8fb19599960a05652012c9ffe75158fa3185b09543967f5ac694d003b` |
| 2 | `structure` | [Revocation](../../../../../ComputerScience/AlgorithmsInComputerScience/LeaseNamespaced.lean/declarations/revocation.md) | 31 | `declaration-track:1233262f3878875dfebdbbc38f8a9c1661864bf39e4b9c2888310efd8c0e6d02` |
| 3 | `structure` | [ValidAt](../../../../../ComputerScience/AlgorithmsInComputerScience/LeaseNamespaced.lean/declarations/validat.md) | 39 | `declaration-track:2ace48aa05b1cd07ed41ee5edfcb42fe9828b930d5f58dcdad9c051b8bf13b6f` |
| 4 | `theorem` | [not_valid_at_or_after_revocation](../../../../../ComputerScience/AlgorithmsInComputerScience/LeaseNamespaced.lean/declarations/not-valid-at-or-after-revocation.md) | 50 | `result-track:4ab5338d57fad9253f6fb396ca616650525fabf2389b72590ce30ac13c4496c3` |
| 5 | `structure` | [DelegatedLease](../../../../../ComputerScience/AlgorithmsInComputerScience/LeaseNamespaced.lean/declarations/delegatedlease.md) | 66 | `declaration-track:3e2bc34dd72bbbf10829f32f86b1cd3ce0c213229ca0f27030c2a37388bac01b` |
| 6 | `theorem` | [scope_nonamplifying](../../../../../ComputerScience/AlgorithmsInComputerScience/LeaseNamespaced.lean/declarations/scope-nonamplifying.md) | 78 | `result-track:c96e0f93d5ef73274b2321b1c3e670a5c2448a11cd97e290fbcd49163f53fa72` |
| 7 | `theorem` | [effects_nonamplifying](../../../../../ComputerScience/AlgorithmsInComputerScience/LeaseNamespaced.lean/declarations/effects-nonamplifying.md) | 84 | `result-track:2c12c451cec56c56f8e70bb09ee1571d76f6e8b3168726cb774b54b1d66dbdff` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=00362caa8fc1acf1fe8caea5e6fa2f383d76a20e63980a2aab2dc0fa7f466017 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lease/Variant0cbe3d4c563085b1e7ab39bfe7db36efe1ecd739c21411b4e9c8d8bc503af8d8.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lease/Variant0cbe3d4c563085b1e7ab39bfe7db36efe1ecd739c21411b4e9c8d8bc503af8d8.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
