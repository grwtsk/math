# Verification target: GRWTSK.Topology.MetricTopology.Lipschitz.Variant9c0a7e0e35957652a9d69415efcf0740c875cf1f04dae9e796f15ca0604abad1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "740ec94cad053b21fefd36d0ac89940ca97fd0e0",
  "lexical_observation_count": 53,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/Lipschitz/Variant9c0a7e0e35957652a9d69415efcf0740c875cf1f04dae9e796f15ca0604abad1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/MetricTopology/Lipschitz/Variant9c0a7e0e35957652a9d69415efcf0740c875cf1f04dae9e796f15ca0604abad1.lean/index.md) · [Full source](../../../../../mathematics/Topology/MetricTopology/Lipschitz/Variant9c0a7e0e35957652a9d69415efcf0740c875cf1f04dae9e796f15ca0604abad1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `740ec94cad053b21fefd36d0ac89940ca97fd0e0`.

Source path: `GRWTSK/Topology/MetricTopology/Lipschitz/Variant9c0a7e0e35957652a9d69415efcf0740c875cf1f04dae9e796f15ca0604abad1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/Lipschitz/Variant9c0a7e0e35957652a9d69415efcf0740c875cf1f04dae9e796f15ca0604abad1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.Interval.Set.ProjIcc` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Order.Field` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Bornology.Hom` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.EMetricSpace.Lipschitz` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Maps.Proper.Basic` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.MetricSpace.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.MetricSpace.Bounded` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [lipschitzWith_iff_dist_le_mul](../../../../../mathematics/Topology/MetricTopology/Lipschitz/Variant9c0a7e0e35957652a9d69415efcf0740c875cf1f04dae9e796f15ca0604abad1.lean/declarations/lipschitzwith-iff-dist-le-mul--0f56ca8d0c54ba2522d1a5cd.md) | 42 | `result-track:0f56ca8d0c54ba2522d1a5cdb07deb92d17ae105d73ccb24a7c2bb5e111f85ff` |
| 2 | `theorem` | [lipschitzOnWith_iff_dist_le_mul](../../../../../mathematics/Topology/MetricTopology/Lipschitz/Variant9c0a7e0e35957652a9d69415efcf0740c875cf1f04dae9e796f15ca0604abad1.lean/declarations/lipschitzonwith-iff-dist-le-mul--ff53c84579e89ff5aac4763a.md) | 49 | `result-track:ff53c84579e89ff5aac4763acb74efc7009747edd65ac16c657df710976da808` |
| 3 | `theorem` | [of_dist_le'](../../../../../mathematics/Topology/MetricTopology/Lipschitz/Variant9c0a7e0e35957652a9d69415efcf0740c875cf1f04dae9e796f15ca0604abad1.lean/declarations/of-dist-le--edbe5205d429f01205fca9c0.md) | 65 | `result-track:edbe5205d429f01205fca9c0149478dcd443328165ec8d12e4204b109eef29da` |
| 4 | `theorem` | [mk_one](../../../../../mathematics/Topology/MetricTopology/Lipschitz/Variant9c0a7e0e35957652a9d69415efcf0740c875cf1f04dae9e796f15ca0604abad1.lean/declarations/mk-one--42b42744798bb000895d89b2.md) | 70 | `result-track:42b42744798bb000895d89b216716d4b20efb33b03ca814e2731c473f29bfef4` |
| 5 | `theorem` | [of_le_add_mul'](../../../../../mathematics/Topology/MetricTopology/Lipschitz/Variant9c0a7e0e35957652a9d69415efcf0740c875cf1f04dae9e796f15ca0604abad1.lean/declarations/of-le-add-mul--f0438bddff0330560fc5a773.md) | 75 | `result-track:f0438bddff0330560fc5a773f447fdf2b0ab22186fe9224f5e8a707ca9b1f39a` |
| 6 | `theorem` | [of_le_add_mul](../../../../../mathematics/Topology/MetricTopology/Lipschitz/Variant9c0a7e0e35957652a9d69415efcf0740c875cf1f04dae9e796f15ca0604abad1.lean/declarations/of-le-add-mul--673dc88dc74e1f265b8eb0f4.md) | 82 | `result-track:673dc88dc74e1f265b8eb0f4450589805c8829ef4bf1faa185d0291dc01870e7` |
| 7 | `theorem` | [of_le_add](../../../../../mathematics/Topology/MetricTopology/Lipschitz/Variant9c0a7e0e35957652a9d69415efcf0740c875cf1f04dae9e796f15ca0604abad1.lean/declarations/of-le-add--bc4b35678d2f04b14adc1a6e.md) | 85 | `result-track:bc4b35678d2f04b14adc1a6e83b3b3dc5a771451ac92d709aa581d5a3ed280a1` |
| 8 | `theorem` | [le_add_mul](../../../../../mathematics/Topology/MetricTopology/Lipschitz/Variant9c0a7e0e35957652a9d69415efcf0740c875cf1f04dae9e796f15ca0604abad1.lean/declarations/le-add-mul--f13ed5458b94cfbb5882d62e.md) | 88 | `result-track:f13ed5458b94cfbb5882d62e6f211c0305dd47e61d2455aa5f7cb731099ee725` |
| 9 | `theorem` | [iff_le_add_mul](../../../../../mathematics/Topology/MetricTopology/Lipschitz/Variant9c0a7e0e35957652a9d69415efcf0740c875cf1f04dae9e796f15ca0604abad1.lean/declarations/iff-le-add-mul--ad63962b470d3eee9c1e59be.md) | 92 | `result-track:ad63962b470d3eee9c1e59be6b930d0bfe4c5cb3e1f040cc52eb6167656e882a` |
| 10 | `theorem` | [nndist_le](../../../../../mathematics/Topology/MetricTopology/Lipschitz/Variant9c0a7e0e35957652a9d69415efcf0740c875cf1f04dae9e796f15ca0604abad1.lean/declarations/nndist-le--80d41ad888e8357675087be4.md) | 96 | `result-track:80d41ad888e8357675087be48aab0a9109a40b416876589b5e4068f70a7de8dc` |
| 11 | `theorem` | [dist_le_mul_of_le](../../../../../mathematics/Topology/MetricTopology/Lipschitz/Variant9c0a7e0e35957652a9d69415efcf0740c875cf1f04dae9e796f15ca0604abad1.lean/declarations/dist-le-mul-of-le--505c899dd8ce8e5c4c4aa7c1.md) | 99 | `result-track:505c899dd8ce8e5c4c4aa7c14678ea0fc02c5e39263ae0daa543e3575f39a64b` |
| 12 | `theorem` | [mapsTo_closedBall](../../../../../mathematics/Topology/MetricTopology/Lipschitz/Variant9c0a7e0e35957652a9d69415efcf0740c875cf1f04dae9e796f15ca0604abad1.lean/declarations/mapsto-closedball--146ccdef5a9680bd2ed367f0.md) | 102 | `result-track:146ccdef5a9680bd2ed367f02e37c9dc38ae0dd69cdcdcd52c750733f96ae027` |
| 13 | `theorem` | [dist_lt_mul_of_lt](../../../../../mathematics/Topology/MetricTopology/Lipschitz/Variant9c0a7e0e35957652a9d69415efcf0740c875cf1f04dae9e796f15ca0604abad1.lean/declarations/dist-lt-mul-of-lt--fe4a5c663bfdaa31f83f0058.md) | 106 | `result-track:fe4a5c663bfdaa31f83f00585afd972a2f365ebf3c9494e80a62be2ef7ef3cf0` |
| 14 | `theorem` | [mapsTo_ball](../../../../../mathematics/Topology/MetricTopology/Lipschitz/Variant9c0a7e0e35957652a9d69415efcf0740c875cf1f04dae9e796f15ca0604abad1.lean/declarations/mapsto-ball--e2e87c3cec87eec81861ccac.md) | 110 | `result-track:e2e87c3cec87eec81861ccacf107df22f3b3b4306db95535b5ae6aa1d0667bd7` |
| 15 | `def` | [toLocallyBoundedMap](../../../../../mathematics/Topology/MetricTopology/Lipschitz/Variant9c0a7e0e35957652a9d69415efcf0740c875cf1f04dae9e796f15ca0604abad1.lean/declarations/tolocallyboundedmap--8142c06cd3f868ff9302d1ea.md) | 115 | `declaration-track:8142c06cd3f868ff9302d1ea560c14709af279b8f609ce42497c2ff56ccbe612` |
| 16 | `theorem` | [coe_toLocallyBoundedMap](../../../../../mathematics/Topology/MetricTopology/Lipschitz/Variant9c0a7e0e35957652a9d69415efcf0740c875cf1f04dae9e796f15ca0604abad1.lean/declarations/coe-tolocallyboundedmap--524c22b83eacde3eb68a0e11.md) | 122 | `result-track:524c22b83eacde3eb68a0e1137a397d93a4cd3e63fff66010a2bbee8f46b7966` |
| 17 | `theorem` | [comap_cobounded_le](../../../../../mathematics/Topology/MetricTopology/Lipschitz/Variant9c0a7e0e35957652a9d69415efcf0740c875cf1f04dae9e796f15ca0604abad1.lean/declarations/comap-cobounded-le--538ab63a9ed8f0ecc473db4b.md) | 125 | `result-track:538ab63a9ed8f0ecc473db4b3a1abdd8d0766284a309777d23fc94b6635c463b` |
| 18 | `theorem` | [isBounded_image](../../../../../mathematics/Topology/MetricTopology/Lipschitz/Variant9c0a7e0e35957652a9d69415efcf0740c875cf1f04dae9e796f15ca0604abad1.lean/declarations/isbounded-image--a2bd1de2be96c8cf95623188.md) | 130 | `result-track:a2bd1de2be96c8cf95623188ef48f11c67f4122692621af7539459e14a49b76f` |
| 19 | `theorem` | [diam_image_le](../../../../../mathematics/Topology/MetricTopology/Lipschitz/Variant9c0a7e0e35957652a9d69415efcf0740c875cf1f04dae9e796f15ca0604abad1.lean/declarations/diam-image-le--c8443cad5cc14e73f79b6f96.md) | 134 | `result-track:c8443cad5cc14e73f79b6f9614790eb31b1cfe91f9e0d984ca1caced522cf82d` |
| 20 | `theorem` | [dist_left](../../../../../mathematics/Topology/MetricTopology/Lipschitz/Variant9c0a7e0e35957652a9d69415efcf0740c875cf1f04dae9e796f15ca0604abad1.lean/declarations/dist-left--3bc297a19a285ea752dd3d3a.md) | 140 | `result-track:3bc297a19a285ea752dd3d3a56fab4a93a6bfca455602745ed105cb2d083fe88` |
| 21 | `theorem` | [dist_right](../../../../../mathematics/Topology/MetricTopology/Lipschitz/Variant9c0a7e0e35957652a9d69415efcf0740c875cf1f04dae9e796f15ca0604abad1.lean/declarations/dist-right--0d29219cb51a52905cdeea34.md) | 143 | `result-track:0d29219cb51a52905cdeea34369663b197960028a0df3e51134484470680b632` |
| 22 | `theorem` | [dist](../../../../../mathematics/Topology/MetricTopology/Lipschitz/Variant9c0a7e0e35957652a9d69415efcf0740c875cf1f04dae9e796f15ca0604abad1.lean/declarations/dist--f46ca7e7eabac5bd4153233e.md) | 146 | `result-track:f46ca7e7eabac5bd4153233ee5700c6621b06c649eaa4c75510ec636fba47b82` |
| 23 | `theorem` | [dist_iterate_succ_le_geometric](../../../../../mathematics/Topology/MetricTopology/Lipschitz/Variant9c0a7e0e35957652a9d69415efcf0740c875cf1f04dae9e796f15ca0604abad1.lean/declarations/dist-iterate-succ-le-geometric--33e559ae9976d23b6eeeac76.md) | 150 | `result-track:33e559ae9976d23b6eeeac76af8fefbbf08973f248b2af232a6e20c11f28c6f6` |
| 24 | `theorem` | [_root_.lipschitzWith_max](../../../../../mathematics/Topology/MetricTopology/Lipschitz/Variant9c0a7e0e35957652a9d69415efcf0740c875cf1f04dae9e796f15ca0604abad1.lean/declarations/root-lipschitzwith-max--b99399df71f6b941198354f2.md) | 155 | `result-track:b99399df71f6b941198354f2bf8091eab8a11284d0837aa6d80e449e10c78ce4` |
| 25 | `theorem` | [_root_.lipschitzWith_min](../../../../../mathematics/Topology/MetricTopology/Lipschitz/Variant9c0a7e0e35957652a9d69415efcf0740c875cf1f04dae9e796f15ca0604abad1.lean/declarations/root-lipschitzwith-min--b15bf6b1cb550186184a61a7.md) | 159 | `result-track:b15bf6b1cb550186184a61a7a74ad6886b06a6a73d3b7f06f37ef8212c26ab62` |
| 26 | `lemma` | [_root_.Real.lipschitzWith_toNNReal](../../../../../mathematics/Topology/MetricTopology/Lipschitz/Variant9c0a7e0e35957652a9d69415efcf0740c875cf1f04dae9e796f15ca0604abad1.lean/declarations/root-real-lipschitzwith-tonnreal--74ac025e9e3a66aaff718e34.md) | 163 | `result-track:74ac025e9e3a66aaff718e34b0111ff47cef6b76a8fee0b79e0cbf2d588501ab` |
| 27 | `lemma` | [cauchySeq_comp](../../../../../mathematics/Topology/MetricTopology/Lipschitz/Variant9c0a7e0e35957652a9d69415efcf0740c875cf1f04dae9e796f15ca0604abad1.lean/declarations/cauchyseq-comp--21d082c2a8b6d3007014ff33.md) | 168 | `result-track:21d082c2a8b6d3007014ff33a7c4a44e5830f41d3e9f8ae0516b0b122f250f94` |
| 28 | `theorem` | [max](../../../../../mathematics/Topology/MetricTopology/Lipschitz/Variant9c0a7e0e35957652a9d69415efcf0740c875cf1f04dae9e796f15ca0604abad1.lean/declarations/max--db5eb025fa1261ee18ed16ca.md) | 183 | `result-track:db5eb025fa1261ee18ed16ca95b1615d73f17921bd7e12a62a44707c82c59977` |
| 29 | `theorem` | [min](../../../../../mathematics/Topology/MetricTopology/Lipschitz/Variant9c0a7e0e35957652a9d69415efcf0740c875cf1f04dae9e796f15ca0604abad1.lean/declarations/min--187955e405c29b231346253a.md) | 187 | `result-track:187955e405c29b231346253a0aa52dc77ed86cd0cc030dfb2ce93d3ced3b0e22` |
| 30 | `theorem` | [max_const](../../../../../mathematics/Topology/MetricTopology/Lipschitz/Variant9c0a7e0e35957652a9d69415efcf0740c875cf1f04dae9e796f15ca0604abad1.lean/declarations/max-const--72d3b76d579914994288c002.md) | 191 | `result-track:72d3b76d579914994288c00237436af72062181593eb7aceca986544642ae530` |
| 31 | `theorem` | [const_max](../../../../../mathematics/Topology/MetricTopology/Lipschitz/Variant9c0a7e0e35957652a9d69415efcf0740c875cf1f04dae9e796f15ca0604abad1.lean/declarations/const-max--ea79fc0a9aac463e86a7f4f0.md) | 194 | `result-track:ea79fc0a9aac463e86a7f4f0fe9589735ccce34c499b7fc60e2a32583a9c9b67` |
| 32 | `theorem` | [min_const](../../../../../mathematics/Topology/MetricTopology/Lipschitz/Variant9c0a7e0e35957652a9d69415efcf0740c875cf1f04dae9e796f15ca0604abad1.lean/declarations/min-const--2398f5e984662859fbe40de9.md) | 197 | `result-track:2398f5e984662859fbe40de97620834d83cf02b07baad82246b5de8052001651` |
| 33 | `theorem` | [const_min](../../../../../mathematics/Topology/MetricTopology/Lipschitz/Variant9c0a7e0e35957652a9d69415efcf0740c875cf1f04dae9e796f15ca0604abad1.lean/declarations/const-min--7aeada4a219276a4d0f3c7d3.md) | 200 | `result-track:7aeada4a219276a4d0f3c7d3750d55828da9b043c735eac48b4526546ec8f933` |
| 34 | `theorem` | [projIcc](../../../../../mathematics/Topology/MetricTopology/Lipschitz/Variant9c0a7e0e35957652a9d69415efcf0740c875cf1f04dae9e796f15ca0604abad1.lean/declarations/projicc--efc75ec3862ac8ea42873242.md) | 205 | `result-track:efc75ec3862ac8ea428732427572ed71f4b0f9a05c3db70bd21375751a08e5e0` |
| 35 | `lemma` | [LipschitzWith.properSpace](../../../../../mathematics/Topology/MetricTopology/Lipschitz/Variant9c0a7e0e35957652a9d69415efcf0740c875cf1f04dae9e796f15ca0604abad1.lean/declarations/lipschitzwith-properspace--358698cec51ad9b4f09c86cc.md) | 211 | `result-track:358698cec51ad9b4f09c86ccf4fae84d5ca4900bb1d583b7ba96219064158c29` |
| 36 | `theorem` | [of_dist_le'](../../../../../mathematics/Topology/MetricTopology/Lipschitz/Variant9c0a7e0e35957652a9d69415efcf0740c875cf1f04dae9e796f15ca0604abad1.lean/declarations/of-dist-le--0872b380075669764371a49c.md) | 230 | `result-track:0872b380075669764371a49c00a0a5c58ac158f448bbcd62e18da3ef72686615` |
| 37 | `theorem` | [mk_one](../../../../../mathematics/Topology/MetricTopology/Lipschitz/Variant9c0a7e0e35957652a9d69415efcf0740c875cf1f04dae9e796f15ca0604abad1.lean/declarations/mk-one--ef275cdcdb34647dada9030b.md) | 235 | `result-track:ef275cdcdb34647dada9030b6a6a80813aeca4813382707aa4e6545fec7b5e99` |
| 38 | `theorem` | [of_le_add_mul'](../../../../../mathematics/Topology/MetricTopology/Lipschitz/Variant9c0a7e0e35957652a9d69415efcf0740c875cf1f04dae9e796f15ca0604abad1.lean/declarations/of-le-add-mul--3945c80346e6c9853c78dbdc.md) | 241 | `result-track:3945c80346e6c9853c78dbdc373772598cba2054c0700e040bf5283c5e26a3f0` |
| 39 | `theorem` | [of_le_add_mul](../../../../../mathematics/Topology/MetricTopology/Lipschitz/Variant9c0a7e0e35957652a9d69415efcf0740c875cf1f04dae9e796f15ca0604abad1.lean/declarations/of-le-add-mul--6ea5e03d00d86572e798c49c.md) | 250 | `result-track:6ea5e03d00d86572e798c49c503e7bca6416f3690665f332182010e9738a807a` |
| 40 | `theorem` | [of_le_add](../../../../../mathematics/Topology/MetricTopology/Lipschitz/Variant9c0a7e0e35957652a9d69415efcf0740c875cf1f04dae9e796f15ca0604abad1.lean/declarations/of-le-add--d1f32de2cd30fabaf30731fc.md) | 254 | `result-track:d1f32de2cd30fabaf30731fca0cf583637b10d25d537244ffe6323627f830673` |
| 41 | `theorem` | [le_add_mul](../../../../../mathematics/Topology/MetricTopology/Lipschitz/Variant9c0a7e0e35957652a9d69415efcf0740c875cf1f04dae9e796f15ca0604abad1.lean/declarations/le-add-mul--b83394248cdf0ea0c78b46e7.md) | 258 | `result-track:b83394248cdf0ea0c78b46e75e97623090468dd9414edc2b8f8f735ae47773d9` |
| 42 | `theorem` | [iff_le_add_mul](../../../../../mathematics/Topology/MetricTopology/Lipschitz/Variant9c0a7e0e35957652a9d69415efcf0740c875cf1f04dae9e796f15ca0604abad1.lean/declarations/iff-le-add-mul--cdf1b546ea2c7d11a512ffe5.md) | 262 | `result-track:cdf1b546ea2c7d11a512ffe570c019c013913895e10362377119b48e28968c91` |
| 43 | `theorem` | [isBounded_image2](../../../../../mathematics/Topology/MetricTopology/Lipschitz/Variant9c0a7e0e35957652a9d69415efcf0740c875cf1f04dae9e796f15ca0604abad1.lean/declarations/isbounded-image2--9deccef688390511923803f4.md) | 266 | `result-track:9deccef688390511923803f4ff06528651eb30f3c577c90f9df1804aecb6496b` |
| 44 | `lemma` | [cauchySeq_comp](../../../../../mathematics/Topology/MetricTopology/Lipschitz/Variant9c0a7e0e35957652a9d69415efcf0740c875cf1f04dae9e796f15ca0604abad1.lean/declarations/cauchyseq-comp--d09599d5e0a2b93e14369604.md) | 277 | `result-track:d09599d5e0a2b93e14369604f60aadc4418e4706f99d36e64c47d4b44faba7bf` |
| 45 | `lemma` | [min](../../../../../mathematics/Topology/MetricTopology/Lipschitz/Variant9c0a7e0e35957652a9d69415efcf0740c875cf1f04dae9e796f15ca0604abad1.lean/declarations/min--77b35ada03d71febf0aa45f6.md) | 301 | `result-track:77b35ada03d71febf0aa45f6db9684de216f4a1157096e3a2badbe6350fa74e1` |
| 46 | `lemma` | [max](../../../../../mathematics/Topology/MetricTopology/Lipschitz/Variant9c0a7e0e35957652a9d69415efcf0740c875cf1f04dae9e796f15ca0604abad1.lean/declarations/max--ef7a0a0e22db3dca65e9a3c7.md) | 306 | `result-track:ef7a0a0e22db3dca65e9a3c7a5aa23cf61cd679463667c928d28570d6bfb2aba` |
| 47 | `theorem` | [max_const](../../../../../mathematics/Topology/MetricTopology/Lipschitz/Variant9c0a7e0e35957652a9d69415efcf0740c875cf1f04dae9e796f15ca0604abad1.lean/declarations/max-const--c283f536ae598f2b77ec7175.md) | 310 | `result-track:c283f536ae598f2b77ec7175fb35be18e1b2f49ae3a9d55da4cf1cf241b188fe` |
| 48 | `theorem` | [const_max](../../../../../mathematics/Topology/MetricTopology/Lipschitz/Variant9c0a7e0e35957652a9d69415efcf0740c875cf1f04dae9e796f15ca0604abad1.lean/declarations/const-max--24edc275f9456e74431e9b25.md) | 313 | `result-track:24edc275f9456e74431e9b25bd6df743aed4ec978000286fc06f199ee43a8607` |
| 49 | `theorem` | [min_const](../../../../../mathematics/Topology/MetricTopology/Lipschitz/Variant9c0a7e0e35957652a9d69415efcf0740c875cf1f04dae9e796f15ca0604abad1.lean/declarations/min-const--863f69b1341fd703c82aaccb.md) | 316 | `result-track:863f69b1341fd703c82aaccb9f8a7570e70614ea717b426a362a3532c97e9fa4` |
| 50 | `theorem` | [const_min](../../../../../mathematics/Topology/MetricTopology/Lipschitz/Variant9c0a7e0e35957652a9d69415efcf0740c875cf1f04dae9e796f15ca0604abad1.lean/declarations/const-min--aee26bcd217f6bbb16d0d4be.md) | 319 | `result-track:aee26bcd217f6bbb16d0d4be70681bc7496dca9dbe1ba8b81159fd03149d1665` |
| 51 | `theorem` | [continuousAt_of_locally_lipschitz](../../../../../mathematics/Topology/MetricTopology/Lipschitz/Variant9c0a7e0e35957652a9d69415efcf0740c875cf1f04dae9e796f15ca0604abad1.lean/declarations/continuousat-of-locally-lipschitz--4a81fd7a390ec9c361cdd3a2.md) | 330 | `result-track:4a81fd7a390ec9c361cdd3a215087b35b620d3692184e377d80de8b6f603f5cb` |
| 52 | `theorem` | [LipschitzOnWith.extend_real](../../../../../mathematics/Topology/MetricTopology/Lipschitz/Variant9c0a7e0e35957652a9d69415efcf0740c875cf1f04dae9e796f15ca0604abad1.lean/declarations/lipschitzonwith-extend-real--b9094002da201abfdfd47853.md) | 341 | `result-track:b9094002da201abfdfd47853519e1dc37ab757ffdc667cf605f9aba2f442f101` |
| 53 | `theorem` | [LipschitzOnWith.extend_pi](../../../../../mathematics/Topology/MetricTopology/Lipschitz/Variant9c0a7e0e35957652a9d69415efcf0740c875cf1f04dae9e796f15ca0604abad1.lean/declarations/lipschitzonwith-extend-pi--8d9dbc1463d69f8595ee8356.md) | 377 | `result-track:8d9dbc1463d69f8595ee8356c53d7df581aa2ef98302a0da50c04c4e7e0aaa48` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
