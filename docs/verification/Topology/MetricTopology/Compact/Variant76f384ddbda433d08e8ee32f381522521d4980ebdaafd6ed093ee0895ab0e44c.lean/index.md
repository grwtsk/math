# Verification target: GRWTSK.Topology.MetricTopology.Compact.Variant76f384ddbda433d08e8ee32f381522521d4980ebdaafd6ed093ee0895ab0e44c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1ce25a6a93e40b82e933df7206e0b6447873dd3b",
  "lexical_observation_count": 62,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/Compact/Variant76f384ddbda433d08e8ee32f381522521d4980ebdaafd6ed093ee0895ab0e44c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/MetricTopology/Compact/Variant76f384ddbda433d08e8ee32f381522521d4980ebdaafd6ed093ee0895ab0e44c.lean/index.md) · [Full source](../../../../../mathematics/Topology/MetricTopology/Compact/Variant76f384ddbda433d08e8ee32f381522521d4980ebdaafd6ed093ee0895ab0e44c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1ce25a6a93e40b82e933df7206e0b6447873dd3b`.

Source path: `GRWTSK/Topology/MetricTopology/Compact/Variant76f384ddbda433d08e8ee32f381522521d4980ebdaafd6ed093ee0895ab0e44c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/Compact/Variant76f384ddbda433d08e8ee32f381522521d4980ebdaafd6ed093ee0895ab0e44c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.ContinuousMap.Bounded.Star` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.ContinuousMap.Star` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.UniformSpace.Compact` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.CompactOpen` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Sets.Compacts` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Group.InfiniteSum` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [equivBoundedOfCompact](../../../../../mathematics/Topology/MetricTopology/Compact/Variant76f384ddbda433d08e8ee32f381522521d4980ebdaafd6ed093ee0895ab0e44c.lean/declarations/equivboundedofcompact--099fd2f149017d5b110905aa.md) | 44 | `declaration-track:099fd2f149017d5b110905aacf06ca0f059785de105de2751723a49a0d338b0d` |
| 2 | `theorem` | [isUniformInducing_equivBoundedOfCompact](../../../../../mathematics/Topology/MetricTopology/Compact/Variant76f384ddbda433d08e8ee32f381522521d4980ebdaafd6ed093ee0895ab0e44c.lean/declarations/isuniforminducing-equivboundedofcompact--9ae5e293bbced58536133411.md) | 51 | `result-track:9ae5e293bbced58536133411abdafcfd8592298ac3cbedbccab1b3b0cd815f45` |
| 3 | `theorem` | [isUniformEmbedding_equivBoundedOfCompact](../../../../../mathematics/Topology/MetricTopology/Compact/Variant76f384ddbda433d08e8ee32f381522521d4980ebdaafd6ed093ee0895ab0e44c.lean/declarations/isuniformembedding-equivboundedofcompact--dba2beb79426d0f44696910c.md) | 63 | `result-track:dba2beb79426d0f44696910c40a417b6578a8080251eeeed22a07cfe37f74267` |
| 4 | `def` | [addEquivBoundedOfCompact](../../../../../mathematics/Topology/MetricTopology/Compact/Variant76f384ddbda433d08e8ee32f381522521d4980ebdaafd6ed093ee0895ab0e44c.lean/declarations/addequivboundedofcompact--6e902af084a954dec1a2cc14.md) | 71 | `declaration-track:6e902af084a954dec1a2cc149ea767c7bfec516a0be6832c8b5a52aa363d3749` |
| 5 | `instance` | [instPseudoMetricSpace](../../../../../mathematics/Topology/MetricTopology/Compact/Variant76f384ddbda433d08e8ee32f381522521d4980ebdaafd6ed093ee0895ab0e44c.lean/declarations/instpseudometricspace--455d0e2ca7b3118bb645d2e7.md) | 74 | `declaration-track:455d0e2ca7b3118bb645d2e7e85cf56509f6abe905060b45e74cb6abe355c669` |
| 6 | `instance` | [instMetricSpace](../../../../../mathematics/Topology/MetricTopology/Compact/Variant76f384ddbda433d08e8ee32f381522521d4980ebdaafd6ed093ee0895ab0e44c.lean/declarations/instmetricspace--d5daa5dd368ad3c7d04a021d.md) | 77 | `declaration-track:d5daa5dd368ad3c7d04a021d9530be7233b8b5c05e3cc8ed62e00ef95821474e` |
| 7 | `def` | [isometryEquivBoundedOfCompact](../../../../../mathematics/Topology/MetricTopology/Compact/Variant76f384ddbda433d08e8ee32f381522521d4980ebdaafd6ed093ee0895ab0e44c.lean/declarations/isometryequivboundedofcompact--9b6d8682b505c3d625ba5935.md) | 86 | `declaration-track:9b6d8682b505c3d625ba5935a56448ee82fcab42f853b8b92c5d736476ad8b1a` |
| 8 | `theorem` | [_root_.BoundedContinuousFunction.dist_mkOfCompact](../../../../../mathematics/Topology/MetricTopology/Compact/Variant76f384ddbda433d08e8ee32f381522521d4980ebdaafd6ed093ee0895ab0e44c.lean/declarations/root-boundedcontinuousfunction-dist-mkofcompact--93b11aa05e54eb35db4e676d.md) | 93 | `result-track:93b11aa05e54eb35db4e676dcc71f9e2ece2981fd27c55fe7b45660d7cf7561f` |
| 9 | `theorem` | [_root_.BoundedContinuousFunction.dist_toContinuousMap](../../../../../mathematics/Topology/MetricTopology/Compact/Variant76f384ddbda433d08e8ee32f381522521d4980ebdaafd6ed093ee0895ab0e44c.lean/declarations/root-boundedcontinuousfunction-dist-tocontinuousmap--cff11e8a027d8d7c03b0d8b4.md) | 98 | `result-track:cff11e8a027d8d7c03b0d8b49faaa7b6d0268802cef6641846ffba8f0ae317c4` |
| 10 | `theorem` | [dist_apply_le_dist](../../../../../mathematics/Topology/MetricTopology/Compact/Variant76f384ddbda433d08e8ee32f381522521d4980ebdaafd6ed093ee0895ab0e44c.lean/declarations/dist-apply-le-dist--73ba4e0b7b8ad5679659385c.md) | 109 | `result-track:73ba4e0b7b8ad5679659385c9cdaa559789a615e9650f1c53a2178f0ea693213` |
| 11 | `theorem` | [dist_le](../../../../../mathematics/Topology/MetricTopology/Compact/Variant76f384ddbda433d08e8ee32f381522521d4980ebdaafd6ed093ee0895ab0e44c.lean/declarations/dist-le--3f7062572b99edd6a492329e.md) | 113 | `result-track:3f7062572b99edd6a492329ee374c30714247c2ad6584681a38e14c7d728871d` |
| 12 | `theorem` | [dist_le_iff_of_nonempty](../../../../../mathematics/Topology/MetricTopology/Compact/Variant76f384ddbda433d08e8ee32f381522521d4980ebdaafd6ed093ee0895ab0e44c.lean/declarations/dist-le-iff-of-nonempty--a666201e6b6efe51c251e631.md) | 116 | `result-track:a666201e6b6efe51c251e631695f15997f330ab99072f31aa6728f685159d818` |
| 13 | `theorem` | [dist_lt_iff_of_nonempty](../../../../../mathematics/Topology/MetricTopology/Compact/Variant76f384ddbda433d08e8ee32f381522521d4980ebdaafd6ed093ee0895ab0e44c.lean/declarations/dist-lt-iff-of-nonempty--9be14563ee0125c7d90ee69b.md) | 120 | `result-track:9be14563ee0125c7d90ee69bbe6a250992b1e5a68550fed9cbbc14cdeab9528e` |
| 14 | `theorem` | [dist_lt_of_nonempty](../../../../../mathematics/Topology/MetricTopology/Compact/Variant76f384ddbda433d08e8ee32f381522521d4980ebdaafd6ed093ee0895ab0e44c.lean/declarations/dist-lt-of-nonempty--340e7b2e6022fc570877f3bd.md) | 123 | `result-track:340e7b2e6022fc570877f3bde2b3881aac71270cee88f71916e0eaa83e339b82` |
| 15 | `theorem` | [dist_lt_iff](../../../../../mathematics/Topology/MetricTopology/Compact/Variant76f384ddbda433d08e8ee32f381522521d4980ebdaafd6ed093ee0895ab0e44c.lean/declarations/dist-lt-iff--6a1e2836eaa4d2417fc41e1c.md) | 126 | `result-track:6a1e2836eaa4d2417fc41e1c6ef763581d0247b0ec807b2ba7de99e4dfa84e01` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/Compact/Variant76f384ddbda433d08e8ee32f381522521d4980ebdaafd6ed093ee0895ab0e44c.lean/declarations/instance--7c6dcd084928e07bc66056f6.md) | 130 | `declaration-track:7c6dcd084928e07bc66056f68be3cacfa408289b9f70085f832ee954626ea2ea` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/Compact/Variant76f384ddbda433d08e8ee32f381522521d4980ebdaafd6ed093ee0895ab0e44c.lean/declarations/instance--7dec6c83d22d90f0c594f302.md) | 141 | `declaration-track:7dec6c83d22d90f0c594f302e69d2edb5789779b287efe30350fc2397ceffea6` |
| 18 | `theorem` | [_root_.BoundedContinuousFunction.norm_mkOfCompact](../../../../../mathematics/Topology/MetricTopology/Compact/Variant76f384ddbda433d08e8ee32f381522521d4980ebdaafd6ed093ee0895ab0e44c.lean/declarations/root-boundedcontinuousfunction-norm-mkofcompact--cd8e77270e2bcc2d600247dd.md) | 144 | `result-track:cd8e77270e2bcc2d600247dd3f7fd81bd994892ecd2fa21e74f943613adb642a` |
| 19 | `theorem` | [_root_.BoundedContinuousFunction.norm_toContinuousMap_eq](../../../../../mathematics/Topology/MetricTopology/Compact/Variant76f384ddbda433d08e8ee32f381522521d4980ebdaafd6ed093ee0895ab0e44c.lean/declarations/root-boundedcontinuousfunction-norm-tocontinuousmap-eq--e06b2e7b25c11f2fa461312a.md) | 148 | `result-track:e06b2e7b25c11f2fa461312af8fc8e3f06ba183229f52dffe401d504b1a78021` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/Compact/Variant76f384ddbda433d08e8ee32f381522521d4980ebdaafd6ed093ee0895ab0e44c.lean/declarations/instance--178b0dde924ce743fa4010eb.md) | 154 | `declaration-track:178b0dde924ce743fa4010eba89698ee3e44f003e00d0d369ed66814cec1c179` |
| 21 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/Compact/Variant76f384ddbda433d08e8ee32f381522521d4980ebdaafd6ed093ee0895ab0e44c.lean/declarations/instance--2d849e0796f1692a65e4f04a.md) | 162 | `declaration-track:2d849e0796f1692a65e4f04a0e8434e55f0d4b440a427c03258280e729016aeb` |
| 22 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/Compact/Variant76f384ddbda433d08e8ee32f381522521d4980ebdaafd6ed093ee0895ab0e44c.lean/declarations/instance--f842fdf979adc8c6dd67657e.md) | 166 | `declaration-track:f842fdf979adc8c6dd67657e63502736055fca3e4eb38f456987d239bdb1ca5b` |
| 23 | `theorem` | [norm_coe_le_norm](../../../../../mathematics/Topology/MetricTopology/Compact/Variant76f384ddbda433d08e8ee32f381522521d4980ebdaafd6ed093ee0895ab0e44c.lean/declarations/norm-coe-le-norm--66b2b8231cc2ff4df9d5a836.md) | 175 | `result-track:66b2b8231cc2ff4df9d5a8364cb309ec79f455b894d5bcc87a66e8d170ad594e` |
| 24 | `theorem` | [dist_le_two_norm](../../../../../mathematics/Topology/MetricTopology/Compact/Variant76f384ddbda433d08e8ee32f381522521d4980ebdaafd6ed093ee0895ab0e44c.lean/declarations/dist-le-two-norm--52fb10b9c77851fb19453bcf.md) | 179 | `result-track:52fb10b9c77851fb19453bcfc5918c909fad9cca757b585350e9098a2380d218` |
| 25 | `theorem` | [norm_le](../../../../../mathematics/Topology/MetricTopology/Compact/Variant76f384ddbda433d08e8ee32f381522521d4980ebdaafd6ed093ee0895ab0e44c.lean/declarations/norm-le--b052afbab3ddeb3283833489.md) | 183 | `result-track:b052afbab3ddeb328383348998da13db4d886a5e8b45ed5c09b4c1e348f5ec32` |
| 26 | `theorem` | [norm_le_of_nonempty](../../../../../mathematics/Topology/MetricTopology/Compact/Variant76f384ddbda433d08e8ee32f381522521d4980ebdaafd6ed093ee0895ab0e44c.lean/declarations/norm-le-of-nonempty--895fa79dbb3131e10b91aff0.md) | 186 | `result-track:895fa79dbb3131e10b91aff05db3e8cc7136831be4a04962f26e664db4775960` |
| 27 | `theorem` | [norm_lt_iff](../../../../../mathematics/Topology/MetricTopology/Compact/Variant76f384ddbda433d08e8ee32f381522521d4980ebdaafd6ed093ee0895ab0e44c.lean/declarations/norm-lt-iff--62fecef2b4b15688cabb7bec.md) | 189 | `result-track:62fecef2b4b15688cabb7bec65f3ca5f4eed6c934b34ca4f2ca71b49b10ac276` |
| 28 | `theorem` | [nnnorm_lt_iff](../../../../../mathematics/Topology/MetricTopology/Compact/Variant76f384ddbda433d08e8ee32f381522521d4980ebdaafd6ed093ee0895ab0e44c.lean/declarations/nnnorm-lt-iff--8737453b687d8269823dea6b.md) | 192 | `result-track:8737453b687d8269823dea6bc735966ca819dd7d5384f523b7ef6fbe9e97c54c` |
| 29 | `theorem` | [norm_lt_iff_of_nonempty](../../../../../mathematics/Topology/MetricTopology/Compact/Variant76f384ddbda433d08e8ee32f381522521d4980ebdaafd6ed093ee0895ab0e44c.lean/declarations/norm-lt-iff-of-nonempty--75de5f507a858593e42592dc.md) | 195 | `result-track:75de5f507a858593e42592dcdc7db3af312006692ec0c58bd690eda241484444` |
| 30 | `theorem` | [nnnorm_lt_iff_of_nonempty](../../../../../mathematics/Topology/MetricTopology/Compact/Variant76f384ddbda433d08e8ee32f381522521d4980ebdaafd6ed093ee0895ab0e44c.lean/declarations/nnnorm-lt-iff-of-nonempty--14d26d272d700680dbbd89b2.md) | 198 | `result-track:14d26d272d700680dbbd89b221a88ffab4824d3fa1c2e4d373d4ec086b0cf0ba` |
| 31 | `theorem` | [apply_le_norm](../../../../../mathematics/Topology/MetricTopology/Compact/Variant76f384ddbda433d08e8ee32f381522521d4980ebdaafd6ed093ee0895ab0e44c.lean/declarations/apply-le-norm--25876b569e1221bbe1d657ea.md) | 201 | `result-track:25876b569e1221bbe1d657ea109652ff547ed8a6b7709eee5ed153ce7c86997b` |
| 32 | `theorem` | [neg_norm_le_apply](../../../../../mathematics/Topology/MetricTopology/Compact/Variant76f384ddbda433d08e8ee32f381522521d4980ebdaafd6ed093ee0895ab0e44c.lean/declarations/neg-norm-le-apply--48771f08f306675092298954.md) | 204 | `result-track:48771f08f3066750922989542de6831b409640b20ab7de4cdbdff52a139177e7` |
| 33 | `theorem` | [nnnorm_eq_iSup_nnnorm](../../../../../mathematics/Topology/MetricTopology/Compact/Variant76f384ddbda433d08e8ee32f381522521d4980ebdaafd6ed093ee0895ab0e44c.lean/declarations/nnnorm-eq-isup-nnnorm--86acbaca9c5c5ffc8d766740.md) | 207 | `result-track:86acbaca9c5c5ffc8d7667403ffa135a2a4727b0b074966382607227dbb0b47b` |
| 34 | `theorem` | [norm_eq_iSup_norm](../../../../../mathematics/Topology/MetricTopology/Compact/Variant76f384ddbda433d08e8ee32f381522521d4980ebdaafd6ed093ee0895ab0e44c.lean/declarations/norm-eq-isup-norm--430c0d4dbe6165d2f9ecbd3d.md) | 210 | `result-track:430c0d4dbe6165d2f9ecbd3d55b7c296a901bfa6c90f6f65381ac5ed59d38b1f` |
| 35 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/Compact/Variant76f384ddbda433d08e8ee32f381522521d4980ebdaafd6ed093ee0895ab0e44c.lean/declarations/instance--e6a6e81bbc040fdf3ee7c14c.md) | 214 | `declaration-track:e6a6e81bbc040fdf3ee7c14cab73e4bca320ebb1fe04938179404197223413ea` |
| 36 | `theorem` | [norm_restrict_mono_set](../../../../../mathematics/Topology/MetricTopology/Compact/Variant76f384ddbda433d08e8ee32f381522521d4980ebdaafd6ed093ee0895ab0e44c.lean/declarations/norm-restrict-mono-set--7d42545e22b37cf36d807d9b.md) | 218 | `result-track:7d42545e22b37cf36d807d9b0da24d124eb47ef7679f63b0486fe48dc0b54fe6` |
| 37 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/Compact/Variant76f384ddbda433d08e8ee32f381522521d4980ebdaafd6ed093ee0895ab0e44c.lean/declarations/instance--586b58cf43d68bc43e74bc6e.md) | 228 | `declaration-track:586b58cf43d68bc43e74bc6e0e12695c0fafd25fbb9f89befb5808bff8d6900c` |
| 38 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/Compact/Variant76f384ddbda433d08e8ee32f381522521d4980ebdaafd6ed093ee0895ab0e44c.lean/declarations/instance--c1b35710e640c9f1cdf9be3c.md) | 233 | `declaration-track:c1b35710e640c9f1cdf9be3c13b5fd6282082996e86298c49d3c8ced183e6674` |
| 39 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/Compact/Variant76f384ddbda433d08e8ee32f381522521d4980ebdaafd6ed093ee0895ab0e44c.lean/declarations/instance--29ca5b7a286287f523b129a5.md) | 237 | `declaration-track:29ca5b7a286287f523b129a523d63be47beb445ef546008f379de87d495f8762` |
| 40 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/Compact/Variant76f384ddbda433d08e8ee32f381522521d4980ebdaafd6ed093ee0895ab0e44c.lean/declarations/instance--e71499597be6aa4ee417144d.md) | 241 | `declaration-track:e71499597be6aa4ee417144d6cf454ec8b91fb38fd873547cd7da491bcddb3e5` |
| 41 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/Compact/Variant76f384ddbda433d08e8ee32f381522521d4980ebdaafd6ed093ee0895ab0e44c.lean/declarations/instance--8c94b0512b478a82f1aeba2a.md) | 245 | `declaration-track:8c94b0512b478a82f1aeba2a2c32613aa4bb1e5483e6650b89c6082bee01564f` |
| 42 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/Compact/Variant76f384ddbda433d08e8ee32f381522521d4980ebdaafd6ed093ee0895ab0e44c.lean/declarations/instance--eb6f44621632031f5116044f.md) | 249 | `declaration-track:eb6f44621632031f5116044f6d2389a863a5c865d7d5724b8c13083b3d00e215` |
| 43 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/Compact/Variant76f384ddbda433d08e8ee32f381522521d4980ebdaafd6ed093ee0895ab0e44c.lean/declarations/instance--935307360a30eee7625b0191.md) | 253 | `declaration-track:935307360a30eee7625b01912cf87ac6671542695be5ed02b33ea9ece92c4f5c` |
| 44 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/Compact/Variant76f384ddbda433d08e8ee32f381522521d4980ebdaafd6ed093ee0895ab0e44c.lean/declarations/instance--4d3dab3a5f8395ee9a41621e.md) | 257 | `declaration-track:4d3dab3a5f8395ee9a41621edd445f2e46d02f470d144a5b8ec0d50510d516cc` |
| 45 | `instance` | [normedSpace](../../../../../mathematics/Topology/MetricTopology/Compact/Variant76f384ddbda433d08e8ee32f381522521d4980ebdaafd6ed093ee0895ab0e44c.lean/declarations/normedspace--28ded64f3866e230665ab4fc.md) | 267 | `declaration-track:28ded64f3866e230665ab4fc9465ab7bbc319553f308797e44d281cc31dceaef` |
| 46 | `def` | [linearIsometryBoundedOfCompact](../../../../../mathematics/Topology/MetricTopology/Compact/Variant76f384ddbda433d08e8ee32f381522521d4980ebdaafd6ed093ee0895ab0e44c.lean/declarations/linearisometryboundedofcompact--44035b4dc2f051d947975ac6.md) | 278 | `declaration-track:44035b4dc2f051d947975ac64d3c37a30cc411224217d98652bb41998797803f` |
| 47 | `theorem` | [linearIsometryBoundedOfCompact_symm_apply](../../../../../mathematics/Topology/MetricTopology/Compact/Variant76f384ddbda433d08e8ee32f381522521d4980ebdaafd6ed093ee0895ab0e44c.lean/declarations/linearisometryboundedofcompact-symm-apply--f5c6790e4c2ad988ccb41a0a.md) | 290 | `result-track:f5c6790e4c2ad988ccb41a0a17af42c15f56b26b2bf752a4989f8687710f2be1` |
| 48 | `theorem` | [linearIsometryBoundedOfCompact_apply_apply](../../../../../mathematics/Topology/MetricTopology/Compact/Variant76f384ddbda433d08e8ee32f381522521d4980ebdaafd6ed093ee0895ab0e44c.lean/declarations/linearisometryboundedofcompact-apply-apply--66d5e685d899b6d661d571e4.md) | 295 | `result-track:66d5e685d899b6d661d571e46aaa10cfd842959c6273e8147042e2b986d4e6e0` |
| 49 | `theorem` | [linearIsometryBoundedOfCompact_toIsometryEquiv](../../../../../mathematics/Topology/MetricTopology/Compact/Variant76f384ddbda433d08e8ee32f381522521d4980ebdaafd6ed093ee0895ab0e44c.lean/declarations/linearisometryboundedofcompact-toisometryequiv--5b771751b4270467cb0ede9b.md) | 300 | `result-track:5b771751b4270467cb0ede9b5b1d7262a3bd191fab54de46ded54c26d75cce89` |
| 50 | `theorem` | [linearIsometryBoundedOfCompact_toAddEquiv](../../../../../mathematics/Topology/MetricTopology/Compact/Variant76f384ddbda433d08e8ee32f381522521d4980ebdaafd6ed093ee0895ab0e44c.lean/declarations/linearisometryboundedofcompact-toaddequiv--5ff1b2752e9a2f9700415c10.md) | 305 | `result-track:5ff1b2752e9a2f9700415c108a705cf5112ce22f4566662241eb883ae780fd59` |
| 51 | `theorem` | [linearIsometryBoundedOfCompact_of_compact_toEquiv](../../../../../mathematics/Topology/MetricTopology/Compact/Variant76f384ddbda433d08e8ee32f381522521d4980ebdaafd6ed093ee0895ab0e44c.lean/declarations/linearisometryboundedofcompact-of-compact-toequiv--b59f615aeae7b4468adcdd61.md) | 311 | `result-track:b59f615aeae7b4468adcdd61dc25eb098ddf483f0d1ac4f0e5730c9917e003aa` |
| 52 | `lemma` | [nnnorm_smul_const](../../../../../mathematics/Topology/MetricTopology/Compact/Variant76f384ddbda433d08e8ee32f381522521d4980ebdaafd6ed093ee0895ab0e44c.lean/declarations/nnnorm-smul-const--33e853ddab3c67746ceffedc.md) | 317 | `result-track:33e853ddab3c67746ceffedc3f57591cb57ccd73d72ab442f4bcb043de861f4e` |
| 53 | `lemma` | [norm_smul_const](../../../../../mathematics/Topology/MetricTopology/Compact/Variant76f384ddbda433d08e8ee32f381522521d4980ebdaafd6ed093ee0895ab0e44c.lean/declarations/norm-smul-const--86a259d159e55fd3417f412c.md) | 322 | `result-track:86a259d159e55fd3417f412c3f0c24542c1c2d1312be8e0b406b7e4a319cba4f` |
| 54 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/Compact/Variant76f384ddbda433d08e8ee32f381522521d4980ebdaafd6ed093ee0895ab0e44c.lean/declarations/instance--f797fff76b65646b361730cb.md) | 331 | `declaration-track:f797fff76b65646b361730cb2f7a55f921fc44eaf93496f133245e881d90fa36` |
| 55 | `theorem` | [uniform_continuity](../../../../../mathematics/Topology/MetricTopology/Compact/Variant76f384ddbda433d08e8ee32f381522521d4980ebdaafd6ed093ee0895ab0e44c.lean/declarations/uniform-continuity--bc975e65698e4a4234e3fadb.md) | 350 | `result-track:bc975e65698e4a4234e3fadb26b422fca8c2b6e5c0f4b2b0657154974ac823b6` |
| 56 | `def` | [modulus](../../../../../mathematics/Topology/MetricTopology/Compact/Variant76f384ddbda433d08e8ee32f381522521d4980ebdaafd6ed093ee0895ab0e44c.lean/declarations/modulus--cac9b0900493ffdbb99ea6f5.md) | 358 | `declaration-track:cac9b0900493ffdbb99ea6f579f8b69e631466fbd0051e9ccb646dc0544d9ca9` |
| 57 | `theorem` | [modulus_pos](../../../../../mathematics/Topology/MetricTopology/Compact/Variant76f384ddbda433d08e8ee32f381522521d4980ebdaafd6ed093ee0895ab0e44c.lean/declarations/modulus-pos--ad2903a468a93307c0f69d24.md) | 361 | `result-track:ad2903a468a93307c0f69d24d04ef49126fda99fc86336139e459e6e41159b2d` |
| 58 | `theorem` | [dist_lt_of_dist_lt_modulus](../../../../../mathematics/Topology/MetricTopology/Compact/Variant76f384ddbda433d08e8ee32f381522521d4980ebdaafd6ed093ee0895ab0e44c.lean/declarations/dist-lt-of-dist-lt-modulus--a3923bbe4663c480604ac867.md) | 364 | `result-track:a3923bbe4663c480604ac8672b130d3ecf5be7cc0b659bbb9325925f4b640e1d` |
| 59 | `theorem` | [summable_of_locally_summable_norm](../../../../../mathematics/Topology/MetricTopology/Compact/Variant76f384ddbda433d08e8ee32f381522521d4980ebdaafd6ed093ee0895ab0e44c.lean/declarations/summable-of-locally-summable-norm--223b0d3ea343ff1a62924d9e.md) | 399 | `result-track:223b0d3ea343ff1a62924d9ec1b0bb60dd1ac452e00d74ebf388b72505e5d7cd` |
| 60 | `theorem` | [_root_.BoundedContinuousFunction.mkOfCompact_star](../../../../../mathematics/Topology/MetricTopology/Compact/Variant76f384ddbda433d08e8ee32f381522521d4980ebdaafd6ed093ee0895ab0e44c.lean/declarations/root-boundedcontinuousfunction-mkofcompact-star--08698375d2d003c2fd8a7063.md) | 428 | `result-track:08698375d2d003c2fd8a706342a42318752aa724e3db0a979cab4949358060fb` |
| 61 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/Compact/Variant76f384ddbda433d08e8ee32f381522521d4980ebdaafd6ed093ee0895ab0e44c.lean/declarations/instance--1149aee2064d483931799349.md) | 432 | `declaration-track:1149aee2064d4839317993494a1b78943c20f0cd24ea38e7b51937da721c7e10` |
| 62 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/Compact/Variant76f384ddbda433d08e8ee32f381522521d4980ebdaafd6ed093ee0895ab0e44c.lean/declarations/instance--518a0a584f543a79c9a7b543.md) | 444 | `declaration-track:518a0a584f543a79c9a7b5439c82e17f5eb5846fe491c5ee7986608688bd0b51` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
