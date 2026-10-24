# Verification target: GRWTSK.Topology.MetricTopology.Pointwise.Variantf0b0dc731a036867e39c95e44ffb710f733d462e76f7ba395f05018fa3f620ed

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8d5475f5b8aa812720c499ff5b0479122ce5f9ed",
  "lexical_observation_count": 47,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/Pointwise/Variantf0b0dc731a036867e39c95e44ffb710f733d462e76f7ba395f05018fa3f620ed.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/MetricTopology/Pointwise/Variantf0b0dc731a036867e39c95e44ffb710f733d462e76f7ba395f05018fa3f620ed.lean/index.md) · [Full source](../../../../../mathematics/Topology/MetricTopology/Pointwise/Variantf0b0dc731a036867e39c95e44ffb710f733d462e76f7ba395f05018fa3f620ed.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8d5475f5b8aa812720c499ff5b0479122ce5f9ed`.

Source path: `GRWTSK/Topology/MetricTopology/Pointwise/Variantf0b0dc731a036867e39c95e44ffb710f733d462e76f7ba395f05018fa3f620ed.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/Pointwise/Variantf0b0dc731a036867e39c95e44ffb710f733d462e76f7ba395f05018fa3f620ed.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Normed.Group.Pointwise` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.NormedSpace.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [ediam_smul_le](../../../../../mathematics/Topology/MetricTopology/Pointwise/Variantf0b0dc731a036867e39c95e44ffb710f733d462e76f7ba395f05018fa3f620ed.lean/declarations/ediam-smul-le--7e5f17ca3df700d5fbfd615b.md) | 40 | `result-track:7e5f17ca3df700d5fbfd615b17da0e8465f250c8ceb4682842acb442ecd34746` |
| 2 | `theorem` | [ediam_smul₀](../../../../../mathematics/Topology/MetricTopology/Pointwise/Variantf0b0dc731a036867e39c95e44ffb710f733d462e76f7ba395f05018fa3f620ed.lean/declarations/ediam-smul--7975916d8f6dcb527a300a15.md) | 52 | `result-track:7975916d8f6dcb527a300a15b4ccccfce77a58440c3af7ec0bf64c084c1db716` |
| 3 | `theorem` | [diam_smul₀](../../../../../mathematics/Topology/MetricTopology/Pointwise/Variantf0b0dc731a036867e39c95e44ffb710f733d462e76f7ba395f05018fa3f620ed.lean/declarations/diam-smul--703385cef64c707b48cca421.md) | 63 | `result-track:703385cef64c707b48cca421b0183bcb7099d6da7887c2ee2881fdee9bf84002` |
| 4 | `theorem` | [infEdist_smul₀](../../../../../mathematics/Topology/MetricTopology/Pointwise/Variantf0b0dc731a036867e39c95e44ffb710f733d462e76f7ba395f05018fa3f620ed.lean/declarations/infedist-smul--2fcbf18f7d5f502255465c0f.md) | 67 | `result-track:2fcbf18f7d5f502255465c0f3490dfab255e8c65824dbecb84233738de36fb87` |
| 5 | `theorem` | [infDist_smul₀](../../../../../mathematics/Topology/MetricTopology/Pointwise/Variantf0b0dc731a036867e39c95e44ffb710f733d462e76f7ba395f05018fa3f620ed.lean/declarations/infdist-smul--0f0d6e47287e30582adfcd7f.md) | 79 | `result-track:0f0d6e47287e30582adfcd7fd7aa8c0f22d91926bbde26cdd0e87c501b4a5898` |
| 6 | `theorem` | [smul_ball](../../../../../mathematics/Topology/MetricTopology/Pointwise/Variantf0b0dc731a036867e39c95e44ffb710f733d462e76f7ba395f05018fa3f620ed.lean/declarations/smul-ball--fec753402348fb109d06d11f.md) | 94 | `result-track:fec753402348fb109d06d11f9b750a661f29cf0a173be67e2e3645fea8536ef2` |
| 7 | `theorem` | [smul_unitBall](../../../../../mathematics/Topology/MetricTopology/Pointwise/Variantf0b0dc731a036867e39c95e44ffb710f733d462e76f7ba395f05018fa3f620ed.lean/declarations/smul-unitball--80c166626004d780a45f60b7.md) | 101 | `result-track:80c166626004d780a45f60b7f5fbbbddbea611b0b1bb0f31b2ea8ad65dd04f36` |
| 8 | `theorem` | [smul_sphere'](../../../../../mathematics/Topology/MetricTopology/Pointwise/Variantf0b0dc731a036867e39c95e44ffb710f733d462e76f7ba395f05018fa3f620ed.lean/declarations/smul-sphere--5f83739cfc2280f068ede1bf.md) | 105 | `result-track:5f83739cfc2280f068ede1bf25c2a553f87fe5db42e9c7c05837965dcd17e616` |
| 9 | `theorem` | [smul_closedBall'](../../../../../mathematics/Topology/MetricTopology/Pointwise/Variantf0b0dc731a036867e39c95e44ffb710f733d462e76f7ba395f05018fa3f620ed.lean/declarations/smul-closedball--637fdd577bbcb12b5c423afe.md) | 114 | `result-track:637fdd577bbcb12b5c423afee41094f94514c0b971842bef2e912960d49a099b` |
| 10 | `theorem` | [Metric.Bounded.smul₀](../../../../../mathematics/Topology/MetricTopology/Pointwise/Variantf0b0dc731a036867e39c95e44ffb710f733d462e76f7ba395f05018fa3f620ed.lean/declarations/metric-bounded-smul--cacf27f8556fba646bdf3574.md) | 121 | `result-track:cacf27f8556fba646bdf35747a8071632c754ff988e26572b9326610b04b1fc7` |
| 11 | `theorem` | [eventually_singleton_add_smul_subset](../../../../../mathematics/Topology/MetricTopology/Pointwise/Variantf0b0dc731a036867e39c95e44ffb710f733d462e76f7ba395f05018fa3f620ed.lean/declarations/eventually-singleton-add-smul-subset--895ee04d629f2ef4c9f254da.md) | 127 | `result-track:895ee04d629f2ef4c9f254da9d49dd55e30e46adca4852cf2badb6b40014d105` |
| 12 | `theorem` | [smul_unitBall_of_pos](../../../../../mathematics/Topology/MetricTopology/Pointwise/Variantf0b0dc731a036867e39c95e44ffb710f733d462e76f7ba395f05018fa3f620ed.lean/declarations/smul-unitball-of-pos--c83cc1aafaac91c902a621d0.md) | 152 | `result-track:c83cc1aafaac91c902a621d0f1f491a46c2e272c0380fecab90983d557b2195c` |
| 13 | `theorem` | [exists_dist_eq](../../../../../mathematics/Topology/MetricTopology/Pointwise/Variantf0b0dc731a036867e39c95e44ffb710f733d462e76f7ba395f05018fa3f620ed.lean/declarations/exists-dist-eq--a7c9d64f2bb5ab70504f4a90.md) | 157 | `result-track:a7c9d64f2bb5ab70504f4a90c61c4e92d839b2d15858fdd7192a002740bb5505` |
| 14 | `theorem` | [exists_dist_le_le](../../../../../mathematics/Topology/MetricTopology/Pointwise/Variantf0b0dc731a036867e39c95e44ffb710f733d462e76f7ba395f05018fa3f620ed.lean/declarations/exists-dist-le-le--b0833f878a345150fd92253d.md) | 165 | `result-track:b0833f878a345150fd92253d8a9b46bc39a367bc254efd2e400a4ff9e0055b10` |
| 15 | `theorem` | [exists_dist_le_lt](../../../../../mathematics/Topology/MetricTopology/Pointwise/Variantf0b0dc731a036867e39c95e44ffb710f733d462e76f7ba395f05018fa3f620ed.lean/declarations/exists-dist-le-lt--835293b0f0bbd5ae8f6153ba.md) | 180 | `result-track:835293b0f0bbd5ae8f6153ba63f00b20bc425a711ff5c4e5636457372d245447` |
| 16 | `theorem` | [exists_dist_lt_le](../../../../../mathematics/Topology/MetricTopology/Pointwise/Variantf0b0dc731a036867e39c95e44ffb710f733d462e76f7ba395f05018fa3f620ed.lean/declarations/exists-dist-lt-le--83aac803c32f7ddc4f57ffce.md) | 192 | `result-track:83aac803c32f7ddc4f57ffce00b622f35807085e67d266179b70c907437ffd4d` |
| 17 | `theorem` | [exists_dist_lt_lt](../../../../../mathematics/Topology/MetricTopology/Pointwise/Variantf0b0dc731a036867e39c95e44ffb710f733d462e76f7ba395f05018fa3f620ed.lean/declarations/exists-dist-lt-lt--849553c068a6ff664a391dc3.md) | 200 | `result-track:849553c068a6ff664a391dc3c7f06366a3072aea20563e0c2284e2e51f82548d` |
| 18 | `theorem` | [disjoint_ball_ball_iff](../../../../../mathematics/Topology/MetricTopology/Pointwise/Variantf0b0dc731a036867e39c95e44ffb710f733d462e76f7ba395f05018fa3f620ed.lean/declarations/disjoint-ball-ball-iff--5bc44bf7cc21217312aaa8c0.md) | 212 | `result-track:5bc44bf7cc21217312aaa8c0d0c8545ae563b8b2418d0ef7ebafd15eab3b5103` |
| 19 | `theorem` | [disjoint_ball_closedBall_iff](../../../../../mathematics/Topology/MetricTopology/Pointwise/Variantf0b0dc731a036867e39c95e44ffb710f733d462e76f7ba395f05018fa3f620ed.lean/declarations/disjoint-ball-closedball-iff--13c3863bb771e97e3bddbb49.md) | 222 | `result-track:13c3863bb771e97e3bddbb49cb385edecaf65bf7cecfc85a35a8898fa0bd1b81` |
| 20 | `theorem` | [disjoint_closedBall_ball_iff](../../../../../mathematics/Topology/MetricTopology/Pointwise/Variantf0b0dc731a036867e39c95e44ffb710f733d462e76f7ba395f05018fa3f620ed.lean/declarations/disjoint-closedball-ball-iff--72bd50fdccbc1a4d50c473ee.md) | 232 | `result-track:72bd50fdccbc1a4d50c473ee0bcb35cbb2f5cdcb4d420678eb8291db58e28bf0` |
| 21 | `theorem` | [disjoint_closedBall_closedBall_iff](../../../../../mathematics/Topology/MetricTopology/Pointwise/Variantf0b0dc731a036867e39c95e44ffb710f733d462e76f7ba395f05018fa3f620ed.lean/declarations/disjoint-closedball-closedball-iff--ec11e0a801db5a71639e40fc.md) | 237 | `result-track:ec11e0a801db5a71639e40fc0411ad185a271fa0b41f3866499086f1be6b0904` |
| 22 | `theorem` | [infEdist_thickening](../../../../../mathematics/Topology/MetricTopology/Pointwise/Variantf0b0dc731a036867e39c95e44ffb710f733d462e76f7ba395f05018fa3f620ed.lean/declarations/infedist-thickening--396bd7511f7e0d5e30db6074.md) | 249 | `result-track:396bd7511f7e0d5e30db607429a60774a3e95829341ccdfc3b8d08bd2fd0c057` |
| 23 | `theorem` | [thickening_thickening](../../../../../mathematics/Topology/MetricTopology/Pointwise/Variantf0b0dc731a036867e39c95e44ffb710f733d462e76f7ba395f05018fa3f620ed.lean/declarations/thickening-thickening--1894c749d3831da6c7cfc877.md) | 274 | `result-track:1894c749d3831da6c7cfc877e2559053981a5a9ce90cfadf12244a3e76f33310` |
| 24 | `theorem` | [cthickening_thickening](../../../../../mathematics/Topology/MetricTopology/Pointwise/Variantf0b0dc731a036867e39c95e44ffb710f733d462e76f7ba395f05018fa3f620ed.lean/declarations/cthickening-thickening--1c159263e7cd8d8027538812.md) | 285 | `result-track:1c159263e7cd8d8027538812570410f6060458f8f718aa8d29b9f2cec38b2434` |
| 25 | `theorem` | [closure_thickening](../../../../../mathematics/Topology/MetricTopology/Pointwise/Variantf0b0dc731a036867e39c95e44ffb710f733d462e76f7ba395f05018fa3f620ed.lean/declarations/closure-thickening--2ee1b2fa90b027f5e38cf432.md) | 294 | `result-track:2ee1b2fa90b027f5e38cf432c5f80e855cc2c00efab4cbc9e5944f070b4eff88` |
| 26 | `theorem` | [infEdist_cthickening](../../../../../mathematics/Topology/MetricTopology/Pointwise/Variantf0b0dc731a036867e39c95e44ffb710f733d462e76f7ba395f05018fa3f620ed.lean/declarations/infedist-cthickening--95b98a031e6a54fb99a14b15.md) | 300 | `result-track:95b98a031e6a54fb99a14b15210dfdccdcc33788e264011dd4e21cd5c66b4edc` |
| 27 | `theorem` | [thickening_cthickening](../../../../../mathematics/Topology/MetricTopology/Pointwise/Variantf0b0dc731a036867e39c95e44ffb710f733d462e76f7ba395f05018fa3f620ed.lean/declarations/thickening-cthickening--e5451ef1cafd7f698b2ad144.md) | 308 | `result-track:e5451ef1cafd7f698b2ad144ad561163ee831edbfb4fb1f816fdf28c68897110` |
| 28 | `theorem` | [cthickening_cthickening](../../../../../mathematics/Topology/MetricTopology/Pointwise/Variantf0b0dc731a036867e39c95e44ffb710f733d462e76f7ba395f05018fa3f620ed.lean/declarations/cthickening-cthickening--31e0015169f5f04a91e89062.md) | 316 | `result-track:31e0015169f5f04a91e890623683ebc14e3170b57095ad38a6d9f4116ca779e1` |
| 29 | `theorem` | [thickening_ball](../../../../../mathematics/Topology/MetricTopology/Pointwise/Variantf0b0dc731a036867e39c95e44ffb710f733d462e76f7ba395f05018fa3f620ed.lean/declarations/thickening-ball--743898c8ddccbd378a6daa00.md) | 324 | `result-track:743898c8ddccbd378a6daa008d4e77f484ecde1d68a089d715ddba92316db010` |
| 30 | `theorem` | [thickening_closedBall](../../../../../mathematics/Topology/MetricTopology/Pointwise/Variantf0b0dc731a036867e39c95e44ffb710f733d462e76f7ba395f05018fa3f620ed.lean/declarations/thickening-closedball--b80227ba04c73229c076f644.md) | 330 | `result-track:b80227ba04c73229c076f644eb29f5de168c704cfdfb71da50403268b7bbedbf` |
| 31 | `theorem` | [cthickening_ball](../../../../../mathematics/Topology/MetricTopology/Pointwise/Variantf0b0dc731a036867e39c95e44ffb710f733d462e76f7ba395f05018fa3f620ed.lean/declarations/cthickening-ball--70ba815c68624db893d17eaf.md) | 336 | `result-track:70ba815c68624db893d17eaf5aeff784fa2636bce884bcf47bd1a68cd4cf4f00` |
| 32 | `theorem` | [cthickening_closedBall](../../../../../mathematics/Topology/MetricTopology/Pointwise/Variantf0b0dc731a036867e39c95e44ffb710f733d462e76f7ba395f05018fa3f620ed.lean/declarations/cthickening-closedball--df0447ae59870076a38d3fd3.md) | 343 | `result-track:df0447ae59870076a38d3fd3c6d513ac3d5d4dc3a345823f7c0f5fc50c028b04` |
| 33 | `theorem` | [ball_add_ball](../../../../../mathematics/Topology/MetricTopology/Pointwise/Variantf0b0dc731a036867e39c95e44ffb710f733d462e76f7ba395f05018fa3f620ed.lean/declarations/ball-add-ball--0a1efa9780498b620bd44eee.md) | 349 | `result-track:0a1efa9780498b620bd44eeec55075aae7fa7d203a3b296516f16d7b38595432` |
| 34 | `theorem` | [ball_sub_ball](../../../../../mathematics/Topology/MetricTopology/Pointwise/Variantf0b0dc731a036867e39c95e44ffb710f733d462e76f7ba395f05018fa3f620ed.lean/declarations/ball-sub-ball--9c52606a642945a0f0e35a11.md) | 354 | `result-track:9c52606a642945a0f0e35a1133b9a277442fb3e604259fbf7b09f94b7194415d` |
| 35 | `theorem` | [ball_add_closedBall](../../../../../mathematics/Topology/MetricTopology/Pointwise/Variantf0b0dc731a036867e39c95e44ffb710f733d462e76f7ba395f05018fa3f620ed.lean/declarations/ball-add-closedball--ee47b6837fe1a8c023fc81bc.md) | 359 | `result-track:ee47b6837fe1a8c023fc81bcb1a17c38cb589ba7e88c75be3a01535cf7983d59` |
| 36 | `theorem` | [ball_sub_closedBall](../../../../../mathematics/Topology/MetricTopology/Pointwise/Variantf0b0dc731a036867e39c95e44ffb710f733d462e76f7ba395f05018fa3f620ed.lean/declarations/ball-sub-closedball--3a4e7592226cbc8a4ad48e8a.md) | 364 | `result-track:3a4e7592226cbc8a4ad48e8a2bc420e80e509a25a5176f9c3cdeb6f60e712be9` |
| 37 | `theorem` | [closedBall_add_ball](../../../../../mathematics/Topology/MetricTopology/Pointwise/Variantf0b0dc731a036867e39c95e44ffb710f733d462e76f7ba395f05018fa3f620ed.lean/declarations/closedball-add-ball--d7b472c4e8c285c431213fff.md) | 369 | `result-track:d7b472c4e8c285c431213fff57ae8997bb372ce721e93f386a8db65aff1d3d82` |
| 38 | `theorem` | [closedBall_sub_ball](../../../../../mathematics/Topology/MetricTopology/Pointwise/Variantf0b0dc731a036867e39c95e44ffb710f733d462e76f7ba395f05018fa3f620ed.lean/declarations/closedball-sub-ball--fd94fffceb3a712c4018f3e1.md) | 374 | `result-track:fd94fffceb3a712c4018f3e1f12550d98a736ed69fa7a9a7cf24c757e19a3eaa` |
| 39 | `theorem` | [closedBall_add_closedBall](../../../../../mathematics/Topology/MetricTopology/Pointwise/Variantf0b0dc731a036867e39c95e44ffb710f733d462e76f7ba395f05018fa3f620ed.lean/declarations/closedball-add-closedball--c2826dfdfadf067b7813d916.md) | 379 | `result-track:c2826dfdfadf067b7813d916e733eacf30d3fd1de4a195d8447ccfce068a02f9` |
| 40 | `theorem` | [closedBall_sub_closedBall](../../../../../mathematics/Topology/MetricTopology/Pointwise/Variantf0b0dc731a036867e39c95e44ffb710f733d462e76f7ba395f05018fa3f620ed.lean/declarations/closedball-sub-closedball--09c653c3dd5928e1fe713eff.md) | 385 | `result-track:09c653c3dd5928e1fe713efff8c197104b690ffcc5553e705a119ea2ba3b1fda` |
| 41 | `theorem` | [smul_closedBall](../../../../../mathematics/Topology/MetricTopology/Pointwise/Variantf0b0dc731a036867e39c95e44ffb710f733d462e76f7ba395f05018fa3f620ed.lean/declarations/smul-closedball--986dce0edc5631d451cd3a26.md) | 396 | `result-track:986dce0edc5631d451cd3a26958e880d18e04e06443b7ad38f153cb6ad488e9b` |
| 42 | `theorem` | [smul_closedUnitBall](../../../../../mathematics/Topology/MetricTopology/Pointwise/Variantf0b0dc731a036867e39c95e44ffb710f733d462e76f7ba395f05018fa3f620ed.lean/declarations/smul-closedunitball--f37c614fdded295d6a538225.md) | 403 | `result-track:f37c614fdded295d6a5382257da2d422216c3857e3d9737c533779c6bc77317a` |
| 43 | `theorem` | [smul_closedUnitBall_of_nonneg](../../../../../mathematics/Topology/MetricTopology/Pointwise/Variantf0b0dc731a036867e39c95e44ffb710f733d462e76f7ba395f05018fa3f620ed.lean/declarations/smul-closedunitball-of-nonneg--996d94bf0982e607dfe237e8.md) | 411 | `result-track:996d94bf0982e607dfe237e8909b9131012aeba8ae5b8e9d68dd39eaf94f29bc` |
| 44 | `theorem` | [NormedSpace.sphere_nonempty](../../../../../mathematics/Topology/MetricTopology/Pointwise/Variantf0b0dc731a036867e39c95e44ffb710f733d462e76f7ba395f05018fa3f620ed.lean/declarations/normedspace-sphere-nonempty--a6600fb9284625076cfa0e86.md) | 419 | `result-track:a6600fb9284625076cfa0e865d34180772916ac7521b78be563a918efedca753` |
| 45 | `theorem` | [smul_sphere](../../../../../mathematics/Topology/MetricTopology/Pointwise/Variantf0b0dc731a036867e39c95e44ffb710f733d462e76f7ba395f05018fa3f620ed.lean/declarations/smul-sphere--770a4d1637142d98ad54defb.md) | 429 | `result-track:770a4d1637142d98ad54defb840d1ffd19055d93904f0370bf0d094bfa1f4058` |
| 46 | `theorem` | [affinity_unitBall](../../../../../mathematics/Topology/MetricTopology/Pointwise/Variantf0b0dc731a036867e39c95e44ffb710f733d462e76f7ba395f05018fa3f620ed.lean/declarations/affinity-unitball--32e02f57e8cd274cb5325baa.md) | 437 | `result-track:32e02f57e8cd274cb5325baabc0cafc82dabd65adb64ace803e9f76239f21581` |
| 47 | `theorem` | [affinity_unitClosedBall](../../../../../mathematics/Topology/MetricTopology/Pointwise/Variantf0b0dc731a036867e39c95e44ffb710f733d462e76f7ba395f05018fa3f620ed.lean/declarations/affinity-unitclosedball--5291a81a691a7e6667c18716.md) | 443 | `result-track:5291a81a691a7e6667c187162106ef5e76c05657f66255a29915ca4fc6b9e1fd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
