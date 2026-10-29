# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.DirectedGraph.Checks.Positive.PathOccurrences

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a681dc3ec376781903edd6f04804328e68aa948d",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PathOccurrences.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../Combinatorics/GraphTheory/PositivePathOccurrences.lean/index.md) · [Full source](../../../../../Combinatorics/GraphTheory/PositivePathOccurrences.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a681dc3ec376781903edd6f04804328e68aa948d`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PathOccurrences.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PathOccurrences.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.CombinatoricsAndDiscreteMathematics.DirectedGraph.PathOccurrences`](../../../../../Combinatorics/GraphTheory/DirectedGraphPathOccurrencesHistoricalSourceEdition2.lean/index.md) — import line 1; pinned internal source present.
- `Mathlib.Combinatorics.SimpleGraph.Basic` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `example` | [(anonymous)](../../../../../Combinatorics/GraphTheory/PositivePathOccurrences.lean/declarations/example-source-edition-7.md) | 9 | `declaration-track:8bc9b6550bab9b2fb79b0ab9798d950d9950a5f61133fae8e0cb4f8773c7b024` |
| 2 | `example` | [(anonymous)](../../../../../Combinatorics/GraphTheory/PositivePathOccurrences.lean/declarations/example-source-edition-5.md) | 14 | `declaration-track:76b49f010578677c4d0a915a244f0959e4a222c84049f84a0e614a88d6841a99` |
| 3 | `example` | [(anonymous)](../../../../../Combinatorics/GraphTheory/PositivePathOccurrences.lean/declarations/example-source-edition-8.md) | 21 | `declaration-track:dceb4c77363391359dc6b9d3270f876a111511107e4f12d81ac8f359c00375da` |
| 4 | `example` | [(anonymous)](../../../../../Combinatorics/GraphTheory/PositivePathOccurrences.lean/declarations/example-source-edition-9.md) | 26 | `declaration-track:e0c7f9f6dba867076dffdbb1e87e83fc395acfcc0acebf2e57438382e2b562c6` |
| 5 | `example` | [(anonymous)](../../../../../Combinatorics/GraphTheory/PositivePathOccurrences.lean/declarations/example-source-edition-4.md) | 32 | `declaration-track:6eb214dc65c01e44ad6974f98ecf45e1d3c8d579925ca07cc5229f09cf1cffd9` |
| 6 | `example` | [(anonymous)](../../../../../Combinatorics/GraphTheory/PositivePathOccurrences.lean/declarations/example-source-edition-3.md) | 33 | `declaration-track:4ff2be190f072d488fd0e14baa5395de2befa5d3b6d9d30f339bd85158c7a3af` |
| 7 | `example` | [(anonymous)](../../../../../Combinatorics/GraphTheory/PositivePathOccurrences.lean/declarations/example-source-edition-6.md) | 36 | `declaration-track:7fc93a55d91beb5a147c5984d29360e1d39837edb8db1bd716da9fe5b49a1caa` |
| 8 | `example` | [(anonymous)](../../../../../Combinatorics/GraphTheory/PositivePathOccurrences.lean/declarations/example-source-edition-2.md) | 37 | `declaration-track:4939b41bd0d90fcca4e66bef06ed0c5d761cb14f2db57ea92b9a5e3413b6b6d0` |
| 9 | `example` | [(anonymous)](../../../../../Combinatorics/GraphTheory/PositivePathOccurrences.lean/declarations/example.md) | 40 | `declaration-track:3518d64539967d56086bfa2ba55c362fd02ceebc081598364a895057a584b59d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=19500146e1145e274bd02f3cb8bdba3339f2e2e827c39a40a091eb328717ee9f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PathOccurrences.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PathOccurrences__SourceOccurrence48bc1ee97fe8116d77e3899c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
