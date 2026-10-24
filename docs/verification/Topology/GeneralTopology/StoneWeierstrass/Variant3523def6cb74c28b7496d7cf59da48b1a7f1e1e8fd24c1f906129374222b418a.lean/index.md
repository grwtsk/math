# Verification target: GRWTSK.Topology.GeneralTopology.StoneWeierstrass.Variant3523def6cb74c28b7496d7cf59da48b1a7f1e1e8fd24c1f906129374222b418a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6e48af84dd7f0f903c8d74511b500e7bda7eaf78",
  "lexical_observation_count": 35,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/StoneWeierstrass/Variant3523def6cb74c28b7496d7cf59da48b1a7f1e1e8fd24c1f906129374222b418a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/StoneWeierstrass/Variant3523def6cb74c28b7496d7cf59da48b1a7f1e1e8fd24c1f906129374222b418a.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/StoneWeierstrass/Variant3523def6cb74c28b7496d7cf59da48b1a7f1e1e8fd24c1f906129374222b418a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6e48af84dd7f0f903c8d74511b500e7bda7eaf78`.

Source path: `GRWTSK/Topology/GeneralTopology/StoneWeierstrass/Variant3523def6cb74c28b7496d7cf59da48b1a7f1e1e8fd24c1f906129374222b418a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/StoneWeierstrass/Variant3523def6cb74c28b7496d7cf59da48b1a7f1e1e8fd24c1f906129374222b418a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Algebra.Subalgebra.Tower` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.RCLike.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Star.Real` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.StarSubalgebra` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.ContinuousMap.ContinuousMapZero` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.ContinuousMap.Lattice` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.ContinuousMap.Weierstrass` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [attachBound](../../../../../mathematics/Topology/GeneralTopology/StoneWeierstrass/Variant3523def6cb74c28b7496d7cf59da48b1a7f1e1e8fd24c1f906129374222b418a.lean/declarations/attachbound--2509623549ff58ff47f7f9bd.md) | 61 | `declaration-track:2509623549ff58ff47f7f9bda1286cdb7766f9cf3ce7d8517ca1abab41581f49` |
| 2 | `theorem` | [attachBound_apply_coe](../../../../../mathematics/Topology/GeneralTopology/StoneWeierstrass/Variant3523def6cb74c28b7496d7cf59da48b1a7f1e1e8fd24c1f906129374222b418a.lean/declarations/attachbound-apply-coe--7adbedbba74fb789315d06c0.md) | 65 | `result-track:7adbedbba74fb789315d06c069c1aa3b8b2520fd87a51821d112e577fa631792` |
| 3 | `theorem` | [polynomial_comp_attachBound](../../../../../mathematics/Topology/GeneralTopology/StoneWeierstrass/Variant3523def6cb74c28b7496d7cf59da48b1a7f1e1e8fd24c1f906129374222b418a.lean/declarations/polynomial-comp-attachbound--e39b90f9e7e8b74bc7873761.md) | 68 | `result-track:e39b90f9e7e8b74bc7873761dd6bf01e0dc75f8c047c06984b0e07568025f953` |
| 4 | `theorem` | [polynomial_comp_attachBound_mem](../../../../../mathematics/Topology/GeneralTopology/StoneWeierstrass/Variant3523def6cb74c28b7496d7cf59da48b1a7f1e1e8fd24c1f906129374222b418a.lean/declarations/polynomial-comp-attachbound-mem--6322b68dd84a60f55cd87f24.md) | 83 | `result-track:6322b68dd84a60f55cd87f24b4a03ea1553266ab14d82fb4453b2be9090f55d1` |
| 5 | `theorem` | [comp_attachBound_mem_closure](../../../../../mathematics/Topology/GeneralTopology/StoneWeierstrass/Variant3523def6cb74c28b7496d7cf59da48b1a7f1e1e8fd24c1f906129374222b418a.lean/declarations/comp-attachbound-mem-closure--67883e93ca42024b50676f7d.md) | 88 | `result-track:67883e93ca42024b50676f7dbcffa7346627573b8daeac6d984f537c269e475e` |
| 6 | `theorem` | [abs_mem_subalgebra_closure](../../../../../mathematics/Topology/GeneralTopology/StoneWeierstrass/Variant3523def6cb74c28b7496d7cf59da48b1a7f1e1e8fd24c1f906129374222b418a.lean/declarations/abs-mem-subalgebra-closure--71affc5ea7e6bc2f6b82e596.md) | 109 | `result-track:71affc5ea7e6bc2f6b82e596cbf640b180f846012a1a69e4d13c8aa907c4fa91` |
| 7 | `theorem` | [inf_mem_subalgebra_closure](../../../../../mathematics/Topology/GeneralTopology/StoneWeierstrass/Variant3523def6cb74c28b7496d7cf59da48b1a7f1e1e8fd24c1f906129374222b418a.lean/declarations/inf-mem-subalgebra-closure--141193bf2c5b0db895f2e86d.md) | 116 | `result-track:141193bf2c5b0db895f2e86db53b67b483911c788408440c7ccab4726b54e744` |
| 8 | `theorem` | [inf_mem_closed_subalgebra](../../../../../mathematics/Topology/GeneralTopology/StoneWeierstrass/Variant3523def6cb74c28b7496d7cf59da48b1a7f1e1e8fd24c1f906129374222b418a.lean/declarations/inf-mem-closed-subalgebra--703ca2bae791841dd26df06b.md) | 128 | `result-track:703ca2bae791841dd26df06b8291a171d50e49f0e86d8546eec4c579af806d34` |
| 9 | `theorem` | [sup_mem_subalgebra_closure](../../../../../mathematics/Topology/GeneralTopology/StoneWeierstrass/Variant3523def6cb74c28b7496d7cf59da48b1a7f1e1e8fd24c1f906129374222b418a.lean/declarations/sup-mem-subalgebra-closure--e1026816236f73febb5cb983.md) | 136 | `result-track:e1026816236f73febb5cb9834352b84de0a778bd28ade75e7524f356fbc4f0d7` |
| 10 | `theorem` | [sup_mem_closed_subalgebra](../../../../../mathematics/Topology/GeneralTopology/StoneWeierstrass/Variant3523def6cb74c28b7496d7cf59da48b1a7f1e1e8fd24c1f906129374222b418a.lean/declarations/sup-mem-closed-subalgebra--2cf11a2aa54a780ed4c599f1.md) | 148 | `result-track:2cf11a2aa54a780ed4c599f159bbdc7e7993ee8cf8d832194c8b7a40806407a7` |
| 11 | `theorem` | [sublattice_closure_eq_top](../../../../../mathematics/Topology/GeneralTopology/StoneWeierstrass/Variant3523def6cb74c28b7496d7cf59da48b1a7f1e1e8fd24c1f906129374222b418a.lean/declarations/sublattice-closure-eq-top--5cfbd2478122b5c1bc67a1d5.md) | 160 | `result-track:5cfbd2478122b5c1bc67a1d53c304be076cc84cdedf2641887ce0c13a8c4a0ae` |
| 12 | `theorem` | [subalgebra_topologicalClosure_eq_top_of_separatesPoints](../../../../../mathematics/Topology/GeneralTopology/StoneWeierstrass/Variant3523def6cb74c28b7496d7cf59da48b1a7f1e1e8fd24c1f906129374222b418a.lean/declarations/subalgebra-topologicalclosure-eq-top-of-separatespoints--103a2b6e1f0857fb996ae535.md) | 261 | `result-track:103a2b6e1f0857fb996ae535bde3bd6f7dce9f740844a7a3bfd8492b32cf91b3` |
| 13 | `theorem` | [continuousMap_mem_subalgebra_closure_of_separatesPoints](../../../../../mathematics/Topology/GeneralTopology/StoneWeierstrass/Variant3523def6cb74c28b7496d7cf59da48b1a7f1e1e8fd24c1f906129374222b418a.lean/declarations/continuousmap-mem-subalgebra-closure-of-separatespoints--5ad55f6c6c90e8ec429ba34a.md) | 282 | `result-track:5ad55f6c6c90e8ec429ba34ad819db18580beaf36515fbb8826b116e54eb3609` |
| 14 | `theorem` | [exists_mem_subalgebra_near_continuousMap_of_separatesPoints](../../../../../mathematics/Topology/GeneralTopology/StoneWeierstrass/Variant3523def6cb74c28b7496d7cf59da48b1a7f1e1e8fd24c1f906129374222b418a.lean/declarations/exists-mem-subalgebra-near-continuousmap-of-separatespoints--44922e46ce162bb4d07f40db.md) | 293 | `result-track:44922e46ce162bb4d07f40dba4b62e669e0c6b450739f249f54804ba726b9043` |
| 15 | `theorem` | [exists_mem_subalgebra_near_continuous_of_separatesPoints](../../../../../mathematics/Topology/GeneralTopology/StoneWeierstrass/Variant3523def6cb74c28b7496d7cf59da48b1a7f1e1e8fd24c1f906129374222b418a.lean/declarations/exists-mem-subalgebra-near-continuous-of-separatespoints--a4f1a00e03c84e85a13cdc72.md) | 309 | `result-track:a4f1a00e03c84e85a13cdc72ce361620971f93a3265814ec92ed34b895e2f677` |
| 16 | `theorem` | [exists_mem_subalgebra_near_continuous_of_isCompact_of_separatesPoints](../../../../../mathematics/Topology/GeneralTopology/StoneWeierstrass/Variant3523def6cb74c28b7496d7cf59da48b1a7f1e1e8fd24c1f906129374222b418a.lean/declarations/exists-mem-subalgebra-near-continuous-of-iscompact-of-separatespoints--790d58ef50d2b9bbb9590cc2.md) | 319 | `result-track:790d58ef50d2b9bbb9590cc22adf927c0df6f170d1c0e6d620ab323f75c061e9` |
| 17 | `theorem` | [Subalgebra.SeparatesPoints.rclike_to_real](../../../../../mathematics/Topology/GeneralTopology/StoneWeierstrass/Variant3523def6cb74c28b7496d7cf59da48b1a7f1e1e8fd24c1f906129374222b418a.lean/declarations/subalgebra-separatespoints-rclike-to-real--f951cecf15d95949aac5e2c3.md) | 366 | `result-track:f951cecf15d95949aac5e2c3df60f76400b5312bc07f53b4a877cba795d6b979` |
| 18 | `theorem` | [ContinuousMap.starSubalgebra_topologicalClosure_eq_top_of_separatesPoints](../../../../../mathematics/Topology/GeneralTopology/StoneWeierstrass/Variant3523def6cb74c28b7496d7cf59da48b1a7f1e1e8fd24c1f906129374222b418a.lean/declarations/continuousmap-starsubalgebra-topologicalclosure-eq-top-of-separatespoint--a5bdef8f7c66d1978dc7cd2d.md) | 395 | `result-track:a5bdef8f7c66d1978dc7cd2d202f5db3eb90b793cb6b2e739777f0670555fdd8` |
| 19 | `theorem` | [polynomialFunctions.topologicalClosure](../../../../../mathematics/Topology/GeneralTopology/StoneWeierstrass/Variant3523def6cb74c28b7496d7cf59da48b1a7f1e1e8fd24c1f906129374222b418a.lean/declarations/polynomialfunctions-topologicalclosure--9a1a4075fe9ea4fd4ff1b072.md) | 445 | `result-track:9a1a4075fe9ea4fd4ff1b0726cc085adc8a573975aa8e312685bedbb98d3ae1d` |
| 20 | `theorem` | [polynomialFunctions.starClosure_topologicalClosure](../../../../../mathematics/Topology/GeneralTopology/StoneWeierstrass/Variant3523def6cb74c28b7496d7cf59da48b1a7f1e1e8fd24c1f906129374222b418a.lean/declarations/polynomialfunctions-starclosure-topologicalclosure--cbab0122641fbad5cc12315a.md) | 452 | `result-track:cbab0122641fbad5cc12315a17fd0e0a200974d8e09024f562703fddc95d0054` |
| 21 | `theorem` | [ContinuousMap.induction_on](../../../../../mathematics/Topology/GeneralTopology/StoneWeierstrass/Variant3523def6cb74c28b7496d7cf59da48b1a7f1e1e8fd24c1f906129374222b418a.lean/declarations/continuousmap-induction-on--0b936673b57b52bcd8c92237.md) | 459 | `result-track:0b936673b57b52bcd8c92237a9abbc6e27f124bbe4ccadc9e9d9d3a52a904e73` |
| 22 | `theorem` | [ContinuousMap.induction_on_of_compact](../../../../../mathematics/Topology/GeneralTopology/StoneWeierstrass/Variant3523def6cb74c28b7496d7cf59da48b1a7f1e1e8fd24c1f906129374222b418a.lean/declarations/continuousmap-induction-on-of-compact--fcce0d9a29bb5b7e1ffb8296.md) | 479 | `result-track:fcce0d9a29bb5b7e1ffb8296b096bd719f87450fae4ea6d8bdb167dadae483f6` |
| 23 | `theorem` | [ContinuousMap.algHom_ext_map_X](../../../../../mathematics/Topology/GeneralTopology/StoneWeierstrass/Variant3523def6cb74c28b7496d7cf59da48b1a7f1e1e8fd24c1f906129374222b418a.lean/declarations/continuousmap-alghom-ext-map-x--9fc37295e1537970fc40ba32.md) | 493 | `result-track:9fc37295e1537970fc40ba32b1d8bc6b96d32902974312dfef390e6c272268e1` |
| 24 | `theorem` | [ContinuousMap.starAlgHom_ext_map_X](../../../../../mathematics/Topology/GeneralTopology/StoneWeierstrass/Variant3523def6cb74c28b7496d7cf59da48b1a7f1e1e8fd24c1f906129374222b418a.lean/declarations/continuousmap-staralghom-ext-map-x--b552aa30a8687bc061513e99.md) | 506 | `result-track:b552aa30a8687bc061513e9940600fa6035ad3033c0a466a7c2cb6f8d4dacd94` |
| 25 | `lemma` | [adjoin_id_eq_span_one_union](../../../../../mathematics/Topology/GeneralTopology/StoneWeierstrass/Variant3523def6cb74c28b7496d7cf59da48b1a7f1e1e8fd24c1f906129374222b418a.lean/declarations/adjoin-id-eq-span-one-union--1036f94570c00c5c3db10fd5.md) | 527 | `result-track:1036f94570c00c5c3db10fd59d921cb54824da903a659d2740c56ff83ae796c6` |
| 26 | `lemma` | [adjoin_id_eq_span_one_add](../../../../../mathematics/Topology/GeneralTopology/StoneWeierstrass/Variant3523def6cb74c28b7496d7cf59da48b1a7f1e1e8fd24c1f906129374222b418a.lean/declarations/adjoin-id-eq-span-one-add--4f7331db1d0d8cd161dcb14b.md) | 536 | `result-track:4f7331db1d0d8cd161dcb14b32839dd82ab0d118c7c8c95d86da587dd551b5fa` |
| 27 | `lemma` | [nonUnitalStarAlgebraAdjoin_id_subset_ker_evalStarAlgHom](../../../../../mathematics/Topology/GeneralTopology/StoneWeierstrass/Variant3523def6cb74c28b7496d7cf59da48b1a7f1e1e8fd24c1f906129374222b418a.lean/declarations/nonunitalstaralgebraadjoin-id-subset-ker-evalstaralghom--103a73323935f53e1a2c9501.md) | 545 | `result-track:103a73323935f53e1a2c95011cad89102b95f54ebedcf9eaf0d9234ba1a7b743` |
| 28 | `lemma` | [ker_evalStarAlgHom_inter_adjoin_id](../../../../../mathematics/Topology/GeneralTopology/StoneWeierstrass/Variant3523def6cb74c28b7496d7cf59da48b1a7f1e1e8fd24c1f906129374222b418a.lean/declarations/ker-evalstaralghom-inter-adjoin-id--13c234bf6d573e3d483b4533.md) | 563 | `result-track:13c234bf6d573e3d483b4533da5da11617a6ff19f93b8690520a4e48756e2a9d` |
| 29 | `theorem` | [AlgHom.closure_ker_inter](../../../../../mathematics/Topology/GeneralTopology/StoneWeierstrass/Variant3523def6cb74c28b7496d7cf59da48b1a7f1e1e8fd24c1f906129374222b418a.lean/declarations/alghom-closure-ker-inter--55c00b75130c0aba94cbe910.md) | 582 | `result-track:55c00b75130c0aba94cbe910f421dcb6c4cb314876d3e163a112c91784e33ea5` |
| 30 | `lemma` | [ker_evalStarAlgHom_eq_closure_adjoin_id](../../../../../mathematics/Topology/GeneralTopology/StoneWeierstrass/Variant3523def6cb74c28b7496d7cf59da48b1a7f1e1e8fd24c1f906129374222b418a.lean/declarations/ker-evalstaralghom-eq-closure-adjoin-id--2d7052c441c61c7884842cef.md) | 599 | `result-track:2d7052c441c61c7884842cef4b0ab65f63d15083454252ba0b0f98fc0caa5819` |
| 31 | `lemma` | [ContinuousMapZero.adjoin_id_dense](../../../../../mathematics/Topology/GeneralTopology/StoneWeierstrass/Variant3523def6cb74c28b7496d7cf59da48b1a7f1e1e8fd24c1f906129374222b418a.lean/declarations/continuousmapzero-adjoin-id-dense--251cdee20730d6c231b3cfe6.md) | 616 | `result-track:251cdee20730d6c231b3cfe6fd819ad5d2648924b73fa3b5a8b658f6bfa1a4fc` |
| 32 | `lemma` | [ContinuousMapZero.induction_on](../../../../../mathematics/Topology/GeneralTopology/StoneWeierstrass/Variant3523def6cb74c28b7496d7cf59da48b1a7f1e1e8fd24c1f906129374222b418a.lean/declarations/continuousmapzero-induction-on--ab10f1772881b64668d2ab06.md) | 632 | `result-track:ab10f1772881b64668d2ab06f75380a41bb5977e85bcc53c60a7ec1c28314c82` |
| 33 | `theorem` | [ContinuousMapZero.induction_on_of_compact](../../../../../mathematics/Topology/GeneralTopology/StoneWeierstrass/Variant3523def6cb74c28b7496d7cf59da48b1a7f1e1e8fd24c1f906129374222b418a.lean/declarations/continuousmapzero-induction-on-of-compact--92df7cdba874ef13acb4912b.md) | 652 | `result-track:92df7cdba874ef13acb4912b1dfcdacfd40cc1d38152a4677ea7a53fb7d6b747` |
| 34 | `lemma` | [ContinuousMapZero.nonUnitalStarAlgHom_apply_mul_eq_zero](../../../../../mathematics/Topology/GeneralTopology/StoneWeierstrass/Variant3523def6cb74c28b7496d7cf59da48b1a7f1e1e8fd24c1f906129374222b418a.lean/declarations/continuousmapzero-nonunitalstaralghom-apply-mul-eq-zero--50bf00457d228ad04a5704b2.md) | 662 | `result-track:50bf00457d228ad04a5704b2c5f29985eaa63b08346f0eb05faeb9516ead3538` |
| 35 | `lemma` | [ContinuousMapZero.mul_nonUnitalStarAlgHom_apply_eq_zero](../../../../../mathematics/Topology/GeneralTopology/StoneWeierstrass/Variant3523def6cb74c28b7496d7cf59da48b1a7f1e1e8fd24c1f906129374222b418a.lean/declarations/continuousmapzero-mul-nonunitalstaralghom-apply-eq-zero--e2a95701b1002bc04fc18000.md) | 677 | `result-track:e2a95701b1002bc04fc18000e375f0966579bc9a40b16b256669fd1e264a00ab` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
