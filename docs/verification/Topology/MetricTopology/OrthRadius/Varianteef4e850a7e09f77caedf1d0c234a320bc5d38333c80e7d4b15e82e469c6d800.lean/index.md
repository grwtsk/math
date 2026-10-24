# Verification target: GRWTSK.Topology.MetricTopology.OrthRadius.Varianteef4e850a7e09f77caedf1d0c234a320bc5d38333c80e7d4b15e82e469c6d800

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2e70e4cf1e7ce08d5c9ced47ca08eaec4c7f0093",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/OrthRadius/Varianteef4e850a7e09f77caedf1d0c234a320bc5d38333c80e7d4b15e82e469c6d800.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/MetricTopology/OrthRadius/Varianteef4e850a7e09f77caedf1d0c234a320bc5d38333c80e7d4b15e82e469c6d800.lean/index.md) · [Full source](../../../../../mathematics/Topology/MetricTopology/OrthRadius/Varianteef4e850a7e09f77caedf1d0c234a320bc5d38333c80e7d4b15e82e469c6d800.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2e70e4cf1e7ce08d5c9ced47ca08eaec4c7f0093`.

Source path: `GRWTSK/Topology/MetricTopology/OrthRadius/Varianteef4e850a7e09f77caedf1d0c234a320bc5d38333c80e7d4b15e82e469c6d800.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/OrthRadius/Varianteef4e850a7e09f77caedf1d0c234a320bc5d38333c80e7d4b15e82e469c6d800.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [orthRadius](../../../../../mathematics/Topology/MetricTopology/OrthRadius/Varianteef4e850a7e09f77caedf1d0c234a320bc5d38333c80e7d4b15e82e469c6d800.lean/declarations/orthradius--7da4674b4f6e7fd4d4c4f0eb.md) | 42 | `declaration-track:7da4674b4f6e7fd4d4c4f0eba3bd42397fcc2f6c087e45c6bfb80a37a25a2ace` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/OrthRadius/Varianteef4e850a7e09f77caedf1d0c234a320bc5d38333c80e7d4b15e82e469c6d800.lean/declarations/instance--37da131a34cffa85b082a7f6.md) | 45 | `declaration-track:37da131a34cffa85b082a7f60c2a29702dd69a1adbb8be2896fba70d6ad91dc6` |
| 3 | `lemma` | [self_mem_orthRadius](../../../../../mathematics/Topology/MetricTopology/OrthRadius/Varianteef4e850a7e09f77caedf1d0c234a320bc5d38333c80e7d4b15e82e469c6d800.lean/declarations/self-mem-orthradius--67fa678fb6cb42d60f0e5eb0.md) | 49 | `result-track:67fa678fb6cb42d60f0e5eb0a58d1ccda2da2b0779a610d28b10456038b7b063` |
| 4 | `lemma` | [mem_orthRadius_iff_inner_left](../../../../../mathematics/Topology/MetricTopology/OrthRadius/Varianteef4e850a7e09f77caedf1d0c234a320bc5d38333c80e7d4b15e82e469c6d800.lean/declarations/mem-orthradius-iff-inner-left--40b5834d0913bcc70985a645.md) | 52 | `result-track:40b5834d0913bcc70985a6452eb214d7930c9477d4c0243e162feae57c730ee3` |
| 5 | `lemma` | [mem_orthRadius_iff_inner_right](../../../../../mathematics/Topology/MetricTopology/OrthRadius/Varianteef4e850a7e09f77caedf1d0c234a320bc5d38333c80e7d4b15e82e469c6d800.lean/declarations/mem-orthradius-iff-inner-right--17be60e67bed53893565a938.md) | 56 | `result-track:17be60e67bed53893565a938bddc2990e322c7e2eb8f9992b98f76adb5cc6774` |
| 6 | `lemma` | [direction_orthRadius](../../../../../mathematics/Topology/MetricTopology/OrthRadius/Varianteef4e850a7e09f77caedf1d0c234a320bc5d38333c80e7d4b15e82e469c6d800.lean/declarations/direction-orthradius--c3b323f41c51d71b40bede56.md) | 60 | `result-track:c3b323f41c51d71b40bede560c46190643fe1413670ff214621cec3422dc22fc` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/OrthRadius/Varianteef4e850a7e09f77caedf1d0c234a320bc5d38333c80e7d4b15e82e469c6d800.lean/declarations/instance--88143e03ee5fc0ef653e9f83.md) | 64 | `declaration-track:88143e03ee5fc0ef653e9f836f228ce68ab62ac2bc69e1bde438ea4087e227e2` |
| 8 | `lemma` | [orthRadius_center](../../../../../mathematics/Topology/MetricTopology/OrthRadius/Varianteef4e850a7e09f77caedf1d0c234a320bc5d38333c80e7d4b15e82e469c6d800.lean/declarations/orthradius-center--77a73db7841b160b22b4c0f9.md) | 68 | `result-track:77a73db7841b160b22b4c0f9a19a7259d20dec08be7bdf198a8e92c8156da399` |
| 9 | `lemma` | [center_mem_orthRadius_iff](../../../../../mathematics/Topology/MetricTopology/OrthRadius/Varianteef4e850a7e09f77caedf1d0c234a320bc5d38333c80e7d4b15e82e469c6d800.lean/declarations/center-mem-orthradius-iff--70fc017f50fe02d599c0829e.md) | 71 | `result-track:70fc017f50fe02d599c0829efc3b665fcb44652e36b74392fbd0b8420a36cde6` |
| 10 | `lemma` | [orthogonalProjection_orthRadius_center](../../../../../mathematics/Topology/MetricTopology/OrthRadius/Varianteef4e850a7e09f77caedf1d0c234a320bc5d38333c80e7d4b15e82e469c6d800.lean/declarations/orthogonalprojection-orthradius-center--27fb0ee39cf4d2972e5e3d46.md) | 77 | `result-track:27fb0ee39cf4d2972e5e3d46550632dee70bddea3e9e6993714e8fc846319c3b` |
| 11 | `lemma` | [orthRadius_le_orthRadius_iff](../../../../../mathematics/Topology/MetricTopology/OrthRadius/Varianteef4e850a7e09f77caedf1d0c234a320bc5d38333c80e7d4b15e82e469c6d800.lean/declarations/orthradius-le-orthradius-iff--42e9fd1c3b5005112899b560.md) | 83 | `result-track:42e9fd1c3b5005112899b560bdd45f60bd30efa99ea88ae8a56ef86d0c4d054d` |
| 12 | `lemma` | [orthRadius_eq_orthRadius_iff](../../../../../mathematics/Topology/MetricTopology/OrthRadius/Varianteef4e850a7e09f77caedf1d0c234a320bc5d38333c80e7d4b15e82e469c6d800.lean/declarations/orthradius-eq-orthradius-iff--a9f0190d145de979b3d7badd.md) | 110 | `result-track:a9f0190d145de979b3d7badd1f2f38194a53e0133987b2925391b739e6f85be4` |
| 13 | `lemma` | [orthRadius_injective](../../../../../mathematics/Topology/MetricTopology/OrthRadius/Varianteef4e850a7e09f77caedf1d0c234a320bc5d38333c80e7d4b15e82e469c6d800.lean/declarations/orthradius-injective--c03e489a6984361dfc35a38b.md) | 117 | `result-track:c03e489a6984361dfc35a38b03a8317d8f32f6e2e04995a8e68a5cfd3ca02638` |
| 14 | `lemma` | [finrank_orthRadius](../../../../../mathematics/Topology/MetricTopology/OrthRadius/Varianteef4e850a7e09f77caedf1d0c234a320bc5d38333c80e7d4b15e82e469c6d800.lean/declarations/finrank-orthradius--41da9b871da00cc5bf3b3a76.md) | 120 | `result-track:41da9b871da00cc5bf3b3a76ab93a4226f606703351dc711e74e1bfb0a48a914` |
| 15 | `lemma` | [orthRadius_map](../../../../../mathematics/Topology/MetricTopology/OrthRadius/Varianteef4e850a7e09f77caedf1d0c234a320bc5d38333c80e7d4b15e82e469c6d800.lean/declarations/orthradius-map--272ef82da56d5c210a1413ef.md) | 126 | `result-track:272ef82da56d5c210a1413ef6ca573ef8932da40ac22e05e62e3c3f21682cbc4` |
| 16 | `lemma` | [direction_orthRadius_le_iff](../../../../../mathematics/Topology/MetricTopology/OrthRadius/Varianteef4e850a7e09f77caedf1d0c234a320bc5d38333c80e7d4b15e82e469c6d800.lean/declarations/direction-orthradius-le-iff--458476dd61d52427a061f2b1.md) | 133 | `result-track:458476dd61d52427a061f2b18414930b10a0e704a2ca3e8b71819422a0b4df32` |
| 17 | `lemma` | [orthRadius_parallel_orthRadius_iff](../../../../../mathematics/Topology/MetricTopology/OrthRadius/Varianteef4e850a7e09f77caedf1d0c234a320bc5d38333c80e7d4b15e82e469c6d800.lean/declarations/orthradius-parallel-orthradius-iff--649f1592084dfd57b4ce6b0d.md) | 138 | `result-track:649f1592084dfd57b4ce6b0d78b4a58561095be81e471b02399eab52f91a256b` |
| 18 | `lemma` | [dist_sq_eq_iff_mem_orthRadius](../../../../../mathematics/Topology/MetricTopology/OrthRadius/Varianteef4e850a7e09f77caedf1d0c234a320bc5d38333c80e7d4b15e82e469c6d800.lean/declarations/dist-sq-eq-iff-mem-orthradius--b58b932246fd2352eff13d6d.md) | 146 | `result-track:b58b932246fd2352eff13d6da7ffd6a878e418837b3dc3b78077b7c823581225` |
| 19 | `lemma` | [mem_inter_orthRadius_iff_radius_nonneg_and_vsub_mem_and_norm_sq](../../../../../mathematics/Topology/MetricTopology/OrthRadius/Varianteef4e850a7e09f77caedf1d0c234a320bc5d38333c80e7d4b15e82e469c6d800.lean/declarations/mem-inter-orthradius-iff-radius-nonneg-and-vsub-mem-and-norm-sq--be1338d2e013de2d997816ed.md) | 155 | `result-track:be1338d2e013de2d997816ed2ddad6995838da56bc3a5e897033bc1a36aeb26e` |
| 20 | `lemma` | [mem_inter_orthRadius_iff_vsub_mem_and_norm_sq](../../../../../mathematics/Topology/MetricTopology/OrthRadius/Varianteef4e850a7e09f77caedf1d0c234a320bc5d38333c80e7d4b15e82e469c6d800.lean/declarations/mem-inter-orthradius-iff-vsub-mem-and-norm-sq--1a7fd5c6dfa9bfd6e1177e24.md) | 172 | `result-track:1a7fd5c6dfa9bfd6e1177e24b66844f9ec921ee9608fdb3ec510d07a7e305be0` |
| 21 | `lemma` | [vadd_mem_inter_orthRadius_iff_norm_sq](../../../../../mathematics/Topology/MetricTopology/OrthRadius/Varianteef4e850a7e09f77caedf1d0c234a320bc5d38333c80e7d4b15e82e469c6d800.lean/declarations/vadd-mem-inter-orthradius-iff-norm-sq--9944cff2d002dddf06ab4523.md) | 178 | `result-track:9944cff2d002dddf06ab4523f31221d35904e86cb838d482d5ae195687bd39f4` |
| 22 | `lemma` | [inter_orthRadius_eq_singleton_of_dist_eq_radius](../../../../../mathematics/Topology/MetricTopology/OrthRadius/Varianteef4e850a7e09f77caedf1d0c234a320bc5d38333c80e7d4b15e82e469c6d800.lean/declarations/inter-orthradius-eq-singleton-of-dist-eq-radius--a4ea5ff3694d80c14a96cb45.md) | 186 | `result-track:a4ea5ff3694d80c14a96cb453c2b1d0166064e2b74460b8145404e9b7570a244` |
| 23 | `lemma` | [inter_orthRadius_eq_singleton_iff](../../../../../mathematics/Topology/MetricTopology/OrthRadius/Varianteef4e850a7e09f77caedf1d0c234a320bc5d38333c80e7d4b15e82e469c6d800.lean/declarations/inter-orthradius-eq-singleton-iff--6712f9678aad6d015c4dd9fe.md) | 198 | `result-track:6712f9678aad6d015c4dd9fe3ca52a0317ae8a92e7550fcb63c60e92bc274879` |
| 24 | `lemma` | [inter_orthRadius_eq_empty_of_radius_lt_dist](../../../../../mathematics/Topology/MetricTopology/OrthRadius/Varianteef4e850a7e09f77caedf1d0c234a320bc5d38333c80e7d4b15e82e469c6d800.lean/declarations/inter-orthradius-eq-empty-of-radius-lt-dist--67c74600eb8b59ffc3c55f55.md) | 219 | `result-track:67c74600eb8b59ffc3c55f551a7ced18296157963b5461349bb2dd7f353ddc8c` |
| 25 | `lemma` | [inter_orthRadius_eq_empty_of_finrank_eq_one](../../../../../mathematics/Topology/MetricTopology/OrthRadius/Varianteef4e850a7e09f77caedf1d0c234a320bc5d38333c80e7d4b15e82e469c6d800.lean/declarations/inter-orthradius-eq-empty-of-finrank-eq-one--32b5298f69f981458a4316b2.md) | 227 | `result-track:32b5298f69f981458a4316b279648be43c105327842e045a2ca28c7745195d82` |
| 26 | `lemma` | [inter_orthRadius_eq_empty_iff](../../../../../mathematics/Topology/MetricTopology/OrthRadius/Varianteef4e850a7e09f77caedf1d0c234a320bc5d38333c80e7d4b15e82e469c6d800.lean/declarations/inter-orthradius-eq-empty-iff--2ecd00bfccf944ac4d4c42f3.md) | 243 | `result-track:2ecd00bfccf944ac4d4c42f337e2b2100cabf75e7dd2c6a7c4823ca4930ff2b2` |
| 27 | `lemma` | [inter_orthRadius_eq_of_dist_le_radius_of_norm_eq_one](../../../../../mathematics/Topology/MetricTopology/OrthRadius/Varianteef4e850a7e09f77caedf1d0c234a320bc5d38333c80e7d4b15e82e469c6d800.lean/declarations/inter-orthradius-eq-of-dist-le-radius-of-norm-eq-one--66b730e629cc7b746892d58c.md) | 308 | `result-track:66b730e629cc7b746892d58cb1777ea35e3d7a60ca067fefd5c4eb54e41e99d9` |
| 28 | `lemma` | [inter_orthRadius_eq_of_dist_le_radius](../../../../../mathematics/Topology/MetricTopology/OrthRadius/Varianteef4e850a7e09f77caedf1d0c234a320bc5d38333c80e7d4b15e82e469c6d800.lean/declarations/inter-orthradius-eq-of-dist-le-radius--83306eed750a4f11a76948d3.md) | 349 | `result-track:83306eed750a4f11a76948d38c9618e41eb5b6e4d2795b3d6d93cac216f44f77` |
| 29 | `lemma` | [ncard_inter_orthRadius_eq_two_of_dist_lt_radius](../../../../../mathematics/Topology/MetricTopology/OrthRadius/Varianteef4e850a7e09f77caedf1d0c234a320bc5d38333c80e7d4b15e82e469c6d800.lean/declarations/ncard-inter-orthradius-eq-two-of-dist-lt-radius--5614a3ee700f80de9414b1b6.md) | 363 | `result-track:5614a3ee700f80de9414b1b6bea1e32994d72d2656cb0ba9265f932d9f2e5d7a` |
| 30 | `lemma` | [ncard_inter_orthRadius_le_two](../../../../../mathematics/Topology/MetricTopology/OrthRadius/Varianteef4e850a7e09f77caedf1d0c234a320bc5d38333c80e7d4b15e82e469c6d800.lean/declarations/ncard-inter-orthradius-le-two--f2e9ce1a2860afc027d6b052.md) | 380 | `result-track:f2e9ce1a2860afc027d6b052ed6c783b9a67c0adb4000064917720888b825d3a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
