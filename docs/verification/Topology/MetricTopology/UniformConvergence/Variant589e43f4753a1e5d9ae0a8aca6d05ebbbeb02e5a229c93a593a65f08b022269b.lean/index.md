# Verification target: GRWTSK.Topology.MetricTopology.UniformConvergence.Variant589e43f4753a1e5d9ae0a8aca6d05ebbbeb02e5a229c93a593a65f08b022269b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "03ff419df7ae297373b1b0390ccc08f6ae9cb76f",
  "lexical_observation_count": 41,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/UniformConvergence/Variant589e43f4753a1e5d9ae0a8aca6d05ebbbeb02e5a229c93a593a65f08b022269b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/MetricTopology/UniformConvergence/Variant589e43f4753a1e5d9ae0a8aca6d05ebbbeb02e5a229c93a593a65f08b022269b.lean/index.md) · [Full source](../../../../../mathematics/Topology/MetricTopology/UniformConvergence/Variant589e43f4753a1e5d9ae0a8aca6d05ebbbeb02e5a229c93a593a65f08b022269b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `03ff419df7ae297373b1b0390ccc08f6ae9cb76f`.

Source path: `GRWTSK/Topology/MetricTopology/UniformConvergence/Variant589e43f4753a1e5d9ae0a8aca6d05ebbbeb02e5a229c93a593a65f08b022269b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/UniformConvergence/Variant589e43f4753a1e5d9ae0a8aca6d05ebbbeb02e5a229c93a593a65f08b022269b.lean.json)

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
| 1 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/UniformConvergence/Variant589e43f4753a1e5d9ae0a8aca6d05ebbbeb02e5a229c93a593a65f08b022269b.lean/declarations/instance--05860fcb1e7a68c7571aa55c.md) | 57 | `declaration-track:05860fcb1e7a68c7571aa55c9fb0e2c125af2b3a52dec2dfc4c76de723fe9bff` |
| 2 | `lemma` | [edist_def](../../../../../mathematics/Topology/MetricTopology/UniformConvergence/Variant589e43f4753a1e5d9ae0a8aca6d05ebbbeb02e5a229c93a593a65f08b022269b.lean/declarations/edist-def--0e99ef8b74128817e785273f.md) | 60 | `result-track:0e99ef8b74128817e785273f6e4240820159e2ea683c03ce3f2b01c6d1a40fa3` |
| 3 | `lemma` | [edist_le](../../../../../mathematics/Topology/MetricTopology/UniformConvergence/Variant589e43f4753a1e5d9ae0a8aca6d05ebbbeb02e5a229c93a593a65f08b022269b.lean/declarations/edist-le--8155e9466e3d91be5e98ffff.md) | 64 | `result-track:8155e9466e3d91be5e98fffff5d3b4b381a08fbea072347f89b8c8a69813dc3d` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/UniformConvergence/Variant589e43f4753a1e5d9ae0a8aca6d05ebbbeb02e5a229c93a593a65f08b022269b.lean/declarations/instance--7bb0b641aba9ac262cde50cb.md) | 69 | `declaration-track:7bb0b641aba9ac262cde50cbd67af47da8297c770040ce6d4053a16fd9dae8dc` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/UniformConvergence/Variant589e43f4753a1e5d9ae0a8aca6d05ebbbeb02e5a229c93a593a65f08b022269b.lean/declarations/instance--a524306930ebc1a45aaf6a97.md) | 84 | `declaration-track:a524306930ebc1a45aaf6a9773f27dfd876c32027430c19662b7bba17d8c1ac3` |
| 6 | `lemma` | [lipschitzWith_iff](../../../../../mathematics/Topology/MetricTopology/UniformConvergence/Variant589e43f4753a1e5d9ae0a8aca6d05ebbbeb02e5a229c93a593a65f08b022269b.lean/declarations/lipschitzwith-iff--709f19988ae6550d01e1b39d.md) | 87 | `result-track:709f19988ae6550d01e1b39d4db7be9b9bb86361fb93b13363b0b79263e16d60` |
| 7 | `lemma` | [lipschitzWith_ofFun_iff](../../../../../mathematics/Topology/MetricTopology/UniformConvergence/Variant589e43f4753a1e5d9ae0a8aca6d05ebbbeb02e5a229c93a593a65f08b022269b.lean/declarations/lipschitzwith-offun-iff--6167390ba4bdbab7ab11dfab.md) | 91 | `result-track:6167390ba4bdbab7ab11dfabff3fcbe5d942a9d2f0784849778f28835b31d345` |
| 8 | `lemma` | [_root_.LipschitzWith.uniformEquicontinuous](../../../../../mathematics/Topology/MetricTopology/UniformConvergence/Variant589e43f4753a1e5d9ae0a8aca6d05ebbbeb02e5a229c93a593a65f08b022269b.lean/declarations/root-lipschitzwith-uniformequicontinuous--a37ae72d4e9be8bb448569c0.md) | 97 | `result-track:a37ae72d4e9be8bb448569c0e2ebd49b031c5cd36fa8b4c5cbaac287bcb09748` |
| 9 | `lemma` | [lipschitzOnWith_iff](../../../../../mathematics/Topology/MetricTopology/UniformConvergence/Variant589e43f4753a1e5d9ae0a8aca6d05ebbbeb02e5a229c93a593a65f08b022269b.lean/declarations/lipschitzonwith-iff--ddd6491c37e977a6cf87593e.md) | 103 | `result-track:ddd6491c37e977a6cf87593e99029e759d9c6b74e6c9ce56b9e41d73dd48fd3a` |
| 10 | `lemma` | [lipschitzOnWith_ofFun_iff](../../../../../mathematics/Topology/MetricTopology/UniformConvergence/Variant589e43f4753a1e5d9ae0a8aca6d05ebbbeb02e5a229c93a593a65f08b022269b.lean/declarations/lipschitzonwith-offun-iff--4bd2e1f4f43a7468af69906f.md) | 108 | `result-track:4bd2e1f4f43a7468af69906f01e4667c4778b427f38ac65940f70f9932e1ee75` |
| 11 | `lemma` | [_root_.LipschitzOnWith.uniformEquicontinuousOn](../../../../../mathematics/Topology/MetricTopology/UniformConvergence/Variant589e43f4753a1e5d9ae0a8aca6d05ebbbeb02e5a229c93a593a65f08b022269b.lean/declarations/root-lipschitzonwith-uniformequicontinuouson--e01b02bda45360c0a84d0957.md) | 114 | `result-track:e01b02bda45360c0a84d09576ffea80eeb31b8b51062bedc1324b159771d183b` |
| 12 | `lemma` | [edist_eval_le](../../../../../mathematics/Topology/MetricTopology/UniformConvergence/Variant589e43f4753a1e5d9ae0a8aca6d05ebbbeb02e5a229c93a593a65f08b022269b.lean/declarations/edist-eval-le--84f5173fc90bb9ac10b65e65.md) | 120 | `result-track:84f5173fc90bb9ac10b65e659b20779c983c3b32ef0dd8140e3e3e15a68ef02b` |
| 13 | `lemma` | [lipschitzWith_eval](../../../../../mathematics/Topology/MetricTopology/UniformConvergence/Variant589e43f4753a1e5d9ae0a8aca6d05ebbbeb02e5a229c93a593a65f08b022269b.lean/declarations/lipschitzwith-eval--fdd2a65893ae4517cae0e9d2.md) | 124 | `result-track:fdd2a65893ae4517cae0e9d2d88c535cd790d4658115330416999dd4efa04dfa` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/UniformConvergence/Variant589e43f4753a1e5d9ae0a8aca6d05ebbbeb02e5a229c93a593a65f08b022269b.lean/declarations/instance--960f8b6255ae756397f4b3b4.md) | 135 | `declaration-track:960f8b6255ae756397f4b3b411939be404b5208ec8a7bf61983eb981b3401777` |
| 15 | `lemma` | [dist_def](../../../../../mathematics/Topology/MetricTopology/UniformConvergence/Variant589e43f4753a1e5d9ae0a8aca6d05ebbbeb02e5a229c93a593a65f08b022269b.lean/declarations/dist-def--4c6889b1da91f1d3df6d4941.md) | 149 | `result-track:4c6889b1da91f1d3df6d49417767b4908509684e4c2aaa4a9ef0940dec1d2a81` |
| 16 | `lemma` | [dist_le](../../../../../mathematics/Topology/MetricTopology/UniformConvergence/Variant589e43f4753a1e5d9ae0a8aca6d05ebbbeb02e5a229c93a593a65f08b022269b.lean/declarations/dist-le--fabb020c9f6930bad1830059.md) | 153 | `result-track:fabb020c9f6930bad1830059a1a089788775870ad9a686d2144c150a223d3e81` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/UniformConvergence/Variant589e43f4753a1e5d9ae0a8aca6d05ebbbeb02e5a229c93a593a65f08b022269b.lean/declarations/instance--0cbcf333aabc6b5417167d43.md) | 157 | `declaration-track:0cbcf333aabc6b5417167d435f7c1ec54cbe001246b21f156becad0d80b7a8e0` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/UniformConvergence/Variant589e43f4753a1e5d9ae0a8aca6d05ebbbeb02e5a229c93a593a65f08b022269b.lean/declarations/instance--0a87811aa40a89f594670171.md) | 164 | `declaration-track:0a87811aa40a89f59467017166a1558e953792539aef6d93a99491635f82eb42` |
| 19 | `lemma` | [isometry_ofFun_boundedContinuousFunction](../../../../../mathematics/Topology/MetricTopology/UniformConvergence/Variant589e43f4753a1e5d9ae0a8aca6d05ebbbeb02e5a229c93a593a65f08b022269b.lean/declarations/isometry-offun-boundedcontinuousfunction--3bf1cec1b788ea43add6448f.md) | 168 | `result-track:3bf1cec1b788ea43add6448fc73f071f05f13bc65d537fc1c94b62810cba5e28` |
| 20 | `lemma` | [isometry_ofFun_continuousMap](../../../../../mathematics/Topology/MetricTopology/UniformConvergence/Variant589e43f4753a1e5d9ae0a8aca6d05ebbbeb02e5a229c93a593a65f08b022269b.lean/declarations/isometry-offun-continuousmap--6f183d528496d24076758954.md) | 172 | `result-track:6f183d528496d24076758954cf34207d21b3ee57f950e99c7063e9a81c709035` |
| 21 | `lemma` | [edist_continuousMapMk](../../../../../mathematics/Topology/MetricTopology/UniformConvergence/Variant589e43f4753a1e5d9ae0a8aca6d05ebbbeb02e5a229c93a593a65f08b022269b.lean/declarations/edist-continuousmapmk--7cbff0aeb233eaefd6e65056.md) | 177 | `result-track:7cbff0aeb233eaefd6e65056946ead5476a76e14b145889403a0008e7d0228e4` |
| 22 | `lemma` | [continuous_of_forall_lipschitzWith](../../../../../mathematics/Topology/MetricTopology/UniformConvergence/Variant589e43f4753a1e5d9ae0a8aca6d05ebbbeb02e5a229c93a593a65f08b022269b.lean/declarations/continuous-of-forall-lipschitzwith--f2b30e0f9ff65b6d9044ef3c.md) | 196 | `result-track:f2b30e0f9ff65b6d9044ef3c0dc882460872f781372a7bef61712a37ad825c89` |
| 23 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/UniformConvergence/Variant589e43f4753a1e5d9ae0a8aca6d05ebbbeb02e5a229c93a593a65f08b022269b.lean/declarations/instance--274fee1a686c65efacfa9173.md) | 206 | `declaration-track:274fee1a686c65efacfa9173ee80785dae482617fb4f5b45c6cca45ae216e95b` |
| 24 | `lemma` | [edist_def](../../../../../mathematics/Topology/MetricTopology/UniformConvergence/Variant589e43f4753a1e5d9ae0a8aca6d05ebbbeb02e5a229c93a593a65f08b022269b.lean/declarations/edist-def--7a285d87d61be31cd9c0a27c.md) | 209 | `result-track:7a285d87d61be31cd9c0a27c497a37253d0b7cb689b8f52a65a3faf70fd0628d` |
| 25 | `lemma` | [edist_def'](../../../../../mathematics/Topology/MetricTopology/UniformConvergence/Variant589e43f4753a1e5d9ae0a8aca6d05ebbbeb02e5a229c93a593a65f08b022269b.lean/declarations/edist-def--8505cf7b198b4532b27f5a55.md) | 213 | `result-track:8505cf7b198b4532b27f5a55293921cca68f37f6989f7a33b6aa1bd1fd8ec2cb` |
| 26 | `lemma` | [edist_eq_restrict_sUnion](../../../../../mathematics/Topology/MetricTopology/UniformConvergence/Variant589e43f4753a1e5d9ae0a8aca6d05ebbbeb02e5a229c93a593a65f08b022269b.lean/declarations/edist-eq-restrict-sunion--200b7891a8cbc239b8e04be9.md) | 217 | `result-track:200b7891a8cbc239b8e04be98814d24b04e8fa45d9a3bf07d1ef7fe1cc72a8c9` |
| 27 | `lemma` | [edist_eq_pi_restrict](../../../../../mathematics/Topology/MetricTopology/UniformConvergence/Variant589e43f4753a1e5d9ae0a8aca6d05ebbbeb02e5a229c93a593a65f08b022269b.lean/declarations/edist-eq-pi-restrict--9a439b5b85507732bac40f77.md) | 223 | `result-track:9a439b5b85507732bac40f7768f2a43c7e221c0d75361cac549390dd42d37f4f` |
| 28 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/UniformConvergence/Variant589e43f4753a1e5d9ae0a8aca6d05ebbbeb02e5a229c93a593a65f08b022269b.lean/declarations/instance--f46ee5ede8145fb6affb0931.md) | 234 | `declaration-track:f46ee5ede8145fb6affb0931762d85e997a39e37dfd05a93998257c0d38f260c` |
| 29 | `lemma` | [edist_le](../../../../../mathematics/Topology/MetricTopology/UniformConvergence/Variant589e43f4753a1e5d9ae0a8aca6d05ebbbeb02e5a229c93a593a65f08b022269b.lean/declarations/edist-le--a7175432ada1c85d8d14814a.md) | 245 | `result-track:a7175432ada1c85d8d14814a28c7c220dcf0af30bcad6d561fbac888fde6a3d6` |
| 30 | `lemma` | [lipschitzWith_iff](../../../../../mathematics/Topology/MetricTopology/UniformConvergence/Variant589e43f4753a1e5d9ae0a8aca6d05ebbbeb02e5a229c93a593a65f08b022269b.lean/declarations/lipschitzwith-iff--44a0aa221e33f16f27ae3b3a.md) | 249 | `result-track:44a0aa221e33f16f27ae3b3a77eb490e2c204489aa8c61e73adbd7f0cf313320` |
| 31 | `lemma` | [lipschitzOnWith_iff](../../../../../mathematics/Topology/MetricTopology/UniformConvergence/Variant589e43f4753a1e5d9ae0a8aca6d05ebbbeb02e5a229c93a593a65f08b022269b.lean/declarations/lipschitzonwith-iff--b85b1f303cdf4acc87d2a0bc.md) | 254 | `result-track:b85b1f303cdf4acc87d2a0bc3f4679747d556023753a3b6658374f0a56467767` |
| 32 | `lemma` | [edist_eval_le](../../../../../mathematics/Topology/MetricTopology/UniformConvergence/Variant589e43f4753a1e5d9ae0a8aca6d05ebbbeb02e5a229c93a593a65f08b022269b.lean/declarations/edist-eval-le--106e8b49fe74afc8e2f1bcb9.md) | 259 | `result-track:106e8b49fe74afc8e2f1bcb9a5b38c349a99705fec5c87cb653ca84135bcd191` |
| 33 | `lemma` | [lipschitzWith_eval](../../../../../mathematics/Topology/MetricTopology/UniformConvergence/Variant589e43f4753a1e5d9ae0a8aca6d05ebbbeb02e5a229c93a593a65f08b022269b.lean/declarations/lipschitzwith-eval--835c223cf9c3ccb100b3aa54.md) | 263 | `result-track:835c223cf9c3ccb100b3aa547b16254ef242eae5df896694b0cd29f2ce7890e1` |
| 34 | `lemma` | [lipschitzWith_one_ofFun_toFun](../../../../../mathematics/Topology/MetricTopology/UniformConvergence/Variant589e43f4753a1e5d9ae0a8aca6d05ebbbeb02e5a229c93a593a65f08b022269b.lean/declarations/lipschitzwith-one-offun-tofun--3dc0aa2f0cb030af841f4dd7.md) | 268 | `result-track:3dc0aa2f0cb030af841f4dd7c6bdffb2040f3b1eeeb1075740a9b7c131b8d197` |
| 35 | `lemma` | [lipschitzWith_one_ofFun_toFun'](../../../../../mathematics/Topology/MetricTopology/UniformConvergence/Variant589e43f4753a1e5d9ae0a8aca6d05ebbbeb02e5a229c93a593a65f08b022269b.lean/declarations/lipschitzwith-one-offun-tofun--5a6617b623b76c2d0ea504c0.md) | 272 | `result-track:5a6617b623b76c2d0ea504c0474b7de5f84e599c035da9746e1f86b5ecb19b07` |
| 36 | `lemma` | [lipschitzWith_restrict](../../../../../mathematics/Topology/MetricTopology/UniformConvergence/Variant589e43f4753a1e5d9ae0a8aca6d05ebbbeb02e5a229c93a593a65f08b022269b.lean/declarations/lipschitzwith-restrict--8f9cb77a41cc591b889e0a06.md) | 276 | `result-track:8f9cb77a41cc591b889e0a06ebb83fb2c7675b3e6b609ed5b5ea991fa0b2b5b4` |
| 37 | `lemma` | [isometry_restrict](../../../../../mathematics/Topology/MetricTopology/UniformConvergence/Variant589e43f4753a1e5d9ae0a8aca6d05ebbbeb02e5a229c93a593a65f08b022269b.lean/declarations/isometry-restrict--33db439e66090eda42d5bea8.md) | 280 | `result-track:33db439e66090eda42d5bea8d1b35c4476570a0464a4ef0dffcf80b3f27cabb6` |
| 38 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/UniformConvergence/Variant589e43f4753a1e5d9ae0a8aca6d05ebbbeb02e5a229c93a593a65f08b022269b.lean/declarations/instance--3a23328194d38c6cb3d69b08.md) | 290 | `declaration-track:3a23328194d38c6cb3d69b087f75a4c74c66087fb3eb4835c5c796e738b1025e` |
| 39 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/UniformConvergence/Variant589e43f4753a1e5d9ae0a8aca6d05ebbbeb02e5a229c93a593a65f08b022269b.lean/declarations/instance--fdd96a27e517d478b2f881f9.md) | 305 | `declaration-track:fdd96a27e517d478b2f881f915516e8a6041323a7b6457846ce92bf494de460f` |
| 40 | `lemma` | [edist_continuousRestrict](../../../../../mathematics/Topology/MetricTopology/UniformConvergence/Variant589e43f4753a1e5d9ae0a8aca6d05ebbbeb02e5a229c93a593a65f08b022269b.lean/declarations/edist-continuousrestrict--5040f5abb9e0a86b4d7347fb.md) | 312 | `result-track:5040f5abb9e0a86b4d7347fb9d3e04189ca612ddce070367dba360b5e917d2d4` |
| 41 | `lemma` | [edist_continuousRestrict_of_singleton](../../../../../mathematics/Topology/MetricTopology/UniformConvergence/Variant589e43f4753a1e5d9ae0a8aca6d05ebbbeb02e5a229c93a593a65f08b022269b.lean/declarations/edist-continuousrestrict-of-singleton--3b276d55b11c4f5a175867ec.md) | 318 | `result-track:3b276d55b11c4f5a175867ec05640206130c119f7ce377425f7a6384659e6d0e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
