# Verification target: GRWTSK.Topology.MetricTopology.Basic.Variant4f68e4688a639476318b71b2539a2f6a4d3b7ab5e1f5cf8d6de1065ddeb8c06c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3710c71e5a57e50eb0eb95a48174feeda0805e6e",
  "lexical_observation_count": 46,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/Basic/Variant4f68e4688a639476318b71b2539a2f6a4d3b7ab5e1f5cf8d6de1065ddeb8c06c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/MetricTopology/Basic/Variant4f68e4688a639476318b71b2539a2f6a4d3b7ab5e1f5cf8d6de1065ddeb8c06c.lean/index.md) · [Full source](../../../../../mathematics/Topology/MetricTopology/Basic/Variant4f68e4688a639476318b71b2539a2f6a4d3b7ab5e1f5cf8d6de1065ddeb8c06c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3710c71e5a57e50eb0eb95a48174feeda0805e6e`.

Source path: `GRWTSK/Topology/MetricTopology/Basic/Variant4f68e4688a639476318b71b2539a2f6a4d3b7ab5e1f5cf8d6de1065ddeb8c06c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/Basic/Variant4f68e4688a639476318b71b2539a2f6a4d3b7ab5e1f5cf8d6de1065ddeb8c06c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.InnerProductSpace.Projection` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Geometry.Euclidean.PerpBisector` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.QuadraticDiscriminant` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [dist_left_midpoint_eq_dist_right_midpoint](../../../../../mathematics/Topology/MetricTopology/Basic/Variant4f68e4688a639476318b71b2539a2f6a4d3b7ab5e1f5cf8d6de1065ddeb8c06c.lean/declarations/dist-left-midpoint-eq-dist-right-midpoint--875f43e544da3be50d61f5c6.md) | 75 | `result-track:875f43e544da3be50d61f5c6c8902e441377884887e90a789098b16914ec4e06` |
| 2 | `theorem` | [inner_weightedVSub](../../../../../mathematics/Topology/MetricTopology/Basic/Variant4f68e4688a639476318b71b2539a2f6a4d3b7ab5e1f5cf8d6de1065ddeb8c06c.lean/declarations/inner-weightedvsub--d77ce5c1000d9ea3a4e3027d.md) | 82 | `result-track:d77ce5c1000d9ea3a4e3027dee6d0b0adccd0951a81372b9fe7e3b62df39fee1` |
| 3 | `theorem` | [dist_affineCombination](../../../../../mathematics/Topology/MetricTopology/Basic/Variant4f68e4688a639476318b71b2539a2f6a4d3b7ab5e1f5cf8d6de1065ddeb8c06c.lean/declarations/dist-affinecombination--bd2f16c81d0b780ecf1a6bb8.md) | 97 | `result-track:bd2f16c81d0b780ecf1a6bb80343e11310b2d4a35bf0c32668e5328cd723d4dd` |
| 4 | `theorem` | [dist_smul_vadd_sq](../../../../../mathematics/Topology/MetricTopology/Basic/Variant4f68e4688a639476318b71b2539a2f6a4d3b7ab5e1f5cf8d6de1065ddeb8c06c.lean/declarations/dist-smul-vadd-sq--7b62bd978b62f49baaf763ba.md) | 116 | `result-track:7b62bd978b62f49baaf763bac495c2e5e409f78a585f6ba13c90ce8041bc6433` |
| 5 | `theorem` | [dist_smul_vadd_eq_dist](../../../../../mathematics/Topology/MetricTopology/Basic/Variant4f68e4688a639476318b71b2539a2f6a4d3b7ab5e1f5cf8d6de1065ddeb8c06c.lean/declarations/dist-smul-vadd-eq-dist--950887bdcefd8e7a8c157d58.md) | 126 | `result-track:950887bdcefd8e7a8c157d58bb4fc8c098be8807a1c5668248572d101682ca24` |
| 6 | `theorem` | [eq_of_dist_eq_of_dist_eq_of_mem_of_finrank_eq_two](../../../../../mathematics/Topology/MetricTopology/Basic/Variant4f68e4688a639476318b71b2539a2f6a4d3b7ab5e1f5cf8d6de1065ddeb8c06c.lean/declarations/eq-of-dist-eq-of-dist-eq-of-mem-of-finrank-eq-two--085580e2b27ea7c78fca3104.md) | 146 | `result-track:085580e2b27ea7c78fca3104dffb124aba65fbc710fdf43f61e24ab4ce254582` |
| 7 | `theorem` | [eq_of_dist_eq_of_dist_eq_of_finrank_eq_two](../../../../../mathematics/Topology/MetricTopology/Basic/Variant4f68e4688a639476318b71b2539a2f6a4d3b7ab5e1f5cf8d6de1065ddeb8c06c.lean/declarations/eq-of-dist-eq-of-dist-eq-of-finrank-eq-two--bae5437114166c31e21ee18e.md) | 201 | `result-track:bae5437114166c31e21ee18eaefd7f498b6860b242d2fdf56217dfd383ae7ae6` |
| 8 | `def` | [orthogonalProjectionFn](../../../../../mathematics/Topology/MetricTopology/Basic/Variant4f68e4688a639476318b71b2539a2f6a4d3b7ab5e1f5cf8d6de1065ddeb8c06c.lean/declarations/orthogonalprojectionfn--d8c620543aa990f6a428532c.md) | 217 | `declaration-track:d8c620543aa990f6a428532c0a6373b1fb1b67d1a4bebeaaf731c0046da8e604` |
| 9 | `theorem` | [inter_eq_singleton_orthogonalProjectionFn](../../../../../mathematics/Topology/MetricTopology/Basic/Variant4f68e4688a639476318b71b2539a2f6a4d3b7ab5e1f5cf8d6de1065ddeb8c06c.lean/declarations/inter-eq-singleton-orthogonalprojectionfn--eb4cb36c00100fcd79e87c29.md) | 232 | `result-track:eb4cb36c00100fcd79e87c29eaba418edf10f3569e3fb2457a8bf4910c5020e7` |
| 10 | `theorem` | [orthogonalProjectionFn_mem](../../../../../mathematics/Topology/MetricTopology/Basic/Variant4f68e4688a639476318b71b2539a2f6a4d3b7ab5e1f5cf8d6de1065ddeb8c06c.lean/declarations/orthogonalprojectionfn-mem--080abe28e09bb44709419d65.md) | 246 | `result-track:080abe28e09bb44709419d65c841524ecbe4057469111f7bf14cc112de4f773e` |
| 11 | `theorem` | [orthogonalProjectionFn_mem_orthogonal](../../../../../mathematics/Topology/MetricTopology/Basic/Variant4f68e4688a639476318b71b2539a2f6a4d3b7ab5e1f5cf8d6de1065ddeb8c06c.lean/declarations/orthogonalprojectionfn-mem-orthogonal--cee7dafb29687bd83cfefed3.md) | 255 | `result-track:cee7dafb29687bd83cfefed376a82a4f6e2d551a3c84745405f24c361487566d` |
| 12 | `theorem` | [orthogonalProjectionFn_vsub_mem_direction_orthogonal](../../../../../mathematics/Topology/MetricTopology/Basic/Variant4f68e4688a639476318b71b2539a2f6a4d3b7ab5e1f5cf8d6de1065ddeb8c06c.lean/declarations/orthogonalprojectionfn-vsub-mem-direction-orthogonal--13061b6417b25c71fb004d55.md) | 266 | `result-track:13061b6417b25c71fb004d55b7c4ce30668a348789f784c647dc50f34cc00434` |
| 13 | `def` | [orthogonalProjection](../../../../../mathematics/Topology/MetricTopology/Basic/Variant4f68e4688a639476318b71b2539a2f6a4d3b7ab5e1f5cf8d6de1065ddeb8c06c.lean/declarations/orthogonalprojection--bdaeb1b878abd0c413de7657.md) | 281 | `declaration-track:bdaeb1b878abd0c413de7657b56446bfd48cc413e427c0ea4dfca95eeaab2e0f` |
| 14 | `theorem` | [orthogonalProjectionFn_eq](../../../../../mathematics/Topology/MetricTopology/Basic/Variant4f68e4688a639476318b71b2539a2f6a4d3b7ab5e1f5cf8d6de1065ddeb8c06c.lean/declarations/orthogonalprojectionfn-eq--098977251cfb0dd766a5891c.md) | 309 | `result-track:098977251cfb0dd766a5891c243a93584793e51d61dd18e78fb2c99c42cd8f04` |
| 15 | `theorem` | [orthogonalProjection_linear](../../../../../mathematics/Topology/MetricTopology/Basic/Variant4f68e4688a639476318b71b2539a2f6a4d3b7ab5e1f5cf8d6de1065ddeb8c06c.lean/declarations/orthogonalprojection-linear--a1611cca4acaa024100e823e.md) | 317 | `result-track:a1611cca4acaa024100e823e84a29d1754f610348901a39996404a5a4a832bf7` |
| 16 | `theorem` | [inter_eq_singleton_orthogonalProjection](../../../../../mathematics/Topology/MetricTopology/Basic/Variant4f68e4688a639476318b71b2539a2f6a4d3b7ab5e1f5cf8d6de1065ddeb8c06c.lean/declarations/inter-eq-singleton-orthogonalprojection--38c1ae455df42ed185d63b66.md) | 326 | `result-track:38c1ae455df42ed185d63b6610da1ffe0f6d9af746a9798cf618423b1be49eae` |
| 17 | `theorem` | [orthogonalProjection_mem](../../../../../mathematics/Topology/MetricTopology/Basic/Variant4f68e4688a639476318b71b2539a2f6a4d3b7ab5e1f5cf8d6de1065ddeb8c06c.lean/declarations/orthogonalprojection-mem--04c03c362cb7f61fa13cde05.md) | 334 | `result-track:04c03c362cb7f61fa13cde05a17da2da3b3e19b71cfca11a10a3b72f011fb195` |
| 18 | `theorem` | [orthogonalProjection_mem_orthogonal](../../../../../mathematics/Topology/MetricTopology/Basic/Variant4f68e4688a639476318b71b2539a2f6a4d3b7ab5e1f5cf8d6de1065ddeb8c06c.lean/declarations/orthogonalprojection-mem-orthogonal--32f21b4dd7d456d198cd67f6.md) | 340 | `result-track:32f21b4dd7d456d198cd67f68e1a50cf22ebff404335659999e6efdfd637dec2` |
| 19 | `theorem` | [orthogonalProjection_vsub_mem_direction](../../../../../mathematics/Topology/MetricTopology/Basic/Variant4f68e4688a639476318b71b2539a2f6a4d3b7ab5e1f5cf8d6de1065ddeb8c06c.lean/declarations/orthogonalprojection-vsub-mem-direction--0887b92dd12248462ee876f3.md) | 349 | `result-track:0887b92dd12248462ee876f3f6bec1d4d832ef05bc77a7fa916580c2dfa4d1a4` |
| 20 | `theorem` | [vsub_orthogonalProjection_mem_direction](../../../../../mathematics/Topology/MetricTopology/Basic/Variant4f68e4688a639476318b71b2539a2f6a4d3b7ab5e1f5cf8d6de1065ddeb8c06c.lean/declarations/vsub-orthogonalprojection-mem-direction--e6811316158770022a9c1d19.md) | 357 | `result-track:e6811316158770022a9c1d195b078658295d8436b857ee8a514e1cbb738e786a` |
| 21 | `theorem` | [orthogonalProjection_eq_self_iff](../../../../../mathematics/Topology/MetricTopology/Basic/Variant4f68e4688a639476318b71b2539a2f6a4d3b7ab5e1f5cf8d6de1065ddeb8c06c.lean/declarations/orthogonalprojection-eq-self-iff--c1573e89d784011b74954c8b.md) | 365 | `result-track:c1573e89d784011b74954c8bbac026b2b99a38cdc230f4d7e9c201d965731548` |
| 22 | `theorem` | [orthogonalProjection_mem_subspace_eq_self](../../../../../mathematics/Topology/MetricTopology/Basic/Variant4f68e4688a639476318b71b2539a2f6a4d3b7ab5e1f5cf8d6de1065ddeb8c06c.lean/declarations/orthogonalprojection-mem-subspace-eq-self--919136c63984a38f3319f8aa.md) | 377 | `result-track:919136c63984a38f3319f8aab18ce53ae0fb6c482ed0054fed8e9acd429a5ab2` |
| 23 | `theorem` | [orthogonalProjection_orthogonalProjection](../../../../../mathematics/Topology/MetricTopology/Basic/Variant4f68e4688a639476318b71b2539a2f6a4d3b7ab5e1f5cf8d6de1065ddeb8c06c.lean/declarations/orthogonalprojection-orthogonalprojection--16cb95243f17a8cb7fd76cd8.md) | 386 | `result-track:16cb95243f17a8cb7fd76cd8460b1809b622724eca34ec3f47135676f2526aa6` |
| 24 | `theorem` | [eq_orthogonalProjection_of_eq_subspace](../../../../../mathematics/Topology/MetricTopology/Basic/Variant4f68e4688a639476318b71b2539a2f6a4d3b7ab5e1f5cf8d6de1065ddeb8c06c.lean/declarations/eq-orthogonalprojection-of-eq-subspace--74d39e6f3b039bed677053fa.md) | 394 | `result-track:74d39e6f3b039bed677053fa86e110981b5573ce5cf35f0e8fe09855664e03da` |
| 25 | `theorem` | [dist_orthogonalProjection_eq_zero_iff](../../../../../mathematics/Topology/MetricTopology/Basic/Variant4f68e4688a639476318b71b2539a2f6a4d3b7ab5e1f5cf8d6de1065ddeb8c06c.lean/declarations/dist-orthogonalprojection-eq-zero-iff--35e0b82124e9223000900d4c.md) | 402 | `result-track:35e0b82124e9223000900d4c3ee3edba7a6ce9e85cc1145689f10ce264ef2cd9` |
| 26 | `theorem` | [dist_orthogonalProjection_ne_zero_of_not_mem](../../../../../mathematics/Topology/MetricTopology/Basic/Variant4f68e4688a639476318b71b2539a2f6a4d3b7ab5e1f5cf8d6de1065ddeb8c06c.lean/declarations/dist-orthogonalprojection-ne-zero-of-not-mem--84df06219fb4377fc82b503c.md) | 410 | `result-track:84df06219fb4377fc82b503ca0806ee5ea0cc44bce74cd52cc6e3032dfadc490` |
| 27 | `theorem` | [orthogonalProjection_vsub_mem_direction_orthogonal](../../../../../mathematics/Topology/MetricTopology/Basic/Variant4f68e4688a639476318b71b2539a2f6a4d3b7ab5e1f5cf8d6de1065ddeb8c06c.lean/declarations/orthogonalprojection-vsub-mem-direction-orthogonal--06e1a9fce3f9ee53a142a2a2.md) | 418 | `result-track:06e1a9fce3f9ee53a142a2a228fa1e03abb3d5063bb28466d5e7a7e4da5a051e` |
| 28 | `theorem` | [vsub_orthogonalProjection_mem_direction_orthogonal](../../../../../mathematics/Topology/MetricTopology/Basic/Variant4f68e4688a639476318b71b2539a2f6a4d3b7ab5e1f5cf8d6de1065ddeb8c06c.lean/declarations/vsub-orthogonalprojection-mem-direction-orthogonal--466fed8165a62cf5b31e9e49.md) | 426 | `result-track:466fed8165a62cf5b31e9e498b970b787c29423ccbe1b5a4821ae34a2a41fe2f` |
| 29 | `theorem` | [orthogonalProjection_vsub_orthogonalProjection](../../../../../mathematics/Topology/MetricTopology/Basic/Variant4f68e4688a639476318b71b2539a2f6a4d3b7ab5e1f5cf8d6de1065ddeb8c06c.lean/declarations/orthogonalprojection-vsub-orthogonalprojection--0fca7aab7da3182fd2958070.md) | 434 | `result-track:0fca7aab7da3182fd2958070bc4be496a1ca2f094dc6be70e96733267699cd43` |
| 30 | `theorem` | [orthogonalProjection_vadd_eq_self](../../../../../mathematics/Topology/MetricTopology/Basic/Variant4f68e4688a639476318b71b2539a2f6a4d3b7ab5e1f5cf8d6de1065ddeb8c06c.lean/declarations/orthogonalprojection-vadd-eq-self--a826fc9bfe075fa30dab2054.md) | 446 | `result-track:a826fc9bfe075fa30dab2054eb1d060693610782cf865ada5a8322cf7fd7d500` |
| 31 | `theorem` | [orthogonalProjection_vadd_smul_vsub_orthogonalProjection](../../../../../mathematics/Topology/MetricTopology/Basic/Variant4f68e4688a639476318b71b2539a2f6a4d3b7ab5e1f5cf8d6de1065ddeb8c06c.lean/declarations/orthogonalprojection-vadd-smul-vsub-orthogonalprojection--43399c384ba1572d0766edb6.md) | 461 | `result-track:43399c384ba1572d0766edb62322d33902fc75bff3482699cbdb3fc74db35323` |
| 32 | `theorem` | [dist_sq_eq_dist_orthogonalProjection_sq_add_dist_orthogonalProjection_sq](../../../../../mathematics/Topology/MetricTopology/Basic/Variant4f68e4688a639476318b71b2539a2f6a4d3b7ab5e1f5cf8d6de1065ddeb8c06c.lean/declarations/dist-sq-eq-dist-orthogonalprojection-sq-add-dist-orthogonalprojection-sq--b41f4ee5f0890d41a955cc5e.md) | 471 | `result-track:b41f4ee5f0890d41a955cc5e2a6c964497c928b95ca7efbbde6a66bc426dd8d0` |
| 33 | `theorem` | [dist_sq_smul_orthogonal_vadd_smul_orthogonal_vadd](../../../../../mathematics/Topology/MetricTopology/Basic/Variant4f68e4688a639476318b71b2539a2f6a4d3b7ab5e1f5cf8d6de1065ddeb8c06c.lean/declarations/dist-sq-smul-orthogonal-vadd-smul-orthogonal-vadd--8dd00ebf78950dfd035d0961.md) | 487 | `result-track:8dd00ebf78950dfd035d09614189f4c0649cef4ae4c352e3b2379b1df5c38647` |
| 34 | `def` | [reflection](../../../../../mathematics/Topology/MetricTopology/Basic/Variant4f68e4688a639476318b71b2539a2f6a4d3b7ab5e1f5cf8d6de1065ddeb8c06c.lean/declarations/reflection--2224d203baa89f75c13b3039.md) | 513 | `declaration-track:2224d203baa89f75c13b303959776d6cfb559ae502d234d60c2356f2675c9ffd` |
| 35 | `theorem` | [reflection_apply](../../../../../mathematics/Topology/MetricTopology/Basic/Variant4f68e4688a639476318b71b2539a2f6a4d3b7ab5e1f5cf8d6de1065ddeb8c06c.lean/declarations/reflection-apply--9151ec62f78f49e96b387809.md) | 533 | `result-track:9151ec62f78f49e96b387809c2dcda53a435efa2161eec566db9a69275caf628` |
| 36 | `theorem` | [eq_reflection_of_eq_subspace](../../../../../mathematics/Topology/MetricTopology/Basic/Variant4f68e4688a639476318b71b2539a2f6a4d3b7ab5e1f5cf8d6de1065ddeb8c06c.lean/declarations/eq-reflection-of-eq-subspace--3997f0131daf3a5e9aa750af.md) | 538 | `result-track:3997f0131daf3a5e9aa750af2b621bfb0cb28a0364066d35db7ecba8d9eb658b` |
| 37 | `theorem` | [reflection_reflection](../../../../../mathematics/Topology/MetricTopology/Basic/Variant4f68e4688a639476318b71b2539a2f6a4d3b7ab5e1f5cf8d6de1065ddeb8c06c.lean/declarations/reflection-reflection--b510b7d4f24b62c5c45e1bb7.md) | 547 | `result-track:b510b7d4f24b62c5c45e1bb71c48db9409e7ee41fa4c365db5228b5da390fd8b` |
| 38 | `theorem` | [reflection_symm](../../../../../mathematics/Topology/MetricTopology/Basic/Variant4f68e4688a639476318b71b2539a2f6a4d3b7ab5e1f5cf8d6de1065ddeb8c06c.lean/declarations/reflection-symm--c0ab4c9ead4b3a33a2ba8f93.md) | 559 | `result-track:c0ab4c9ead4b3a33a2ba8f930209304c6d95a6475ca101112b70c0a3f428fb7b` |
| 39 | `theorem` | [reflection_involutive](../../../../../mathematics/Topology/MetricTopology/Basic/Variant4f68e4688a639476318b71b2539a2f6a4d3b7ab5e1f5cf8d6de1065ddeb8c06c.lean/declarations/reflection-involutive--cf71d9d60fb0d316afe72f5c.md) | 567 | `result-track:cf71d9d60fb0d316afe72f5c6a441c1e4970fb38a8e7333631006f1d749abd14` |
| 40 | `theorem` | [reflection_eq_self_iff](../../../../../mathematics/Topology/MetricTopology/Basic/Variant4f68e4688a639476318b71b2539a2f6a4d3b7ab5e1f5cf8d6de1065ddeb8c06c.lean/declarations/reflection-eq-self-iff--b0295c8fc0ff7eff7e802115.md) | 573 | `result-track:b0295c8fc0ff7eff7e802115d3f6bdda04e255e03afb54f2f52eb7d9fbd06981` |
| 41 | `theorem` | [reflection_eq_iff_orthogonalProjection_eq](../../../../../mathematics/Topology/MetricTopology/Basic/Variant4f68e4688a639476318b71b2539a2f6a4d3b7ab5e1f5cf8d6de1065ddeb8c06c.lean/declarations/reflection-eq-iff-orthogonalprojection-eq--2689caed906c12ddb334711c.md) | 589 | `result-track:2689caed906c12ddb334711c11b8f209801b100fdc9e603ea8b365d910f1391d` |
| 42 | `theorem` | [dist_reflection](../../../../../mathematics/Topology/MetricTopology/Basic/Variant4f68e4688a639476318b71b2539a2f6a4d3b7ab5e1f5cf8d6de1065ddeb8c06c.lean/declarations/dist-reflection--451a8146226210860a34038c.md) | 608 | `result-track:451a8146226210860a34038cf528542c7e3b1ac6bdbcf7b2b1317695fd93bab5` |
| 43 | `theorem` | [dist_reflection_eq_of_mem](../../../../../mathematics/Topology/MetricTopology/Basic/Variant4f68e4688a639476318b71b2539a2f6a4d3b7ab5e1f5cf8d6de1065ddeb8c06c.lean/declarations/dist-reflection-eq-of-mem--36b9f3499db2deadfd69c9c6.md) | 616 | `result-track:36b9f3499db2deadfd69c9c652e97abbbcb9818800ad551144bb7b4aae477a73` |
| 44 | `theorem` | [reflection_mem_of_le_of_mem](../../../../../mathematics/Topology/MetricTopology/Basic/Variant4f68e4688a639476318b71b2539a2f6a4d3b7ab5e1f5cf8d6de1065ddeb8c06c.lean/declarations/reflection-mem-of-le-of-mem--b3f63e6af2a25b0800d348c4.md) | 626 | `result-track:b3f63e6af2a25b0800d348c412ef3882ceb47d71b1c3154cac8a0af76196269b` |
| 45 | `theorem` | [reflection_orthogonal_vadd](../../../../../mathematics/Topology/MetricTopology/Basic/Variant4f68e4688a639476318b71b2539a2f6a4d3b7ab5e1f5cf8d6de1065ddeb8c06c.lean/declarations/reflection-orthogonal-vadd--13c38b0aeca431c5f3e61227.md) | 636 | `result-track:13c38b0aeca431c5f3e61227f9da206e43fac4f453397115d2be8a484fbab6a8` |
| 46 | `theorem` | [reflection_vadd_smul_vsub_orthogonalProjection](../../../../../mathematics/Topology/MetricTopology/Basic/Variant4f68e4688a639476318b71b2539a2f6a4d3b7ab5e1f5cf8d6de1065ddeb8c06c.lean/declarations/reflection-vadd-smul-vsub-orthogonalprojection--9cc43d14dc4e76f83842a9e3.md) | 647 | `result-track:9cc43d14dc4e76f83842a9e34532a0cadd04626f81d386d385e01b4be2bc6ce8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
