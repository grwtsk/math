# Verification target: GRWTSK.Topology.MetricTopology.Basic.Variant92084c9d94172502a36ccda8342c6b6ee9c326dfb9215a0e667f9ea026372f58

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "757f178fc4763191fd84ddf35234c678a03bb5a9",
  "lexical_observation_count": 39,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/Basic/Variant92084c9d94172502a36ccda8342c6b6ee9c326dfb9215a0e667f9ea026372f58.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/MetricTopology/Basic/Variant92084c9d94172502a36ccda8342c6b6ee9c326dfb9215a0e667f9ea026372f58.lean/index.md) · [Full source](../../../../../mathematics/Topology/MetricTopology/Basic/Variant92084c9d94172502a36ccda8342c6b6ee9c326dfb9215a0e667f9ea026372f58.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `757f178fc4763191fd84ddf35234c678a03bb5a9`.

Source path: `GRWTSK/Topology/MetricTopology/Basic/Variant92084c9d94172502a36ccda8342c6b6ee9c326dfb9215a0e667f9ea026372f58.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/Basic/Variant92084c9d94172502a36ccda8342c6b6ee9c326dfb9215a0e667f9ea026372f58.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.BigOperators.Group.Finset` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Interval.Finset.SuccPred` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.SuccPred` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Interval.Finset.Nat` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.EMetricSpace.Defs` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.UniformSpace.Compact` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.UniformSpace.LocallyUniformConvergence` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.UniformSpace.UniformEmbedding` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [edist_le_Ico_sum_edist](../../../../../mathematics/Topology/MetricTopology/Basic/Variant92084c9d94172502a36ccda8342c6b6ee9c326dfb9215a0e667f9ea026372f58.lean/declarations/edist-le-ico-sum-edist--e20f363519d203240824e2d1.md) | 32 | `result-track:e20f363519d203240824e2d19b194d121b0b5d4dcac6c89b4c52b3ea49840d68` |
| 2 | `theorem` | [edist_le_range_sum_edist](../../../../../mathematics/Topology/MetricTopology/Basic/Variant92084c9d94172502a36ccda8342c6b6ee9c326dfb9215a0e667f9ea026372f58.lean/declarations/edist-le-range-sum-edist--2b1ec0994a5c5fc40aa3b9fc.md) | 44 | `result-track:2b1ec0994a5c5fc40aa3b9fca55242e51fd9147bc43bceb6dd2c889bbf9bdd7e` |
| 3 | `theorem` | [edist_le_Ico_sum_of_edist_le](../../../../../mathematics/Topology/MetricTopology/Basic/Variant92084c9d94172502a36ccda8342c6b6ee9c326dfb9215a0e667f9ea026372f58.lean/declarations/edist-le-ico-sum-of-edist-le--b14bb7b48ad27cdce253ab26.md) | 50 | `result-track:b14bb7b48ad27cdce253ab263420bcc27138429ae7ea3cc2877c959d0cc8a61d` |
| 4 | `theorem` | [edist_le_range_sum_of_edist_le](../../../../../mathematics/Topology/MetricTopology/Basic/Variant92084c9d94172502a36ccda8342c6b6ee9c326dfb9215a0e667f9ea026372f58.lean/declarations/edist-le-range-sum-of-edist-le--e62d7bd05ec4e16d7da5d015.md) | 58 | `result-track:e62d7bd05ec4e16d7da5d015c50bb5ac0bb85ce1da5eaa9457557f3d5fe41635` |
| 5 | `theorem` | [isUniformInducing_iff](../../../../../mathematics/Topology/MetricTopology/Basic/Variant92084c9d94172502a36ccda8342c6b6ee9c326dfb9215a0e667f9ea026372f58.lean/declarations/isuniforminducing-iff--2453a85f54135641fb639249.md) | 65 | `result-track:2453a85f54135641fb639249f43e4466251f607202afd6c82bddb0c66d23b840` |
| 6 | `theorem` | [isUniformEmbedding_iff](../../../../../mathematics/Topology/MetricTopology/Basic/Variant92084c9d94172502a36ccda8342c6b6ee9c326dfb9215a0e667f9ea026372f58.lean/declarations/isuniformembedding-iff--cb017d609958b744e5c25181.md) | 73 | `result-track:cb017d609958b744e5c25181beff978344a794d8c44b08613c759295e0855bfe` |
| 7 | `theorem` | [controlled_of_isUniformEmbedding](../../../../../mathematics/Topology/MetricTopology/Basic/Variant92084c9d94172502a36ccda8342c6b6ee9c326dfb9215a0e667f9ea026372f58.lean/declarations/controlled-of-isuniformembedding--57c1b42f41081a9a29db6825.md) | 83 | `result-track:57c1b42f41081a9a29db6825eca2db9e2d977c788bc7989268ef7939c3dacf56` |
| 8 | `theorem` | [cauchy_iff](../../../../../mathematics/Topology/MetricTopology/Basic/Variant92084c9d94172502a36ccda8342c6b6ee9c326dfb9215a0e667f9ea026372f58.lean/declarations/cauchy-iff--337fca26dbc5ce5e402058e1.md) | 90 | `result-track:337fca26dbc5ce5e402058e102dd045ed6cd836a70724243544a42ea4e6332d1` |
| 9 | `theorem` | [complete_of_convergent_controlled_sequences](../../../../../mathematics/Topology/MetricTopology/Basic/Variant92084c9d94172502a36ccda8342c6b6ee9c326dfb9215a0e667f9ea026372f58.lean/declarations/complete-of-convergent-controlled-sequences--5d572574643cef02ee7bd0cd.md) | 99 | `result-track:5d572574643cef02ee7bd0cd20175d103a3647b635cbbda84547573ce6ef2892` |
| 10 | `theorem` | [complete_of_cauchySeq_tendsto](../../../../../mathematics/Topology/MetricTopology/Basic/Variant92084c9d94172502a36ccda8342c6b6ee9c326dfb9215a0e667f9ea026372f58.lean/declarations/complete-of-cauchyseq-tendsto--ab75f7f8c10f7af0dd353125.md) | 107 | `result-track:ab75f7f8c10f7af0dd353125dfebd073da908c4e6e0a74f51bb6e04130b919c1` |
| 11 | `theorem` | [tendstoLocallyUniformlyOn_iff](../../../../../mathematics/Topology/MetricTopology/Basic/Variant92084c9d94172502a36ccda8342c6b6ee9c326dfb9215a0e667f9ea026372f58.lean/declarations/tendstolocallyuniformlyon-iff--38f1aa3eb0f1fb358c864bd9.md) | 112 | `result-track:38f1aa3eb0f1fb358c864bd9a07acaf29c60e66fd1b0f06906378be2cc0c52d0` |
| 12 | `theorem` | [tendstoUniformlyOn_iff](../../../../../mathematics/Topology/MetricTopology/Basic/Variant92084c9d94172502a36ccda8342c6b6ee9c326dfb9215a0e667f9ea026372f58.lean/declarations/tendstouniformlyon-iff--67fddb4b7d3ea9831c6adf60.md) | 122 | `result-track:67fddb4b7d3ea9831c6adf6071d3322635750efec61ff92297c01f315b741e9e` |
| 13 | `theorem` | [tendstoLocallyUniformly_iff](../../../../../mathematics/Topology/MetricTopology/Basic/Variant92084c9d94172502a36ccda8342c6b6ee9c326dfb9215a0e667f9ea026372f58.lean/declarations/tendstolocallyuniformly-iff--aefc6929a6c2683d525511bc.md) | 129 | `result-track:aefc6929a6c2683d525511bc379846cf85853ce560f8b0f638877a7f63e9e0fe` |
| 14 | `theorem` | [tendstoUniformly_iff](../../../../../mathematics/Topology/MetricTopology/Basic/Variant92084c9d94172502a36ccda8342c6b6ee9c326dfb9215a0e667f9ea026372f58.lean/declarations/tendstouniformly-iff--a52fb29b6d9bf8b7d22ab217.md) | 137 | `result-track:a52fb29b6d9bf8b7d22ab2177242449a9a3e89fcb4383922e9197a0105c488cd` |
| 15 | `theorem` | [inseparable_iff](../../../../../mathematics/Topology/MetricTopology/Basic/Variant92084c9d94172502a36ccda8342c6b6ee9c326dfb9215a0e667f9ea026372f58.lean/declarations/inseparable-iff--82215654f339dbd374a51d90.md) | 149 | `result-track:82215654f339dbd374a51d9029f42a0a58423ae2a3f532fcb017204ccab277d0` |
| 16 | `theorem` | [cauchySeq_iff](../../../../../mathematics/Topology/MetricTopology/Basic/Variant92084c9d94172502a36ccda8342c6b6ee9c326dfb9215a0e667f9ea026372f58.lean/declarations/cauchyseq-iff--112302609f71048ec2a3a19a.md) | 157 | `result-track:112302609f71048ec2a3a19af9e28902f8336b1249b0f58db72d3e02d771cab8` |
| 17 | `theorem` | [cauchySeq_iff'](../../../../../mathematics/Topology/MetricTopology/Basic/Variant92084c9d94172502a36ccda8342c6b6ee9c326dfb9215a0e667f9ea026372f58.lean/declarations/cauchyseq-iff--593757f6b2fa01a8e5c2724b.md) | 162 | `result-track:593757f6b2fa01a8e5c2724bc773cf62abe0baa4d4c56e403adfc01f00da5f1b` |
| 18 | `theorem` | [cauchySeq_iff_NNReal](../../../../../mathematics/Topology/MetricTopology/Basic/Variant92084c9d94172502a36ccda8342c6b6ee9c326dfb9215a0e667f9ea026372f58.lean/declarations/cauchyseq-iff-nnreal--7a80682a8e8e578d9f4b2635.md) | 168 | `result-track:7a80682a8e8e578d9f4b2635e948b55e4c1ffd55bcf9cf0d66b147164f5a60f3` |
| 19 | `theorem` | [totallyBounded_iff](../../../../../mathematics/Topology/MetricTopology/Basic/Variant92084c9d94172502a36ccda8342c6b6ee9c326dfb9215a0e667f9ea026372f58.lean/declarations/totallybounded-iff--bb867cd8c6cabbfb145a71bb.md) | 172 | `result-track:bb867cd8c6cabbfb145a71bb7c8fe8b41f767b33f1816ccd212aa57f0e5a5ec8` |
| 20 | `theorem` | [totallyBounded_iff'](../../../../../mathematics/Topology/MetricTopology/Basic/Variant92084c9d94172502a36ccda8342c6b6ee9c326dfb9215a0e667f9ea026372f58.lean/declarations/totallybounded-iff--3f69b23696126f0f8566cf2c.md) | 179 | `result-track:3f69b23696126f0f8566cf2c8cb524cbca70ffef8c2bd335aced1e18b331c4b1` |
| 21 | `theorem` | [subset_countable_closure_of_compact](../../../../../mathematics/Topology/MetricTopology/Basic/Variant92084c9d94172502a36ccda8342c6b6ee9c326dfb9215a0e667f9ea026372f58.lean/declarations/subset-countable-closure-of-compact--48a3bc3ba563ac005b2b9b1a.md) | 191 | `result-track:48a3bc3ba563ac005b2b9b1a6b78aeda06722d2ded1cd374f7921f3db80e743a` |
| 22 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/Basic/Variant92084c9d94172502a36ccda8342c6b6ee9c326dfb9215a0e667f9ea026372f58.lean/declarations/instance--7b7682ba09164378d172a72c.md) | 205 | `declaration-track:7b7682ba09164378d172a72c4c1ee88b011e5245466b6f4c369c5884e6e8a39d` |
| 23 | `theorem` | [secondCountable_of_almost_dense_set](../../../../../mathematics/Topology/MetricTopology/Basic/Variant92084c9d94172502a36ccda8342c6b6ee9c326dfb9215a0e667f9ea026372f58.lean/declarations/secondcountable-of-almost-dense-set--73f28a0a094d97b3b39c8ad1.md) | 214 | `result-track:73f28a0a094d97b3b39c8ad19870c933aa392a1e6a9399838ac364bd936aebaa` |
| 24 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/Basic/Variant92084c9d94172502a36ccda8342c6b6ee9c326dfb9215a0e667f9ea026372f58.lean/declarations/instance--6009495a5d8dc79757503edf.md) | 231 | `declaration-track:6009495a5d8dc79757503edfa4412b0bc5ad00a04f1ede72ef53773c5f1cc14d` |
| 25 | `theorem` | [EMetric.isUniformEmbedding_iff'](../../../../../mathematics/Topology/MetricTopology/Basic/Variant92084c9d94172502a36ccda8342c6b6ee9c326dfb9215a0e667f9ea026372f58.lean/declarations/emetric-isuniformembedding-iff--9255c9d4fb0a0333368c1a7d.md) | 236 | `result-track:9255c9d4fb0a0333368c1a7dd01bdd49b09994bad558dea7b309350dd3a45697` |
| 26 | `abbrev` | [EMetricSpace.ofT0PseudoEMetricSpace](../../../../../mathematics/Topology/MetricTopology/Basic/Variant92084c9d94172502a36ccda8342c6b6ee9c326dfb9215a0e667f9ea026372f58.lean/declarations/emetricspace-oft0pseudoemetricspace--49c81503abcc11d624b4225b.md) | 244 | `declaration-track:49c81503abcc11d624b4225bddbe548f6d24cddde156999601e0e92fb22c537e` |
| 27 | `instance` | [Prod.emetricSpaceMax](../../../../../mathematics/Topology/MetricTopology/Basic/Variant92084c9d94172502a36ccda8342c6b6ee9c326dfb9215a0e667f9ea026372f58.lean/declarations/prod-emetricspacemax--2d4259d09031e1d1f32d68c7.md) | 252 | `declaration-track:2d4259d09031e1d1f32d68c77b774234793856f8732b66f784b8a449c3221a63` |
| 28 | `theorem` | [countable_closure_of_compact](../../../../../mathematics/Topology/MetricTopology/Basic/Variant92084c9d94172502a36ccda8342c6b6ee9c326dfb9215a0e667f9ea026372f58.lean/declarations/countable-closure-of-compact--e40fd45429aae40f988a8546.md) | 258 | `result-track:e40fd45429aae40f988a85460b159f02a0d5330d07706b2782c2eade7f9d5184` |
| 29 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/Basic/Variant92084c9d94172502a36ccda8342c6b6ee9c326dfb9215a0e667f9ea026372f58.lean/declarations/instance--648900bc93b9dde365aba824.md) | 269 | `declaration-track:648900bc93b9dde365aba8241f4bf627de1af6ba43139ba4c5b15c12d57e7961` |
| 30 | `theorem` | [SeparationQuotient.edist_mk](../../../../../mathematics/Topology/MetricTopology/Basic/Variant92084c9d94172502a36ccda8342c6b6ee9c326dfb9215a0e667f9ea026372f58.lean/declarations/separationquotient-edist-mk--6fcb89067a56c364a102fbc3.md) | 273 | `result-track:6fcb89067a56c364a102fbc3b2f8c0845ffa7a0cef4369d4129bf48ed7d1369a` |
| 31 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/Basic/Variant92084c9d94172502a36ccda8342c6b6ee9c326dfb9215a0e667f9ea026372f58.lean/declarations/instance--6e9efd9a8bbda53e13c4a9fc.md) | 278 | `declaration-track:6e9efd9a8bbda53e13c4a9fc426d77f3eb834996eea309acd927a7764886e785` |
| 32 | `theorem` | [IsSeparable.exists_countable_dense_subset](../../../../../mathematics/Topology/MetricTopology/Basic/Variant92084c9d94172502a36ccda8342c6b6ee9c326dfb9215a0e667f9ea026372f58.lean/declarations/isseparable-exists-countable-dense-subset--9828186aa4a14d3dc196a7b1.md) | 296 | `result-track:9828186aa4a14d3dc196a7b1dc20e88b04c0876b1128c0d4e7b7fc02dbd1747d` |
| 33 | `theorem` | [IsSeparable.separableSpace](../../../../../mathematics/Topology/MetricTopology/Basic/Variant92084c9d94172502a36ccda8342c6b6ee9c326dfb9215a0e667f9ea026372f58.lean/declarations/isseparable-separablespace--0d473cd8fea7dc9411da7ebd.md) | 308 | `result-track:0d473cd8fea7dc9411da7ebddd7aa9f1b1101cfe80b51f3f265138738ebbfb4e` |
| 34 | `theorem` | [lebesgue_number_lemma_of_emetric](../../../../../mathematics/Topology/MetricTopology/Basic/Variant92084c9d94172502a36ccda8342c6b6ee9c326dfb9215a0e667f9ea026372f58.lean/declarations/lebesgue-number-lemma-of-emetric--3132bff11f74641b32f38577.md) | 323 | `result-track:3132bff11f74641b32f385776eb61c55a0212efd73ee08412879539ea0ded090` |
| 35 | `theorem` | [lebesgue_number_lemma_of_emetric_nhds'](../../../../../mathematics/Topology/MetricTopology/Basic/Variant92084c9d94172502a36ccda8342c6b6ee9c326dfb9215a0e667f9ea026372f58.lean/declarations/lebesgue-number-lemma-of-emetric-nhds--1f189d9631ccd48736da8365.md) | 328 | `result-track:1f189d9631ccd48736da8365ce684d8177a28871071c89dae3874ae3312e884b` |
| 36 | `theorem` | [lebesgue_number_lemma_of_emetric_nhds](../../../../../mathematics/Topology/MetricTopology/Basic/Variant92084c9d94172502a36ccda8342c6b6ee9c326dfb9215a0e667f9ea026372f58.lean/declarations/lebesgue-number-lemma-of-emetric-nhds--5afc70e7e15776b7f4ab7b6f.md) | 333 | `result-track:5afc70e7e15776b7f4ab7b6f16aefe05bba631e940ffba3649bcd4ad95966ad2` |
| 37 | `theorem` | [lebesgue_number_lemma_of_emetric_nhdsWithin'](../../../../../mathematics/Topology/MetricTopology/Basic/Variant92084c9d94172502a36ccda8342c6b6ee9c326dfb9215a0e667f9ea026372f58.lean/declarations/lebesgue-number-lemma-of-emetric-nhdswithin--59b8182f8d5cd59c47b8b05c.md) | 338 | `result-track:59b8182f8d5cd59c47b8b05c0328ec82c74d9684d3b43096b2f29f0ef39d822c` |
| 38 | `theorem` | [lebesgue_number_lemma_of_emetric_nhdsWithin](../../../../../mathematics/Topology/MetricTopology/Basic/Variant92084c9d94172502a36ccda8342c6b6ee9c326dfb9215a0e667f9ea026372f58.lean/declarations/lebesgue-number-lemma-of-emetric-nhdswithin--463b2d85ff77c9f9d4073d77.md) | 344 | `result-track:463b2d85ff77c9f9d4073d77028697226d8e2f3107870fb8dfcb1127d8265d89` |
| 39 | `theorem` | [lebesgue_number_lemma_of_emetric_sUnion](../../../../../mathematics/Topology/MetricTopology/Basic/Variant92084c9d94172502a36ccda8342c6b6ee9c326dfb9215a0e667f9ea026372f58.lean/declarations/lebesgue-number-lemma-of-emetric-sunion--3b2d9235cd15e43f8f36e0d5.md) | 349 | `result-track:3b2d9235cd15e43f8f36e0d5abd20feae02cbda22110fe312f42ade2c306269f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
