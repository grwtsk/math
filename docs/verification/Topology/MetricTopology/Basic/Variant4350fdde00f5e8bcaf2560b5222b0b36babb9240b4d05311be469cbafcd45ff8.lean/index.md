# Verification target: GRWTSK.Topology.MetricTopology.Basic.Variant4350fdde00f5e8bcaf2560b5222b0b36babb9240b4d05311be469cbafcd45ff8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d5fadad4a0094a2895f8d5ac3468311a3a39cc41",
  "lexical_observation_count": 54,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/Basic/Variant4350fdde00f5e8bcaf2560b5222b0b36babb9240b4d05311be469cbafcd45ff8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/MetricTopology/Basic/Variant4350fdde00f5e8bcaf2560b5222b0b36babb9240b4d05311be469cbafcd45ff8.lean/index.md) · [Full source](../../../../../mathematics/Topology/MetricTopology/Basic/Variant4350fdde00f5e8bcaf2560b5222b0b36babb9240b4d05311be469cbafcd45ff8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d5fadad4a0094a2895f8d5ac3468311a3a39cc41`.

Source path: `GRWTSK/Topology/MetricTopology/Basic/Variant4350fdde00f5e8bcaf2560b5222b0b36babb9240b4d05311be469cbafcd45ff8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/Basic/Variant4350fdde00f5e8bcaf2560b5222b0b36babb9240b4d05311be469cbafcd45ff8.lean.json)

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
| 1 | `class` | [NormedStarGroup](../../../../../mathematics/Topology/MetricTopology/Basic/Variant4350fdde00f5e8bcaf2560b5222b0b36babb9240b4d05311be469cbafcd45ff8.lean/declarations/normedstargroup--d37aae26e7594414a82b10b8.md) | 52 | `declaration-track:d37aae26e7594414a82b10b8d904c3d253fb74bf3632cdada5dadfc17699327a` |
| 2 | `lemma` | [norm_star](../../../../../mathematics/Topology/MetricTopology/Basic/Variant4350fdde00f5e8bcaf2560b5222b0b36babb9240b4d05311be469cbafcd45ff8.lean/declarations/norm-star--bcbd98b95cf86f35969656df.md) | 62 | `result-track:bcbd98b95cf86f35969656dfe24e580eabd24e2f03b983b6dc5155f1594c71eb` |
| 3 | `theorem` | [nnnorm_star](../../../../../mathematics/Topology/MetricTopology/Basic/Variant4350fdde00f5e8bcaf2560b5222b0b36babb9240b4d05311be469cbafcd45ff8.lean/declarations/nnnorm-star--be12e29ae6ccd54f870346e7.md) | 66 | `result-track:be12e29ae6ccd54f870346e76ffcf7420868112b48d65d35846609b2e1985282` |
| 4 | `def` | [starNormedAddGroupHom](../../../../../mathematics/Topology/MetricTopology/Basic/Variant4350fdde00f5e8bcaf2560b5222b0b36babb9240b4d05311be469cbafcd45ff8.lean/declarations/starnormedaddgrouphom--223ff1bb66515b43f836158b.md) | 70 | `declaration-track:223ff1bb66515b43f836158b8084f9c81458e0dfb5d6a75fd08910666b49c22a` |
| 5 | `theorem` | [star_isometry](../../../../../mathematics/Topology/MetricTopology/Basic/Variant4350fdde00f5e8bcaf2560b5222b0b36babb9240b4d05311be469cbafcd45ff8.lean/declarations/star-isometry--7366238082c6ae8800674c4b.md) | 74 | `result-track:7366238082c6ae8800674c4be3a9981c797c8c50810eea6248947b21e7dbf1ba` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/Basic/Variant4350fdde00f5e8bcaf2560b5222b0b36babb9240b4d05311be469cbafcd45ff8.lean/declarations/instance--7a21daf594c624563fdbfdbb.md) | 78 | `declaration-track:7a21daf594c624563fdbfdbbea47db8fb61db47045f4d527f77691e40853188e` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/Basic/Variant4350fdde00f5e8bcaf2560b5222b0b36babb9240b4d05311be469cbafcd45ff8.lean/declarations/instance--a78254369ba01b6355b7e258.md) | 82 | `declaration-track:a78254369ba01b6355b7e258dd39fa13a8c391f2d483c42cf5ee3f7d48bfe89c` |
| 8 | `lemma` | [Metric.star_ball](../../../../../mathematics/Topology/MetricTopology/Basic/Variant4350fdde00f5e8bcaf2560b5222b0b36babb9240b4d05311be469cbafcd45ff8.lean/declarations/metric-star-ball--51d2251d184307839f5cc975.md) | 88 | `result-track:51d2251d184307839f5cc9753192d0ec2c3f973d48f10e07dd46a3cbfe48145c` |
| 9 | `lemma` | [Metric.star_closedBall](../../../../../mathematics/Topology/MetricTopology/Basic/Variant4350fdde00f5e8bcaf2560b5222b0b36babb9240b4d05311be469cbafcd45ff8.lean/declarations/metric-star-closedball--c24431c31dd8ac4698d78938.md) | 91 | `result-track:c24431c31dd8ac4698d789382c746f39f38ca5298317e1f5817e521898efe927` |
| 10 | `lemma` | [Metric.star_sphere](../../../../../mathematics/Topology/MetricTopology/Basic/Variant4350fdde00f5e8bcaf2560b5222b0b36babb9240b4d05311be469cbafcd45ff8.lean/declarations/metric-star-sphere--cd41d2597f8e5d7bbc22c0b8.md) | 94 | `result-track:cd41d2597f8e5d7bbc22c0b8463b0b5fc6c1c39625dafc7ee00d9cf267095b66` |
| 11 | `lemma` | [dist_star_star](../../../../../mathematics/Topology/MetricTopology/Basic/Variant4350fdde00f5e8bcaf2560b5222b0b36babb9240b4d05311be469cbafcd45ff8.lean/declarations/dist-star-star--9067e1785ad4ac4f44b8581b.md) | 97 | `result-track:9067e1785ad4ac4f44b8581bf1696c01824d6796566a3eb1335777f1e2a94f78` |
| 12 | `lemma` | [edist_star_star](../../../../../mathematics/Topology/MetricTopology/Basic/Variant4350fdde00f5e8bcaf2560b5222b0b36babb9240b4d05311be469cbafcd45ff8.lean/declarations/edist-star-star--245f5b37bf371242f7f39c1c.md) | 100 | `result-track:245f5b37bf371242f7f39c1cb2be7b8b307d16fd0db1439d4adbc332d8b25086` |
| 13 | `lemma` | [nndist_star_star](../../../../../mathematics/Topology/MetricTopology/Basic/Variant4350fdde00f5e8bcaf2560b5222b0b36babb9240b4d05311be469cbafcd45ff8.lean/declarations/nndist-star-star--c571cb316db51ec0ce413947.md) | 103 | `result-track:c571cb316db51ec0ce413947686a52a3f9f9eed5cad4fa6faf0b777b4ec1d88c` |
| 14 | `instance` | [RingHomIsometric.starRingEnd](../../../../../mathematics/Topology/MetricTopology/Basic/Variant4350fdde00f5e8bcaf2560b5222b0b36babb9240b4d05311be469cbafcd45ff8.lean/declarations/ringhomisometric-starringend--69918cd2b4c7ba473674afd5.md) | 108 | `declaration-track:69918cd2b4c7ba473674afd5cccd7e199948283ea8249f3ea2d6d7d73e2db5a9` |
| 15 | `class` | [CStarRing](../../../../../mathematics/Topology/MetricTopology/Basic/Variant4350fdde00f5e8bcaf2560b5222b0b36babb9240b4d05311be469cbafcd45ff8.lean/declarations/cstarring--cda2f8c8a9c3f4b4b6f8f0de.md) | 115 | `declaration-track:cda2f8c8a9c3f4b4b6f8f0de63f2da9daaf316d419f4c32ebbd912abe67efcb4` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/Basic/Variant4350fdde00f5e8bcaf2560b5222b0b36babb9240b4d05311be469cbafcd45ff8.lean/declarations/instance--4e8122784dad0d8102bf5fbd.md) | 118 | `declaration-track:4e8122784dad0d8102bf5fbd5298f13def06dd95e172bdcd1ef1bc8ed24c6916` |
| 17 | `lemma` | [of_le_norm_mul_star_self](../../../../../mathematics/Topology/MetricTopology/Basic/Variant4350fdde00f5e8bcaf2560b5222b0b36babb9240b4d05311be469cbafcd45ff8.lean/declarations/of-le-norm-mul-star-self--1c5acd7e90c2769e40335583.md) | 125 | `result-track:1c5acd7e90c2769e403355835421bb562cddf78aa761e4f04853011cc9651eac` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/Basic/Variant4350fdde00f5e8bcaf2560b5222b0b36babb9240b4d05311be469cbafcd45ff8.lean/declarations/instance--2b73444e19dc3a6e834fe250.md) | 140 | `declaration-track:2b73444e19dc3a6e834fe250557c65f44a127978d1aa50ee37dda188d83bc00e` |
| 19 | `theorem` | [norm_star_mul_self](../../../../../mathematics/Topology/MetricTopology/Basic/Variant4350fdde00f5e8bcaf2560b5222b0b36babb9240b4d05311be469cbafcd45ff8.lean/declarations/norm-star-mul-self--eeabb5205cdee32603fcbbd5.md) | 147 | `result-track:eeabb5205cdee32603fcbbd5fd3e3e189eb7b356930c7c4400d00974874f5868` |
| 20 | `theorem` | [norm_self_mul_star](../../../../../mathematics/Topology/MetricTopology/Basic/Variant4350fdde00f5e8bcaf2560b5222b0b36babb9240b4d05311be469cbafcd45ff8.lean/declarations/norm-self-mul-star--bd98a40f13280a80c3e32c6c.md) | 150 | `result-track:bd98a40f13280a80c3e32c6c38626241c4adac03def592d0c12abfe810280b06` |
| 21 | `theorem` | [norm_star_mul_self'](../../../../../mathematics/Topology/MetricTopology/Basic/Variant4350fdde00f5e8bcaf2560b5222b0b36babb9240b4d05311be469cbafcd45ff8.lean/declarations/norm-star-mul-self--89a076c5344748785599ba26.md) | 154 | `result-track:89a076c5344748785599ba266b1b838fe080dadf89cbf6376110ab7d4ec4cdb2` |
| 22 | `theorem` | [nnnorm_self_mul_star](../../../../../mathematics/Topology/MetricTopology/Basic/Variant4350fdde00f5e8bcaf2560b5222b0b36babb9240b4d05311be469cbafcd45ff8.lean/declarations/nnnorm-self-mul-star--745ed3a9c93ae668576f106f.md) | 156 | `result-track:745ed3a9c93ae668576f106ff66be85fe8be432618acbb8d47b469b6e79c5584` |
| 23 | `theorem` | [nnnorm_star_mul_self](../../../../../mathematics/Topology/MetricTopology/Basic/Variant4350fdde00f5e8bcaf2560b5222b0b36babb9240b4d05311be469cbafcd45ff8.lean/declarations/nnnorm-star-mul-self--ed30ef95e72e809b3fc31df5.md) | 159 | `result-track:ed30ef95e72e809b3fc31df559e4c621b4c04830ea0d424852a71a21e9033d8a` |
| 24 | `lemma` | [_root_.GRWTSK.Topology.MetricTopology.NormedStarGroup.Variantbc67e3e3614632d68a9b4c5d8918eec7311e079e3a2c7e3f97f2cb2c180e4870.IsSelfAdjoint.norm_mul_self](../../../../../mathematics/Topology/MetricTopology/Basic/Variant4350fdde00f5e8bcaf2560b5222b0b36babb9240b4d05311be469cbafcd45ff8.lean/declarations/root-grwtsk-topology-metrictopology-normedstargroup-variantbc67e3e361463--5e2e0a3230f89f9a902c7129.md) | 162 | `result-track:5e2e0a3230f89f9a902c71297a4bf2bb4a9279748cfb2318dc4580aca6304a1a` |
| 25 | `lemma` | [_root_.GRWTSK.Topology.MetricTopology.NormedStarGroup.Variantbc67e3e3614632d68a9b4c5d8918eec7311e079e3a2c7e3f97f2cb2c180e4870.IsSelfAdjoint.nnnorm_mul_self](../../../../../mathematics/Topology/MetricTopology/Basic/Variant4350fdde00f5e8bcaf2560b5222b0b36babb9240b4d05311be469cbafcd45ff8.lean/declarations/root-grwtsk-topology-metrictopology-normedstargroup-variantbc67e3e361463--406622623ec613d2c1d2479f.md) | 166 | `result-track:406622623ec613d2c1d2479f7b07fbb840e5f04576f7d9a1fc28f111c94e76e6` |
| 26 | `theorem` | [star_mul_self_eq_zero_iff](../../../../../mathematics/Topology/MetricTopology/Basic/Variant4350fdde00f5e8bcaf2560b5222b0b36babb9240b4d05311be469cbafcd45ff8.lean/declarations/star-mul-self-eq-zero-iff--7a991905e4d7360ab73cfac3.md) | 171 | `result-track:7a991905e4d7360ab73cfac308f7ee51b69433f8fdc33640c4c9ee2b49af392f` |
| 27 | `theorem` | [star_mul_self_ne_zero_iff](../../../../../mathematics/Topology/MetricTopology/Basic/Variant4350fdde00f5e8bcaf2560b5222b0b36babb9240b4d05311be469cbafcd45ff8.lean/declarations/star-mul-self-ne-zero-iff--59902b171410abc2155c5f1e.md) | 175 | `result-track:59902b171410abc2155c5f1e19c39586b2a52ae8f9f5d034802840fef35619d9` |
| 28 | `theorem` | [mul_star_self_eq_zero_iff](../../../../../mathematics/Topology/MetricTopology/Basic/Variant4350fdde00f5e8bcaf2560b5222b0b36babb9240b4d05311be469cbafcd45ff8.lean/declarations/mul-star-self-eq-zero-iff--059e50716086a960277292e7.md) | 179 | `result-track:059e50716086a960277292e75ceab0e79b67be8b983e405a8711c80f4c3a3a1f` |
| 29 | `theorem` | [mul_star_self_ne_zero_iff](../../../../../mathematics/Topology/MetricTopology/Basic/Variant4350fdde00f5e8bcaf2560b5222b0b36babb9240b4d05311be469cbafcd45ff8.lean/declarations/mul-star-self-ne-zero-iff--bf9e6dbf2ee79308f370231d.md) | 182 | `result-track:bf9e6dbf2ee79308f370231d2af4774ff2f872363ba7b37f75aa194938df895f` |
| 30 | `instance` | [_root_.GRWTSK.Topology.MetricTopology.NormedStarGroup.Variantbc67e3e3614632d68a9b4c5d8918eec7311e079e3a2c7e3f97f2cb2c180e4870.Pi.starRing'](../../../../../mathematics/Topology/MetricTopology/Basic/Variant4350fdde00f5e8bcaf2560b5222b0b36babb9240b4d05311be469cbafcd45ff8.lean/declarations/root-grwtsk-topology-metrictopology-normedstargroup-variantbc67e3e361463--ddfd86ed1d1a63d84b0e2903.md) | 196 | `declaration-track:ddfd86ed1d1a63d84b0e29037b7b59f932c7a51d8ccbca003c2f31bd42f9e937` |
| 31 | `instance` | [_root_.GRWTSK.Topology.MetricTopology.NormedStarGroup.Variantbc67e3e3614632d68a9b4c5d8918eec7311e079e3a2c7e3f97f2cb2c180e4870.Prod.cstarRing](../../../../../mathematics/Topology/MetricTopology/Basic/Variant4350fdde00f5e8bcaf2560b5222b0b36babb9240b4d05311be469cbafcd45ff8.lean/declarations/root-grwtsk-topology-metrictopology-normedstargroup-variantbc67e3e361463--0d76db6cb22039c59523a565.md) | 201 | `declaration-track:0d76db6cb22039c59523a56596b3462b16df7def3b99faa5e2e443a2b89bcb1c` |
| 32 | `instance` | [_root_.GRWTSK.Topology.MetricTopology.NormedStarGroup.Variantbc67e3e3614632d68a9b4c5d8918eec7311e079e3a2c7e3f97f2cb2c180e4870.Pi.cstarRing](../../../../../mathematics/Topology/MetricTopology/Basic/Variant4350fdde00f5e8bcaf2560b5222b0b36babb9240b4d05311be469cbafcd45ff8.lean/declarations/root-grwtsk-topology-metrictopology-normedstargroup-variantbc67e3e361463--d125cca1bdc886ce8325c11b.md) | 208 | `declaration-track:d125cca1bdc886ce8325c11bed3b87a6eb074799a845a0a4acc800631b70c240` |
| 33 | `instance` | [_root_.GRWTSK.Topology.MetricTopology.NormedStarGroup.Variantbc67e3e3614632d68a9b4c5d8918eec7311e079e3a2c7e3f97f2cb2c180e4870.Pi.cstarRing'](../../../../../mathematics/Topology/MetricTopology/Basic/Variant4350fdde00f5e8bcaf2560b5222b0b36babb9240b4d05311be469cbafcd45ff8.lean/declarations/root-grwtsk-topology-metrictopology-normedstargroup-variantbc67e3e361463--1465e585d7f0ee020b513e0f.md) | 217 | `declaration-track:1465e585d7f0ee020b513e0f2e593584a0f258bbe4979c3b1670d4857d093a8e` |
| 34 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/Basic/Variant4350fdde00f5e8bcaf2560b5222b0b36babb9240b4d05311be469cbafcd45ff8.lean/declarations/instance--76cd9d940d69ba15f630195a.md) | 224 | `declaration-track:76cd9d940d69ba15f630195ad87ac1cfb6fabae72aa58c4fe2484323a03408fa` |
| 35 | `theorem` | [norm_one](../../../../../mathematics/Topology/MetricTopology/Basic/Variant4350fdde00f5e8bcaf2560b5222b0b36babb9240b4d05311be469cbafcd45ff8.lean/declarations/norm-one--4c7ff2c1547c38ab5e8625ae.md) | 234 | `result-track:4c7ff2c1547c38ab5e8625aecf013501388dbbe8aae34798bcfafb5c7354fc3a` |
| 36 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/Basic/Variant4350fdde00f5e8bcaf2560b5222b0b36babb9240b4d05311be469cbafcd45ff8.lean/declarations/instance--56ac057f2bc79a7e63dc1393.md) | 239 | `declaration-track:56ac057f2bc79a7e63dc1393668644f2800e16f2c7d01d57c0fc27f585be6de8` |
| 37 | `theorem` | [norm_coe_unitary](../../../../../mathematics/Topology/MetricTopology/Basic/Variant4350fdde00f5e8bcaf2560b5222b0b36babb9240b4d05311be469cbafcd45ff8.lean/declarations/norm-coe-unitary--dcb31be1ff1dbc7af7d7ebc9.md) | 243 | `result-track:dcb31be1ff1dbc7af7d7ebc9aa138dded46f5446e3f3de513daa7f0766955af9` |
| 38 | `theorem` | [norm_of_mem_unitary](../../../../../mathematics/Topology/MetricTopology/Basic/Variant4350fdde00f5e8bcaf2560b5222b0b36babb9240b4d05311be469cbafcd45ff8.lean/declarations/norm-of-mem-unitary--6c5d8863bc2f140cee5afa52.md) | 247 | `result-track:6c5d8863bc2f140cee5afa52fc01a20fa7a0b4065fde244f9788bd325ac90a6f` |
| 39 | `theorem` | [norm_coe_unitary_mul](../../../../../mathematics/Topology/MetricTopology/Basic/Variant4350fdde00f5e8bcaf2560b5222b0b36babb9240b4d05311be469cbafcd45ff8.lean/declarations/norm-coe-unitary-mul--bb25b658d926aaafe7762e70.md) | 251 | `result-track:bb25b658d926aaafe7762e708280ccbed094217124083da6d5e754d74947ff9d` |
| 40 | `theorem` | [norm_unitary_smul](../../../../../mathematics/Topology/MetricTopology/Basic/Variant4350fdde00f5e8bcaf2560b5222b0b36babb9240b4d05311be469cbafcd45ff8.lean/declarations/norm-unitary-smul--8edcd769ddd0c988e4777a83.md) | 256 | `result-track:8edcd769ddd0c988e4777a83d498952b0b792650ed4d9a4c0210fa227f5a8be1` |
| 41 | `theorem` | [norm_mem_unitary_mul](../../../../../mathematics/Topology/MetricTopology/Basic/Variant4350fdde00f5e8bcaf2560b5222b0b36babb9240b4d05311be469cbafcd45ff8.lean/declarations/norm-mem-unitary-mul--0c20fa40d9221b77e1a4dc5e.md) | 259 | `result-track:0c20fa40d9221b77e1a4dc5ec76a6409522dd646ddb2faa96dfab2a750a75ce4` |
| 42 | `theorem` | [norm_mul_coe_unitary](../../../../../mathematics/Topology/MetricTopology/Basic/Variant4350fdde00f5e8bcaf2560b5222b0b36babb9240b4d05311be469cbafcd45ff8.lean/declarations/norm-mul-coe-unitary--ede93ae9a6aeeb71a8cffdf1.md) | 263 | `result-track:ede93ae9a6aeeb71a8cffdf1e47d7c6b3d9b423ee9d7435482df1f94966857bc` |
| 43 | `theorem` | [norm_mul_mem_unitary](../../../../../mathematics/Topology/MetricTopology/Basic/Variant4350fdde00f5e8bcaf2560b5222b0b36babb9240b4d05311be469cbafcd45ff8.lean/declarations/norm-mul-mem-unitary--c7f54f90a1f373e00a2c49b4.md) | 266 | `result-track:c7f54f90a1f373e00a2c49b4e0fd42435a568482a9919051e3ab8681e39c77d4` |
| 44 | `theorem` | [IsSelfAdjoint.nnnorm_pow_two_pow](../../../../../mathematics/Topology/MetricTopology/Basic/Variant4350fdde00f5e8bcaf2560b5222b0b36babb9240b4d05311be469cbafcd45ff8.lean/declarations/isselfadjoint-nnnorm-pow-two-pow--864a994ba217ec328c9c9fe4.md) | 277 | `result-track:864a994ba217ec328c9c9fe4532c5061495b0a55357cc9a0e0a9f293c52bb464` |
| 45 | `theorem` | [IsSelfAdjoint.norm_pow_two_pow](../../../../../mathematics/Topology/MetricTopology/Basic/Variant4350fdde00f5e8bcaf2560b5222b0b36babb9240b4d05311be469cbafcd45ff8.lean/declarations/isselfadjoint-norm-pow-two-pow--d527efc4bebb38e8b9b398d4.md) | 284 | `result-track:d527efc4bebb38e8b9b398d43bf26902e05d3e033768895c34cfd2b5ee2133b9` |
| 46 | `theorem` | [IsStarProjection.norm_le](../../../../../mathematics/Topology/MetricTopology/Basic/Variant4350fdde00f5e8bcaf2560b5222b0b36babb9240b4d05311be469cbafcd45ff8.lean/declarations/isstarprojection-norm-le--929fbca243c868d1d2c17c0a.md) | 290 | `result-track:929fbca243c868d1d2c17c0abb2183ec7537f7ca2f87f131be05163326db12c1` |
| 47 | `def` | [starₗᵢ](../../../../../mathematics/Topology/MetricTopology/Basic/Variant4350fdde00f5e8bcaf2560b5222b0b36babb9240b4d05311be469cbafcd45ff8.lean/declarations/star--a346da5d47574f89a4c195a0.md) | 303 | `declaration-track:a346da5d47574f89a4c195a0dfaf541febfadc9abfb588473bbfec21c75697a6` |
| 48 | `theorem` | [coe_starₗᵢ](../../../../../mathematics/Topology/MetricTopology/Basic/Variant4350fdde00f5e8bcaf2560b5222b0b36babb9240b4d05311be469cbafcd45ff8.lean/declarations/coe-star--b49991ef37838e766f0a3b8a.md) | 309 | `result-track:b49991ef37838e766f0a3b8aac60defd92699b6b1e743db9bb13e7b65315c86e` |
| 49 | `theorem` | [starₗᵢ_apply](../../../../../mathematics/Topology/MetricTopology/Basic/Variant4350fdde00f5e8bcaf2560b5222b0b36babb9240b4d05311be469cbafcd45ff8.lean/declarations/star-apply--454c02e7099d59c00793e519.md) | 312 | `result-track:454c02e7099d59c00793e519e3706d87e4e43a24ed586b3c94e9fd131df88761` |
| 50 | `theorem` | [symm_starₗᵢ](../../../../../mathematics/Topology/MetricTopology/Basic/Variant4350fdde00f5e8bcaf2560b5222b0b36babb9240b4d05311be469cbafcd45ff8.lean/declarations/symm-star--69e7f75d1f40f63531442fc8.md) | 316 | `result-track:69e7f75d1f40f63531442fc8f75da212fab83fb9968c613ad1163620c1d0b5f9` |
| 51 | `theorem` | [starₗᵢ_toContinuousLinearEquiv](../../../../../mathematics/Topology/MetricTopology/Basic/Variant4350fdde00f5e8bcaf2560b5222b0b36babb9240b4d05311be469cbafcd45ff8.lean/declarations/star-tocontinuouslinearequiv--ba63db65ed8dc6e5c173c302.md) | 320 | `result-track:ba63db65ed8dc6e5c173c30270b86465093b369d94baedb23c69e91f234dcade` |
| 52 | `theorem` | [toLinearEquiv_starₗᵢ](../../../../../mathematics/Topology/MetricTopology/Basic/Variant4350fdde00f5e8bcaf2560b5222b0b36babb9240b4d05311be469cbafcd45ff8.lean/declarations/tolinearequiv-star--b95b49c1dd04e485e35d26a1.md) | 325 | `result-track:b95b49c1dd04e485e35d26a154937e32a8808ae515b891428ad971a030bb0608` |
| 53 | `example` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/Basic/Variant4350fdde00f5e8bcaf2560b5222b0b36babb9240b4d05311be469cbafcd45ff8.lean/declarations/example--9d9edef4ede5445fb9aeb19d.md) | 332 | `declaration-track:9d9edef4ede5445fb9aeb19d02fd68dfaa8a5b61d0fb46f7c50a2cbbe0ca8aa3` |
| 54 | `instance` | [to_cstarRing](../../../../../mathematics/Topology/MetricTopology/Basic/Variant4350fdde00f5e8bcaf2560b5222b0b36babb9240b4d05311be469cbafcd45ff8.lean/declarations/to-cstarring--dd745ac7c809d8975939ccc0.md) | 336 | `declaration-track:dd745ac7c809d8975939ccc09cde916ecd9e507479e9309a12c4108c45fff9f3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
