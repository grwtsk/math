# Verification target: Lookmap

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c7638ed7a7f5c12ab3551e74d092247e69be1c4b",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lookmap/Variante6b81147d774bcfc2f967d8650912435f2ba1fd4a8a272051c53585ee741c8c3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfData/DataStructures/Lookmap.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfData/DataStructures/Lookmap.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c7638ed7a7f5c12ab3551e74d092247e69be1c4b`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lookmap/Variante6b81147d774bcfc2f967d8650912435f2ba1fd4a8a272051c53585ee741c8c3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lookmap/Variante6b81147d774bcfc2f967d8650912435f2ba1fd4a8a272051c53585ee741c8c3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Batteries.Logic` — import line 6; external provider; requires a separately pinned dependency.
- `Batteries.Data.List.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.TypeStar` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [lookmap.go_append](../../../../../../ComputerScience/TheoryOfData/DataStructures/Lookmap.lean/declarations/lookmap-go-append.md) | 18 | `result-track:8a442ad5d1adb9441258e7d6b92af7c5d2cf898e57fb32fa6ccf0b33aea98b95` |
| 2 | `theorem` | [lookmap_nil](../../../../../../ComputerScience/TheoryOfData/DataStructures/Lookmap.lean/declarations/lookmap-nil.md) | 31 | `result-track:462ee0663594c5e6389c0c1fabfad3df0a58132f3de61a248b1638c8e9271246` |
| 3 | `theorem` | [lookmap_cons_none](../../../../../../ComputerScience/TheoryOfData/DataStructures/Lookmap.lean/declarations/lookmap-cons-none.md) | 35 | `result-track:34ec5df7da996c821801881610357380d29170a76b2d70610cb35c07512a3f1a` |
| 4 | `theorem` | [lookmap_cons_some](../../../../../../ComputerScience/TheoryOfData/DataStructures/Lookmap.lean/declarations/lookmap-cons-some.md) | 41 | `result-track:c1243b78e680913abdc188c80285ecdd6c52effb16cfc5c93fb77beabe74c763` |
| 5 | `theorem` | [lookmap_some](../../../../../../ComputerScience/TheoryOfData/DataStructures/Lookmap.lean/declarations/lookmap-some.md) | 46 | `result-track:4e492c21a2ebb203698b84d4861cf04a057ab81bd21e9d4c9f8ba80393d37155` |
| 6 | `theorem` | [lookmap_none](../../../../../../ComputerScience/TheoryOfData/DataStructures/Lookmap.lean/declarations/lookmap-none.md) | 50 | `result-track:89eeab7e6c7c942e416c336182f17055d08b3765850e52aed19a20d48e04bae5` |
| 7 | `theorem` | [lookmap_congr](../../../../../../ComputerScience/TheoryOfData/DataStructures/Lookmap.lean/declarations/lookmap-congr.md) | 54 | `result-track:b70d0328d48a9621eb1dce03453307eacd68d3bbfc35e18c4ed2e15e3c50005c` |
| 8 | `theorem` | [lookmap_of_forall_not](../../../../../../ComputerScience/TheoryOfData/DataStructures/Lookmap.lean/declarations/lookmap-of-forall-not.md) | 63 | `result-track:47875d037d308b1d1c3147ebf4650e3f44fb4214e7a53bc6929ce2fedbfc6c50` |
| 9 | `theorem` | [lookmap_map_eq](../../../../../../ComputerScience/TheoryOfData/DataStructures/Lookmap.lean/declarations/lookmap-map-eq.md) | 66 | `result-track:2de5219155dd41505ba1720f592fadafd7ec989157774ffb88c0a758b2361d2a` |
| 10 | `theorem` | [lookmap_id'](../../../../../../ComputerScience/TheoryOfData/DataStructures/Lookmap.lean/declarations/lookmap-id.md) | 74 | `result-track:e5aa05de7c469b50b88c7ebea605a0d66f667bccf923a1761914a1eab6ff5d57` |
| 11 | `theorem` | [length_lookmap](../../../../../../ComputerScience/TheoryOfData/DataStructures/Lookmap.lean/declarations/length-lookmap.md) | 77 | `result-track:3b92d301ab9c7f3154d3b0ecfa5319a5727e5ee9cd46ab0521d4a4236b9ae023` |
| 12 | `theorem` | [perm_lookmap](../../../../../../ComputerScience/TheoryOfData/DataStructures/Lookmap.lean/declarations/perm-lookmap.md) | 81 | `result-track:6cf0580ef4e4203252fa24d1c0224f1a381e9ec733db02246410712e15f924c9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=bffd2c85d7e18fd029fcbe3b5e0ee2c443faa97d11464fc1de57960ec0f70eaa -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lookmap/Variante6b81147d774bcfc2f967d8650912435f2ba1fd4a8a272051c53585ee741c8c3.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lookmap/Variante6b81147d774bcfc2f967d8650912435f2ba1fd4a8a272051c53585ee741c8c3.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
