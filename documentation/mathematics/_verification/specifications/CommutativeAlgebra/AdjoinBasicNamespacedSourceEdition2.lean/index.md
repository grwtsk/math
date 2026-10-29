# Verification target: Adjoin Basic Namespaced Source Edition2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "071f276b375ab0cc246e8ea18ee2b7adc982b13f",
  "lexical_observation_count": 44,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variantadd97813dc947ffaf2dda9e188e74fc64b1d4f37b4287e92701bf298f76e1a6d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/AdjoinBasicNamespacedSourceEdition2.lean/index.md) · [Full source](../../../../CommutativeAlgebra/AdjoinBasicNamespacedSourceEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `071f276b375ab0cc246e8ea18ee2b7adc982b13f`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Basic/Variantadd97813dc947ffaf2dda9e188e74fc64b1d4f37b4287e92701bf298f76e1a6d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Basic/Variantadd97813dc947ffaf2dda9e188e74fc64b1d4f37b4287e92701bf298f76e1a6d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Algebra.Operations` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Algebra.Subalgebra.Tower` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Prod` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Finsupp` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [subset_adjoin](../../../../CommutativeAlgebra/AdjoinBasicNamespacedSourceEdition2.lean/declarations/subset-adjoin.md) | 51 | `result-track:8f012d6ef6afd37d9900999934d81d9d118fa3314aec3bbe853d76bea0daddc9` |
| 2 | `theorem` | [adjoin_le](../../../../CommutativeAlgebra/AdjoinBasicNamespacedSourceEdition2.lean/declarations/adjoin-le.md) | 55 | `result-track:afc08e8cc8a03ad65bcdb8ffa7b279cb0ff3fe645d049f9c4ab2d78c5bd592ba` |
| 3 | `theorem` | [adjoin_eq_sInf](../../../../CommutativeAlgebra/AdjoinBasicNamespacedSourceEdition2.lean/declarations/adjoin-eq-sinf.md) | 59 | `result-track:3475a5dba934e9a4a2021d0cc71feeb580bcc419bb438ca442f3a0e9e183b0c3` |
| 4 | `theorem` | [adjoin_le_iff](../../../../CommutativeAlgebra/AdjoinBasicNamespacedSourceEdition2.lean/declarations/adjoin-le-iff.md) | 63 | `result-track:282e03406da3d316f0801484c40a55edd9fefda62fce11e78ab6a2f955e24b0e` |
| 5 | `theorem` | [adjoin_mono](../../../../CommutativeAlgebra/AdjoinBasicNamespacedSourceEdition2.lean/declarations/adjoin-mono.md) | 67 | `result-track:e287c6fe4309ab69009b14b0824fd57c1c1146916b15d35dfe07f0377277890f` |
| 6 | `theorem` | [adjoin_eq_of_le](../../../../CommutativeAlgebra/AdjoinBasicNamespacedSourceEdition2.lean/declarations/adjoin-eq-of-le.md) | 71 | `result-track:9ef92767bf09e500c5cfcf47435541ed6ce1bc11f810da36e50a8414074baede` |
| 7 | `theorem` | [adjoin_eq](../../../../CommutativeAlgebra/AdjoinBasicNamespacedSourceEdition2.lean/declarations/adjoin-eq.md) | 75 | `result-track:6f08ab28529de0b555f0d897c41b912bee2fb64188f32747f5af325eb1d55ed2` |
| 8 | `theorem` | [adjoin_iUnion](../../../../CommutativeAlgebra/AdjoinBasicNamespacedSourceEdition2.lean/declarations/adjoin-iunion.md) | 79 | `result-track:e9076e61120e5ce243e6c1d25b1bdd9fe4cf144637726a200eca53136572b468` |
| 9 | `theorem` | [adjoin_attach_biUnion](../../../../CommutativeAlgebra/AdjoinBasicNamespacedSourceEdition2.lean/declarations/adjoin-attach-biunion.md) | 84 | `result-track:b7fab91e09d3112b038504e8c6ea5cd369e7bc145cb6781413db022438775382` |
| 10 | `theorem` | [adjoin_induction](../../../../CommutativeAlgebra/AdjoinBasicNamespacedSourceEdition2.lean/declarations/adjoin-induction-source-edition-3.md) | 89 | `result-track:58abf931181bbfde2a0ca7bc4235a4fa2d1694e0f6438ea173bc36134d46a5bd` |
| 11 | `theorem` | [adjoin_induction₂](../../../../CommutativeAlgebra/AdjoinBasicNamespacedSourceEdition2.lean/declarations/adjoin-induction-source-edition-2.md) | 104 | `result-track:3b384c3bcb82a4811e315c141cdf3134934c77b2490285b392af527b182b3917` |
| 12 | `theorem` | [adjoin_induction'](../../../../CommutativeAlgebra/AdjoinBasicNamespacedSourceEdition2.lean/declarations/adjoin-induction.md) | 123 | `result-track:054bf21060f3964b79f5a09a4fa0d4ff852cfbcd3d3acf069e483602b4efcb88` |
| 13 | `theorem` | [adjoin_adjoin_coe_preimage](../../../../CommutativeAlgebra/AdjoinBasicNamespacedSourceEdition2.lean/declarations/adjoin-adjoin-coe-preimage.md) | 139 | `result-track:afaf395a01aaad1a0c38f8f0640fbe4fe126d8054704dd7b7059c74df3e7948e` |
| 14 | `theorem` | [adjoin_union](../../../../CommutativeAlgebra/AdjoinBasicNamespacedSourceEdition2.lean/declarations/adjoin-union.md) | 151 | `result-track:d09836410fd194b3584d1a46d59ececc7118c70a3e78ac1d9e5a7a7f7f56081c` |
| 15 | `theorem` | [adjoin_empty](../../../../CommutativeAlgebra/AdjoinBasicNamespacedSourceEdition2.lean/declarations/adjoin-empty.md) | 158 | `result-track:2c6e235c75d9c5ef3dbadf5b8b465bfef667cf91e111527201e35240bdcab4db` |
| 16 | `theorem` | [adjoin_univ](../../../../CommutativeAlgebra/AdjoinBasicNamespacedSourceEdition2.lean/declarations/adjoin-univ.md) | 165 | `result-track:f4793e04be1dd936817c2fcb0720bcb30052a45d5cf63195aa962a78a3c8a50d` |
| 17 | `theorem` | [adjoin_eq_span](../../../../CommutativeAlgebra/AdjoinBasicNamespacedSourceEdition2.lean/declarations/adjoin-eq-span.md) | 171 | `result-track:4a8fe33f1751a2d8345e2c832fd103313c5dc634ba8829fd0d85c498068b6e11` |
| 18 | `theorem` | [span_le_adjoin](../../../../CommutativeAlgebra/AdjoinBasicNamespacedSourceEdition2.lean/declarations/span-le-adjoin.md) | 203 | `result-track:438c8b21409cef12117a060c6f4dce3484830d7ec8079fa4d926ec67caccd2e8` |
| 19 | `theorem` | [adjoin_toSubmodule_le](../../../../CommutativeAlgebra/AdjoinBasicNamespacedSourceEdition2.lean/declarations/adjoin-tosubmodule-le.md) | 207 | `result-track:a587829458f550ce8ecb56f8f3003b68340bf3800dc77bf4dc99fb028498b9aa` |
| 20 | `theorem` | [adjoin_eq_span_of_subset](../../../../CommutativeAlgebra/AdjoinBasicNamespacedSourceEdition2.lean/declarations/adjoin-eq-span-of-subset.md) | 212 | `result-track:a8448f42b9e5a4288bb2c63423e0493e1dea16c976759366f9a87ba4f12a2c0a` |
| 21 | `theorem` | [adjoin_span](../../../../CommutativeAlgebra/AdjoinBasicNamespacedSourceEdition2.lean/declarations/adjoin-span.md) | 218 | `result-track:ea2ba76c5e0450dd0e574f3045e020f7a59f92b85806ff3bc18ed4065ec46a06` |
| 22 | `theorem` | [adjoin_image](../../../../CommutativeAlgebra/AdjoinBasicNamespacedSourceEdition2.lean/declarations/adjoin-image.md) | 222 | `result-track:79dddeec9526dcdd9ef44d4dd5fcd593a3430ed4504ded7ba7d17f1fd09efab8` |
| 23 | `theorem` | [adjoin_insert_adjoin](../../../../CommutativeAlgebra/AdjoinBasicNamespacedSourceEdition2.lean/declarations/adjoin-insert-adjoin.md) | 232 | `result-track:e1af6c6d2512093b9efdc10a0b7a7ee25569f752a9e60b3138d58e798f362c2d` |
| 24 | `theorem` | [adjoin_prod_le](../../../../CommutativeAlgebra/AdjoinBasicNamespacedSourceEdition2.lean/declarations/adjoin-prod-le.md) | 240 | `result-track:e41ac22c708d2545218afd09097230953acfcec408d31ec62189809f7e603f29` |
| 25 | `theorem` | [mem_adjoin_of_map_mul](../../../../CommutativeAlgebra/AdjoinBasicNamespacedSourceEdition2.lean/declarations/mem-adjoin-of-map-mul.md) | 245 | `result-track:0757a805d9207f30dd43b1c1095f93106128da98f2e5da5799026b9fc12f2b02` |
| 26 | `theorem` | [adjoin_inl_union_inr_eq_prod](../../../../CommutativeAlgebra/AdjoinBasicNamespacedSourceEdition2.lean/declarations/adjoin-inl-union-inr-eq-prod.md) | 259 | `result-track:1ba9eeba92be83bfbbf7ca78b943978a1bf91211dc1167f5edf311750581ae3f` |
| 27 | `def` | [adjoinCommSemiringOfComm](../../../../CommutativeAlgebra/AdjoinBasicNamespacedSourceEdition2.lean/declarations/adjoincommsemiringofcomm.md) | 282 | `declaration-track:97b959f05a884819fabd3181fdd470d8935e13c44fc43b4fea527609352ee16b` |
| 28 | `theorem` | [adjoin_singleton_one](../../../../CommutativeAlgebra/AdjoinBasicNamespacedSourceEdition2.lean/declarations/adjoin-singleton-one.md) | 296 | `result-track:6f7110d2d5d1b6b7bee603f6295db5b7ff6d3909ac7e58cb26a4d15f12942eb2` |
| 29 | `theorem` | [self_mem_adjoin_singleton](../../../../CommutativeAlgebra/AdjoinBasicNamespacedSourceEdition2.lean/declarations/self-mem-adjoin-singleton.md) | 300 | `result-track:3d972268579cc4ebd008dc352ca9aec8a3f14fdb8260155185bfef79a157d6c0` |
| 30 | `theorem` | [adjoin_algebraMap](../../../../CommutativeAlgebra/AdjoinBasicNamespacedSourceEdition2.lean/declarations/adjoin-algebramap.md) | 305 | `result-track:b4fd553879e101dace9300e69122465c47af11bed90c65bb7db8703e42e1908b` |
| 31 | `theorem` | [adjoin_algebraMap_image_union_eq_adjoin_adjoin](../../../../CommutativeAlgebra/AdjoinBasicNamespacedSourceEdition2.lean/declarations/adjoin-algebramap-image-union-eq-adjoin-adjoin.md) | 310 | `result-track:71a682f848f5acd9a4532044619bffdd9a48331a70a0c11d9308f7f84a40c8b4` |
| 32 | `theorem` | [adjoin_adjoin_of_tower](../../../../CommutativeAlgebra/AdjoinBasicNamespacedSourceEdition2.lean/declarations/adjoin-adjoin-of-tower.md) | 322 | `result-track:05960efdb86d53000b233100d4c2223db4a7c677c85c8e09b846fb9f89559776` |
| 33 | `theorem` | [adjoin_top](../../../../CommutativeAlgebra/AdjoinBasicNamespacedSourceEdition2.lean/declarations/adjoin-top.md) | 334 | `result-track:d5617a6d774f67c437d4598b982610ea772019aa0e77c3d0cdb672302e9db053` |
| 34 | `theorem` | [adjoin_union_eq_adjoin_adjoin](../../../../CommutativeAlgebra/AdjoinBasicNamespacedSourceEdition2.lean/declarations/adjoin-union-eq-adjoin-adjoin.md) | 357 | `result-track:b2dd874d799d4059c975cc38d70f655c4dd9d8a487f4f9fba044890f68d0371f` |
| 35 | `theorem` | [adjoin_union_coe_submodule](../../../../CommutativeAlgebra/AdjoinBasicNamespacedSourceEdition2.lean/declarations/adjoin-union-coe-submodule.md) | 362 | `result-track:00cfeb216bd95283f96f380f4644881cf8230c907f96cbccc4a00c681f9019d7` |
| 36 | `theorem` | [pow_smul_mem_of_smul_subset_of_mem_adjoin](../../../../CommutativeAlgebra/AdjoinBasicNamespacedSourceEdition2.lean/declarations/pow-smul-mem-of-smul-subset-of-mem-adjoin.md) | 371 | `result-track:a43846e4bcc52d7168debfffb6dbc0dac10a2c5fc8244338b54ffab4dddb2268` |
| 37 | `theorem` | [pow_smul_mem_adjoin_smul](../../../../CommutativeAlgebra/AdjoinBasicNamespacedSourceEdition2.lean/declarations/pow-smul-mem-adjoin-smul.md) | 396 | `result-track:902268fa03aed1301a0fa5b4c1cacd42da6099c6e81331afe8f849f29ccf5eef` |
| 38 | `theorem` | [adjoin_int](../../../../CommutativeAlgebra/AdjoinBasicNamespacedSourceEdition2.lean/declarations/adjoin-int.md) | 409 | `result-track:530683f71cfc48b58f4e04944d145579fcd0132f8adb7c107e7cce032232b2fb` |
| 39 | `theorem` | [mem_adjoin_iff](../../../../CommutativeAlgebra/AdjoinBasicNamespacedSourceEdition2.lean/declarations/mem-adjoin-iff.md) | 414 | `result-track:1d9f3be2d18245319b0d78ba23808a536de2f15a3e003f8c18d0c0e28d9b493b` |
| 40 | `theorem` | [adjoin_eq_ring_closure](../../../../CommutativeAlgebra/AdjoinBasicNamespacedSourceEdition2.lean/declarations/adjoin-eq-ring-closure.md) | 426 | `result-track:01b8a99d38beee28f39224d467071829670ffa2aabe7b4976304266ecc840e42` |
| 41 | `def` | [adjoinCommRingOfComm](../../../../CommutativeAlgebra/AdjoinBasicNamespacedSourceEdition2.lean/declarations/adjoincommringofcomm.md) | 435 | `declaration-track:75f48b5e38e442dde65226ae4bd51a0b2063e61c4b5021d3f670bd3fa7793de6` |
| 42 | `theorem` | [map_adjoin](../../../../CommutativeAlgebra/AdjoinBasicNamespacedSourceEdition2.lean/declarations/map-adjoin.md) | 450 | `result-track:d7468bcc9cf136bda90f4ef198f1844ad0cb5414c952f1a7c08cb8e28eb5c826` |
| 43 | `theorem` | [adjoin_le_equalizer](../../../../CommutativeAlgebra/AdjoinBasicNamespacedSourceEdition2.lean/declarations/adjoin-le-equalizer.md) | 454 | `result-track:1db39d575590e8d05f6a4f7646e995b0b2929f72ec5b7346dec78cf0b36978b1` |
| 44 | `theorem` | [ext_of_adjoin_eq_top](../../../../CommutativeAlgebra/AdjoinBasicNamespacedSourceEdition2.lean/declarations/ext-of-adjoin-eq-top.md) | 459 | `result-track:a6e9be4c59be274019884027c68884c9ae142e618898711182f01c11543ad3c8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=02f287f87f50bc851c343b3d785ff4dc45e063ba8122df87288da80a57e0bcaf -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Basic/Variantadd97813dc947ffaf2dda9e188e74fc64b1d4f37b4287e92701bf298f76e1a6d.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Basic/Variantadd97813dc947ffaf2dda9e188e74fc64b1d4f37b4287e92701bf298f76e1a6d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
