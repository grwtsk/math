# Verification target: GRWTSK.Topology.GeneralTopology.Profinite.Variant9f73dd5f9c68e7fca047cab0fe80d8167586347d35621779abf2a56ac44c83ab

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "98372cc718b11d7a6fb37c36e84f8c25d91de54f",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Profinite/Variant9f73dd5f9c68e7fca047cab0fe80d8167586347d35621779abf2a56ac44c83ab.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Profinite/Variant9f73dd5f9c68e7fca047cab0fe80d8167586347d35621779abf2a56ac44c83ab.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Profinite/Variant9f73dd5f9c68e7fca047cab0fe80d8167586347d35621779abf2a56ac44c83ab.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `98372cc718b11d7a6fb37c36e84f8c25d91de54f`.

Source path: `GRWTSK/Topology/GeneralTopology/Profinite/Variant9f73dd5f9c68e7fca047cab0fe80d8167586347d35621779abf2a56ac44c83ab.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Profinite/Variant9f73dd5f9c68e7fca047cab0fe80d8167586347d35621779abf2a56ac44c83ab.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.FieldTheory.KrullTopology` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.Galois.GaloisClosure` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Category.ProfiniteGrp.Basic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [FiniteGaloisIntermediateField.finGaloisGroup](../../../../../mathematics/Topology/GeneralTopology/Profinite/Variant9f73dd5f9c68e7fca047cab0fe80d8167586347d35621779abf2a56ac44c83ab.lean/declarations/finitegaloisintermediatefield-fingaloisgroup--4050231ca1f3e6ea30447115.md) | 63 | `declaration-track:4050231ca1f3e6ea304471152027e5801bb2f025b2311811d9b1e272c5ae2608` |
| 2 | `def` | [finGaloisGroupMap](../../../../../mathematics/Topology/GeneralTopology/Profinite/Variant9f73dd5f9c68e7fca047cab0fe80d8167586347d35621779abf2a56ac44c83ab.lean/declarations/fingaloisgroupmap--846625b7d3b073a0ed06edf6.md) | 70 | `declaration-track:846625b7d3b073a0ed06edf6595c59798aa5c8b6cc9017c8917c15077d47c9df` |
| 3 | `lemma` | [map_id](../../../../../mathematics/Topology/GeneralTopology/Profinite/Variant9f73dd5f9c68e7fca047cab0fe80d8167586347d35621779abf2a56ac44c83ab.lean/declarations/map-id--4fc36e6d91f4682ba9b631ea.md) | 80 | `result-track:4fc36e6d91f4682ba9b631ea775d89d85285dd50fe67642cb7cec334243a74a8` |
| 4 | `lemma` | [map_comp](../../../../../mathematics/Topology/GeneralTopology/Profinite/Variant9f73dd5f9c68e7fca047cab0fe80d8167586347d35621779abf2a56ac44c83ab.lean/declarations/map-comp--2bb3d675403d3ec9a58dcbbf.md) | 85 | `result-track:2bb3d675403d3ec9a58dcbbf79d93e0a6f9edc72065f609e5d07f93c7f3075b9` |
| 5 | `def` | [finGaloisGroupFunctor](../../../../../mathematics/Topology/GeneralTopology/Profinite/Variant9f73dd5f9c68e7fca047cab0fe80d8167586347d35621779abf2a56ac44c83ab.lean/declarations/fingaloisgroupfunctor--423e455599ea89415d3c4fed.md) | 105 | `declaration-track:423e455599ea89415d3c4fede16ce85634d78ab5b91a091d5aee99a1db6fd69d` |
| 6 | `abbrev` | [asProfiniteGaloisGroupFunctor](../../../../../mathematics/Topology/GeneralTopology/Profinite/Variant9f73dd5f9c68e7fca047cab0fe80d8167586347d35621779abf2a56ac44c83ab.lean/declarations/asprofinitegaloisgroupfunctor--f6007032b576fa64894144da.md) | 120 | `declaration-track:f6007032b576fa64894144daae1d3e554bab65aa5935ff58b81600f6ec516038` |
| 7 | `def` | [algEquivToLimit](../../../../../mathematics/Topology/GeneralTopology/Profinite/Variant9f73dd5f9c68e7fca047cab0fe80d8167586347d35621779abf2a56ac44c83ab.lean/declarations/algequivtolimit--61246a7a41094e273dbfc454.md) | 130 | `declaration-track:61246a7a41094e273dbfc4549fcc73701e59fde6978f3e24518529178e7e1b99` |
| 8 | `theorem` | [restrictNormalHom_continuous](../../../../../mathematics/Topology/GeneralTopology/Profinite/Variant9f73dd5f9c68e7fca047cab0fe80d8167586347d35621779abf2a56ac44c83ab.lean/declarations/restrictnormalhom-continuous--d8b5047807dc14d6ff48f024.md) | 145 | `result-track:d8b5047807dc14d6ff48f024e21b2d98d9d2ed3483429b75313550bdc02e11dd` |
| 9 | `lemma` | [algEquivToLimit_continuous](../../../../../mathematics/Topology/GeneralTopology/Profinite/Variant9f73dd5f9c68e7fca047cab0fe80d8167586347d35621779abf2a56ac44c83ab.lean/declarations/algequivtolimit-continuous--98a7d1385dcfda56ba808a43.md) | 165 | `result-track:98a7d1385dcfda56ba808a431db59ab147712a52c518fa2b94adec87329df7fa` |
| 10 | `def` | [proj](../../../../../mathematics/Topology/GeneralTopology/Profinite/Variant9f73dd5f9c68e7fca047cab0fe80d8167586347d35621779abf2a56ac44c83ab.lean/declarations/proj--f32ba5e2d6c6a6709e456b75.md) | 172 | `declaration-track:f32ba5e2d6c6a6709e456b756a22d03b12edfdee4fa3b3fc79972e4de63b4d5b` |
| 11 | `lemma` | [finGaloisGroupFunctor_map_proj_eq_proj](../../../../../mathematics/Topology/GeneralTopology/Profinite/Variant9f73dd5f9c68e7fca047cab0fe80d8167586347d35621779abf2a56ac44c83ab.lean/declarations/fingaloisgroupfunctor-map-proj-eq-proj--ab9c6cb07017f2331c0eac93.md) | 178 | `result-track:ab9c6cb07017f2331c0eac9362e6f19de7e453e27cb054b4769e75e74d2c6218` |
| 12 | `lemma` | [proj_of_le](../../../../../mathematics/Topology/GeneralTopology/Profinite/Variant9f73dd5f9c68e7fca047cab0fe80d8167586347d35621779abf2a56ac44c83ab.lean/declarations/proj-of-le--cd04f367891da960fc02e48d.md) | 183 | `result-track:cd04f367891da960fc02e48d67f1657e93f76d17cee37479d99437f7f547deb8` |
| 13 | `lemma` | [proj_adjoin_singleton_val](../../../../../mathematics/Topology/GeneralTopology/Profinite/Variant9f73dd5f9c68e7fca047cab0fe80d8167586347d35621779abf2a56ac44c83ab.lean/declarations/proj-adjoin-singleton-val--761c6b232bf8aea3e4bd9aa1.md) | 196 | `result-track:761c6b232bf8aea3e4bd9aa168404594684edbc4d0af3f1742e447946c6f272d` |
| 14 | `def` | [toAlgEquivAux](../../../../../mathematics/Topology/GeneralTopology/Profinite/Variant9f73dd5f9c68e7fca047cab0fe80d8167586347d35621779abf2a56ac44c83ab.lean/declarations/toalgequivaux--f646b23092b3d7c96ab20f0b.md) | 204 | `declaration-track:f646b23092b3d7c96ab20f0bacdcd43de44172c795fe2852191f20692595ac19` |
| 15 | `lemma` | [toAlgEquivAux_eq_proj_of_mem](../../../../../mathematics/Topology/GeneralTopology/Profinite/Variant9f73dd5f9c68e7fca047cab0fe80d8167586347d35621779abf2a56ac44c83ab.lean/declarations/toalgequivaux-eq-proj-of-mem--7d079003e7cb344aed6543d4.md) | 208 | `result-track:7d079003e7cb344aed6543d4a9af52b94e7afce2972f2ddd1fdddb2eff0f527e` |
| 16 | `lemma` | [mk_toAlgEquivAux](../../../../../mathematics/Topology/GeneralTopology/Profinite/Variant9f73dd5f9c68e7fca047cab0fe80d8167586347d35621779abf2a56ac44c83ab.lean/declarations/mk-toalgequivaux--1c3ce2de765303b11d202d44.md) | 213 | `result-track:1c3ce2de765303b11d202d44c341650b71cdf1f7dc5d6b51a0a6e8bc12484014` |
| 17 | `lemma` | [toAlgEquivAux_eq_liftNormal](../../../../../mathematics/Topology/GeneralTopology/Profinite/Variant9f73dd5f9c68e7fca047cab0fe80d8167586347d35621779abf2a56ac44c83ab.lean/declarations/toalgequivaux-eq-liftnormal--65c55c76083e4ccf5e76c8f9.md) | 219 | `result-track:65c55c76083e4ccf5e76c8f9e6ba0272dcf2c2199880aa4fc2d4b3a996570663` |
| 18 | `def` | [limitToAlgEquiv](../../../../../mathematics/Topology/GeneralTopology/Profinite/Variant9f73dd5f9c68e7fca047cab0fe80d8167586347d35621779abf2a56ac44c83ab.lean/declarations/limittoalgequiv--a317b0e592a0a4a68ff78b7b.md) | 228 | `declaration-track:a317b0e592a0a4a68ff78b7b10768848ae59142186007d7a4556349042538b73` |
| 19 | `def` | [mulEquivToLimit](../../../../../mathematics/Topology/GeneralTopology/Profinite/Variant9f73dd5f9c68e7fca047cab0fe80d8167586347d35621779abf2a56ac44c83ab.lean/declarations/mulequivtolimit--e6c6cc51b0810fd996c20a83.md) | 261 | `declaration-track:e6c6cc51b0810fd996c20a83f6b44ccbca137d6eac20d31922b0778c12c562ea` |
| 20 | `lemma` | [krullTopology_mem_nhds_one_iff_of_isGalois](../../../../../mathematics/Topology/GeneralTopology/Profinite/Variant9f73dd5f9c68e7fca047cab0fe80d8167586347d35621779abf2a56ac44c83ab.lean/declarations/krulltopology-mem-nhds-one-iff-of-isgalois--5e09c55fda58ef2e9ef865af.md) | 279 | `result-track:5e09c55fda58ef2e9ef865af63ab181944a0f2134039a22f93aa30c7c8fdde1c` |
| 21 | `lemma` | [isOpen_mulEquivToLimit_image_fixingSubgroup](../../../../../mathematics/Topology/GeneralTopology/Profinite/Variant9f73dd5f9c68e7fca047cab0fe80d8167586347d35621779abf2a56ac44c83ab.lean/declarations/isopen-mulequivtolimit-image-fixingsubgroup--75e8ab1757000cbfabf624ee.md) | 285 | `result-track:75e8ab1757000cbfabf624ee5d31bb1399498d41655116340de4f7edb3275017` |
| 22 | `lemma` | [mulEquivToLimit_symm_continuous](../../../../../mathematics/Topology/GeneralTopology/Profinite/Variant9f73dd5f9c68e7fca047cab0fe80d8167586347d35621779abf2a56ac44c83ab.lean/declarations/mulequivtolimit-symm-continuous--43dfa16d5933e788f823e2ee.md) | 295 | `result-track:43dfa16d5933e788f823e2ee267e703ff6cfa23c4ccdf2fdc8162a847bf5f90a` |
| 23 | `def` | [continuousMulEquivToLimit](../../../../../mathematics/Topology/GeneralTopology/Profinite/Variant9f73dd5f9c68e7fca047cab0fe80d8167586347d35621779abf2a56ac44c83ab.lean/declarations/continuousmulequivtolimit--505f993e0eb1d1771a379ce8.md) | 310 | `declaration-track:505f993e0eb1d1771a379ce821583c2492049f9e7806c850e120fa47fa25c2a0` |
| 24 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Profinite/Variant9f73dd5f9c68e7fca047cab0fe80d8167586347d35621779abf2a56ac44c83ab.lean/declarations/instance--f579577b69fc75ff8b51e350.md) | 316 | `declaration-track:f579577b69fc75ff8b51e3503d4eee6fe9280976a7c5bb892ee7ab062dc96dea` |
| 25 | `def` | [profiniteGalGrp](../../../../../mathematics/Topology/GeneralTopology/Profinite/Variant9f73dd5f9c68e7fca047cab0fe80d8167586347d35621779abf2a56ac44c83ab.lean/declarations/profinitegalgrp--e591de54d0c9ea71209a08f7.md) | 321 | `declaration-track:e591de54d0c9ea71209a08f764e61219bb677a5ca9d771658401600d1f44acb7` |
| 26 | `def` | [profiniteGalGrpIsoLimit](../../../../../mathematics/Topology/GeneralTopology/Profinite/Variant9f73dd5f9c68e7fca047cab0fe80d8167586347d35621779abf2a56ac44c83ab.lean/declarations/profinitegalgrpisolimit--05749ff23deeffe2a8fe12eb.md) | 326 | `declaration-track:05749ff23deeffe2a8fe12eb3b21f42689bd56c5482950252d97513b195a6b9c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
