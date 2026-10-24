# Verification target: GRWTSK.Topology.MetricTopology.Basic.Variant145c1309d580c1c3db3d6e43640b53637238ff19b674841990ffb0b51c0f3735

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6d82b893419269f80478c8a70e46cecb48ca8b8b",
  "lexical_observation_count": 39,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/Basic/Variant145c1309d580c1c3db3d6e43640b53637238ff19b674841990ffb0b51c0f3735.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/MetricTopology/Basic/Variant145c1309d580c1c3db3d6e43640b53637238ff19b674841990ffb0b51c0f3735.lean/index.md) · [Full source](../../../../../mathematics/Topology/MetricTopology/Basic/Variant145c1309d580c1c3db3d6e43640b53637238ff19b674841990ffb0b51c0f3735.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6d82b893419269f80478c8a70e46cecb48ca8b8b`.

Source path: `GRWTSK/Topology/MetricTopology/Basic/Variant145c1309d580c1c3db3d6e43640b53637238ff19b674841990ffb0b51c0f3735.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/Basic/Variant145c1309d580c1c3db3d6e43640b53637238ff19b674841990ffb0b51c0f3735.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.BigOperators.Group.Finset` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Interval.Finset.SuccPred` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.SuccPred` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Interval.Finset.Nat` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.EMetricSpace.Defs` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.UniformSpace.Compact` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.UniformSpace.LocallyUniformConvergence` — import line 17; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.UniformSpace.UniformEmbedding` — import line 18; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [edist_le_Ico_sum_edist](../../../../../mathematics/Topology/MetricTopology/Basic/Variant145c1309d580c1c3db3d6e43640b53637238ff19b674841990ffb0b51c0f3735.lean/declarations/edist-le-ico-sum-edist--e717c13f269b77344703e4a6.md) | 40 | `result-track:e717c13f269b77344703e4a6aea47f9148c19c4812b61ef68d3d424b251024a9` |
| 2 | `theorem` | [edist_le_range_sum_edist](../../../../../mathematics/Topology/MetricTopology/Basic/Variant145c1309d580c1c3db3d6e43640b53637238ff19b674841990ffb0b51c0f3735.lean/declarations/edist-le-range-sum-edist--21fe954b539f395dae029c63.md) | 52 | `result-track:21fe954b539f395dae029c63fe8a0b52fb2521f5bc3bda5aec67c3b6e54deddb` |
| 3 | `theorem` | [edist_le_Ico_sum_of_edist_le](../../../../../mathematics/Topology/MetricTopology/Basic/Variant145c1309d580c1c3db3d6e43640b53637238ff19b674841990ffb0b51c0f3735.lean/declarations/edist-le-ico-sum-of-edist-le--384067b8f925758f11c780ec.md) | 58 | `result-track:384067b8f925758f11c780ecc19a556a5cfd83fbc323372d9b0b0c3f738074bb` |
| 4 | `theorem` | [edist_le_range_sum_of_edist_le](../../../../../mathematics/Topology/MetricTopology/Basic/Variant145c1309d580c1c3db3d6e43640b53637238ff19b674841990ffb0b51c0f3735.lean/declarations/edist-le-range-sum-of-edist-le--802f9f39ba08670bb4791d33.md) | 66 | `result-track:802f9f39ba08670bb4791d33049e30db384a82d365d44f46895072b2492ff301` |
| 5 | `theorem` | [isUniformInducing_iff](../../../../../mathematics/Topology/MetricTopology/Basic/Variant145c1309d580c1c3db3d6e43640b53637238ff19b674841990ffb0b51c0f3735.lean/declarations/isuniforminducing-iff--0e82a358345912f5631e1134.md) | 73 | `result-track:0e82a358345912f5631e113430c3930a89353e9022e9697c318edae89fa0cfed` |
| 6 | `theorem` | [isUniformEmbedding_iff](../../../../../mathematics/Topology/MetricTopology/Basic/Variant145c1309d580c1c3db3d6e43640b53637238ff19b674841990ffb0b51c0f3735.lean/declarations/isuniformembedding-iff--ad26ab99d014594dedb90737.md) | 81 | `result-track:ad26ab99d014594dedb907372d95dfa756bf83d69a1e6523df8550dd8c9fd69a` |
| 7 | `theorem` | [controlled_of_isUniformEmbedding](../../../../../mathematics/Topology/MetricTopology/Basic/Variant145c1309d580c1c3db3d6e43640b53637238ff19b674841990ffb0b51c0f3735.lean/declarations/controlled-of-isuniformembedding--b6764ea94d82a0ec3b006e15.md) | 91 | `result-track:b6764ea94d82a0ec3b006e15735467a465eaf4a628b1878823cba2657e2c5b55` |
| 8 | `theorem` | [cauchy_iff](../../../../../mathematics/Topology/MetricTopology/Basic/Variant145c1309d580c1c3db3d6e43640b53637238ff19b674841990ffb0b51c0f3735.lean/declarations/cauchy-iff--4a37846b8897eef7ab6b614b.md) | 98 | `result-track:4a37846b8897eef7ab6b614b4a6c6d3888aba7f6fe6ac6844421687fb578a1fd` |
| 9 | `theorem` | [complete_of_convergent_controlled_sequences](../../../../../mathematics/Topology/MetricTopology/Basic/Variant145c1309d580c1c3db3d6e43640b53637238ff19b674841990ffb0b51c0f3735.lean/declarations/complete-of-convergent-controlled-sequences--b39c1b1ea99bf9662fd776ff.md) | 107 | `result-track:b39c1b1ea99bf9662fd776ffc849ad47606c4d1acaa54962988c725c630f32bf` |
| 10 | `theorem` | [complete_of_cauchySeq_tendsto](../../../../../mathematics/Topology/MetricTopology/Basic/Variant145c1309d580c1c3db3d6e43640b53637238ff19b674841990ffb0b51c0f3735.lean/declarations/complete-of-cauchyseq-tendsto--128b5cc4d6b4198a83ea5a71.md) | 115 | `result-track:128b5cc4d6b4198a83ea5a71124d8891f0172a28cdd7e39a6b4bb2a7ab9f99c6` |
| 11 | `theorem` | [tendstoLocallyUniformlyOn_iff](../../../../../mathematics/Topology/MetricTopology/Basic/Variant145c1309d580c1c3db3d6e43640b53637238ff19b674841990ffb0b51c0f3735.lean/declarations/tendstolocallyuniformlyon-iff--87885dae4045453c027e9bdd.md) | 120 | `result-track:87885dae4045453c027e9bdd6ab53aea9061dc95932a0cdc17f1f91fff12962f` |
| 12 | `theorem` | [tendstoUniformlyOn_iff](../../../../../mathematics/Topology/MetricTopology/Basic/Variant145c1309d580c1c3db3d6e43640b53637238ff19b674841990ffb0b51c0f3735.lean/declarations/tendstouniformlyon-iff--9a357326f9ea319779aae6e8.md) | 130 | `result-track:9a357326f9ea319779aae6e8995519a81d490a585bf93e69f4406c9acc6eb2cc` |
| 13 | `theorem` | [tendstoLocallyUniformly_iff](../../../../../mathematics/Topology/MetricTopology/Basic/Variant145c1309d580c1c3db3d6e43640b53637238ff19b674841990ffb0b51c0f3735.lean/declarations/tendstolocallyuniformly-iff--ade72572c688474876aef391.md) | 137 | `result-track:ade72572c688474876aef391d30f4b2e53456f15a94cbf5bb19fd331b665d265` |
| 14 | `theorem` | [tendstoUniformly_iff](../../../../../mathematics/Topology/MetricTopology/Basic/Variant145c1309d580c1c3db3d6e43640b53637238ff19b674841990ffb0b51c0f3735.lean/declarations/tendstouniformly-iff--b16c3ebcfa382bb2b2b7b66e.md) | 145 | `result-track:b16c3ebcfa382bb2b2b7b66edb3b62bfe27527421685cf6720ea5cc5273f2d9f` |
| 15 | `theorem` | [inseparable_iff](../../../../../mathematics/Topology/MetricTopology/Basic/Variant145c1309d580c1c3db3d6e43640b53637238ff19b674841990ffb0b51c0f3735.lean/declarations/inseparable-iff--5bee5c9c3c44769c8535ccc0.md) | 157 | `result-track:5bee5c9c3c44769c8535ccc08edd6665727a5629cd1d08273a308bef1a49d30a` |
| 16 | `theorem` | [cauchySeq_iff](../../../../../mathematics/Topology/MetricTopology/Basic/Variant145c1309d580c1c3db3d6e43640b53637238ff19b674841990ffb0b51c0f3735.lean/declarations/cauchyseq-iff--5bf70242303af6b8e9b2e884.md) | 165 | `result-track:5bf70242303af6b8e9b2e884b3010082f5e55b6fbb227153bc3e905409d62022` |
| 17 | `theorem` | [cauchySeq_iff'](../../../../../mathematics/Topology/MetricTopology/Basic/Variant145c1309d580c1c3db3d6e43640b53637238ff19b674841990ffb0b51c0f3735.lean/declarations/cauchyseq-iff--7f92c59af9cad14d3fe7797e.md) | 170 | `result-track:7f92c59af9cad14d3fe7797e5f2a3be5234fe947ab7a22cd21af8217320fcb66` |
| 18 | `theorem` | [cauchySeq_iff_NNReal](../../../../../mathematics/Topology/MetricTopology/Basic/Variant145c1309d580c1c3db3d6e43640b53637238ff19b674841990ffb0b51c0f3735.lean/declarations/cauchyseq-iff-nnreal--0a4f7db490de46ff2e2ebc4e.md) | 176 | `result-track:0a4f7db490de46ff2e2ebc4e3d271638979bf8ef772676f4629c28be4d3d7599` |
| 19 | `theorem` | [totallyBounded_iff](../../../../../mathematics/Topology/MetricTopology/Basic/Variant145c1309d580c1c3db3d6e43640b53637238ff19b674841990ffb0b51c0f3735.lean/declarations/totallybounded-iff--094be57efa55f94cabf2ff3a.md) | 180 | `result-track:094be57efa55f94cabf2ff3a908d3e73914701c959be805641d29f57fc1cf351` |
| 20 | `theorem` | [totallyBounded_iff'](../../../../../mathematics/Topology/MetricTopology/Basic/Variant145c1309d580c1c3db3d6e43640b53637238ff19b674841990ffb0b51c0f3735.lean/declarations/totallybounded-iff--791520dbb7dd47cd07617da5.md) | 187 | `result-track:791520dbb7dd47cd07617da5c823ae1ef9025a946e1d23df4f0e768692eb7865` |
| 21 | `theorem` | [subset_countable_closure_of_compact](../../../../../mathematics/Topology/MetricTopology/Basic/Variant145c1309d580c1c3db3d6e43640b53637238ff19b674841990ffb0b51c0f3735.lean/declarations/subset-countable-closure-of-compact--ae44f5c0aa96f8dd674a3c7e.md) | 199 | `result-track:ae44f5c0aa96f8dd674a3c7e90de9436fc81207ed5b504634793e4345419dee3` |
| 22 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/Basic/Variant145c1309d580c1c3db3d6e43640b53637238ff19b674841990ffb0b51c0f3735.lean/declarations/instance--bf9e323651ddcc656b9414cb.md) | 213 | `declaration-track:bf9e323651ddcc656b9414cb1f86b9fd6c98e33e94ec2e8bd9b92b9bc14eb76e` |
| 23 | `theorem` | [secondCountable_of_almost_dense_set](../../../../../mathematics/Topology/MetricTopology/Basic/Variant145c1309d580c1c3db3d6e43640b53637238ff19b674841990ffb0b51c0f3735.lean/declarations/secondcountable-of-almost-dense-set--04d2447001b6e87915404f67.md) | 222 | `result-track:04d2447001b6e87915404f67d74acf94a7245c25e2e53951c410b43e74ec1895` |
| 24 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/Basic/Variant145c1309d580c1c3db3d6e43640b53637238ff19b674841990ffb0b51c0f3735.lean/declarations/instance--ec7e0ba9687cc6d2f3df54f2.md) | 239 | `declaration-track:ec7e0ba9687cc6d2f3df54f23bbe60691a3b1657f0b40c130a2aa9399a4d7571` |
| 25 | `theorem` | [EMetric.isUniformEmbedding_iff'](../../../../../mathematics/Topology/MetricTopology/Basic/Variant145c1309d580c1c3db3d6e43640b53637238ff19b674841990ffb0b51c0f3735.lean/declarations/emetric-isuniformembedding-iff--5ce89b55ab187becc0e699b7.md) | 244 | `result-track:5ce89b55ab187becc0e699b75a5c1ea5e38a10029718d161ed71ef9dddda7727` |
| 26 | `abbrev` | [EMetricSpace.ofT0PseudoEMetricSpace](../../../../../mathematics/Topology/MetricTopology/Basic/Variant145c1309d580c1c3db3d6e43640b53637238ff19b674841990ffb0b51c0f3735.lean/declarations/emetricspace-oft0pseudoemetricspace--4031ce7482a03cec98d5362c.md) | 252 | `declaration-track:4031ce7482a03cec98d5362ca4ab45cfeaa71b8d3382a7648f0816010e676be2` |
| 27 | `instance` | [Prod.emetricSpaceMax](../../../../../mathematics/Topology/MetricTopology/Basic/Variant145c1309d580c1c3db3d6e43640b53637238ff19b674841990ffb0b51c0f3735.lean/declarations/prod-emetricspacemax--6c5f639a5cbd6e1c023fc7ea.md) | 260 | `declaration-track:6c5f639a5cbd6e1c023fc7eadaa8d3597e061b40cc3dcb0510f596dcf3a730fb` |
| 28 | `theorem` | [countable_closure_of_compact](../../../../../mathematics/Topology/MetricTopology/Basic/Variant145c1309d580c1c3db3d6e43640b53637238ff19b674841990ffb0b51c0f3735.lean/declarations/countable-closure-of-compact--d96fe7288b836afc4965eac4.md) | 266 | `result-track:d96fe7288b836afc4965eac4e1a05f1c27298701c56cc28ff03e436a86740376` |
| 29 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/Basic/Variant145c1309d580c1c3db3d6e43640b53637238ff19b674841990ffb0b51c0f3735.lean/declarations/instance--d5192ccd5063e3bc3eb2d3dd.md) | 277 | `declaration-track:d5192ccd5063e3bc3eb2d3dd2e002e091a94f1a79c7d6968167263ad4c75fbdb` |
| 30 | `theorem` | [SeparationQuotient.edist_mk](../../../../../mathematics/Topology/MetricTopology/Basic/Variant145c1309d580c1c3db3d6e43640b53637238ff19b674841990ffb0b51c0f3735.lean/declarations/separationquotient-edist-mk--0010447f86640b7e3022e412.md) | 281 | `result-track:0010447f86640b7e3022e41211be5d5692d720e31984637dd1d0d11f3d17336b` |
| 31 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/Basic/Variant145c1309d580c1c3db3d6e43640b53637238ff19b674841990ffb0b51c0f3735.lean/declarations/instance--5ffa9fe1cc1f97e3cdc4c574.md) | 286 | `declaration-track:5ffa9fe1cc1f97e3cdc4c574902e42348d7d79d12e61fdc330e8a95ca90f7b28` |
| 32 | `theorem` | [IsSeparable.exists_countable_dense_subset](../../../../../mathematics/Topology/MetricTopology/Basic/Variant145c1309d580c1c3db3d6e43640b53637238ff19b674841990ffb0b51c0f3735.lean/declarations/isseparable-exists-countable-dense-subset--0c15dacc7f7f977b0757b630.md) | 304 | `result-track:0c15dacc7f7f977b0757b6307f564eb42cddedb11814f2e6419837ada61a6149` |
| 33 | `theorem` | [IsSeparable.separableSpace](../../../../../mathematics/Topology/MetricTopology/Basic/Variant145c1309d580c1c3db3d6e43640b53637238ff19b674841990ffb0b51c0f3735.lean/declarations/isseparable-separablespace--e14957ed375b0a5d41813de5.md) | 316 | `result-track:e14957ed375b0a5d41813de593e87a1b8245d9dc0f9d6981ba2aedaae57fe460` |
| 34 | `theorem` | [lebesgue_number_lemma_of_emetric](../../../../../mathematics/Topology/MetricTopology/Basic/Variant145c1309d580c1c3db3d6e43640b53637238ff19b674841990ffb0b51c0f3735.lean/declarations/lebesgue-number-lemma-of-emetric--5d3d28b6286f2f13b1da32c4.md) | 331 | `result-track:5d3d28b6286f2f13b1da32c4f22cdf6512ad85faf1a309fb71b0b22c8dccf4be` |
| 35 | `theorem` | [lebesgue_number_lemma_of_emetric_nhds'](../../../../../mathematics/Topology/MetricTopology/Basic/Variant145c1309d580c1c3db3d6e43640b53637238ff19b674841990ffb0b51c0f3735.lean/declarations/lebesgue-number-lemma-of-emetric-nhds--da5fe29b3dc944246c43b108.md) | 336 | `result-track:da5fe29b3dc944246c43b108ebf0335e592431eaec215777b20730e0feb44276` |
| 36 | `theorem` | [lebesgue_number_lemma_of_emetric_nhds](../../../../../mathematics/Topology/MetricTopology/Basic/Variant145c1309d580c1c3db3d6e43640b53637238ff19b674841990ffb0b51c0f3735.lean/declarations/lebesgue-number-lemma-of-emetric-nhds--767a4ad6abaccc00629ac9ec.md) | 341 | `result-track:767a4ad6abaccc00629ac9ec5b41c687b871bc5acdee51e41f829f7e3d81d5de` |
| 37 | `theorem` | [lebesgue_number_lemma_of_emetric_nhdsWithin'](../../../../../mathematics/Topology/MetricTopology/Basic/Variant145c1309d580c1c3db3d6e43640b53637238ff19b674841990ffb0b51c0f3735.lean/declarations/lebesgue-number-lemma-of-emetric-nhdswithin--eca57be83db078aa53d0ae98.md) | 346 | `result-track:eca57be83db078aa53d0ae98cfe2e95c2d8c953efcf4cfd26f01abfb8b0f68c3` |
| 38 | `theorem` | [lebesgue_number_lemma_of_emetric_nhdsWithin](../../../../../mathematics/Topology/MetricTopology/Basic/Variant145c1309d580c1c3db3d6e43640b53637238ff19b674841990ffb0b51c0f3735.lean/declarations/lebesgue-number-lemma-of-emetric-nhdswithin--42c0632bac8bc32aebd0e85f.md) | 352 | `result-track:42c0632bac8bc32aebd0e85f4d776d2c9cc057ec281fcc933606dd2fdc89c459` |
| 39 | `theorem` | [lebesgue_number_lemma_of_emetric_sUnion](../../../../../mathematics/Topology/MetricTopology/Basic/Variant145c1309d580c1c3db3d6e43640b53637238ff19b674841990ffb0b51c0f3735.lean/declarations/lebesgue-number-lemma-of-emetric-sunion--057097470aa996c0c13a1c0d.md) | 357 | `result-track:057097470aa996c0c13a1c0dbc96f50f4e3800a86414d9dffe80deb2bdab4258` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
