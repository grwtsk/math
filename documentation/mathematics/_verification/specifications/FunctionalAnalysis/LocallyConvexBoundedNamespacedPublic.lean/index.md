# Verification target: Locally Convex Bounded Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "66d00f748acb5887e35769ac2433feb5a96ab665",
  "lexical_observation_count": 60,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Bounded/Variant2c1354cd4ed0b2d71f2ab46073e51ee50472f15bd87520b6cde48b65e71c77ff.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FunctionalAnalysis/LocallyConvexBoundedNamespacedPublic.lean/index.md) · [Full source](../../../../FunctionalAnalysis/LocallyConvexBoundedNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `66d00f748acb5887e35769ac2433feb5a96ab665`.

Source path: `GRWTSK/Topology/GeneralTopology/Bounded/Variant2c1354cd4ed0b2d71f2ab46073e51ee50472f15bd87520b6cde48b65e71c77ff.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Bounded/Variant2c1354cd4ed0b2d71f2ab46073e51ee50472f15bd87520b6cde48b65e71c77ff.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsVonNBounded](../../../../FunctionalAnalysis/LocallyConvexBoundedNamespacedPublic.lean/declarations/isvonnbounded.md) | 72 | `declaration-track:2d81b044d419bb24a2a1d4eb01357e5e1e9afd70cd651e9ed7129c695d354b2b` |
| 2 | `theorem` | [isVonNBounded_empty](../../../../FunctionalAnalysis/LocallyConvexBoundedNamespacedPublic.lean/declarations/isvonnbounded-empty.md) | 78 | `result-track:48d6b0408cfca5e9fd5c65cea943a3fc66fc34a06999f7867e289b26b3584c41` |
| 3 | `theorem` | [isVonNBounded_iff](../../../../FunctionalAnalysis/LocallyConvexBoundedNamespacedPublic.lean/declarations/isvonnbounded-iff-source-edition-2.md) | 82 | `result-track:4b8e3649085cdc21c754ce170633ea951bf600644b3b16f0a87616dcdc7e0a3e` |
| 4 | `theorem` | [Locally Convex Bounded Namespaced Public](../../../../FunctionalAnalysis/LocallyConvexBoundedNamespacedPublic.lean/declarations/isvonnbounded-iff-source-line-85-occurrence-2.md) | 85 | `result-track:e4354ac8284abd9d3f9943198a808b0b6e7e47b8db97bc97ab689620194b34e9` |
| 5 | `theorem` | [IsVonNBounded.subset](../../../../FunctionalAnalysis/LocallyConvexBoundedNamespacedPublic.lean/declarations/isvonnbounded-subset.md) | 92 | `result-track:fd416299622daa69031605cd79832914e1dfe3f4a7359e9c5d387b3b7d3bf3ab` |
| 6 | `theorem` | [isVonNBounded_union](../../../../FunctionalAnalysis/LocallyConvexBoundedNamespacedPublic.lean/declarations/isvonnbounded-union-source-edition-2.md) | 96 | `result-track:a62227ac6b85578c94431db2badf48152d1e351584f8785b7d4dc721fcdbf54f` |
| 7 | `theorem` | [IsVonNBounded.union](../../../../FunctionalAnalysis/LocallyConvexBoundedNamespacedPublic.lean/declarations/isvonnbounded-union.md) | 101 | `result-track:099aef7432cdf4b1256b29f523a00a4567fd479ec1c60fe078b39443bf4241a5` |
| 8 | `theorem` | [IsVonNBounded.of_boundedSpace](../../../../FunctionalAnalysis/LocallyConvexBoundedNamespacedPublic.lean/declarations/isvonnbounded-of-boundedspace.md) | 105 | `result-track:f0b31028eb4d83e9366ef1ca73b2e2f9bb3da486cb6be98769222d95d7a12d42` |
| 9 | `theorem` | [IsVonNBounded.of_subsingleton](../../../../FunctionalAnalysis/LocallyConvexBoundedNamespacedPublic.lean/declarations/isvonnbounded-of-subsingleton.md) | 109 | `result-track:5f1427a65b9efdc0d0ce93cba0120f35bb0f43025e35a576e5adab8ec9815329` |
| 10 | `theorem` | [isVonNBounded_iUnion](../../../../FunctionalAnalysis/LocallyConvexBoundedNamespacedPublic.lean/declarations/isvonnbounded-iunion.md) | 115 | `result-track:9b93ddf3aa8836ff9eafa26d4d1b85e84b8456e9caff99d7c4fddf0601ba7e09` |
| 11 | `theorem` | [isVonNBounded_biUnion](../../../../FunctionalAnalysis/LocallyConvexBoundedNamespacedPublic.lean/declarations/isvonnbounded-biunion.md) | 119 | `result-track:81857d3fce35ed44082ddfb627db00a0c0636f8077d3b6c7e1ad8d8ffd49940e` |
| 12 | `theorem` | [isVonNBounded_sUnion](../../../../FunctionalAnalysis/LocallyConvexBoundedNamespacedPublic.lean/declarations/isvonnbounded-sunion.md) | 124 | `result-track:50dc24544016dd7ca2faacbd89f6f28533e2402091c9c5d09f420dce3eb0525d` |
| 13 | `theorem` | [IsVonNBounded.add](../../../../FunctionalAnalysis/LocallyConvexBoundedNamespacedPublic.lean/declarations/isvonnbounded-add-source-edition-2.md) | 135 | `result-track:8408d485ffef049543fafad4ace0a0070ba4cc44099dc40ec0b35a8b7d12616b` |
| 14 | `theorem` | [IsVonNBounded.neg](../../../../FunctionalAnalysis/LocallyConvexBoundedNamespacedPublic.lean/declarations/isvonnbounded-neg.md) | 147 | `result-track:234c77a6986501924021e5d083a2fb278a0da82519dd323c2dcf5faaa8c2351c` |
| 15 | `theorem` | [isVonNBounded_neg](../../../../FunctionalAnalysis/LocallyConvexBoundedNamespacedPublic.lean/declarations/isvonnbounded-neg-source-edition-2.md) | 152 | `result-track:4d379e4d702afe999dda60e6fa0957227986ada2d5c671a22e836ff7f470afe2` |
| 16 | `theorem` | [IsVonNBounded.sub](../../../../FunctionalAnalysis/LocallyConvexBoundedNamespacedPublic.lean/declarations/isvonnbounded-sub.md) | 157 | `result-track:109e80369565c6dc30f7c45604b7ddd98e6e170acf3988fe29e3dd082f31c09a` |
| 17 | `theorem` | [IsVonNBounded.of_topologicalSpace_le](../../../../FunctionalAnalysis/LocallyConvexBoundedNamespacedPublic.lean/declarations/isvonnbounded-of-topologicalspace-le.md) | 172 | `result-track:7e14fd2c0cfd1a9e9c118815c3e99d6438ee95f0fa7bf6a4eb42738c0a369528` |
| 18 | `lemma` | [isVonNBounded_iff_tendsto_smallSets_nhds](../../../../FunctionalAnalysis/LocallyConvexBoundedNamespacedPublic.lean/declarations/isvonnbounded-iff-tendsto-smallsets-nhds.md) | 178 | `result-track:be178f05c657d30fe24e5536f3e3c1fa6aaa51ba3d8e9644120d7897bdb1fd86` |
| 19 | `lemma` | [isVonNBounded_iff_absorbing_le](../../../../FunctionalAnalysis/LocallyConvexBoundedNamespacedPublic.lean/declarations/isvonnbounded-iff-absorbing-le.md) | 188 | `result-track:6a72fbf67f13873a7b8a907cb9bee7ea8b85b34478f5ae5cd0ef0a6f2d00d5ca` |
| 20 | `lemma` | [isVonNBounded_pi_iff](../../../../FunctionalAnalysis/LocallyConvexBoundedNamespacedPublic.lean/declarations/isvonnbounded-pi-iff.md) | 193 | `result-track:718abdae8becb9a8c5cd80fb25b426d121d6e222fb4303e240c590ae3c2f2d58` |
| 21 | `theorem` | [IsVonNBounded.image](../../../../FunctionalAnalysis/LocallyConvexBoundedNamespacedPublic.lean/declarations/isvonnbounded-image.md) | 206 | `result-track:371864dc802560d6237c2fe47a415a430c9cb8cf5bc9732fc4ea783424ae4129` |
| 22 | `theorem` | [IsVonNBounded.smul_tendsto_zero](../../../../FunctionalAnalysis/LocallyConvexBoundedNamespacedPublic.lean/declarations/isvonnbounded-smul-tendsto-zero.md) | 218 | `result-track:3b4afcf5832e811288be672c08eef031e25cb6483372512647f261c54472a45b` |
| 23 | `theorem` | [isVonNBounded_of_smul_tendsto_zero](../../../../FunctionalAnalysis/LocallyConvexBoundedNamespacedPublic.lean/declarations/isvonnbounded-of-smul-tendsto-zero.md) | 228 | `result-track:ee6ab983ede9341816922b372d63e45e2a270f522d0746823b95aa2358f5a8e7` |
| 24 | `theorem` | [isVonNBounded_iff_smul_tendsto_zero](../../../../FunctionalAnalysis/LocallyConvexBoundedNamespacedPublic.lean/declarations/isvonnbounded-iff-smul-tendsto-zero.md) | 251 | `result-track:d1c1f1eb3e8f5403292b3962e6063290e0ecd5405b736ab8355fe829b47a7d36` |
| 25 | `theorem` | [IsVonNBounded.extend_scalars](../../../../FunctionalAnalysis/LocallyConvexBoundedNamespacedPublic.lean/declarations/isvonnbounded-extend-scalars.md) | 262 | `result-track:5070208b9382256f95bc0e963af42bfa9dee52441247c490ace7dbd774f1fc57` |
| 26 | `theorem` | [IsVonNBounded.closure](../../../../FunctionalAnalysis/LocallyConvexBoundedNamespacedPublic.lean/declarations/isvonnbounded-closure.md) | 279 | `result-track:ef546027bb7fb365a15dcaab78e5759fc8fcef754dc404ea13f10e46c08dda48` |
| 27 | `theorem` | [isVonNBounded_singleton](../../../../FunctionalAnalysis/LocallyConvexBoundedNamespacedPublic.lean/declarations/isvonnbounded-singleton.md) | 290 | `result-track:b1ff01184076d59bed507b14563f7a1fffb159c58adfa1175993acba98358e07` |
| 28 | `theorem` | [isVonNBounded_insert](../../../../FunctionalAnalysis/LocallyConvexBoundedNamespacedPublic.lean/declarations/isvonnbounded-insert.md) | 294 | `result-track:bac02b46162f5532015e8f8fbc49421492abefebef841083e7530055672f1fd4` |
| 29 | `theorem` | [Locally Convex Bounded Namespaced Public](../../../../FunctionalAnalysis/LocallyConvexBoundedNamespacedPublic.lean/declarations/isvonnbounded-source-line-301-occurrence-2.md) | 301 | `result-track:4a06e5157f07599ac5601004ffd5b11805160ec3b4fdc74a12ca7d3a6839a7b9` |
| 30 | `theorem` | [IsVonNBounded.vadd](../../../../FunctionalAnalysis/LocallyConvexBoundedNamespacedPublic.lean/declarations/isvonnbounded-vadd.md) | 309 | `result-track:19f5c116c48c26781aa4a33653b5f46a8c643d6cec30b4c6741b6804f6b6676d` |
| 31 | `theorem` | [isVonNBounded_vadd](../../../../FunctionalAnalysis/LocallyConvexBoundedNamespacedPublic.lean/declarations/isvonnbounded-vadd-source-edition-2.md) | 316 | `result-track:c23aee749dbcd50840055d97c4bf7e658fecb15bb35100d2de8b80203ba8c277` |
| 32 | `theorem` | [IsVonNBounded.of_add_right](../../../../FunctionalAnalysis/LocallyConvexBoundedNamespacedPublic.lean/declarations/isvonnbounded-of-add-right.md) | 319 | `result-track:a984b1c19e64119461930770236a0e48d5432f85dc564713510af92358983a00` |
| 33 | `theorem` | [IsVonNBounded.of_add_left](../../../../FunctionalAnalysis/LocallyConvexBoundedNamespacedPublic.lean/declarations/isvonnbounded-of-add-left.md) | 324 | `result-track:00fbb27887ebc17451a6c5282bc1190e0a9f912e4caa21cfe8dfa6f65dd9b89a` |
| 34 | `theorem` | [isVonNBounded_add_of_nonempty](../../../../FunctionalAnalysis/LocallyConvexBoundedNamespacedPublic.lean/declarations/isvonnbounded-add-of-nonempty.md) | 328 | `result-track:fe31697b09d44f3edd473a32671a998d2a3f0ae7a5669f4e79192a8eead839b6` |
| 35 | `theorem` | [isVonNBounded_add](../../../../FunctionalAnalysis/LocallyConvexBoundedNamespacedPublic.lean/declarations/isvonnbounded-add.md) | 332 | `result-track:20c079ff98af370275207b9c669dc12dff703ee59ece189ee15c75e8074ae20e` |
| 36 | `theorem` | [isVonNBounded_add_self](../../../../FunctionalAnalysis/LocallyConvexBoundedNamespacedPublic.lean/declarations/isvonnbounded-add-self.md) | 339 | `result-track:e28a09eac64a37b0ee35aee0de8c592bad4f1a47dbf40c77fd4edabc6f54bdb1` |
| 37 | `theorem` | [IsVonNBounded.of_sub_left](../../../../FunctionalAnalysis/LocallyConvexBoundedNamespacedPublic.lean/declarations/isvonnbounded-of-sub-left.md) | 342 | `result-track:9ec9e0417bff9241a2e11e2607957ec70e22668bd5e8952c33aecdc9bbfd9839` |
| 38 | `theorem` | [IsVonNBounded.of_sub_right](../../../../FunctionalAnalysis/LocallyConvexBoundedNamespacedPublic.lean/declarations/isvonnbounded-of-sub-right.md) | 352 | `result-track:9be4cccd736c9e91e425dde5fad9a5fe6a04827d88c0be789f76d96aaff0e99d` |
| 39 | `theorem` | [isVonNBounded_sub_of_nonempty](../../../../FunctionalAnalysis/LocallyConvexBoundedNamespacedPublic.lean/declarations/isvonnbounded-sub-of-nonempty.md) | 356 | `result-track:21a7ad15a6fdc38a1ed04222a3602336b008a88cd0997bde81182586b342e245` |
| 40 | `theorem` | [isVonNBounded_sub](../../../../FunctionalAnalysis/LocallyConvexBoundedNamespacedPublic.lean/declarations/isvonnbounded-sub-source-edition-2.md) | 360 | `result-track:b9a6de141dc40c9b5f6088cc527f79caf9beaa4b939e51dae919ab379856ee54` |
| 41 | `theorem` | [sUnion_isVonNBounded_eq_univ](../../../../FunctionalAnalysis/LocallyConvexBoundedNamespacedPublic.lean/declarations/sunion-isvonnbounded-eq-univ.md) | 367 | `result-track:d03d74998e9aa1e87edc028c4cf5a6dd8a54f25c795dfa440a4bfa524caa68e1` |
| 42 | `abbrev` | [vonNBornology](../../../../FunctionalAnalysis/LocallyConvexBoundedNamespacedPublic.lean/declarations/vonnbornology.md) | 378 | `declaration-track:4bf82f79f3ec934cdba18e7fe0efa99d07938b6154661e677bb2b6391a1746d7` |
| 43 | `theorem` | [isBounded_iff_isVonNBounded](../../../../FunctionalAnalysis/LocallyConvexBoundedNamespacedPublic.lean/declarations/isbounded-iff-isvonnbounded.md) | 385 | `result-track:8a8ffcbb8a61d5871538893853e8f429d39fbcb74f970dd4404276d756d761bd` |
| 44 | `theorem` | [TotallyBounded.isVonNBounded](../../../../FunctionalAnalysis/LocallyConvexBoundedNamespacedPublic.lean/declarations/totallybounded-isvonnbounded.md) | 398 | `result-track:40f15602d56aa59504514bada32589caa8d53d986c4f7faa2271b484c0cc4ec7` |
| 45 | `theorem` | [IsCompact.isVonNBounded](../../../../FunctionalAnalysis/LocallyConvexBoundedNamespacedPublic.lean/declarations/iscompact-isvonnbounded.md) | 423 | `result-track:f5817ddc441759d1f93d87c9788d004e2cd47942f2cdfc558704a715041298d7` |
| 46 | `theorem` | [Filter.Tendsto.isVonNBounded_range](../../../../FunctionalAnalysis/LocallyConvexBoundedNamespacedPublic.lean/declarations/filter-tendsto-isvonnbounded-range.md) | 431 | `result-track:bbd84f553778e6bb7895193ec9230f874563a8c7e637388a95c906c5f88116ab` |
| 47 | `theorem` | [Bornology.IsVonNBounded.restrict_scalars_of_nontrivial](../../../../FunctionalAnalysis/LocallyConvexBoundedNamespacedPublic.lean/declarations/bornology-isvonnbounded-restrict-scalars-of-nontrivial.md) | 439 | `result-track:b8d26581b881b6d3c8f32e0ef01ffa2cffcda33f51befc2a8a80b202e98f7eef` |
| 48 | `theorem` | [Bornology.IsVonNBounded.restrict_scalars](../../../../FunctionalAnalysis/LocallyConvexBoundedNamespacedPublic.lean/declarations/bornology-isvonnbounded-restrict-scalars.md) | 451 | `result-track:29861b806929d17cad47a002a077f9bfd81b8f843d1d8d85fd2f4855b9ab6f7e` |
| 49 | `theorem` | [isVonNBounded_of_isBounded](../../../../FunctionalAnalysis/LocallyConvexBoundedNamespacedPublic.lean/declarations/isvonnbounded-of-isbounded.md) | 472 | `result-track:4d3e3327aff833c4ce9a15a3a8db934d2478fca626ec5a34e610acb77c1a4a8e` |
| 50 | `theorem` | [isVonNBounded_ball](../../../../FunctionalAnalysis/LocallyConvexBoundedNamespacedPublic.lean/declarations/isvonnbounded-ball.md) | 481 | `result-track:80754fcf5dc2fe07faaa8d12a7b3404a7097f236e949006a5e35e2c7140d062e` |
| 51 | `theorem` | [isVonNBounded_closedBall](../../../../FunctionalAnalysis/LocallyConvexBoundedNamespacedPublic.lean/declarations/isvonnbounded-closedball.md) | 484 | `result-track:d27c68e71ee5b26aa4fbef58b58af506d173fdefe45f5d5855191d623524886a` |
| 52 | `theorem` | [isVonNBounded_iff](../../../../FunctionalAnalysis/LocallyConvexBoundedNamespacedPublic.lean/declarations/isvonnbounded-iff-source-edition-3.md) | 493 | `result-track:d671d32ebeb619bbf453f1b4d586951bf7ba44a97c952e52d91cf18c4ec00fc5` |
| 53 | `theorem` | [isVonNBounded_iff'](../../../../FunctionalAnalysis/LocallyConvexBoundedNamespacedPublic.lean/declarations/isvonnbounded-iff.md) | 502 | `result-track:155dd840728f4433fcafabec21b6cb5ca79f951734264975e22d543140ea47e0` |
| 54 | `theorem` | [image_isVonNBounded_iff](../../../../FunctionalAnalysis/LocallyConvexBoundedNamespacedPublic.lean/declarations/image-isvonnbounded-iff.md) | 506 | `result-track:582b668d022c7405eade12e79362379317bb90b71ad5cc82d8d4100befd80e1c` |
| 55 | `theorem` | [vonNBornology_eq](../../../../FunctionalAnalysis/LocallyConvexBoundedNamespacedPublic.lean/declarations/vonnbornology-eq.md) | 512 | `result-track:6e73532bb6c86775a9b06157797f0b1417d930938289c1ed35e146c2020560a6` |
| 56 | `theorem` | [isBounded_iff_subset_smul_ball](../../../../FunctionalAnalysis/LocallyConvexBoundedNamespacedPublic.lean/declarations/isbounded-iff-subset-smul-ball.md) | 518 | `result-track:a6df31f0402d4007bfcdf29bffa56deb45b34423e1b839c97bf6fd9fd9b6a077` |
| 57 | `theorem` | [isBounded_iff_subset_smul_closedBall](../../../../FunctionalAnalysis/LocallyConvexBoundedNamespacedPublic.lean/declarations/isbounded-iff-subset-smul-closedball.md) | 529 | `result-track:4fa3710adbe82d17ad0ff70828bef051f4a74e6af8e20d7266fc5edf9d50d68a` |
| 58 | `class` | [QuasiCompleteSpace](../../../../FunctionalAnalysis/LocallyConvexBoundedNamespacedPublic.lean/declarations/quasicompletespace.md) | 546 | `declaration-track:a7d9749416161d28cb3d6040ab60a273f322a79c6a60b36b3698c515c45e3fb0` |
| 59 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/LocallyConvexBoundedNamespacedPublic.lean/declarations/instance.md) | 555 | `declaration-track:25b7be42bf2e8d61624574a50867691c33e2be8fc4227ba18079a0b09265a67b` |
| 60 | `theorem` | [isCompact_closure_of_totallyBounded_quasiComplete](../../../../FunctionalAnalysis/LocallyConvexBoundedNamespacedPublic.lean/declarations/iscompact-closure-of-totallybounded-quasicomplete.md) | 559 | `result-track:86c465f4e2caa365db33c5a78467cb1fef8f3b9fca4ae2fc7746cfbd87b33bf4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=baac0f5423251cf12fa3e4908a13872f938e8670d345b002d0b6a6fae22baf1c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Bounded/Variant2c1354cd4ed0b2d71f2ab46073e51ee50472f15bd87520b6cde48b65e71c77ff.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Bounded/Variant2c1354cd4ed0b2d71f2ab46073e51ee50472f15bd87520b6cde48b65e71c77ff.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
