# Verification target: Intercalate Public Intercalate Nil

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a3f779699089d2d46fe364fce43c225511dd6f24",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Intercalate/Variant037e691c18ad6152988c21c87757496dc92c26324ea872caf36ee73ea5b09d44.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/IntercalatePublicIntercalateNil.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/IntercalatePublicIntercalateNil.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a3f779699089d2d46fe364fce43c225511dd6f24`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Intercalate/Variant037e691c18ad6152988c21c87757496dc92c26324ea872caf36ee73ea5b09d44.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Intercalate/Variant037e691c18ad6152988c21c87757496dc92c26324ea872caf36ee73ea5b09d44.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.ByCases` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [intercalate_nil](../../../../../ComputerScience/AlgorithmsInComputerScience/IntercalatePublicIntercalateNil.lean/declarations/intercalate-nil.md) | 20 | `result-track:c2330254639a18b2a8547468f790b9a46962cc37ee24b9cf43b4b3769c9b5af6` |
| 2 | `theorem` | [intercalate_singleton](../../../../../ComputerScience/AlgorithmsInComputerScience/IntercalatePublicIntercalateNil.lean/declarations/intercalate-singleton.md) | 24 | `result-track:c5229b6adfeffc8819b4761ccffbfa1c68780da7fbb46c06a1ebab28eaf29037` |
| 3 | `theorem` | [intercalateGo_append](../../../../../ComputerScience/AlgorithmsInComputerScience/IntercalatePublicIntercalateNil.lean/declarations/intercalatego-append.md) | 27 | `result-track:9b23b1d1b2926f2cd92ef9fc458f2055e5f1ecf27b98148a94fe7ae8175c98d3` |
| 4 | `theorem` | [intercalate_cons_cons](../../../../../ComputerScience/AlgorithmsInComputerScience/IntercalatePublicIntercalateNil.lean/declarations/intercalate-cons-cons.md) | 32 | `result-track:5296be075bea57e162d542f5818e99308e8f769a6bada0db3e596508203542f4` |
| 5 | `theorem` | [intercalate_cons_append](../../../../../ComputerScience/AlgorithmsInComputerScience/IntercalatePublicIntercalateNil.lean/declarations/intercalate-cons-append.md) | 37 | `result-track:45412656fa4fd890e89b66091a9bf0fcdb0203f32ff950ff30f4a06a360d0003` |
| 6 | `theorem` | [intercalate_cons_of_ne_nil](../../../../../ComputerScience/AlgorithmsInComputerScience/IntercalatePublicIntercalateNil.lean/declarations/intercalate-cons-of-ne-nil.md) | 41 | `result-track:72ddbf1ff4f777ac6b2e07984ea1776f12e42597e03929964f497629281f6fc5` |
| 7 | `theorem` | [intercalate_append_of_ne_nil](../../../../../ComputerScience/AlgorithmsInComputerScience/IntercalatePublicIntercalateNil.lean/declarations/intercalate-append-of-ne-nil.md) | 46 | `result-track:9f4a408158ea8d1e331528dc0f697a4a3a37a1715d62b9dc65a0700be3ddc85c` |
| 8 | `theorem` | [toList_intercalate](../../../../../ComputerScience/AlgorithmsInComputerScience/IntercalatePublicIntercalateNil.lean/declarations/tolist-intercalate.md) | 57 | `result-track:29c9d258c394acc7994172dd636fa3de2719b61d5e1d1d706f2d146f33bc2b4f` |
| 9 | `theorem` | [join_eq_foldl](../../../../../ComputerScience/AlgorithmsInComputerScience/IntercalatePublicIntercalateNil.lean/declarations/join-eq-foldl.md) | 63 | `result-track:417c676049e2903acddbd02c7c93ec1f93aa83240a468af748ac8beeaf5bcbeb` |
| 10 | `theorem` | [join_nil](../../../../../ComputerScience/AlgorithmsInComputerScience/IntercalatePublicIntercalateNil.lean/declarations/join-nil.md) | 67 | `result-track:4399ea08a123ae5269e38a6811058c966611e4e25c74eb4edc9ee26191b20e24` |
| 11 | `theorem` | [join_cons](../../../../../ComputerScience/AlgorithmsInComputerScience/IntercalatePublicIntercalateNil.lean/declarations/join-cons.md) | 71 | `result-track:7d2ecae4f8b5e27f6384a9ec4d34a2bb24234c108c312b5679264037539d18ce` |
| 12 | `theorem` | [toList_join](../../../../../ComputerScience/AlgorithmsInComputerScience/IntercalatePublicIntercalateNil.lean/declarations/tolist-join.md) | 77 | `result-track:1e795b26a421925b2cd2aef521855dae8cbbc7dae1c8db7aedfc094242ddaa62` |
| 13 | `theorem` | [join_append](../../../../../ComputerScience/AlgorithmsInComputerScience/IntercalatePublicIntercalateNil.lean/declarations/join-append.md) | 81 | `result-track:fa1ae7a1a02b1c84b2ac750320aa9a1e7a68613cf4563f311303608ecc4f3b4d` |
| 14 | `theorem` | [_root_.String.appendSlice_eq](../../../../../ComputerScience/AlgorithmsInComputerScience/IntercalatePublicIntercalateNil.lean/declarations/root-string-appendslice-eq.md) | 87 | `result-track:000fb92338b1eb2ddf31a2141a0744d33f399d616b97ea7a82f53f7271b4eca8` |
| 15 | `theorem` | [intercalateGo_append](../../../../../ComputerScience/AlgorithmsInComputerScience/IntercalatePublicIntercalateNil.lean/declarations/intercalatego-append-source-edition-2.md) | 89 | `result-track:c37923b99d43a9f24a54270eef2a7ce959bba189c26e9703b20e3ca7b2939e36` |
| 16 | `theorem` | [intercalate_eq](../../../../../ComputerScience/AlgorithmsInComputerScience/IntercalatePublicIntercalateNil.lean/declarations/intercalate-eq.md) | 94 | `result-track:b62a98f902a3efc137935b61fd073951b1680264e8834ebd412779d1c487fb61` |
| 17 | `theorem` | [join_eq](../../../../../ComputerScience/AlgorithmsInComputerScience/IntercalatePublicIntercalateNil.lean/declarations/join-eq.md) | 101 | `result-track:df7d5d55e1c054a8ec49db88e60d0500fb4c76f948690e8bac659e98b88ca9af` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ce8a527713ffd82810b5cce787eb15b1e91d77409470e6073dfa90b652c1a5fd -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Intercalate/Variant037e691c18ad6152988c21c87757496dc92c26324ea872caf36ee73ea5b09d44.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Intercalate/Variant037e691c18ad6152988c21c87757496dc92c26324ea872caf36ee73ea5b09d44.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
