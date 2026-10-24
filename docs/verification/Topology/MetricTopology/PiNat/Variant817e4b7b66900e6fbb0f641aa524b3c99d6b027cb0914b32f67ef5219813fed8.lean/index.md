# Verification target: GRWTSK.Topology.MetricTopology.PiNat.Variant817e4b7b66900e6fbb0f641aa524b3c99d6b027cb0914b32f67ef5219813fed8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c081c0178e9661d20c8edff18db3210ec4d7338d",
  "lexical_observation_count": 61,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/PiNat/Variant817e4b7b66900e6fbb0f641aa524b3c99d6b027cb0914b32f67ef5219813fed8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/MetricTopology/PiNat/Variant817e4b7b66900e6fbb0f641aa524b3c99d6b027cb0914b32f67ef5219813fed8.lean/index.md) · [Full source](../../../../../mathematics/Topology/MetricTopology/PiNat/Variant817e4b7b66900e6fbb0f641aa524b3c99d6b027cb0914b32f67ef5219813fed8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c081c0178e9661d20c8edff18db3210ec4d7338d`.

Source path: `GRWTSK/Topology/MetricTopology/PiNat/Variant817e4b7b66900e6fbb0f641aa524b3c99d6b027cb0914b32f67ef5219813fed8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/PiNat/Variant817e4b7b66900e6fbb0f641aa524b3c99d6b027cb0914b32f67ef5219813fed8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.MetricSpace.HausdorffDistance` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [apply_firstDiff_ne](../../../../../mathematics/Topology/MetricTopology/PiNat/Variant817e4b7b66900e6fbb0f641aa524b3c99d6b027cb0914b32f67ef5219813fed8.lean/declarations/apply-firstdiff-ne--b204e8c7319261edbd867d96.md) | 68 | `result-track:b204e8c7319261edbd867d9614328bbda7e3ce10ea0d613711e3abe42d6f54dd` |
| 2 | `theorem` | [apply_eq_of_lt_firstDiff](../../../../../mathematics/Topology/MetricTopology/PiNat/Variant817e4b7b66900e6fbb0f641aa524b3c99d6b027cb0914b32f67ef5219813fed8.lean/declarations/apply-eq-of-lt-firstdiff--326789e74c0ecff14ff490e1.md) | 74 | `result-track:326789e74c0ecff14ff490e1dbbc65ad5ad485d209e3ceab582c55be8271183d` |
| 3 | `theorem` | [firstDiff_comm](../../../../../mathematics/Topology/MetricTopology/PiNat/Variant817e4b7b66900e6fbb0f641aa524b3c99d6b027cb0914b32f67ef5219813fed8.lean/declarations/firstdiff-comm--91059f346901222a39f1c024.md) | 81 | `result-track:91059f346901222a39f1c024fe79c169cdfac5a1b499ded95f7b5aa0581a5b1e` |
| 4 | `theorem` | [min_firstDiff_le](../../../../../mathematics/Topology/MetricTopology/PiNat/Variant817e4b7b66900e6fbb0f641aa524b3c99d6b027cb0914b32f67ef5219813fed8.lean/declarations/min-firstdiff-le--aa8863d496229a38446ea5e0.md) | 85 | `result-track:aa8863d496229a38446ea5e0ae0851993e9ce20ff6024754677b6d4d8bd4d3ca` |
| 5 | `def` | [cylinder](../../../../../mathematics/Topology/MetricTopology/PiNat/Variant817e4b7b66900e6fbb0f641aa524b3c99d6b027cb0914b32f67ef5219813fed8.lean/declarations/cylinder--09fb62628dd3119b08c2aad4.md) | 100 | `declaration-track:09fb62628dd3119b08c2aad4efc30cc9492191dc84a37cb1ce47f6829a8a8a05` |
| 6 | `theorem` | [cylinder_eq_pi](../../../../../mathematics/Topology/MetricTopology/PiNat/Variant817e4b7b66900e6fbb0f641aa524b3c99d6b027cb0914b32f67ef5219813fed8.lean/declarations/cylinder-eq-pi--db9959836915280369e869d5.md) | 103 | `result-track:db9959836915280369e869d5460b5d7f1d895cee0e4cfaf03b5b20012f3e36b1` |
| 7 | `theorem` | [cylinder_zero](../../../../../mathematics/Topology/MetricTopology/PiNat/Variant817e4b7b66900e6fbb0f641aa524b3c99d6b027cb0914b32f67ef5219813fed8.lean/declarations/cylinder-zero--f8c406872427365facb999bd.md) | 109 | `result-track:f8c406872427365facb999bd24ffd003164de896e0dde8159db254edcbe01d50` |
| 8 | `theorem` | [cylinder_anti](../../../../../mathematics/Topology/MetricTopology/PiNat/Variant817e4b7b66900e6fbb0f641aa524b3c99d6b027cb0914b32f67ef5219813fed8.lean/declarations/cylinder-anti--bb34623b48efa20ea41b390d.md) | 111 | `result-track:bb34623b48efa20ea41b390d2d12364fc3baf73fe4ebd0232dfa7f4b9cb4d105` |
| 9 | `theorem` | [mem_cylinder_iff](../../../../../mathematics/Topology/MetricTopology/PiNat/Variant817e4b7b66900e6fbb0f641aa524b3c99d6b027cb0914b32f67ef5219813fed8.lean/declarations/mem-cylinder-iff--1d166c928f07175ca7e91047.md) | 115 | `result-track:1d166c928f07175ca7e910479913c5e8038bad8803e0bc369c6c93f348429295` |
| 10 | `theorem` | [self_mem_cylinder](../../../../../mathematics/Topology/MetricTopology/PiNat/Variant817e4b7b66900e6fbb0f641aa524b3c99d6b027cb0914b32f67ef5219813fed8.lean/declarations/self-mem-cylinder--b29c41d2dbc29e4a5901d19b.md) | 118 | `result-track:b29c41d2dbc29e4a5901d19bb5e4fabb4d154b37d7a948f1d84f630f9e680259` |
| 11 | `theorem` | [mem_cylinder_iff_eq](../../../../../mathematics/Topology/MetricTopology/PiNat/Variant817e4b7b66900e6fbb0f641aa524b3c99d6b027cb0914b32f67ef5219813fed8.lean/declarations/mem-cylinder-iff-eq--c90b038bc034de59a20889b4.md) | 120 | `result-track:c90b038bc034de59a20889b482cfba94e08163a5912b3314c31ca0a82bfc18aa` |
| 12 | `theorem` | [mem_cylinder_comm](../../../../../mathematics/Topology/MetricTopology/PiNat/Variant817e4b7b66900e6fbb0f641aa524b3c99d6b027cb0914b32f67ef5219813fed8.lean/declarations/mem-cylinder-comm--fb91b672f39e99c8e4a9b8c6.md) | 135 | `result-track:fb91b672f39e99c8e4a9b8c6fb7fe34853fbc7ad333a4f7d044e533f0a2ecdb2` |
| 13 | `theorem` | [mem_cylinder_iff_le_firstDiff](../../../../../mathematics/Topology/MetricTopology/PiNat/Variant817e4b7b66900e6fbb0f641aa524b3c99d6b027cb0914b32f67ef5219813fed8.lean/declarations/mem-cylinder-iff-le-firstdiff--425769feb10c6a02f83d874f.md) | 138 | `result-track:425769feb10c6a02f83d874f22df387d3d0d6937a20c0302d1b445a03b131b9e` |
| 14 | `theorem` | [mem_cylinder_firstDiff](../../../../../mathematics/Topology/MetricTopology/PiNat/Variant817e4b7b66900e6fbb0f641aa524b3c99d6b027cb0914b32f67ef5219813fed8.lean/declarations/mem-cylinder-firstdiff--e83b4f2bc51beee7a86a3b43.md) | 147 | `result-track:e83b4f2bc51beee7a86a3b43b496c89f3a09c8d174d51e7cd854d07cdc93ed7c` |
| 15 | `theorem` | [cylinder_eq_cylinder_of_le_firstDiff](../../../../../mathematics/Topology/MetricTopology/PiNat/Variant817e4b7b66900e6fbb0f641aa524b3c99d6b027cb0914b32f67ef5219813fed8.lean/declarations/cylinder-eq-cylinder-of-le-firstdiff--77c805cc4d1bda98be0f10bf.md) | 150 | `result-track:77c805cc4d1bda98be0f10bfee0438101a87d667645b01b5ef1f832435945b3d` |
| 16 | `theorem` | [iUnion_cylinder_update](../../../../../mathematics/Topology/MetricTopology/PiNat/Variant817e4b7b66900e6fbb0f641aa524b3c99d6b027cb0914b32f67ef5219813fed8.lean/declarations/iunion-cylinder-update--69af049c93fd2cd3c3aaf007.md) | 156 | `result-track:69af049c93fd2cd3c3aaf007d86313e07bc331d3a919e83f196b0c86bd92ef00` |
| 17 | `theorem` | [update_mem_cylinder](../../../../../mathematics/Topology/MetricTopology/PiNat/Variant817e4b7b66900e6fbb0f641aa524b3c99d6b027cb0914b32f67ef5219813fed8.lean/declarations/update-mem-cylinder--6f2961903d7b059c99f9cc81.md) | 169 | `result-track:6f2961903d7b059c99f9cc8193c64497b4581d88a351ac6baf15d741f040b341` |
| 18 | `def` | [res](../../../../../mathematics/Topology/MetricTopology/PiNat/Variant817e4b7b66900e6fbb0f641aa524b3c99d6b027cb0914b32f67ef5219813fed8.lean/declarations/res--68390a59f95aee14234e22dc.md) | 182 | `declaration-track:68390a59f95aee14234e22dc1da38538222f55fbb4a1f59ab7291139408e8f00` |
| 19 | `theorem` | [res_zero](../../../../../mathematics/Topology/MetricTopology/PiNat/Variant817e4b7b66900e6fbb0f641aa524b3c99d6b027cb0914b32f67ef5219813fed8.lean/declarations/res-zero--c31cfece13de2d42110f6c04.md) | 187 | `result-track:c31cfece13de2d42110f6c04f632e7dec708133c9e31020bb821b8fe3b55c588` |
| 20 | `theorem` | [res_succ](../../../../../mathematics/Topology/MetricTopology/PiNat/Variant817e4b7b66900e6fbb0f641aa524b3c99d6b027cb0914b32f67ef5219813fed8.lean/declarations/res-succ--a565ba51cbe3d5e6940c6393.md) | 191 | `result-track:a565ba51cbe3d5e6940c63933b7eab3eb55ed02af181d3732f40dfac3e1eca50` |
| 21 | `theorem` | [res_length](../../../../../mathematics/Topology/MetricTopology/PiNat/Variant817e4b7b66900e6fbb0f641aa524b3c99d6b027cb0914b32f67ef5219813fed8.lean/declarations/res-length--07a12283b525b95f4632e406.md) | 195 | `result-track:07a12283b525b95f4632e4060fdfb75eb8187610a3157a6e48fe35e3e7158d10` |
| 22 | `theorem` | [res_eq_res](../../../../../mathematics/Topology/MetricTopology/PiNat/Variant817e4b7b66900e6fbb0f641aa524b3c99d6b027cb0914b32f67ef5219813fed8.lean/declarations/res-eq-res--e860e0da334ca0d77d78baba.md) | 198 | `result-track:e860e0da334ca0d77d78baba60464c00b0da01ea8f0a10e8068b2265aeec0c6c` |
| 23 | `theorem` | [res_injective](../../../../../mathematics/Topology/MetricTopology/PiNat/Variant817e4b7b66900e6fbb0f641aa524b3c99d6b027cb0914b32f67ef5219813fed8.lean/declarations/res-injective--68ec5f38951f7a20ffb5380c.md) | 218 | `result-track:68ec5f38951f7a20ffb5380c2e6c78f8e311da9bf299cca8bfa468cdc3225ff7` |
| 24 | `theorem` | [cylinder_eq_res](../../../../../mathematics/Topology/MetricTopology/PiNat/Variant817e4b7b66900e6fbb0f641aa524b3c99d6b027cb0914b32f67ef5219813fed8.lean/declarations/cylinder-eq-res--8e49c3e368c196a50e24b50d.md) | 225 | `result-track:8e49c3e368c196a50e24b50d41b5a63c4efd5f51831b2da00b0c4dab4ee52f10` |
| 25 | `def` | [dist](../../../../../mathematics/Topology/MetricTopology/PiNat/Variant817e4b7b66900e6fbb0f641aa524b3c99d6b027cb0914b32f67ef5219813fed8.lean/declarations/dist--51f721352b806c9b0f211b50.md) | 246 | `declaration-track:51f721352b806c9b0f211b50fe3763d50f53d5391eaeeba7b6bd39c8ebe42938` |
| 26 | `theorem` | [dist_eq_of_ne](../../../../../mathematics/Topology/MetricTopology/PiNat/Variant817e4b7b66900e6fbb0f641aa524b3c99d6b027cb0914b32f67ef5219813fed8.lean/declarations/dist-eq-of-ne--78fd87143ae47a785ea7af91.md) | 251 | `result-track:78fd87143ae47a785ea7af91f86895960041329bf9e8c3966bec87090d9c419e` |
| 27 | `theorem` | [dist_self](../../../../../mathematics/Topology/MetricTopology/PiNat/Variant817e4b7b66900e6fbb0f641aa524b3c99d6b027cb0914b32f67ef5219813fed8.lean/declarations/dist-self--ee60454845e8613d6658b1c5.md) | 254 | `result-track:ee60454845e8613d6658b1c5408a9783fce674ebb3c6568af63b78b36ea4c641` |
| 28 | `theorem` | [dist_comm](../../../../../mathematics/Topology/MetricTopology/PiNat/Variant817e4b7b66900e6fbb0f641aa524b3c99d6b027cb0914b32f67ef5219813fed8.lean/declarations/dist-comm--9c1b9734e903d1ee25e0caf3.md) | 256 | `result-track:9c1b9734e903d1ee25e0caf380de6b1ecb5df555050260e7d644162d6f403802` |
| 29 | `theorem` | [dist_nonneg](../../../../../mathematics/Topology/MetricTopology/PiNat/Variant817e4b7b66900e6fbb0f641aa524b3c99d6b027cb0914b32f67ef5219813fed8.lean/declarations/dist-nonneg--6acd31cf4fcd1db538dd08f9.md) | 260 | `result-track:6acd31cf4fcd1db538dd08f946d9e88980427d97e3ed82bb8868744171b3f61d` |
| 30 | `theorem` | [dist_triangle_nonarch](../../../../../mathematics/Topology/MetricTopology/PiNat/Variant817e4b7b66900e6fbb0f641aa524b3c99d6b027cb0914b32f67ef5219813fed8.lean/declarations/dist-triangle-nonarch--267e2de3c5be961201f2cdd4.md) | 265 | `result-track:267e2de3c5be961201f2cdd429ebe44e1e44ae304c720c91c79d70981dd49ead` |
| 31 | `theorem` | [dist_triangle](../../../../../mathematics/Topology/MetricTopology/PiNat/Variant817e4b7b66900e6fbb0f641aa524b3c99d6b027cb0914b32f67ef5219813fed8.lean/declarations/dist-triangle--38bf9beba06535c2af056585.md) | 276 | `result-track:38bf9beba06535c2af056585920d413755b8355cf1acb65663d38204aca7349d` |
| 32 | `theorem` | [eq_of_dist_eq_zero](../../../../../mathematics/Topology/MetricTopology/PiNat/Variant817e4b7b66900e6fbb0f641aa524b3c99d6b027cb0914b32f67ef5219813fed8.lean/declarations/eq-of-dist-eq-zero--3e8b9488d00dc9708d353f4f.md) | 281 | `result-track:3e8b9488d00dc9708d353f4fe3349eb16e47cc9e5d085bd1a27e7e34f23412be` |
| 33 | `theorem` | [mem_cylinder_iff_dist_le](../../../../../mathematics/Topology/MetricTopology/PiNat/Variant817e4b7b66900e6fbb0f641aa524b3c99d6b027cb0914b32f67ef5219813fed8.lean/declarations/mem-cylinder-iff-dist-le--892a257535bfa5954eca513b.md) | 285 | `result-track:892a257535bfa5954eca513b39a6117e94160c1b3be87e58f63af5425f997550` |
| 34 | `theorem` | [apply_eq_of_dist_lt](../../../../../mathematics/Topology/MetricTopology/PiNat/Variant817e4b7b66900e6fbb0f641aa524b3c99d6b027cb0914b32f67ef5219813fed8.lean/declarations/apply-eq-of-dist-lt--2fec8611bc4a678233b97a3f.md) | 297 | `result-track:2fec8611bc4a678233b97a3fa10689407b9ea82315dbf7745d3240ba4e2d2a56` |
| 35 | `theorem` | [lipschitz_with_one_iff_forall_dist_image_le_of_mem_cylinder](../../../../../mathematics/Topology/MetricTopology/PiNat/Variant817e4b7b66900e6fbb0f641aa524b3c99d6b027cb0914b32f67ef5219813fed8.lean/declarations/lipschitz-with-one-iff-forall-dist-image-le-of-mem-cylinder--7a209bc3111b6e9d203fe6a2.md) | 308 | `result-track:7a209bc3111b6e9d203fe6a204350cb7d30e17b26ab576dbe39263f94e6375a4` |
| 36 | `theorem` | [isOpen_cylinder](../../../../../mathematics/Topology/MetricTopology/PiNat/Variant817e4b7b66900e6fbb0f641aa524b3c99d6b027cb0914b32f67ef5219813fed8.lean/declarations/isopen-cylinder--3dfb98e30496deab494c2eb7.md) | 328 | `result-track:3dfb98e30496deab494c2eb70577096407d72a325da5264095bd42786f1be5ab` |
| 37 | `theorem` | [isTopologicalBasis_cylinders](../../../../../mathematics/Topology/MetricTopology/PiNat/Variant817e4b7b66900e6fbb0f641aa524b3c99d6b027cb0914b32f67ef5219813fed8.lean/declarations/istopologicalbasis-cylinders--1c54a0113a7b45665a1f70d9.md) | 332 | `result-track:1c54a0113a7b45665a1f70d9f10271709901228770e2596465bcf52a49375ad0` |
| 38 | `theorem` | [isOpen_iff_dist](../../../../../mathematics/Topology/MetricTopology/PiNat/Variant817e4b7b66900e6fbb0f641aa524b3c99d6b027cb0914b32f67ef5219813fed8.lean/declarations/isopen-iff-dist--00a356152b5d155375e1c1db.md) | 356 | `result-track:00a356152b5d155375e1c1dbde5c672ac55e9c3843e0bc7ace7fc34078303210` |
| 39 | `def` | [metricSpace](../../../../../mathematics/Topology/MetricTopology/PiNat/Variant817e4b7b66900e6fbb0f641aa524b3c99d6b027cb0914b32f67ef5219813fed8.lean/declarations/metricspace--5bd4db81644e8bfd08bb32d8.md) | 381 | `declaration-track:5bd4db81644e8bfd08bb32d838fdee08032ec94c8e4598fb122eab9158a47ce9` |
| 40 | `def` | [metricSpaceOfDiscreteUniformity](../../../../../mathematics/Topology/MetricTopology/PiNat/Variant817e4b7b66900e6fbb0f641aa524b3c99d6b027cb0914b32f67ef5219813fed8.lean/declarations/metricspaceofdiscreteuniformity--7ca923f22fc6315f661a8441.md) | 388 | `declaration-track:7ca923f22fc6315f661a84417de003a634706e7c5b39591b2f3a3b3f374b389e` |
| 41 | `def` | [metricSpaceNatNat](../../../../../mathematics/Topology/MetricTopology/PiNat/Variant817e4b7b66900e6fbb0f641aa524b3c99d6b027cb0914b32f67ef5219813fed8.lean/declarations/metricspacenatnat--21225b1e29896792ff4b098e.md) | 423 | `declaration-track:21225b1e29896792ff4b098e5b8a52a9f5e3d2f802ae1857cfc30cdbed3c7efb` |
| 42 | `theorem` | [completeSpace](../../../../../mathematics/Topology/MetricTopology/PiNat/Variant817e4b7b66900e6fbb0f641aa524b3c99d6b027cb0914b32f67ef5219813fed8.lean/declarations/completespace--82a215b83805843506c0f935.md) | 428 | `result-track:82a215b83805843506c0f935333a0613ce73f57e8539c2850a52e09d6abd23fc` |
| 43 | `theorem` | [exists_disjoint_cylinder](../../../../../mathematics/Topology/MetricTopology/PiNat/Variant817e4b7b66900e6fbb0f641aa524b3c99d6b027cb0914b32f67ef5219813fed8.lean/declarations/exists-disjoint-cylinder--422d58c5e348e90cf2c86ae3.md) | 446 | `result-track:422d58c5e348e90cf2c86ae38db1b1828217137d3cb5a967e62f0cbb7711939f` |
| 44 | `def` | [shortestPrefixDiff](../../../../../mathematics/Topology/MetricTopology/PiNat/Variant817e4b7b66900e6fbb0f641aa524b3c99d6b027cb0914b32f67ef5219813fed8.lean/declarations/shortestprefixdiff--8ac26900ed69c0af7bb1a781.md) | 465 | `declaration-track:8ac26900ed69c0af7bb1a781f460c44c0eb9be3763deede27200084d11997687` |
| 45 | `theorem` | [firstDiff_lt_shortestPrefixDiff](../../../../../mathematics/Topology/MetricTopology/PiNat/Variant817e4b7b66900e6fbb0f641aa524b3c99d6b027cb0914b32f67ef5219813fed8.lean/declarations/firstdiff-lt-shortestprefixdiff--81efaa110cff738db16bc843.md) | 468 | `result-track:81efaa110cff738db16bc843cdc21118491b4a569999e77a48de21d8330d8e4a` |
| 46 | `theorem` | [shortestPrefixDiff_pos](../../../../../mathematics/Topology/MetricTopology/PiNat/Variant817e4b7b66900e6fbb0f641aa524b3c99d6b027cb0914b32f67ef5219813fed8.lean/declarations/shortestprefixdiff-pos--fcb89b2e207bddaa36e0358d.md) | 480 | `result-track:fcb89b2e207bddaa36e0358d7a738db83f4c311b5e8aa0b273edffe859e9fb67` |
| 47 | `def` | [longestPrefix](../../../../../mathematics/Topology/MetricTopology/PiNat/Variant817e4b7b66900e6fbb0f641aa524b3c99d6b027cb0914b32f67ef5219813fed8.lean/declarations/longestprefix--e2e2732032597993f03acc6d.md) | 488 | `declaration-track:e2e2732032597993f03acc6d9e242f15c4a073eb939d92a07cb60b61a9c2efc7` |
| 48 | `theorem` | [firstDiff_le_longestPrefix](../../../../../mathematics/Topology/MetricTopology/PiNat/Variant817e4b7b66900e6fbb0f641aa524b3c99d6b027cb0914b32f67ef5219813fed8.lean/declarations/firstdiff-le-longestprefix--7ad987d9cc9806fea807c5d5.md) | 491 | `result-track:7ad987d9cc9806fea807c5d538b3bcdba580c6b4933eecd1829ad910719a4121` |
| 49 | `theorem` | [inter_cylinder_longestPrefix_nonempty](../../../../../mathematics/Topology/MetricTopology/PiNat/Variant817e4b7b66900e6fbb0f641aa524b3c99d6b027cb0914b32f67ef5219813fed8.lean/declarations/inter-cylinder-longestprefix-nonempty--8a2d16a2fc162e49f4646732.md) | 497 | `result-track:8a2d16a2fc162e49f4646732651dde692e33380410a9bc1f56614b5c2e56b793` |
| 50 | `theorem` | [disjoint_cylinder_of_longestPrefix_lt](../../../../../mathematics/Topology/MetricTopology/PiNat/Variant817e4b7b66900e6fbb0f641aa524b3c99d6b027cb0914b32f67ef5219813fed8.lean/declarations/disjoint-cylinder-of-longestprefix-lt--0f3076cd19ea6bbecd5c4ca0.md) | 512 | `result-track:0f3076cd19ea6bbecd5c4ca01b0f61ee2816a54e71d73fa09889828e6a7b5dc4` |
| 51 | `theorem` | [cylinder_longestPrefix_eq_of_longestPrefix_lt_firstDiff](../../../../../mathematics/Topology/MetricTopology/PiNat/Variant817e4b7b66900e6fbb0f641aa524b3c99d6b027cb0914b32f67ef5219813fed8.lean/declarations/cylinder-longestprefix-eq-of-longestprefix-lt-firstdiff--8904b6aea9c32412ab4f0d8a.md) | 523 | `result-track:8904b6aea9c32412ab4f0d8a9f8a91be7da4b3349d964ba433a9e458c6040e3b` |
| 52 | `theorem` | [exists_lipschitz_retraction_of_isClosed](../../../../../mathematics/Topology/MetricTopology/PiNat/Variant817e4b7b66900e6fbb0f641aa524b3c99d6b027cb0914b32f67ef5219813fed8.lean/declarations/exists-lipschitz-retraction-of-isclosed--c922fe64d451aed6b41fc2a2.md) | 548 | `result-track:c922fe64d451aed6b41fc2a2f29b3af89e3d45075cf93acf8bceaaa9655ba23e` |
| 53 | `theorem` | [exists_retraction_of_isClosed](../../../../../mathematics/Topology/MetricTopology/PiNat/Variant817e4b7b66900e6fbb0f641aa524b3c99d6b027cb0914b32f67ef5219813fed8.lean/declarations/exists-retraction-of-isclosed--58818e9c351164bc14528c7d.md) | 652 | `result-track:58818e9c351164bc14528c7df7fbd9370870d66839efa9fd304c5ff628846b31` |
| 54 | `theorem` | [exists_retraction_subtype_of_isClosed](../../../../../mathematics/Topology/MetricTopology/PiNat/Variant817e4b7b66900e6fbb0f641aa524b3c99d6b027cb0914b32f67ef5219813fed8.lean/declarations/exists-retraction-subtype-of-isclosed--c034a34e95db9fd99239c4a5.md) | 657 | `result-track:c034a34e95db9fd99239c4a5b76bdf8432448bf2067197ca3d29803d0dd1172c` |
| 55 | `theorem` | [exists_nat_nat_continuous_surjective_of_completeSpace](../../../../../mathematics/Topology/MetricTopology/PiNat/Variant817e4b7b66900e6fbb0f641aa524b3c99d6b027cb0914b32f67ef5219813fed8.lean/declarations/exists-nat-nat-continuous-surjective-of-completespace--e0552eab5ebde8985df80960.md) | 673 | `result-track:e0552eab5ebde8985df8096037d974cc59cfd12bea967b5b67ed9aff86113b48` |
| 56 | `def` | [dist](../../../../../mathematics/Topology/MetricTopology/PiNat/Variant817e4b7b66900e6fbb0f641aa524b3c99d6b027cb0914b32f67ef5219813fed8.lean/declarations/dist--ba583f376bb46791c8e3489c.md) | 773 | `declaration-track:ba583f376bb46791c8e3489c91c380c14142c175a5a9731dfdb403cbacb45c45` |
| 57 | `theorem` | [dist_eq_tsum](../../../../../mathematics/Topology/MetricTopology/PiNat/Variant817e4b7b66900e6fbb0f641aa524b3c99d6b027cb0914b32f67ef5219813fed8.lean/declarations/dist-eq-tsum--c9b3501074bf2bc544fc3052.md) | 778 | `result-track:c9b3501074bf2bc544fc3052887e015f7ac7d26c121bf01c2ec7509e64883c6e` |
| 58 | `theorem` | [dist_summable](../../../../../mathematics/Topology/MetricTopology/PiNat/Variant817e4b7b66900e6fbb0f641aa524b3c99d6b027cb0914b32f67ef5219813fed8.lean/declarations/dist-summable--021052a5fb459c2c5feda0e8.md) | 782 | `result-track:021052a5fb459c2c5feda0e8684ce7f8d04c267b990f9866fb5d0a61202bccd8` |
| 59 | `theorem` | [min_dist_le_dist_pi](../../../../../mathematics/Topology/MetricTopology/PiNat/Variant817e4b7b66900e6fbb0f641aa524b3c99d6b027cb0914b32f67ef5219813fed8.lean/declarations/min-dist-le-dist-pi--7e12c1b49fb53708a12886e3.md) | 788 | `result-track:7e12c1b49fb53708a12886e3491474e4e6dac5c8197b39c501fbe46aa6b90d0c` |
| 60 | `theorem` | [dist_le_dist_pi_of_dist_lt](../../../../../mathematics/Topology/MetricTopology/PiNat/Variant817e4b7b66900e6fbb0f641aa524b3c99d6b027cb0914b32f67ef5219813fed8.lean/declarations/dist-le-dist-pi-of-dist-lt--61b125b477cfc7c5dd9879ea.md) | 792 | `result-track:61b125b477cfc7c5dd9879eab0637900b9cd5a077f0984f98bb5fd212e1cdfba` |
| 61 | `def` | [metricSpace](../../../../../mathematics/Topology/MetricTopology/PiNat/Variant817e4b7b66900e6fbb0f641aa524b3c99d6b027cb0914b32f67ef5219813fed8.lean/declarations/metricspace--3807c7301c80baa0dcd2fd71.md) | 804 | `declaration-track:3807c7301c80baa0dcd2fd711dcfaced5db72f6420862599da726fae387f1510` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
