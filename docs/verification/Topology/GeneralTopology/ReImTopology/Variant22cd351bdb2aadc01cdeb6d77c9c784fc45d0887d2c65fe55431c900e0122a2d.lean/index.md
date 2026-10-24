# Verification target: GRWTSK.Topology.GeneralTopology.ReImTopology.Variant22cd351bdb2aadc01cdeb6d77c9c784fc45d0887d2c65fe55431c900e0122a2d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "81dede4df7d5d6d5f3199437e52255e9d6258879",
  "lexical_observation_count": 36,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/ReImTopology/Variant22cd351bdb2aadc01cdeb6d77c9c784fc45d0887d2c65fe55431c900e0122a2d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/ReImTopology/Variant22cd351bdb2aadc01cdeb6d77c9c784fc45d0887d2c65fe55431c900e0122a2d.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/ReImTopology/Variant22cd351bdb2aadc01cdeb6d77c9c784fc45d0887d2c65fe55431c900e0122a2d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `81dede4df7d5d6d5f3199437e52255e9d6258879`.

Source path: `GRWTSK/Topology/GeneralTopology/ReImTopology/Variant22cd351bdb2aadc01cdeb6d77c9c784fc45d0887d2c65fe55431c900e0122a2d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/ReImTopology/Variant22cd351bdb2aadc01cdeb6d77c9c784fc45d0887d2c65fe55431c900e0122a2d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Complex.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.FiberBundle.IsHomeomorphicTrivialBundle` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [isHomeomorphicTrivialFiberBundle_re](../../../../../mathematics/Topology/GeneralTopology/ReImTopology/Variant22cd351bdb2aadc01cdeb6d77c9c784fc45d0887d2c65fe55431c900e0122a2d.lean/declarations/ishomeomorphictrivialfiberbundle-re--2c4b9271bb2a9e537720dd5f.md) | 52 | `result-track:2c4b9271bb2a9e537720dd5fd5df2e00ebf9f4e58fc30a0d917e6f4af6a1fe57` |
| 2 | `theorem` | [isHomeomorphicTrivialFiberBundle_im](../../../../../mathematics/Topology/GeneralTopology/ReImTopology/Variant22cd351bdb2aadc01cdeb6d77c9c784fc45d0887d2c65fe55431c900e0122a2d.lean/declarations/ishomeomorphictrivialfiberbundle-im--b7f6ac15c1a7228cae2f6a25.md) | 57 | `result-track:b7f6ac15c1a7228cae2f6a25b9afe556a7b2caab8b11ea0fd75f55fa5cb17f97` |
| 3 | `theorem` | [isOpenMap_re](../../../../../mathematics/Topology/GeneralTopology/ReImTopology/Variant22cd351bdb2aadc01cdeb6d77c9c784fc45d0887d2c65fe55431c900e0122a2d.lean/declarations/isopenmap-re--dda512797e907fb907e727e8.md) | 61 | `result-track:dda512797e907fb907e727e8fdb7d8db655c052a9c7c2589018bd5bfdd33ab18` |
| 4 | `theorem` | [isOpenMap_im](../../../../../mathematics/Topology/GeneralTopology/ReImTopology/Variant22cd351bdb2aadc01cdeb6d77c9c784fc45d0887d2c65fe55431c900e0122a2d.lean/declarations/isopenmap-im--e6aa760cdb7ce714b2f14e2d.md) | 65 | `result-track:e6aa760cdb7ce714b2f14e2d67edf855c5cdfbeadfacbc395de14c2f2ca886a1` |
| 5 | `theorem` | [quotientMap_re](../../../../../mathematics/Topology/GeneralTopology/ReImTopology/Variant22cd351bdb2aadc01cdeb6d77c9c784fc45d0887d2c65fe55431c900e0122a2d.lean/declarations/quotientmap-re--1b3317b789178e64143e0bbd.md) | 69 | `result-track:1b3317b789178e64143e0bbd3cab01d125472bc8c723d716b22251c1292ad2c9` |
| 6 | `theorem` | [quotientMap_im](../../../../../mathematics/Topology/GeneralTopology/ReImTopology/Variant22cd351bdb2aadc01cdeb6d77c9c784fc45d0887d2c65fe55431c900e0122a2d.lean/declarations/quotientmap-im--33cd3d79d9ec6f7de0d19f1e.md) | 73 | `result-track:33cd3d79d9ec6f7de0d19f1e02bb8baef0984797b7290529f660e9b98e87031c` |
| 7 | `theorem` | [interior_preimage_re](../../../../../mathematics/Topology/GeneralTopology/ReImTopology/Variant22cd351bdb2aadc01cdeb6d77c9c784fc45d0887d2c65fe55431c900e0122a2d.lean/declarations/interior-preimage-re--f1e0d71617211cfaa1b2f173.md) | 77 | `result-track:f1e0d71617211cfaa1b2f1732fd0f58fed92eee520aa0447289c6a21056de723` |
| 8 | `theorem` | [interior_preimage_im](../../../../../mathematics/Topology/GeneralTopology/ReImTopology/Variant22cd351bdb2aadc01cdeb6d77c9c784fc45d0887d2c65fe55431c900e0122a2d.lean/declarations/interior-preimage-im--8191d79072723ffffd79fa94.md) | 81 | `result-track:8191d79072723ffffd79fa949f02dbe15dbba0c58df13b9aa39b4478ef7e5b75` |
| 9 | `theorem` | [closure_preimage_re](../../../../../mathematics/Topology/GeneralTopology/ReImTopology/Variant22cd351bdb2aadc01cdeb6d77c9c784fc45d0887d2c65fe55431c900e0122a2d.lean/declarations/closure-preimage-re--f1be9f074e5a98a941f0890f.md) | 85 | `result-track:f1be9f074e5a98a941f0890f63398c45469a56a1e709a9cc9c8f576dc3a337df` |
| 10 | `theorem` | [closure_preimage_im](../../../../../mathematics/Topology/GeneralTopology/ReImTopology/Variant22cd351bdb2aadc01cdeb6d77c9c784fc45d0887d2c65fe55431c900e0122a2d.lean/declarations/closure-preimage-im--50a2c08cd1c784aa624fbea7.md) | 89 | `result-track:50a2c08cd1c784aa624fbea76b276ef057ef3467c4feb3ba79311ddbfb8cd6e6` |
| 11 | `theorem` | [frontier_preimage_re](../../../../../mathematics/Topology/GeneralTopology/ReImTopology/Variant22cd351bdb2aadc01cdeb6d77c9c784fc45d0887d2c65fe55431c900e0122a2d.lean/declarations/frontier-preimage-re--8270a81df0955d93c359705c.md) | 93 | `result-track:8270a81df0955d93c359705ca03aa3c3068030d34d02f9396f1b1cd2b40812c4` |
| 12 | `theorem` | [frontier_preimage_im](../../../../../mathematics/Topology/GeneralTopology/ReImTopology/Variant22cd351bdb2aadc01cdeb6d77c9c784fc45d0887d2c65fe55431c900e0122a2d.lean/declarations/frontier-preimage-im--64a9187a4dc8a442783630c6.md) | 97 | `result-track:64a9187a4dc8a442783630c61ab355b03a6460d01dec234661aa7b3b89d0dc12` |
| 13 | `theorem` | [interior_setOf_re_le](../../../../../mathematics/Topology/GeneralTopology/ReImTopology/Variant22cd351bdb2aadc01cdeb6d77c9c784fc45d0887d2c65fe55431c900e0122a2d.lean/declarations/interior-setof-re-le--2dd9f46b9663c6f32136d64c.md) | 102 | `result-track:2dd9f46b9663c6f32136d64c0c8fbac526ce2de72ed924d3f12bd9ea687b0964` |
| 14 | `theorem` | [interior_setOf_im_le](../../../../../mathematics/Topology/GeneralTopology/ReImTopology/Variant22cd351bdb2aadc01cdeb6d77c9c784fc45d0887d2c65fe55431c900e0122a2d.lean/declarations/interior-setof-im-le--37061d37d8feccbe3b3584c7.md) | 107 | `result-track:37061d37d8feccbe3b3584c7dc99ba76b8ae506b36eb908d08fa584da98c3b88` |
| 15 | `theorem` | [interior_setOf_le_re](../../../../../mathematics/Topology/GeneralTopology/ReImTopology/Variant22cd351bdb2aadc01cdeb6d77c9c784fc45d0887d2c65fe55431c900e0122a2d.lean/declarations/interior-setof-le-re--3034b31d0c9ec10538ea7a8a.md) | 112 | `result-track:3034b31d0c9ec10538ea7a8a8064665b9ab1278feba5f4dd1d5e6eefd4f4eeb6` |
| 16 | `theorem` | [interior_setOf_le_im](../../../../../mathematics/Topology/GeneralTopology/ReImTopology/Variant22cd351bdb2aadc01cdeb6d77c9c784fc45d0887d2c65fe55431c900e0122a2d.lean/declarations/interior-setof-le-im--b2be33875c967cdd1600a4f3.md) | 117 | `result-track:b2be33875c967cdd1600a4f369f607d33537ced7d30359c9edf60a66960803c5` |
| 17 | `theorem` | [closure_setOf_re_lt](../../../../../mathematics/Topology/GeneralTopology/ReImTopology/Variant22cd351bdb2aadc01cdeb6d77c9c784fc45d0887d2c65fe55431c900e0122a2d.lean/declarations/closure-setof-re-lt--a8182d92698d8416e509f583.md) | 122 | `result-track:a8182d92698d8416e509f583d1e8fbdfe8a8869e2b314fe6366ee7a52eb40a68` |
| 18 | `theorem` | [closure_setOf_im_lt](../../../../../mathematics/Topology/GeneralTopology/ReImTopology/Variant22cd351bdb2aadc01cdeb6d77c9c784fc45d0887d2c65fe55431c900e0122a2d.lean/declarations/closure-setof-im-lt--d71e5946d5bb977415acf72c.md) | 127 | `result-track:d71e5946d5bb977415acf72c9cda60d90caf26b378c19d797936a4a31c4dfafc` |
| 19 | `theorem` | [closure_setOf_lt_re](../../../../../mathematics/Topology/GeneralTopology/ReImTopology/Variant22cd351bdb2aadc01cdeb6d77c9c784fc45d0887d2c65fe55431c900e0122a2d.lean/declarations/closure-setof-lt-re--f256f927625d12845cad2dca.md) | 132 | `result-track:f256f927625d12845cad2dca8834673bf8cf47bd99884a6cad61b756203f1e87` |
| 20 | `theorem` | [closure_setOf_lt_im](../../../../../mathematics/Topology/GeneralTopology/ReImTopology/Variant22cd351bdb2aadc01cdeb6d77c9c784fc45d0887d2c65fe55431c900e0122a2d.lean/declarations/closure-setof-lt-im--ebf253327f4add220217a2f8.md) | 137 | `result-track:ebf253327f4add220217a2f85b6e6cd043b7cb8a5baae455378abe3586a9f41d` |
| 21 | `theorem` | [frontier_setOf_re_le](../../../../../mathematics/Topology/GeneralTopology/ReImTopology/Variant22cd351bdb2aadc01cdeb6d77c9c784fc45d0887d2c65fe55431c900e0122a2d.lean/declarations/frontier-setof-re-le--3ffea36a0881d63554ae7cff.md) | 142 | `result-track:3ffea36a0881d63554ae7cffa4cafa80ef4f3d8f827194d2811b1c2ebd1fdceb` |
| 22 | `theorem` | [frontier_setOf_im_le](../../../../../mathematics/Topology/GeneralTopology/ReImTopology/Variant22cd351bdb2aadc01cdeb6d77c9c784fc45d0887d2c65fe55431c900e0122a2d.lean/declarations/frontier-setof-im-le--c60a04ad672d46b99a352783.md) | 147 | `result-track:c60a04ad672d46b99a352783f89029a273f8c88b293fe9762f8e40d62985be45` |
| 23 | `theorem` | [frontier_setOf_le_re](../../../../../mathematics/Topology/GeneralTopology/ReImTopology/Variant22cd351bdb2aadc01cdeb6d77c9c784fc45d0887d2c65fe55431c900e0122a2d.lean/declarations/frontier-setof-le-re--66068d69d9f0621c117206b7.md) | 152 | `result-track:66068d69d9f0621c117206b75819174a3ed919d92eb61a4bf76e3968d3b4a28b` |
| 24 | `theorem` | [frontier_setOf_le_im](../../../../../mathematics/Topology/GeneralTopology/ReImTopology/Variant22cd351bdb2aadc01cdeb6d77c9c784fc45d0887d2c65fe55431c900e0122a2d.lean/declarations/frontier-setof-le-im--e1d561bb5f5a4d50f158e193.md) | 157 | `result-track:e1d561bb5f5a4d50f158e193c349d404046d919dae5dcfc095ac120d4bb32cf0` |
| 25 | `theorem` | [frontier_setOf_re_lt](../../../../../mathematics/Topology/GeneralTopology/ReImTopology/Variant22cd351bdb2aadc01cdeb6d77c9c784fc45d0887d2c65fe55431c900e0122a2d.lean/declarations/frontier-setof-re-lt--2abcc9bb96e57a89383c57fc.md) | 162 | `result-track:2abcc9bb96e57a89383c57fc1513cceb99ab2c0ac46fb6368a3b438ab34726e0` |
| 26 | `theorem` | [frontier_setOf_im_lt](../../../../../mathematics/Topology/GeneralTopology/ReImTopology/Variant22cd351bdb2aadc01cdeb6d77c9c784fc45d0887d2c65fe55431c900e0122a2d.lean/declarations/frontier-setof-im-lt--8f9dc5872833934c325addca.md) | 167 | `result-track:8f9dc5872833934c325addca3652d1e0dab442eb6a121fc99251a6f1b3a25d1f` |
| 27 | `theorem` | [frontier_setOf_lt_re](../../../../../mathematics/Topology/GeneralTopology/ReImTopology/Variant22cd351bdb2aadc01cdeb6d77c9c784fc45d0887d2c65fe55431c900e0122a2d.lean/declarations/frontier-setof-lt-re--af1b6cff86ba319d44f2e0ca.md) | 172 | `result-track:af1b6cff86ba319d44f2e0ca3acb44ee990d6db430cd3f2a3730e68de6ec8d0a` |
| 28 | `theorem` | [frontier_setOf_lt_im](../../../../../mathematics/Topology/GeneralTopology/ReImTopology/Variant22cd351bdb2aadc01cdeb6d77c9c784fc45d0887d2c65fe55431c900e0122a2d.lean/declarations/frontier-setof-lt-im--91893c965d96e640ec68c9f7.md) | 177 | `result-track:91893c965d96e640ec68c9f76403ca5487c8f09ca7cb89ef7797350e0d6e3402` |
| 29 | `theorem` | [closure_reProdIm](../../../../../mathematics/Topology/GeneralTopology/ReImTopology/Variant22cd351bdb2aadc01cdeb6d77c9c784fc45d0887d2c65fe55431c900e0122a2d.lean/declarations/closure-reprodim--557bb7ab8680eda93d9e2532.md) | 181 | `result-track:557bb7ab8680eda93d9e2532303880fcd4942732d81538a686ff61ec64b69042` |
| 30 | `theorem` | [interior_reProdIm](../../../../../mathematics/Topology/GeneralTopology/ReImTopology/Variant22cd351bdb2aadc01cdeb6d77c9c784fc45d0887d2c65fe55431c900e0122a2d.lean/declarations/interior-reprodim--ca342a37598bd390cdf1c6e0.md) | 186 | `result-track:ca342a37598bd390cdf1c6e0d8a0a93a1447393ffcbe2604a91652d0b7bd0450` |
| 31 | `theorem` | [frontier_reProdIm](../../../../../mathematics/Topology/GeneralTopology/ReImTopology/Variant22cd351bdb2aadc01cdeb6d77c9c784fc45d0887d2c65fe55431c900e0122a2d.lean/declarations/frontier-reprodim--fb1cd433dba0e5bb788b48cd.md) | 190 | `result-track:fb1cd433dba0e5bb788b48cdc66f1ad366a9b076f3c93b3b07fb4845a3c5628d` |
| 32 | `theorem` | [frontier_setOf_le_re_and_le_im](../../../../../mathematics/Topology/GeneralTopology/ReImTopology/Variant22cd351bdb2aadc01cdeb6d77c9c784fc45d0887d2c65fe55431c900e0122a2d.lean/declarations/frontier-setof-le-re-and-le-im--94d4fad3e47cb8db1a3bbc1e.md) | 196 | `result-track:94d4fad3e47cb8db1a3bbc1ed3ef3f44021609a50caee28244b0ce385ffb0f64` |
| 33 | `theorem` | [frontier_setOf_le_re_and_im_le](../../../../../mathematics/Topology/GeneralTopology/ReImTopology/Variant22cd351bdb2aadc01cdeb6d77c9c784fc45d0887d2c65fe55431c900e0122a2d.lean/declarations/frontier-setof-le-re-and-im-le--17b2c7721c2d175396985a9f.md) | 201 | `result-track:17b2c7721c2d175396985a9f12e14575c870b81154489af7b614ac7f1fa35481` |
| 34 | `theorem` | [IsOpen.reProdIm](../../../../../mathematics/Topology/GeneralTopology/ReImTopology/Variant22cd351bdb2aadc01cdeb6d77c9c784fc45d0887d2c65fe55431c900e0122a2d.lean/declarations/isopen-reprodim--62f15047be423093039d4832.md) | 213 | `result-track:62f15047be423093039d483205426d798039ebdd82d42b3f66f9eac024e0254c` |
| 35 | `theorem` | [IsClosed.reProdIm](../../../../../mathematics/Topology/GeneralTopology/ReImTopology/Variant22cd351bdb2aadc01cdeb6d77c9c784fc45d0887d2c65fe55431c900e0122a2d.lean/declarations/isclosed-reprodim--8838a475a57fdc155466bbc6.md) | 217 | `result-track:8838a475a57fdc155466bbc6c9bfb0f3afe7ef2aef9e7d111257cd856a8140d6` |
| 36 | `theorem` | [Metric.Bounded.reProdIm](../../../../../mathematics/Topology/GeneralTopology/ReImTopology/Variant22cd351bdb2aadc01cdeb6d77c9c784fc45d0887d2c65fe55431c900e0122a2d.lean/declarations/metric-bounded-reprodim--c384804e16a264fd4246a23e.md) | 221 | `result-track:c384804e16a264fd4246a23e7951c9ac105ec43b187658dd216d71d1b170b240` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
