# Verification target: GRWTSK.Topology.GeneralTopology.StarSubalgebra.Varianta3518dab0eef035bbfbc476b31a72f58d015ee392e7cb87f79e2262bbd874bad

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "18b70958a493a27b1a986e1a6120edc1f21c6484",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/StarSubalgebra/Varianta3518dab0eef035bbfbc476b31a72f58d015ee392e7cb87f79e2262bbd874bad.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/StarSubalgebra/Varianta3518dab0eef035bbfbc476b31a72f58d015ee392e7cb87f79e2262bbd874bad.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/StarSubalgebra/Varianta3518dab0eef035bbfbc476b31a72f58d015ee392e7cb87f79e2262bbd874bad.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `18b70958a493a27b1a986e1a6120edc1f21c6484`.

Source path: `GRWTSK/Topology/GeneralTopology/StarSubalgebra/Varianta3518dab0eef035bbfbc476b31a72f58d015ee392e7cb87f79e2262bbd874bad.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/StarSubalgebra/Varianta3518dab0eef035bbfbc476b31a72f58d015ee392e7cb87f79e2262bbd874bad.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Star.Subalgebra` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Algebra` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Star` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/StarSubalgebra/Varianta3518dab0eef035bbfbc476b31a72f58d015ee392e7cb87f79e2262bbd874bad.lean/declarations/instance--a0e31a4ae6f137a395b233f1.md) | 40 | `declaration-track:a0e31a4ae6f137a395b233f1ae3bfe4e61c9fac0e6d205834b5839f690041ccf` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/StarSubalgebra/Varianta3518dab0eef035bbfbc476b31a72f58d015ee392e7cb87f79e2262bbd874bad.lean/declarations/instance--e2918f3b0c763a3a906f7e81.md) | 43 | `declaration-track:e2918f3b0c763a3a906f7e81c906ebfb1408642a696e7743af47af79de2abd55` |
| 3 | `theorem` | [embedding_inclusion](../../../../../mathematics/Topology/GeneralTopology/StarSubalgebra/Varianta3518dab0eef035bbfbc476b31a72f58d015ee392e7cb87f79e2262bbd874bad.lean/declarations/embedding-inclusion--5ba5c67c9533969d48048688.md) | 47 | `result-track:5ba5c67c9533969d48048688c23a9261c71e945f499d2f79d9937ff2214d99bb` |
| 4 | `theorem` | [closedEmbedding_inclusion](../../../../../mathematics/Topology/GeneralTopology/StarSubalgebra/Varianta3518dab0eef035bbfbc476b31a72f58d015ee392e7cb87f79e2262bbd874bad.lean/declarations/closedembedding-inclusion--aea74a663d2225044bc003a2.md) | 53 | `result-track:aea74a663d2225044bc003a2265a0be6d3a1d7e9fe972a874f939305c66bb017` |
| 5 | `def` | [topologicalClosure](../../../../../mathematics/Topology/GeneralTopology/StarSubalgebra/Varianta3518dab0eef035bbfbc476b31a72f58d015ee392e7cb87f79e2262bbd874bad.lean/declarations/topologicalclosure--f8cd45729f1e7f5271b9b6d0.md) | 69 | `declaration-track:f8cd45729f1e7f5271b9b6d0fd59fca831de968221db9d432d8eeb56f119bc6f` |
| 6 | `theorem` | [topologicalClosure_toSubalgebra_comm](../../../../../mathematics/Topology/GeneralTopology/StarSubalgebra/Varianta3518dab0eef035bbfbc476b31a72f58d015ee392e7cb87f79e2262bbd874bad.lean/declarations/topologicalclosure-tosubalgebra-comm--da099d63cc1190268c7f958c.md) | 77 | `result-track:da099d63cc1190268c7f958c26e52bb8438ef43f969b8cb9babfa5a1f831ae3f` |
| 7 | `theorem` | [topologicalClosure_coe](../../../../../mathematics/Topology/GeneralTopology/StarSubalgebra/Varianta3518dab0eef035bbfbc476b31a72f58d015ee392e7cb87f79e2262bbd874bad.lean/declarations/topologicalclosure-coe--2fe8423edc2a16de1a41c5f2.md) | 82 | `result-track:2fe8423edc2a16de1a41c5f2d5e475fa1d98ba42cbf1eeb6554394e032b38971` |
| 8 | `theorem` | [le_topologicalClosure](../../../../../mathematics/Topology/GeneralTopology/StarSubalgebra/Varianta3518dab0eef035bbfbc476b31a72f58d015ee392e7cb87f79e2262bbd874bad.lean/declarations/le-topologicalclosure--18f9a4791941821c91165185.md) | 87 | `result-track:18f9a4791941821c91165185c653f884176a13febcd62441552274e88c122d4d` |
| 9 | `theorem` | [isClosed_topologicalClosure](../../../../../mathematics/Topology/GeneralTopology/StarSubalgebra/Varianta3518dab0eef035bbfbc476b31a72f58d015ee392e7cb87f79e2262bbd874bad.lean/declarations/isclosed-topologicalclosure--74cd6754396719ee764ce15f.md) | 91 | `result-track:74cd6754396719ee764ce15fc3b69ed1b51ed056ef97a234036fee80f1919261` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/StarSubalgebra/Varianta3518dab0eef035bbfbc476b31a72f58d015ee392e7cb87f79e2262bbd874bad.lean/declarations/instance--888067b94f978705914e55d9.md) | 96 | `declaration-track:888067b94f978705914e55d91c3a7297cf4cab9543428244c0fe6011caf434f6` |
| 11 | `theorem` | [topologicalClosure_minimal](../../../../../mathematics/Topology/GeneralTopology/StarSubalgebra/Varianta3518dab0eef035bbfbc476b31a72f58d015ee392e7cb87f79e2262bbd874bad.lean/declarations/topologicalclosure-minimal--5b8dea88ebdabd09f40659cc.md) | 101 | `result-track:5b8dea88ebdabd09f40659cc0d1c04a40c4e71111e24b884f4e21c2e982577dd` |
| 12 | `theorem` | [topologicalClosure_mono](../../../../../mathematics/Topology/GeneralTopology/StarSubalgebra/Varianta3518dab0eef035bbfbc476b31a72f58d015ee392e7cb87f79e2262bbd874bad.lean/declarations/topologicalclosure-mono--513ce54fd002fdef12841fda.md) | 106 | `result-track:513ce54fd002fdef12841fdad719e613719b476515351bbd14bcabdc7aad7ecc` |
| 13 | `theorem` | [topologicalClosure_map_le](../../../../../mathematics/Topology/GeneralTopology/StarSubalgebra/Varianta3518dab0eef035bbfbc476b31a72f58d015ee392e7cb87f79e2262bbd874bad.lean/declarations/topologicalclosure-map-le--febb8c303c801c5116b6adf3.md) | 111 | `result-track:febb8c303c801c5116b6adf36c5d0888d895fd6629de4e88448b3f04e79b0a85` |
| 14 | `theorem` | [map_topologicalClosure_le](../../../../../mathematics/Topology/GeneralTopology/StarSubalgebra/Varianta3518dab0eef035bbfbc476b31a72f58d015ee392e7cb87f79e2262bbd874bad.lean/declarations/map-topologicalclosure-le--0f86562b9a5f1b522b983e2c.md) | 116 | `result-track:0f86562b9a5f1b522b983e2c2c9551fbc7ca073c751cba193a0c6496f65a53bf` |
| 15 | `theorem` | [topologicalClosure_map](../../../../../mathematics/Topology/GeneralTopology/StarSubalgebra/Varianta3518dab0eef035bbfbc476b31a72f58d015ee392e7cb87f79e2262bbd874bad.lean/declarations/topologicalclosure-map--3013a501a20e784a8922c26c.md) | 121 | `result-track:3013a501a20e784a8922c26c04877f15401dc17a61bf827b34646e917a2a45ab` |
| 16 | `theorem` | [_root_.Subalgebra.topologicalClosure_star_comm](../../../../../mathematics/Topology/GeneralTopology/StarSubalgebra/Varianta3518dab0eef035bbfbc476b31a72f58d015ee392e7cb87f79e2262bbd874bad.lean/declarations/root-subalgebra-topologicalclosure-star-comm--77959821bc2da988a2871dbf.md) | 126 | `result-track:77959821bc2da988a2871dbf802692af0f460a12950b2ba652f162be014e1a80` |
| 17 | `def` | [commSemiringTopologicalClosure](../../../../../mathematics/Topology/GeneralTopology/StarSubalgebra/Varianta3518dab0eef035bbfbc476b31a72f58d015ee392e7cb87f79e2262bbd874bad.lean/declarations/commsemiringtopologicalclosure--2061ca540ef8ea1ddc5d4893.md) | 136 | `declaration-track:2061ca540ef8ea1ddc5d489321dbff0c28efda1fbb28ab73bddf4f5c28d44864` |
| 18 | `def` | [commRingTopologicalClosure](../../../../../mathematics/Topology/GeneralTopology/StarSubalgebra/Varianta3518dab0eef035bbfbc476b31a72f58d015ee392e7cb87f79e2262bbd874bad.lean/declarations/commringtopologicalclosure--eb8a83681d114f5be0d33ba7.md) | 144 | `declaration-track:eb8a83681d114f5be0d33ba7b511b251ec2325d58d026711204143fdd095422f` |
| 19 | `theorem` | [_root_.StarAlgHom.ext_topologicalClosure](../../../../../mathematics/Topology/GeneralTopology/StarSubalgebra/Varianta3518dab0eef035bbfbc476b31a72f58d015ee392e7cb87f79e2262bbd874bad.lean/declarations/root-staralghom-ext-topologicalclosure--3f41438cb3420482d173ba70.md) | 152 | `result-track:3f41438cb3420482d173ba70c72fc0a51cedf563458a13dc4527e13e46e44bf4` |
| 20 | `theorem` | [_root_.StarAlgHomClass.ext_topologicalClosure](../../../../../mathematics/Topology/GeneralTopology/StarSubalgebra/Varianta3518dab0eef035bbfbc476b31a72f58d015ee392e7cb87f79e2262bbd874bad.lean/declarations/root-staralghomclass-ext-topologicalclosure--9b5608d6ee81aa8284ade24d.md) | 172 | `result-track:9b5608d6ee81aa8284ade24d818d0d76045c5228bbb7c7e34ceb1a4194b1d2d4` |
| 21 | `def` | [elementalStarAlgebra](../../../../../mathematics/Topology/GeneralTopology/StarSubalgebra/Varianta3518dab0eef035bbfbc476b31a72f58d015ee392e7cb87f79e2262bbd874bad.lean/declarations/elementalstaralgebra--eeaf66d3ea2a5999b1c22687.md) | 202 | `declaration-track:eeaf66d3ea2a5999b1c22687ae4ab0d37dd4da8a89b48cadd6d45dffc216b48d` |
| 22 | `theorem` | [self_mem](../../../../../mathematics/Topology/GeneralTopology/StarSubalgebra/Varianta3518dab0eef035bbfbc476b31a72f58d015ee392e7cb87f79e2262bbd874bad.lean/declarations/self-mem--f6c4bc989a1e5417abc19dd3.md) | 208 | `result-track:f6c4bc989a1e5417abc19dd37b2bac9cdb4577e8b47347a2eb785bbaa6716f5f` |
| 23 | `theorem` | [star_self_mem](../../../../../mathematics/Topology/GeneralTopology/StarSubalgebra/Varianta3518dab0eef035bbfbc476b31a72f58d015ee392e7cb87f79e2262bbd874bad.lean/declarations/star-self-mem--8b63f7021cbba1193731a2f3.md) | 212 | `result-track:8b63f7021cbba1193731a2f3df061cddc7b8d9bfa69d34eeb4399f6cdc2759ec` |
| 24 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/StarSubalgebra/Varianta3518dab0eef035bbfbc476b31a72f58d015ee392e7cb87f79e2262bbd874bad.lean/declarations/instance--3bdf201f0b5f946a36194efe.md) | 217 | `declaration-track:3bdf201f0b5f946a36194efe3cffc03f99cd679dbb225691a668e8a0b6086553` |
| 25 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/StarSubalgebra/Varianta3518dab0eef035bbfbc476b31a72f58d015ee392e7cb87f79e2262bbd874bad.lean/declarations/instance--70142675cc0b0ca8014c9084.md) | 221 | `declaration-track:70142675cc0b0ca8014c9084ce8341581d1f48d7a7942cc7bd57d7753fb27579` |
| 26 | `theorem` | [isClosed](../../../../../mathematics/Topology/GeneralTopology/StarSubalgebra/Varianta3518dab0eef035bbfbc476b31a72f58d015ee392e7cb87f79e2262bbd874bad.lean/declarations/isclosed--d325eb76b25a7ee850611842.md) | 226 | `result-track:d325eb76b25a7ee8506118427c23ac58d4c118ab7929d60733464ea33c95fd2f` |
| 27 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/StarSubalgebra/Varianta3518dab0eef035bbfbc476b31a72f58d015ee392e7cb87f79e2262bbd874bad.lean/declarations/instance--c8d136b8c6cdf4a574495ee4.md) | 230 | `declaration-track:c8d136b8c6cdf4a574495ee49963a9a20fd2bf43f55c8eb22fc5f70ace09a21a` |
| 28 | `theorem` | [le_of_isClosed_of_mem](../../../../../mathematics/Topology/GeneralTopology/StarSubalgebra/Varianta3518dab0eef035bbfbc476b31a72f58d015ee392e7cb87f79e2262bbd874bad.lean/declarations/le-of-isclosed-of-mem--6074bcb61267759e55ce91db.md) | 235 | `result-track:6074bcb61267759e55ce91db4b39980e6089738a7451feee9c2c6db8ca137274` |
| 29 | `theorem` | [closedEmbedding_coe](../../../../../mathematics/Topology/GeneralTopology/StarSubalgebra/Varianta3518dab0eef035bbfbc476b31a72f58d015ee392e7cb87f79e2262bbd874bad.lean/declarations/closedembedding-coe--9c1f330596c7833b65f924ae.md) | 241 | `result-track:9c1f330596c7833b65f924aee0eee36ee543f5af7dd05b848e33d7a2d7eb2d77` |
| 30 | `theorem` | [starAlgHomClass_ext](../../../../../mathematics/Topology/GeneralTopology/StarSubalgebra/Varianta3518dab0eef035bbfbc476b31a72f58d015ee392e7cb87f79e2262bbd874bad.lean/declarations/staralghomclass-ext--fe74bee21f5df96179961a10.md) | 253 | `result-track:fe74bee21f5df96179961a1029b957efacf8013f995199292331b5140b49236c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
