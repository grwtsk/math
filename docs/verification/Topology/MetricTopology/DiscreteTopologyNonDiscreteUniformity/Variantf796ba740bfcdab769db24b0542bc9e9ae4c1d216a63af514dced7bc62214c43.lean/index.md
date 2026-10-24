# Verification target: GRWTSK.Topology.MetricTopology.DiscreteTopologyNonDiscreteUniformity.Variantf796ba740bfcdab769db24b0542bc9e9ae4c1d216a63af514dced7bc62214c43

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "78ba76d6250d0818b49b2d6192832dead96b9a76",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/DiscreteTopologyNonDiscreteUniformity/Variantf796ba740bfcdab769db24b0542bc9e9ae4c1d216a63af514dced7bc62214c43.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/MetricTopology/DiscreteTopologyNonDiscreteUniformity/Variantf796ba740bfcdab769db24b0542bc9e9ae4c1d216a63af514dced7bc62214c43.lean/index.md) · [Full source](../../../../../mathematics/Topology/MetricTopology/DiscreteTopologyNonDiscreteUniformity/Variantf796ba740bfcdab769db24b0542bc9e9ae4c1d216a63af514dced7bc62214c43.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `78ba76d6250d0818b49b2d6192832dead96b9a76`.

Source path: `GRWTSK/Topology/MetricTopology/DiscreteTopologyNonDiscreteUniformity/Variantf796ba740bfcdab769db24b0542bc9e9ae4c1d216a63af514dced7bc62214c43.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/DiscreteTopologyNonDiscreteUniformity/Variantf796ba740bfcdab769db24b0542bc9e9ae4c1d216a63af514dced7bc62214c43.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecificLimits.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Interval.Set.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.MetricSpace.Pseudo.Defs` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.MetricSpace.Cauchy` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.UniformSpace.Cauchy` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/DiscreteTopologyNonDiscreteUniformity/Variantf796ba740bfcdab769db24b0542bc9e9ae4c1d216a63af514dced7bc62214c43.lean/declarations/instance--037b3f616bd1fe208f04f239.md) | 99 | `declaration-track:037b3f616bd1fe208f04f23946a823fc504af87880285ca7d872f5357611585b` |
| 2 | `lemma` | [dist_def](../../../../../mathematics/Topology/MetricTopology/DiscreteTopologyNonDiscreteUniformity/Variantf796ba740bfcdab769db24b0542bc9e9ae4c1d216a63af514dced7bc62214c43.lean/declarations/dist-def--0261561b28a9701d42befe7c.md) | 106 | `result-track:0261561b28a9701d42befe7cf9237d0b2e6f2f656b7d83b0b8e803dcf19dd818` |
| 3 | `lemma` | [Int.eq_of_pow_sub_le](../../../../../mathematics/Topology/MetricTopology/DiscreteTopologyNonDiscreteUniformity/Variantf796ba740bfcdab769db24b0542bc9e9ae4c1d216a63af514dced7bc62214c43.lean/declarations/int-eq-of-pow-sub-le--7f0713242fb14488b8b7316d.md) | 108 | `result-track:7f0713242fb14488b8b7316dec7b6866247e7444b54202c4e95a5b1670057095` |
| 4 | `lemma` | [ball_eq_singleton](../../../../../mathematics/Topology/MetricTopology/DiscreteTopologyNonDiscreteUniformity/Variantf796ba740bfcdab769db24b0542bc9e9ae4c1d216a63af514dced7bc62214c43.lean/declarations/ball-eq-singleton--bb7c1df37b1e8351d4d6c4bd.md) | 142 | `result-track:bb7c1df37b1e8351d4d6c4bdc7537154b1cff0263b5171f0ac87053d09f3affd` |
| 5 | `theorem` | [TopIsDiscrete](../../../../../mathematics/Topology/MetricTopology/DiscreteTopologyNonDiscreteUniformity/Variantf796ba740bfcdab769db24b0542bc9e9ae4c1d216a63af514dced7bc62214c43.lean/declarations/topisdiscrete--c4b02b96360b228c4b774ee9.md) | 152 | `result-track:c4b02b96360b228c4b774ee95a8e822937d0b2046496874ddbeffb688322b236` |
| 6 | `lemma` | [idIsCauchy](../../../../../mathematics/Topology/MetricTopology/DiscreteTopologyNonDiscreteUniformity/Variantf796ba740bfcdab769db24b0542bc9e9ae4c1d216a63af514dced7bc62214c43.lean/declarations/idiscauchy--645ea83691f6142641e29aa1.md) | 157 | `result-track:645ea83691f6142641e29aa170c50d09142a66d936307a2d3ae134b8d60c9fb4` |
| 7 | `def` | [fundamentalEntourage](../../../../../mathematics/Topology/MetricTopology/DiscreteTopologyNonDiscreteUniformity/Variantf796ba740bfcdab769db24b0542bc9e9ae4c1d216a63af514dced7bc62214c43.lean/declarations/fundamentalentourage--86d1c2a0e491460a39010fba.md) | 182 | `declaration-track:86d1c2a0e491460a39010fba3610a2b1fb773d8544b1bbb7a951075d015af8e1` |
| 8 | `lemma` | [fundamentalEntourage_ext](../../../../../mathematics/Topology/MetricTopology/DiscreteTopologyNonDiscreteUniformity/Variantf796ba740bfcdab769db24b0542bc9e9ae4c1d216a63af514dced7bc62214c43.lean/declarations/fundamentalentourage-ext--0f16752a7b9ec0e3571d7b61.md) | 186 | `result-track:0f16752a7b9ec0e3571d7b61bc5c7f1ff561204ec4cc0f5fb7a92bb4729a1bc5` |
| 9 | `lemma` | [mem_range_fundamentalEntourage](../../../../../mathematics/Topology/MetricTopology/DiscreteTopologyNonDiscreteUniformity/Variantf796ba740bfcdab769db24b0542bc9e9ae4c1d216a63af514dced7bc62214c43.lean/declarations/mem-range-fundamentalentourage--8cee209b23dfb06158fe08d0.md) | 190 | `result-track:8cee209b23dfb06158fe08d0dcacd35aacb688145119176c225f22b8fa67da40` |
| 10 | `lemma` | [mem_fundamentalEntourage](../../../../../mathematics/Topology/MetricTopology/DiscreteTopologyNonDiscreteUniformity/Variantf796ba740bfcdab769db24b0542bc9e9ae4c1d216a63af514dced7bc62214c43.lean/declarations/mem-fundamentalentourage--b78e74aedb7465b70b220f26.md) | 194 | `result-track:b78e74aedb7465b70b220f260c228877da7fba9ba466b962d64473aaf145edf1` |
| 11 | `def` | [counterBasis](../../../../../mathematics/Topology/MetricTopology/DiscreteTopologyNonDiscreteUniformity/Variantf796ba740bfcdab769db24b0542bc9e9ae4c1d216a63af514dced7bc62214c43.lean/declarations/counterbasis--78c86abd3184b5508ea2af69.md) | 213 | `declaration-track:78c86abd3184b5508ea2af691d3098f596186e29a93e310e30cb794a3e8f92f8` |
| 12 | `lemma` | [mem_counterBasis_iff](../../../../../mathematics/Topology/MetricTopology/DiscreteTopologyNonDiscreteUniformity/Variantf796ba740bfcdab769db24b0542bc9e9ae4c1d216a63af514dced7bc62214c43.lean/declarations/mem-counterbasis-iff--b4591d4e45600f19d24e60f1.md) | 236 | `result-track:b4591d4e45600f19d24e60f1af520459a3b6fe50e4a3106f45e9f1e5ce90c58d` |
| 13 | `def` | [counterCoreUniformity](../../../../../mathematics/Topology/MetricTopology/DiscreteTopologyNonDiscreteUniformity/Variantf796ba740bfcdab769db24b0542bc9e9ae4c1d216a63af514dced7bc62214c43.lean/declarations/countercoreuniformity--4e9f849d84217e0c6eeac9df.md) | 245 | `declaration-track:4e9f849d84217e0c6eeac9df066e7a0a4a29019a5287c32632dc08f3e8b487f7` |
| 14 | `instance` | [counterTopology](../../../../../mathematics/Topology/MetricTopology/DiscreteTopologyNonDiscreteUniformity/Variantf796ba740bfcdab769db24b0542bc9e9ae4c1d216a63af514dced7bc62214c43.lean/declarations/countertopology--5eed622f66cc3c0237e6c0a0.md) | 273 | `declaration-track:5eed622f66cc3c0237e6c0a0bcf2f6e8a4b5a4e49ecc625b2f2fef28beac0696` |
| 15 | `instance` | [counterUniformity](../../../../../mathematics/Topology/MetricTopology/DiscreteTopologyNonDiscreteUniformity/Variantf796ba740bfcdab769db24b0542bc9e9ae4c1d216a63af514dced7bc62214c43.lean/declarations/counteruniformity--362540df1440f6d69a881dab.md) | 276 | `declaration-track:362540df1440f6d69a881dabda2ac6f59e841277c6122d30070abb59165a173d` |
| 16 | `lemma` | [HasBasis_counterUniformity](../../../../../mathematics/Topology/MetricTopology/DiscreteTopologyNonDiscreteUniformity/Variantf796ba740bfcdab769db24b0542bc9e9ae4c1d216a63af514dced7bc62214c43.lean/declarations/hasbasis-counteruniformity--82dc16d6c7d6e7de26b70477.md) | 278 | `result-track:82dc16d6c7d6e7de26b704776543e7ab24b139df72e99b93203df753514a2856` |
| 17 | `theorem` | [TopIsDiscrete'](../../../../../mathematics/Topology/MetricTopology/DiscreteTopologyNonDiscreteUniformity/Variantf796ba740bfcdab769db24b0542bc9e9ae4c1d216a63af514dced7bc62214c43.lean/declarations/topisdiscrete--6f0be57e640938a68b939165.md) | 288 | `result-track:6f0be57e640938a68b9391656052ce10cd2bcd1434f4e9c9db902cd438ab680f` |
| 18 | `lemma` | [atTopIsCauchy](../../../../../mathematics/Topology/MetricTopology/DiscreteTopologyNonDiscreteUniformity/Variantf796ba740bfcdab769db24b0542bc9e9ae4c1d216a63af514dced7bc62214c43.lean/declarations/attopiscauchy--439ecd2675f9ff612ae7d329.md) | 313 | `result-track:439ecd2675f9ff612ae7d329f89f4520438987905c75ca69c6dc42f1d1ff0a47` |
| 19 | `lemma` | [idIsCauchy'](../../../../../mathematics/Topology/MetricTopology/DiscreteTopologyNonDiscreteUniformity/Variantf796ba740bfcdab769db24b0542bc9e9ae4c1d216a63af514dced7bc62214c43.lean/declarations/idiscauchy--8df3f305925664b5078f84e6.md) | 321 | `result-track:8df3f305925664b5078f84e6e8904dbfc1bbf031cc0e8e13fd486e923b3e8a3e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
