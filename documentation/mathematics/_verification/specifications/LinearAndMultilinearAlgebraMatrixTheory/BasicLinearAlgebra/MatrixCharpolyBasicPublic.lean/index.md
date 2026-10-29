# Verification target: Matrix Charpoly Basic Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bf61c7c7392d447d564072994f8f88a2952017a4",
  "lexical_observation_count": 39,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Basic/Variant27999a02f480995bda68950253125f44cefcfaff12b25cd837e6dd9b16f8d506.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixCharpolyBasicPublic.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixCharpolyBasicPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bf61c7c7392d447d564072994f8f88a2952017a4`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Basic/Variant27999a02f480995bda68950253125f44cefcfaff12b25cd837e6dd9b16f8d506.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Basic/Variant27999a02f480995bda68950253125f44cefcfaff12b25cd837e6dd9b16f8d506.lean.json)

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
| 1 | `def` | [charmatrix](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixCharpolyBasicPublic.lean/declarations/charmatrix.md) | 50 | `declaration-track:77468fcea410654b937d8f23e9adde1378b594c96078c740ea438851954b1bc7` |
| 2 | `theorem` | [charmatrix_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixCharpolyBasicPublic.lean/declarations/charmatrix-apply.md) | 53 | `result-track:184ad3f624012ae80e043c0661819438fdd97bfee9f36e345952b72e7727451b` |
| 3 | `theorem` | [charmatrix_apply_eq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixCharpolyBasicPublic.lean/declarations/charmatrix-apply-eq.md) | 58 | `result-track:dec311e1e994d2882a136ad0031b397430ebb5c3064264ee68808743d5e00cde` |
| 4 | `theorem` | [charmatrix_apply_ne](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixCharpolyBasicPublic.lean/declarations/charmatrix-apply-ne.md) | 63 | `result-track:9a0f3b4cb504ddec22b4c3d3e992573ba7abb16d2110e19cc49b59170a21b034` |
| 5 | `theorem` | [charmatrix_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixCharpolyBasicPublic.lean/declarations/charmatrix-zero.md) | 68 | `result-track:08464441e1a6cb89fe6f74b8062a2651703bcb4ddfd71e9fb3e80cac699ce125` |
| 6 | `theorem` | [charmatrix_diagonal](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixCharpolyBasicPublic.lean/declarations/charmatrix-diagonal.md) | 72 | `result-track:562ed6da7d4e6b67e48a013ad7ff429eaff221dd432ad2cc64efd830e3f99354` |
| 7 | `theorem` | [charmatrix_one](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixCharpolyBasicPublic.lean/declarations/charmatrix-one.md) | 77 | `result-track:d672f5edd2065b90cc9cee47cf9dfbfe57e8aaffbd7430e74dc9320a888c6c54` |
| 8 | `theorem` | [charmatrix_natCast](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixCharpolyBasicPublic.lean/declarations/charmatrix-natcast.md) | 81 | `result-track:63c874482d3f3c531a7dfd841dcf17ed8ce8665481c037747b102a910e850f19` |
| 9 | `theorem` | [charmatrix_ofNat](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixCharpolyBasicPublic.lean/declarations/charmatrix-ofnat.md) | 86 | `result-track:a215adf379e76bd26ccc58bae97655823f2d5a017bc3d512086c3b3f98f6ae4c` |
| 10 | `theorem` | [charmatrix_transpose](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixCharpolyBasicPublic.lean/declarations/charmatrix-transpose.md) | 91 | `result-track:2473a5c03478463f134e663a1509a0e935a6f87b069bd228c4718d9d78068ffe` |
| 11 | `theorem` | [matPolyEquiv_charmatrix](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixCharpolyBasicPublic.lean/declarations/matpolyequiv-charmatrix.md) | 94 | `result-track:e1aa1d83fb78f325442f872fa81c2108404e1d9f1e19023e9cd7c310ccc53b24` |
| 12 | `theorem` | [charmatrix_reindex](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixCharpolyBasicPublic.lean/declarations/charmatrix-reindex.md) | 105 | `result-track:c6d39d957b9afbc59f639f29c4858d3ae8cd7cc3f7fd017a11aa15453887add1` |
| 13 | `lemma` | [charmatrix_map](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixCharpolyBasicPublic.lean/declarations/charmatrix-map.md) | 111 | `result-track:e30053498c9e42edd460a16ed74478e6142535e8faa83056ebb7ed47819619cc` |
| 14 | `lemma` | [charmatrix_fromBlocks](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixCharpolyBasicPublic.lean/declarations/charmatrix-fromblocks.md) | 116 | `result-track:5b9417bd1f9410ebbce7bdfe9c9b9e308b3f5b8bef2717490036c2a84b15b737` |
| 15 | `lemma` | [charmatrix_blockTriangular_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixCharpolyBasicPublic.lean/declarations/charmatrix-blocktriangular-iff.md) | 125 | `result-track:a0bbe8507d5038ae06a5f1197b7a3fbfa158aa46a78011dbaecd6a897a3049ae` |
| 16 | `def` | [charpoly](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixCharpolyBasicPublic.lean/declarations/charpoly.md) | 134 | `declaration-track:8678bb8c5614360682dc8530ae1f8f1e7d647a5da1889c31178e5486d80f8d6c` |
| 17 | `theorem` | [eval_charpoly](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixCharpolyBasicPublic.lean/declarations/eval-charpoly.md) | 137 | `result-track:72177ae2ea36db346b410fcd8efc43815c5aae9b51f82608e34360f719891032` |
| 18 | `theorem` | [charpoly_isEmpty](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixCharpolyBasicPublic.lean/declarations/charpoly-isempty.md) | 145 | `result-track:f02ef38a33e6902cdfaf70f8ce37ae6999bc1996477379abebf0e608132e46e6` |
| 19 | `theorem` | [charpoly_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixCharpolyBasicPublic.lean/declarations/charpoly-zero.md) | 149 | `result-track:b6962548b6ed61cab05bf271e07336c49096f580241c5b151e50427ba23c2979` |
| 20 | `theorem` | [charpoly_diagonal](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixCharpolyBasicPublic.lean/declarations/charpoly-diagonal.md) | 152 | `result-track:5f49d9db54ad8d5c711ccf7bcbf03fc1673536f41584b0d932bbf6e2dcd45858` |
| 21 | `theorem` | [charpoly_one](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixCharpolyBasicPublic.lean/declarations/charpoly-one.md) | 155 | `result-track:abd0c543151f88ac16544d94bb975c36d8d270aa11fa1f87c4371b49f5c955bd` |
| 22 | `theorem` | [charpoly_natCast](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixCharpolyBasicPublic.lean/declarations/charpoly-natcast.md) | 158 | `result-track:3fc2e0fc75da6c565069300467365f18acab065b6f810b78ae7db763e3f19012` |
| 23 | `theorem` | [charpoly_ofNat](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixCharpolyBasicPublic.lean/declarations/charpoly-ofnat.md) | 162 | `result-track:4e2f04cade7f4862a135583f67bdf9d528c1f0eda973ca5db7daedb262112969` |
| 24 | `theorem` | [charpoly_transpose](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixCharpolyBasicPublic.lean/declarations/charpoly-transpose.md) | 167 | `result-track:aa6285a06f889f6271c3d3c99860165f9a2f0ef0ea2160c092352c195f3611b7` |
| 25 | `theorem` | [charpoly_reindex](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixCharpolyBasicPublic.lean/declarations/charpoly-reindex.md) | 170 | `result-track:c65e09d47d3cce73f7c6f22433ab586704d7bdaa2c11958868d4485cf73abdff` |
| 26 | `lemma` | [charpoly_map](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixCharpolyBasicPublic.lean/declarations/charpoly-map.md) | 175 | `result-track:84a5f37ef70909eda1e627ce2754a96de889a61f1698d5813dd62931f66b0694` |
| 27 | `lemma` | [charpoly_fromBlocks_zero₁₂](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixCharpolyBasicPublic.lean/declarations/charpoly-fromblocks-zero-source-edition-2.md) | 181 | `result-track:d2fd80b8040c429f4f5ee02e5864475e1566fa727f7c40970ff2dba023740f17` |
| 28 | `lemma` | [charpoly_fromBlocks_zero₂₁](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixCharpolyBasicPublic.lean/declarations/charpoly-fromblocks-zero.md) | 187 | `result-track:43a1aa61decf168e5f2c18d68e81e3a9dbec1175439111f03ceb2037035d5c8e` |
| 29 | `lemma` | [charmatrix_toSquareBlock](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixCharpolyBasicPublic.lean/declarations/charmatrix-tosquareblock.md) | 192 | `result-track:8f1e742c87a4f7ec4c81214490510187faf0ad54acef6d65c00c8437a90bd39b` |
| 30 | `lemma` | [BlockTriangular.charpoly](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixCharpolyBasicPublic.lean/declarations/blocktriangular-charpoly.md) | 197 | `result-track:c85d6eefe24866a74abfc1a322c76210dbb38863e16ecc391dd33065a772f843` |
| 31 | `lemma` | [charpoly_of_isUpperTriangular](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixCharpolyBasicPublic.lean/declarations/charpoly-of-isuppertriangular.md) | 201 | `result-track:a29dbee259194c761f2f035780d26f23377897629a7775c06ece91e6f876ae3f` |
| 32 | `theorem` | [aeval_self_charpoly](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixCharpolyBasicPublic.lean/declarations/aeval-self-charpoly.md) | 216 | `result-track:1f12329f53c207fc14a70cc8c679062b4ac11ee075070dbfe6f48fab0720b577` |
| 33 | `theorem` | [charpoly_mul_comm'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixCharpolyBasicPublic.lean/declarations/charpoly-mul-comm.md) | 243 | `result-track:05304fc2c5003e3862b57e40febf803678eab6b31c04c9dcc39e7e67846a91cf` |
| 34 | `theorem` | [charpoly_mul_comm_of_le](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixCharpolyBasicPublic.lean/declarations/charpoly-mul-comm-of-le.md) | 266 | `result-track:1b804735702f8af2b5fb878f7d45fdc45d1802e7c4b9941f7949119ad04d135d` |
| 35 | `theorem` | [charpoly_mul_comm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixCharpolyBasicPublic.lean/declarations/charpoly-mul-comm-source-edition-2.md) | 273 | `result-track:c3769cbcf4ba7d742fcb4c9fe8f470d26d2ed25f8e057c5717f4ada85f5a335f` |
| 36 | `theorem` | [charpoly_vecMulVec](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixCharpolyBasicPublic.lean/declarations/charpoly-vecmulvec.md) | 276 | `result-track:8504c2abee8f17b17d55876d972a5c7b17a5ac5c12e50b18c2fe0de46966c8d7` |
| 37 | `theorem` | [charpoly_units_conj](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixCharpolyBasicPublic.lean/declarations/charpoly-units-conj-source-edition-2.md) | 285 | `result-track:b70a1366d05d9232db216abd26c7ce395185935a1c429d32af6f44cfb446c8d2` |
| 38 | `theorem` | [charpoly_units_conj'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixCharpolyBasicPublic.lean/declarations/charpoly-units-conj.md) | 291 | `result-track:0c89992d1da6d1d1f779f0051dae53c705af47f243ffd22f66725f43bcdf6f24` |
| 39 | `theorem` | [charpoly_sub_scalar](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixCharpolyBasicPublic.lean/declarations/charpoly-sub-scalar.md) | 295 | `result-track:bd073989669cde8a03f90a3593b31d4b3d3ed4fae88daaeec79c6f86804ec577` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c08cb08e25063d543bb533b76d7591d7fc9c667ac488becfb82926f8776978bd -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/CommutativeAlgebra/Basic/Variant27999a02f480995bda68950253125f44cefcfaff12b25cd837e6dd9b16f8d506.lean","GRWTSK/_verification/specifications/Algebra/CommutativeAlgebra/Basic/Variant27999a02f480995bda68950253125f44cefcfaff12b25cd837e6dd9b16f8d506.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
