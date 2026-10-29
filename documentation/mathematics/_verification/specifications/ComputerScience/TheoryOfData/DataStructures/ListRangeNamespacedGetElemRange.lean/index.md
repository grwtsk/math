# Verification target: List Range Namespaced Get Elem Range

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c62ad8692765b00289da2702294dbf65a364189f",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant034d0600e38f8a36fa426ac1d714b2f0ce253c09e7d4a76c8e932b73c3c7dc28.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListRangeNamespacedGetElemRange.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListRangeNamespacedGetElemRange.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c62ad8692765b00289da2702294dbf65a364189f`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant034d0600e38f8a36fa426ac1d714b2f0ce253c09e7d4a76c8e932b73c3c7dc28.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant034d0600e38f8a36fa426ac1d714b2f0ce253c09e7d4a76c8e932b73c3c7dc28.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.List.Chain` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [getElem_range'_1](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListRangeNamespacedGetElemRange.lean/declarations/getelem-range-1.md) | 35 | `result-track:fd4c64d62abfe6a967bbafce836d566e3902884cdf5f9672ee7742a55589f7af` |
| 2 | `theorem` | [chain'_range_succ](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListRangeNamespacedGetElemRange.lean/declarations/chain-range-succ-source-edition-2.md) | 38 | `result-track:cfc980999f363e5958e7182cca14f324df754adcae3f6bfc75587702b488ee3f` |
| 3 | `theorem` | [chain_range_succ](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListRangeNamespacedGetElemRange.lean/declarations/chain-range-succ.md) | 47 | `result-track:6ec2fed51272952970563e338677bffcd49f2c1c0bd8d02385d061a207fce126` |
| 4 | `def` | [ranges](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListRangeNamespacedGetElemRange.lean/declarations/ranges.md) | 58 | `declaration-track:f2f64066e0b06c0547973d1765e1f05d3b2be46b508e7a4c868f9841bd09e481` |
| 5 | `theorem` | [ranges_disjoint](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListRangeNamespacedGetElemRange.lean/declarations/ranges-disjoint.md) | 63 | `result-track:36559c9a72cf39fe28869faa36d4e70d847b8580aa63cbf93edf4ffb64f88c62` |
| 6 | `theorem` | [ranges_length](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListRangeNamespacedGetElemRange.lean/declarations/ranges-length.md) | 84 | `result-track:47d89dcadec2ac4d0005b71108b89e06b81db1716d4b26447df4d9aa68ae8169` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d95c189f8458e75811f390be450cb518ddb24c8a182a6edb07b4286e2d0f8934 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant034d0600e38f8a36fa426ac1d714b2f0ce253c09e7d4a76c8e932b73c3c7dc28.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant034d0600e38f8a36fa426ac1d714b2f0ce253c09e7d4a76c8e932b73c3c7dc28.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
