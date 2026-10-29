# Verification target: Serialization Namespaced Framed Bytes

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bb4afb2aaffb90d9f2fe9e48a8e998bb09a1c514",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Serialization/Variant31c8fd26d678baa9c03336ee00a07c9aa1e4436b4d5fef4de50c99f2f46e073a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/SerializationNamespacedFramedBytes.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/SerializationNamespacedFramedBytes.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bb4afb2aaffb90d9f2fe9e48a8e998bb09a1c514`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Serialization/Variant31c8fd26d678baa9c03336ee00a07c9aa1e4436b4d5fef4de50c99f2f46e073a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Serialization/Variant31c8fd26d678baa9c03336ee00a07c9aa1e4436b4d5fef4de50c99f2f46e073a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `DAF.Codec` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [FramedBytes](../../../../../ComputerScience/AlgorithmsInComputerScience/SerializationNamespacedFramedBytes.lean/declarations/framedbytes.md) | 36 | `declaration-track:97b840dd9d78ce8f2a72911e39df369e0fe3758376ff88b652cca732e6d80c92` |
| 2 | `abbrev` | [CanonicalSerializer](../../../../../ComputerScience/AlgorithmsInComputerScience/SerializationNamespacedFramedBytes.lean/declarations/canonicalserializer.md) | 42 | `declaration-track:f58292bc7b28b66ff5613ecb040db100ed20631e85ac507a21f4681a0b33d52b` |
| 3 | `def` | [Valid](../../../../../ComputerScience/AlgorithmsInComputerScience/SerializationNamespacedFramedBytes.lean/declarations/valid.md) | 48 | `declaration-track:eff0ecba38c90cb4a8e573aea8155867fc8cc84d0f6258957515720bd77f1e44` |
| 4 | `theorem` | [encode_injective](../../../../../ComputerScience/AlgorithmsInComputerScience/SerializationNamespacedFramedBytes.lean/declarations/encode-injective.md) | 55 | `result-track:c56b839b16dc3e3b929a5ee188f02cd4ce2652efae19b1aa96fbab3f96a69739` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=942f1884497053badd54157b0539d0e853dba9be3ee6205734061a2810e0e361 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Serialization/Variant31c8fd26d678baa9c03336ee00a07c9aa1e4436b4d5fef4de50c99f2f46e073a.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Serialization/Variant31c8fd26d678baa9c03336ee00a07c9aa1e4436b4d5fef4de50c99f2f46e073a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
