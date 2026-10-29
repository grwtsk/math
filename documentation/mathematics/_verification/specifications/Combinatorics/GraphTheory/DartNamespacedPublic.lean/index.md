# Verification target: Dart Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c54b559ed9184baab2e4584977f0e3ec9333eaf2",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Dart/Variant6e06f6a9345af58ce5c609d0b624963c548fa4872258a11a211fab235779f7e8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../Combinatorics/GraphTheory/DartNamespacedPublic.lean/index.md) · [Full source](../../../../../Combinatorics/GraphTheory/DartNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c54b559ed9184baab2e4584977f0e3ec9333eaf2`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Dart/Variant6e06f6a9345af58ce5c609d0b624963c548fa4872258a11a211fab235779f7e8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/GraphTheory/Dart/Variant6e06f6a9345af58ce5c609d0b624963c548fa4872258a11a211fab235779f7e8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Dart](../../../../../Combinatorics/GraphTheory/DartNamespacedPublic.lean/declarations/dart.md) | 35 | `declaration-track:cb9c010f4c5de0258229e0059f2b8917014fa2afcb8bcd58810d7458be806dc6` |
| 2 | `theorem` | [Dart.ext_iff](../../../../../Combinatorics/GraphTheory/DartNamespacedPublic.lean/declarations/dart-ext-iff.md) | 45 | `result-track:36fb08b39e7e2e116c13e78dff75dc7d120b6c586c6738cb1d7e0af93f5dbd48` |
| 3 | `theorem` | [Dart.ext](../../../../../Combinatorics/GraphTheory/DartNamespacedPublic.lean/declarations/dart-ext.md) | 49 | `result-track:b1d83c565226836c5add0e3a02aa84a5bfe7fe28826ef39456c0ad2a67e1f072` |
| 4 | `theorem` | [Dart.fst_ne_snd](../../../../../Combinatorics/GraphTheory/DartNamespacedPublic.lean/declarations/dart-fst-ne-snd.md) | 53 | `result-track:f9bddb7866249b75fef4e33e86a2b594ba1f8ed0c5034a77c5e687cd6fa98a0a` |
| 5 | `theorem` | [Dart.snd_ne_fst](../../../../../Combinatorics/GraphTheory/DartNamespacedPublic.lean/declarations/dart-snd-ne-fst.md) | 57 | `result-track:6121642d3155797642ccc069ce982018601ddba66fc738d88a193885091f4c56` |
| 6 | `theorem` | [Dart.toProd_injective](../../../../../Combinatorics/GraphTheory/DartNamespacedPublic.lean/declarations/dart-toprod-injective.md) | 60 | `result-track:c53f062cc18012c597cb4bd9cb9aa06234448392e170e544f019ef7dba912880` |
| 7 | `instance` | [Dart.fintype](../../../../../Combinatorics/GraphTheory/DartNamespacedPublic.lean/declarations/dart-fintype.md) | 63 | `declaration-track:3aaf116d57dad3c7f3849ecde9b9552ca142ed14bda6a62868f896cf6a6a32f1` |
| 8 | `def` | [Dart.edge](../../../../../Combinatorics/GraphTheory/DartNamespacedPublic.lean/declarations/dart-edge.md) | 69 | `declaration-track:103e92524d0a0beb38b2145383b6d3a558d870f77e6edde313d477caa4e90fc1` |
| 9 | `theorem` | [Dart.edge_mk](../../../../../Combinatorics/GraphTheory/DartNamespacedPublic.lean/declarations/dart-edge-mk.md) | 72 | `result-track:e8990e55a4b860eafd1160c18c62dbca3e8dd0e39ba2401b449400d9b8629fb0` |
| 10 | `theorem` | [Dart.edge_mem](../../../../../Combinatorics/GraphTheory/DartNamespacedPublic.lean/declarations/dart-edge-mem.md) | 76 | `result-track:16f72340d25d7d88ce769243e4157aadbd35681ee11a717836250b637a48b2e0` |
| 11 | `def` | [Dart.symm](../../../../../Combinatorics/GraphTheory/DartNamespacedPublic.lean/declarations/dart-symm.md) | 81 | `declaration-track:3b95dfd6833c9b7b472497fbbd987c331dd150c020ce6977bfc2b484da3a81ce` |
| 12 | `theorem` | [Dart.symm_mk](../../../../../Combinatorics/GraphTheory/DartNamespacedPublic.lean/declarations/dart-symm-mk.md) | 85 | `result-track:58a6c06d2aa42fd2f72503254ec088655e71dcb71594a24bd422d34af6e840c8` |
| 13 | `theorem` | [Dart.edge_symm](../../../../../Combinatorics/GraphTheory/DartNamespacedPublic.lean/declarations/dart-edge-symm.md) | 89 | `result-track:0dbca68203d2893092af73b46ec7f5c3b82ea1a60c35911f618a1b018ae9d03e` |
| 14 | `theorem` | [Dart.edge_comp_symm](../../../../../Combinatorics/GraphTheory/DartNamespacedPublic.lean/declarations/dart-edge-comp-symm.md) | 93 | `result-track:0c52347e256af590a4ec6f1fb877a2bead6baa95002e63366faae974f117a82a` |
| 15 | `theorem` | [Dart.symm_symm](../../../../../Combinatorics/GraphTheory/DartNamespacedPublic.lean/declarations/dart-symm-symm.md) | 97 | `result-track:2b4d621bf599229f95971bd126d63a11f50099aa7797cfbe9f7903a53f8915c8` |
| 16 | `theorem` | [Dart.symm_involutive](../../../../../Combinatorics/GraphTheory/DartNamespacedPublic.lean/declarations/dart-symm-involutive.md) | 101 | `result-track:9e717b2ea567de24485d1b019e34421570ac035b46cf4133e1abc0119d49171f` |
| 17 | `theorem` | [Dart.symm_ne](../../../../../Combinatorics/GraphTheory/DartNamespacedPublic.lean/declarations/dart-symm-ne.md) | 104 | `result-track:cbf6940b4ab5e872d250201dc12b9d3f7c72467e4c00c4c5969217e95016c65c` |
| 18 | `theorem` | [dart_edge_eq_iff](../../../../../Combinatorics/GraphTheory/DartNamespacedPublic.lean/declarations/dart-edge-eq-iff.md) | 107 | `result-track:d8b6bf768e9674c7a3db209363a8965abbf8fad83317e2bb50e0a56ec24f08de` |
| 19 | `theorem` | [dart_edge_eq_mk'_iff](../../../../../Combinatorics/GraphTheory/DartNamespacedPublic.lean/declarations/dart-edge-eq-mk-iff-source-edition-2.md) | 111 | `result-track:74abed7c7a7245b26b3909ca4007779119a98a24e35b038e5ad2accc602fcf84` |
| 20 | `theorem` | [dart_edge_eq_mk'_iff'](../../../../../Combinatorics/GraphTheory/DartNamespacedPublic.lean/declarations/dart-edge-eq-mk-iff.md) | 116 | `result-track:5c072919772e9be208097dd8d560892e66f1884bda3056e23b6f413f79c252c5` |
| 21 | `def` | [DartAdj](../../../../../Combinatorics/GraphTheory/DartNamespacedPublic.lean/declarations/dartadj.md) | 128 | `declaration-track:d43d36339a053ddd7e14f8893e029158c6ddb22561b6a13d1efbfcc6591d5109` |
| 22 | `def` | [dartOfNeighborSet](../../../../../Combinatorics/GraphTheory/DartNamespacedPublic.lean/declarations/dartofneighborset.md) | 134 | `declaration-track:446edac0993daa4e260de4e25bc024910b96b33a638ab2fcc49ced07adea62ed` |
| 23 | `theorem` | [dartOfNeighborSet_injective](../../../../../Combinatorics/GraphTheory/DartNamespacedPublic.lean/declarations/dartofneighborset-injective.md) | 137 | `result-track:b5a12ee18aed81af030a421e17740919832fb39f2fc70253ec738c9e44f2bdb9` |
| 24 | `instance` | [nonempty_dart_top](../../../../../Combinatorics/GraphTheory/DartNamespacedPublic.lean/declarations/nonempty-dart-top.md) | 143 | `declaration-track:ff24665f35b35867de0e9691dbd6579cd52c27bd1d53bff8964e3431a21ffed6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1eaf6981c1b1b185b497f19d9431d10487b565a030736adfdab591af87f2486a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Dart/Variant6e06f6a9345af58ce5c609d0b624963c548fa4872258a11a211fab235779f7e8.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/GraphTheory/Dart/Variant6e06f6a9345af58ce5c609d0b624963c548fa4872258a11a211fab235779f7e8.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
