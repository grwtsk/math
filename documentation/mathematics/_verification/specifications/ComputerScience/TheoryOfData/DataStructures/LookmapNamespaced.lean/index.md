# Verification target: Lookmap Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f24a86eb3a05162ef8d3e945d3c6b7b0e87d4cf6",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lookmap/Varianta24851e46e154dacba759efe8af01cc7868a8ae211ecd02b200d889ed17315b0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfData/DataStructures/LookmapNamespaced.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfData/DataStructures/LookmapNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f24a86eb3a05162ef8d3e945d3c6b7b0e87d4cf6`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lookmap/Varianta24851e46e154dacba759efe8af01cc7868a8ae211ecd02b200d889ed17315b0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lookmap/Varianta24851e46e154dacba759efe8af01cc7868a8ae211ecd02b200d889ed17315b0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Batteries.Logic` — import line 11; external provider; requires a separately pinned dependency.
- `Batteries.Data.List.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.TypeStar` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [lookmap.go_append](../../../../../../ComputerScience/TheoryOfData/DataStructures/LookmapNamespaced.lean/declarations/lookmap-go-append.md) | 26 | `result-track:c3210b7e4e769611ea785db21e4a2095120736a466e3fb2d706af9150e488ce7` |
| 2 | `theorem` | [lookmap_nil](../../../../../../ComputerScience/TheoryOfData/DataStructures/LookmapNamespaced.lean/declarations/lookmap-nil.md) | 39 | `result-track:21a6530b4a2fb49ebb45547755b7e58e8915723d60d3e6ac6916129bb28ebd1a` |
| 3 | `theorem` | [lookmap_cons_none](../../../../../../ComputerScience/TheoryOfData/DataStructures/LookmapNamespaced.lean/declarations/lookmap-cons-none.md) | 43 | `result-track:f3b44c3e9d98da412e4cdc46b194bc0d2aad65302d6242062da6b53da23ebbc6` |
| 4 | `theorem` | [lookmap_cons_some](../../../../../../ComputerScience/TheoryOfData/DataStructures/LookmapNamespaced.lean/declarations/lookmap-cons-some.md) | 49 | `result-track:6f5a434ad38cefe64f1a37c2a46882f374b4dd28a5fb663f15bee59c880d7b38` |
| 5 | `theorem` | [lookmap_some](../../../../../../ComputerScience/TheoryOfData/DataStructures/LookmapNamespaced.lean/declarations/lookmap-some.md) | 54 | `result-track:f15bd82351b1c2e520b462393a8fe7c81e93b7f41f39dc2a26b4b952dfaeca49` |
| 6 | `theorem` | [lookmap_none](../../../../../../ComputerScience/TheoryOfData/DataStructures/LookmapNamespaced.lean/declarations/lookmap-none.md) | 58 | `result-track:13927877a9476f9a1be8efda913b98b8e28a8b6c74a4292212eca887dd0f0267` |
| 7 | `theorem` | [lookmap_congr](../../../../../../ComputerScience/TheoryOfData/DataStructures/LookmapNamespaced.lean/declarations/lookmap-congr.md) | 62 | `result-track:f58e628d85a683443852321112ecb0572a4e19e26b439447c7fafd6d90ef6fa2` |
| 8 | `theorem` | [lookmap_of_forall_not](../../../../../../ComputerScience/TheoryOfData/DataStructures/LookmapNamespaced.lean/declarations/lookmap-of-forall-not.md) | 71 | `result-track:abf7f91e87e1959c995fb0469ae640d78b358c372db5caf03940499395cf16ef` |
| 9 | `theorem` | [lookmap_map_eq](../../../../../../ComputerScience/TheoryOfData/DataStructures/LookmapNamespaced.lean/declarations/lookmap-map-eq.md) | 74 | `result-track:192ffd0a46d9fc52a08a484ddb884476b05637b1b735554fddcff136500133c0` |
| 10 | `theorem` | [lookmap_id'](../../../../../../ComputerScience/TheoryOfData/DataStructures/LookmapNamespaced.lean/declarations/lookmap-id.md) | 82 | `result-track:18242556f41b4493815e51b7a647ba9fcb5192a3608712744ffaac645670bb4a` |
| 11 | `theorem` | [length_lookmap](../../../../../../ComputerScience/TheoryOfData/DataStructures/LookmapNamespaced.lean/declarations/length-lookmap.md) | 85 | `result-track:218b6bd5f5766b5185f23c44970325ba745b7396acacb909fa8d2e2bc536fa22` |
| 12 | `theorem` | [perm_lookmap](../../../../../../ComputerScience/TheoryOfData/DataStructures/LookmapNamespaced.lean/declarations/perm-lookmap.md) | 89 | `result-track:6f77c311e858ca29c35014901f518d1728d9571f096e0122503663f8403b8e96` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=73aa5dbf1f7a61b42b53204cba224f9e028e714cce4e34da749a3044c650ece1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lookmap/Varianta24851e46e154dacba759efe8af01cc7868a8ae211ecd02b200d889ed17315b0.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lookmap/Varianta24851e46e154dacba759efe8af01cc7868a8ae211ecd02b200d889ed17315b0.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
