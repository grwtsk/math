# Verification target: GRWTSK.Topology.MetricTopology.MulAction.Variant4b8bcc2e83d882c53b9b27cf9f9f9161875d1cdbc0b04341ac24551cbe09b04e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b3077e85faf1a0225b540ec0952c6a6ed11684d6",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/MulAction/Variant4b8bcc2e83d882c53b9b27cf9f9f9161875d1cdbc0b04341ac24551cbe09b04e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/MetricTopology/MulAction/Variant4b8bcc2e83d882c53b9b27cf9f9f9161875d1cdbc0b04341ac24551cbe09b04e.lean/index.md) · [Full source](../../../../../mathematics/Topology/MetricTopology/MulAction/Variant4b8bcc2e83d882c53b9b27cf9f9f9161875d1cdbc0b04341ac24551cbe09b04e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b3077e85faf1a0225b540ec0952c6a6ed11684d6`.

Source path: `GRWTSK/Topology/MetricTopology/MulAction/Variant4b8bcc2e83d882c53b9b27cf9f9f9161875d1cdbc0b04341ac24551cbe09b04e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/MulAction/Variant4b8bcc2e83d882c53b9b27cf9f9f9161875d1cdbc0b04341ac24551cbe09b04e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Normed.Field.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.ENNReal.Action` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.UniformMulAction` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.MetricSpace.Algebra` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [norm_smul_le](../../../../../mathematics/Topology/MetricTopology/MulAction/Variant4b8bcc2e83d882c53b9b27cf9f9f9161875d1cdbc0b04341ac24551cbe09b04e.lean/declarations/norm-smul-le--5a5bfc57c7fd7fb04feb6d85.md) | 30 | `result-track:5a5bfc57c7fd7fb04feb6d858c270acc7b0e83c966a2f95c79fba0a5df59f8f6` |
| 2 | `theorem` | [nnnorm_smul_le](../../../../../mathematics/Topology/MetricTopology/MulAction/Variant4b8bcc2e83d882c53b9b27cf9f9f9161875d1cdbc0b04341ac24551cbe09b04e.lean/declarations/nnnorm-smul-le--7d1afc8c7f56ecc737ec3fa2.md) | 34 | `result-track:7d1afc8c7f56ecc737ec3fa25d4b4c7fa5ea79e4545b4c8e616bc0e746402ae0` |
| 3 | `lemma` | [enorm_smul_le](../../../../../mathematics/Topology/MetricTopology/MulAction/Variant4b8bcc2e83d882c53b9b27cf9f9f9161875d1cdbc0b04341ac24551cbe09b04e.lean/declarations/enorm-smul-le--ef266cf6b46ba7ee9b0c6d54.md) | 38 | `result-track:ef266cf6b46ba7ee9b0c6d542624409f40d7bced5a1923d991e8f472b00bcb32` |
| 4 | `theorem` | [dist_smul_le](../../../../../mathematics/Topology/MetricTopology/MulAction/Variant4b8bcc2e83d882c53b9b27cf9f9f9161875d1cdbc0b04341ac24551cbe09b04e.lean/declarations/dist-smul-le--21edb704dcd4a99a2c30c321.md) | 41 | `result-track:21edb704dcd4a99a2c30c321d3bdc23737b17c33894e318cea2080e388ed6390` |
| 5 | `theorem` | [nndist_smul_le](../../../../../mathematics/Topology/MetricTopology/MulAction/Variant4b8bcc2e83d882c53b9b27cf9f9f9161875d1cdbc0b04341ac24551cbe09b04e.lean/declarations/nndist-smul-le--26f5f8759072ba39a6ce7b6f.md) | 44 | `result-track:26f5f8759072ba39a6ce7b6f8335c702a17273e2c9eb806d6637b0cd7003d2f5` |
| 6 | `theorem` | [lipschitzWith_smul](../../../../../mathematics/Topology/MetricTopology/MulAction/Variant4b8bcc2e83d882c53b9b27cf9f9f9161875d1cdbc0b04341ac24551cbe09b04e.lean/declarations/lipschitzwith-smul--e2052968415578cdd90f870a.md) | 47 | `result-track:e2052968415578cdd90f870a3628ceb3081c963bdc4f5b73e165ca13ae703146` |
| 7 | `theorem` | [edist_smul_le](../../../../../mathematics/Topology/MetricTopology/MulAction/Variant4b8bcc2e83d882c53b9b27cf9f9f9161875d1cdbc0b04341ac24551cbe09b04e.lean/declarations/edist-smul-le--0e968ea7d9c8c3b537f19198.md) | 50 | `result-track:0e968ea7d9c8c3b537f19198aec0ae73ad7ba78267e955564fee133f0de7c6ae` |
| 8 | `instance` | [NonUnitalSeminormedRing.isBoundedSMul](../../../../../mathematics/Topology/MetricTopology/MulAction/Variant4b8bcc2e83d882c53b9b27cf9f9f9161875d1cdbc0b04341ac24551cbe09b04e.lean/declarations/nonunitalseminormedring-isboundedsmul--07ef7ebd0e1d0e3b0345f1e6.md) | 56 | `declaration-track:07ef7ebd0e1d0e3b0345f1e6628344271e0bd28cd0b59056379cfc4336db100d` |
| 9 | `instance` | [NonUnitalSeminormedRing.isBoundedSMulOpposite](../../../../../mathematics/Topology/MetricTopology/MulAction/Variant4b8bcc2e83d882c53b9b27cf9f9f9161875d1cdbc0b04341ac24551cbe09b04e.lean/declarations/nonunitalseminormedring-isboundedsmulopposite--db86bb11b45e7a84b8b686f0.md) | 62 | `declaration-track:db86bb11b45e7a84b8b686f01d0a986731431c09090c6dcd28ed1bfdc120429c` |
| 10 | `theorem` | [IsBoundedSMul.of_norm_smul_le](../../../../../mathematics/Topology/MetricTopology/MulAction/Variant4b8bcc2e83d882c53b9b27cf9f9f9161875d1cdbc0b04341ac24551cbe09b04e.lean/declarations/isboundedsmul-of-norm-smul-le--2ce63ab4d50eed1342689ee5.md) | 73 | `result-track:2ce63ab4d50eed1342689ee5e30da1393e923d4d0d6f455a4bb26f516160718d` |
| 11 | `theorem` | [IsBoundedSMul.of_enorm_smul_le](../../../../../mathematics/Topology/MetricTopology/MulAction/Variant4b8bcc2e83d882c53b9b27cf9f9f9161875d1cdbc0b04341ac24551cbe09b04e.lean/declarations/isboundedsmul-of-enorm-smul-le--4b31a5c20651fd616bc08b3c.md) | 78 | `result-track:4b31a5c20651fd616bc08b3ce32f71ea9aa0653d5d190e938b7d8c3494f1ab8f` |
| 12 | `theorem` | [IsBoundedSMul.of_nnnorm_smul_le](../../../../../mathematics/Topology/MetricTopology/MulAction/Variant4b8bcc2e83d882c53b9b27cf9f9f9161875d1cdbc0b04341ac24551cbe09b04e.lean/declarations/isboundedsmul-of-nnnorm-smul-le--b508f8bb59d75c5cdc86b045.md) | 85 | `result-track:b508f8bb59d75c5cdc86b045f40492ac3b82650993f504b374c27b67567c8490` |
| 13 | `class` | [NormSMulClass](../../../../../mathematics/Topology/MetricTopology/MulAction/Variant4b8bcc2e83d882c53b9b27cf9f9f9161875d1cdbc0b04341ac24551cbe09b04e.lean/declarations/normsmulclass--1b6e42f30839a7983d358b42.md) | 97 | `declaration-track:1b6e42f30839a7983d358b42fa0bdd698a5b2d05858a234c7be814ba1cf2e1fc` |
| 14 | `lemma` | [norm_smul](../../../../../mathematics/Topology/MetricTopology/MulAction/Variant4b8bcc2e83d882c53b9b27cf9f9f9161875d1cdbc0b04341ac24551cbe09b04e.lean/declarations/norm-smul--e53ba8746ce89f7a4bf55d63.md) | 100 | `result-track:e53ba8746ce89f7a4bf55d63676ab10b7dd2350e25858d4929ab6b2522129e5e` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/MulAction/Variant4b8bcc2e83d882c53b9b27cf9f9f9161875d1cdbc0b04341ac24551cbe09b04e.lean/declarations/instance--613b431a47f3d96fb8c77602.md) | 104 | `declaration-track:613b431a47f3d96fb8c7760256d5cfd2ee5cbb2349b1a697c42570c30284cd9a` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/MulAction/Variant4b8bcc2e83d882c53b9b27cf9f9f9161875d1cdbc0b04341ac24551cbe09b04e.lean/declarations/instance--9788e5392947e7221e5f2045.md) | 108 | `declaration-track:9788e5392947e7221e5f204524c878912560a8c96a657e50f73243d193af61ff` |
| 17 | `theorem` | [NormSMulClass.of_nnnorm_smul](../../../../../mathematics/Topology/MetricTopology/MulAction/Variant4b8bcc2e83d882c53b9b27cf9f9f9161875d1cdbc0b04341ac24551cbe09b04e.lean/declarations/normsmulclass-of-nnnorm-smul--adc0c194448bf7d788d06fe4.md) | 114 | `result-track:adc0c194448bf7d788d06fe44436abb03d16685ad27207655743bac8648ed6f4` |
| 18 | `theorem` | [nnnorm_smul](../../../../../mathematics/Topology/MetricTopology/MulAction/Variant4b8bcc2e83d882c53b9b27cf9f9f9161875d1cdbc0b04341ac24551cbe09b04e.lean/declarations/nnnorm-smul--fee602c5f58c89b87e7d83c4.md) | 120 | `result-track:fee602c5f58c89b87e7d83c4a298fda05867b0234dec6b682b8ea39f99b6a9cf` |
| 19 | `lemma` | [enorm_smul](../../../../../mathematics/Topology/MetricTopology/MulAction/Variant4b8bcc2e83d882c53b9b27cf9f9f9161875d1cdbc0b04341ac24551cbe09b04e.lean/declarations/enorm-smul--d6a2c0df8c7de2dfe33ef8c6.md) | 123 | `result-track:d6a2c0df8c7de2dfe33ef8c6093a6677fde20add3ffa8df8de5e2693733f358d` |
| 20 | `instance` | [Pi.instNormSMulClass](../../../../../mathematics/Topology/MetricTopology/MulAction/Variant4b8bcc2e83d882c53b9b27cf9f9f9161875d1cdbc0b04341ac24551cbe09b04e.lean/declarations/pi-instnormsmulclass--ea15051d5784d10164fbf87f.md) | 125 | `declaration-track:ea15051d5784d10164fbf87f8f4bc29533cc61ccb454d604b8dc6e5fe3bf00cf` |
| 21 | `instance` | [Prod.instNormSMulClass](../../../../../mathematics/Topology/MetricTopology/MulAction/Variant4b8bcc2e83d882c53b9b27cf9f9f9161875d1cdbc0b04341ac24551cbe09b04e.lean/declarations/prod-instnormsmulclass--d5980ba35fadd07dd5954b00.md) | 131 | `declaration-track:d5980ba35fadd07dd5954b005771871e5b8bd1ad2ccd90c6983f6799fd21f131` |
| 22 | `instance` | [ULift.instNormSMulClass](../../../../../mathematics/Topology/MetricTopology/MulAction/Variant4b8bcc2e83d882c53b9b27cf9f9f9161875d1cdbc0b04341ac24551cbe09b04e.lean/declarations/ulift-instnormsmulclass--06e367921b2499fd9ba04337.md) | 136 | `declaration-track:06e367921b2499fd9ba0433748e6679cd476056e0265ae19a2a0d3dd5afcc140` |
| 23 | `theorem` | [dist_smul₀](../../../../../mathematics/Topology/MetricTopology/MulAction/Variant4b8bcc2e83d882c53b9b27cf9f9f9161875d1cdbc0b04341ac24551cbe09b04e.lean/declarations/dist-smul--11ecb7df81fdef65ad38f94e.md) | 145 | `result-track:11ecb7df81fdef65ad38f94eccf7101bdd43131e95911b7ba7425f22bdd103da` |
| 24 | `theorem` | [nndist_smul₀](../../../../../mathematics/Topology/MetricTopology/MulAction/Variant4b8bcc2e83d882c53b9b27cf9f9f9161875d1cdbc0b04341ac24551cbe09b04e.lean/declarations/nndist-smul--c194e3a43a6eca192465e8b1.md) | 148 | `result-track:c194e3a43a6eca192465e8b129192ab4fca38f9871d8bbe9f72aea1f22556933` |
| 25 | `theorem` | [edist_smul₀](../../../../../mathematics/Topology/MetricTopology/MulAction/Variant4b8bcc2e83d882c53b9b27cf9f9f9161875d1cdbc0b04341ac24551cbe09b04e.lean/declarations/edist-smul--a75a3410cb629edf65e5562d.md) | 151 | `result-track:a75a3410cb629edf65e5562d7ff377b1f06694b8183a84b88f33dc6815a2dfa7` |
| 26 | `instance` | [NormSMulClass.toIsBoundedSMul](../../../../../mathematics/Topology/MetricTopology/MulAction/Variant4b8bcc2e83d882c53b9b27cf9f9f9161875d1cdbc0b04341ac24551cbe09b04e.lean/declarations/normsmulclass-toisboundedsmul--9465e38e5fc7e66a164c2840.md) | 154 | `declaration-track:9465e38e5fc7e66a164c28406c12c780c3290d7f875506cc0ff65c8fb80e5565` |
| 27 | `lemma` | [NormedDivisionRing.toNormSMulClass](../../../../../mathematics/Topology/MetricTopology/MulAction/Variant4b8bcc2e83d882c53b9b27cf9f9f9161875d1cdbc0b04341ac24551cbe09b04e.lean/declarations/normeddivisionring-tonormsmulclass--3dba1215e33116661da19d82.md) | 167 | `result-track:3dba1215e33116661da19d820f1b31cd0b36033234d507b5a9b2c0cbc10911ab` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
