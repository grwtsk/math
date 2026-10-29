# Verification target: Lease

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "57ad7adb26e7b973dfbff2dec025897b59aedf81",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lease/Variantbbf36f6e0a1b4537b7a5e98b82257016d584733a7da783dd65458a43e0480750.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/Lease.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/Lease.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `57ad7adb26e7b973dfbff2dec025897b59aedf81`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lease/Variantbbf36f6e0a1b4537b7a5e98b82257016d584733a7da783dd65458a43e0480750.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lease/Variantbbf36f6e0a1b4537b7a5e98b82257016d584733a7da783dd65458a43e0480750.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.Capability.Grant` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Lease](../../../../../ComputerScience/AlgorithmsInComputerScience/Lease.lean/declarations/lease.md) | 12 | `declaration-track:c72a303899bd9024db80604952c91c7b63a739ea515013d4149ce2384b7ef0eb` |
| 2 | `structure` | [Revocation](../../../../../ComputerScience/AlgorithmsInComputerScience/Lease.lean/declarations/revocation.md) | 23 | `declaration-track:0938f7f639ed2f9f8a8b3ae3db23f0374b0d742d438f92a1793502d577ffc14c` |
| 3 | `structure` | [ValidAt](../../../../../ComputerScience/AlgorithmsInComputerScience/Lease.lean/declarations/validat.md) | 31 | `declaration-track:ee17243ff929c61f85222061543fc7acebbdf69697963345f8c5a6544b79d9f4` |
| 4 | `theorem` | [not_valid_at_or_after_revocation](../../../../../ComputerScience/AlgorithmsInComputerScience/Lease.lean/declarations/not-valid-at-or-after-revocation.md) | 42 | `result-track:a8daf9082ea4064d534394f092149226d3172dcce02732a0df741e0f97041daa` |
| 5 | `structure` | [DelegatedLease](../../../../../ComputerScience/AlgorithmsInComputerScience/Lease.lean/declarations/delegatedlease.md) | 58 | `declaration-track:04dae833d94802498f8c10bfe6b9b3227355f6306755ae9de9392b4fc3275427` |
| 6 | `theorem` | [scope_nonamplifying](../../../../../ComputerScience/AlgorithmsInComputerScience/Lease.lean/declarations/scope-nonamplifying.md) | 70 | `result-track:5b9799d7d033c155623b42d9cd37b46fffed7a4908f1e58b98242f5cc5a8a018` |
| 7 | `theorem` | [effects_nonamplifying](../../../../../ComputerScience/AlgorithmsInComputerScience/Lease.lean/declarations/effects-nonamplifying.md) | 76 | `result-track:7e3ef4a6a4b0fad20d6476170a8bc4d24be70f4e8ca68e03e72ef80e7b3bbe6b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6d854b321dc3a5aadbddd6c16aee5e5ff75b30f35b49666101b42fe99f735741 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lease/Variantbbf36f6e0a1b4537b7a5e98b82257016d584733a7da783dd65458a43e0480750.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lease/Variantbbf36f6e0a1b4537b7a5e98b82257016d584733a7da783dd65458a43e0480750.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
