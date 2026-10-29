# Verification target: Vector Defs Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f4ba964491c3a35f1ab173796057c4e0f4db77fb",
  "lexical_observation_count": 42,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant62c23d660a16aa426f43390d873568cd4d766c62244f2988f9e7d967dea1706b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorDefsNamespaced.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorDefsNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f4ba964491c3a35f1ab173796057c4e0f4db77fb`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant62c23d660a16aa426f43390d873568cd4d766c62244f2988f9e7d967dea1706b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant62c23d660a16aa426f43390d873568cd4d766c62244f2988f9e7d967dea1706b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.List.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Common` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [List.Vector](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorDefsNamespaced.lean/declarations/list-vector.md) | 38 | `declaration-track:60d37dea488266ce569e231db46dfde433e97f0e2040d0e4436d8cb6d8b5378e` |
| 2 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorDefsNamespaced.lean/declarations/instance-source-edition-2.md) | 45 | `declaration-track:8a9ec7dcc225a6850318295b0a2073f6a32cc2df4360c1ef4a83b498577f0cc8` |
| 3 | `def` | [nil](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorDefsNamespaced.lean/declarations/nil.md) | 50 | `declaration-track:b14ae3f99e19ffbe719d50495fb404afb6bfde3eff0d90065091e1e367f32c0f` |
| 4 | `def` | [cons](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorDefsNamespaced.lean/declarations/cons.md) | 56 | `declaration-track:5470539a9776b830d05693f72c1746801e2cf7f409e15a5ce42b66f31a0c1810` |
| 5 | `def` | [length](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorDefsNamespaced.lean/declarations/length.md) | 62 | `declaration-track:2a3853fbd4ddc4e82864232da9bf6b3fec51b23f7db1ab58713d5fc0b9ab9428` |
| 6 | `def` | [head](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorDefsNamespaced.lean/declarations/head.md) | 68 | `declaration-track:ded044d0bdbf34065554fbe12a94068c653fefc4d807b0c87ea2ad981d361c5b` |
| 7 | `theorem` | [head_cons](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorDefsNamespaced.lean/declarations/head-cons.md) | 72 | `result-track:5d0c4c04527312fce2f25eaf5daa2898935a62c7370e9a9b00780bfbc0a50f27` |
| 8 | `def` | [tail](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorDefsNamespaced.lean/declarations/tail.md) | 76 | `declaration-track:1f2b73a169308ab621496eda1df4ff06ee0216f2b0fe968be75088363b7852a8` |
| 9 | `theorem` | [tail_cons](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorDefsNamespaced.lean/declarations/tail-cons.md) | 81 | `result-track:7d02248c9f2a37c7304d814cf1f4b9204ee357d8303e5bddb43cdbffc2b7f91c` |
| 10 | `theorem` | [cons_head_tail](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorDefsNamespaced.lean/declarations/cons-head-tail.md) | 86 | `result-track:aff0b23655ca5bcc9c9285b18e91f6d6bc10c358d635ab399405574fbd98773e` |
| 11 | `def` | [toList](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorDefsNamespaced.lean/declarations/tolist.md) | 91 | `declaration-track:c6396f29a7d52132811ee29f80300932a3afe934a7cba2b95c7d3326afca94a8` |
| 12 | `def` | [get](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorDefsNamespaced.lean/declarations/get.md) | 95 | `declaration-track:d112484a4abb36c766c2c48dc0230f4fa1ef20a1805ae555fb4b80e5eddb1edc` |
| 13 | `def` | [append](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorDefsNamespaced.lean/declarations/append.md) | 99 | `declaration-track:851655bb57902f57671d9b963b60e465d4633cfdc5b9a2f67a081ac85bc9d337` |
| 14 | `def` | [elim](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorDefsNamespaced.lean/declarations/elim.md) | 104 | `declaration-track:47351f6ccf2d4247b548094479582e0b2399f07d6c861b39e4beaf4029731fb1` |
| 15 | `def` | [map](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorDefsNamespaced.lean/declarations/map-source-edition-2.md) | 111 | `declaration-track:57f5af7e852723d0a7b9a4af3fb5962d1af3b0706b95267fb591e657ce812b78` |
| 16 | `theorem` | [map_nil](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorDefsNamespaced.lean/declarations/map-nil.md) | 116 | `result-track:4b89f35eb1a980d7eaca95c756266a6eca33d9ac0b0cee2f50fb4c650c97e022` |
| 17 | `theorem` | [map_cons](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorDefsNamespaced.lean/declarations/map-cons.md) | 121 | `result-track:7879d28c843d5ea039e3c57aa51c5f61fb31b85cd8442185239c610bff0ed128` |
| 18 | `def` | [pmap](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorDefsNamespaced.lean/declarations/pmap.md) | 125 | `declaration-track:48abdb2ae6fc080e2db4bb0a5b92ae44ce9b65e12d353e7f2f6b234d8cb1720f` |
| 19 | `theorem` | [pmap_nil](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorDefsNamespaced.lean/declarations/pmap-nil.md) | 130 | `result-track:14daa35b93b13b9166257af516589ae3452950ae35d2266f5d143996200ebb82` |
| 20 | `def` | [map₂](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorDefsNamespaced.lean/declarations/map.md) | 134 | `declaration-track:055858126947d67b9046e2edc247ca6f5687cc5787d08c25b225e6cec9552238` |
| 21 | `def` | [replicate](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorDefsNamespaced.lean/declarations/replicate.md) | 138 | `declaration-track:dd794072378cba53d0beb460ad21d0c334195fc1247abd3b500b49112c3911cd` |
| 22 | `def` | [drop](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorDefsNamespaced.lean/declarations/drop.md) | 142 | `declaration-track:d1fed69f867007c7011674475fdfc5e20392edcf0ebdf425fcb8dc5b6ab08e0c` |
| 23 | `def` | [take](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorDefsNamespaced.lean/declarations/take.md) | 146 | `declaration-track:4d3975e3c32e45f2b12ba57573932e23327393a62e274b36a97441db6e14b314` |
| 24 | `def` | [eraseIdx](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorDefsNamespaced.lean/declarations/eraseidx.md) | 150 | `declaration-track:cf1a8939e4b4f78a57b6e5f1668d049da62dabbc37bec8a8f686731e031c18ef` |
| 25 | `def` | [ofFn](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorDefsNamespaced.lean/declarations/offn.md) | 154 | `declaration-track:4085089b5886ca56a0e4b1d23abbff654e89746d53e4bea14cf7218fbc5776e8` |
| 26 | `def` | [congr](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorDefsNamespaced.lean/declarations/congr.md) | 159 | `declaration-track:89e6149e5ce40eee1844c4423e2264bd1daa79949c41c5d67d4ea87d1daae5c7` |
| 27 | `def` | [mapAccumr](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorDefsNamespaced.lean/declarations/mapaccumr.md) | 169 | `declaration-track:a79c1c514482177f91200b73e6c1121ebb328886c232a8285bdbebacc1176ebd` |
| 28 | `def` | [mapAccumr₂](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorDefsNamespaced.lean/declarations/mapaccumr-source-edition-2.md) | 177 | `declaration-track:e589bfc4ff2a6bd8a0f2fa01928268cb83714b1a95f668b791415f1b7ef604c8` |
| 29 | `def` | [shiftLeftFill](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorDefsNamespaced.lean/declarations/shiftleftfill.md) | 189 | `declaration-track:760d8a83fb9d943119edf2a340d15eeeba654f45bf4905ef92ac6d4823b5d73b` |
| 30 | `def` | [shiftRightFill](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorDefsNamespaced.lean/declarations/shiftrightfill.md) | 195 | `declaration-track:257439726e1c5bddce24d22dec62a060eadda6c0f2dc2e4c6c9d40fdbb2c06f4` |
| 31 | `theorem` | [eq](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorDefsNamespaced.lean/declarations/eq.md) | 203 | `result-track:a1e82970cf52a04332dce025ee00466c932f8c09fdef86ab8c3876b3b64ebdbd` |
| 32 | `theorem` | [eq_nil](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorDefsNamespaced.lean/declarations/eq-nil.md) | 207 | `result-track:859c83855c4b6d9379367b155c34f53524600651d604811b28aa929b7b68297c` |
| 33 | `theorem` | [toList_mk](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorDefsNamespaced.lean/declarations/tolist-mk.md) | 213 | `result-track:9282942ea0af2e959895ad8f897209a5a89d7cdb6a7a7375ef1b51c5188e5f95` |
| 34 | `theorem` | [toList_nil](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorDefsNamespaced.lean/declarations/tolist-nil.md) | 218 | `result-track:71efa83fa1aa16dfae91e1b7cf18aef084fc7eb6d40b86aa581088e3b418ace2` |
| 35 | `theorem` | [toList_length](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorDefsNamespaced.lean/declarations/tolist-length.md) | 223 | `result-track:a76bb160272c7729921dd6d5f08aafe620bd3ad886bc387a038c116a2c1b13bd` |
| 36 | `theorem` | [toList_cons](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorDefsNamespaced.lean/declarations/tolist-cons.md) | 229 | `result-track:dd7efef8af537cd013a5a46513708d0717c47b2780e8f69ccd3474fd68bb608a` |
| 37 | `theorem` | [toList_append](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorDefsNamespaced.lean/declarations/tolist-append.md) | 234 | `result-track:616d618a693551efc379a49f631808b5b3a05d8e7e9ed00bce0f27e463fa1633` |
| 38 | `theorem` | [toList_drop](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorDefsNamespaced.lean/declarations/tolist-drop.md) | 242 | `result-track:f40865abd2b57fc90579a63c59d0cde9ff2f1deadf841cfae61c0d332387f4e6` |
| 39 | `theorem` | [toList_take](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorDefsNamespaced.lean/declarations/tolist-take.md) | 248 | `result-track:8508df2da40147bef2c5c4f990980c8ed361c0d555b7567cd672bc7a453d3949` |
| 40 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorDefsNamespaced.lean/declarations/instance.md) | 252 | `declaration-track:3317a885ef18c7fdc32ea42a7eeb0576030766d4a7eade87741471703f6ed032` |
| 41 | `lemma` | [getElem_def](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorDefsNamespaced.lean/declarations/getelem-def.md) | 255 | `result-track:9b5433f0eefa1aa7b81d1088f6be2bb0f548d1c8f6c6017551198aef73da1853` |
| 42 | `lemma` | [toList_getElem](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorDefsNamespaced.lean/declarations/tolist-getelem.md) | 258 | `result-track:5f3f1ac39fde63f0481d09ff630f093b299c85a4e1c5d07fb350f6738dcd16fb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d23eaa6573646d11e564a993575a568064314be0d717c4dddedc7698c8e68024 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant62c23d660a16aa426f43390d873568cd4d766c62244f2988f9e7d967dea1706b.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant62c23d660a16aa426f43390d873568cd4d766c62244f2988f9e7d967dea1706b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
