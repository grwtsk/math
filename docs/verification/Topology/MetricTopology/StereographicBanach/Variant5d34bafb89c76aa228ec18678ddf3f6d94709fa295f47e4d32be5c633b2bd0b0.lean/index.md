# Verification target: GRWTSK.Topology.MetricTopology.StereographicBanach.Variant5d34bafb89c76aa228ec18678ddf3f6d94709fa295f47e4d32be5c633b2bd0b0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cd725305b9da0a9c7ceb5c731379779857d16104",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/StereographicBanach/Variant5d34bafb89c76aa228ec18678ddf3f6d94709fa295f47e4d32be5c633b2bd0b0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/MetricTopology/StereographicBanach/Variant5d34bafb89c76aa228ec18678ddf3f6d94709fa295f47e4d32be5c633b2bd0b0.lean/index.md) · [Full source](../../../../../mathematics/Topology/MetricTopology/StereographicBanach/Variant5d34bafb89c76aa228ec18678ddf3f6d94709fa295f47e4d32be5c633b2bd0b0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cd725305b9da0a9c7ceb5c731379779857d16104`.

Source path: `GRWTSK/Topology/MetricTopology/StereographicBanach/Variant5d34bafb89c76aa228ec18678ddf3f6d94709fa295f47e4d32be5c633b2bd0b0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/StereographicBanach/Variant5d34bafb89c76aa228ec18678ddf3f6d94709fa295f47e4d32be5c633b2bd0b0.lean.json)

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
| 1 | `structure` | [FiniteOnePointChart](../../../../../mathematics/Topology/MetricTopology/StereographicBanach/Variant5d34bafb89c76aa228ec18678ddf3f6d94709fa295f47e4d32be5c633b2bd0b0.lean/declarations/finiteonepointchart--145aa223388052631a89c158.md) | 45 | `declaration-track:145aa223388052631a89c15800d9391e5eb0ad82857d17206be5166effeb796b` |
| 2 | `def` | [ofValue](../../../../../mathematics/Topology/MetricTopology/StereographicBanach/Variant5d34bafb89c76aa228ec18678ddf3f6d94709fa295f47e4d32be5c633b2bd0b0.lean/declarations/ofvalue--1e0b580941246a924d5ffcdd.md) | 54 | `declaration-track:1e0b580941246a924d5ffcdddb39d2727c8c6051b88c62f3f87bc59b2220540b` |
| 3 | `def` | [value](../../../../../mathematics/Topology/MetricTopology/StereographicBanach/Variant5d34bafb89c76aa228ec18678ddf3f6d94709fa295f47e4d32be5c633b2bd0b0.lean/declarations/value--3f74ddcb1cf6f71420f4e53d.md) | 58 | `declaration-track:3f74ddcb1cf6f71420f4e53df2f1a47120f0d0e896b4153ea9882d927389a6e4` |
| 4 | `theorem` | [coe_value](../../../../../mathematics/Topology/MetricTopology/StereographicBanach/Variant5d34bafb89c76aa228ec18678ddf3f6d94709fa295f47e4d32be5c633b2bd0b0.lean/declarations/coe-value--28bf387022cd3d1d827ded59.md) | 62 | `result-track:28bf387022cd3d1d827ded59b76c9f3a64d5c284aff9dc48a80df8b631ce8338` |
| 5 | `theorem` | [value_ofValue](../../../../../mathematics/Topology/MetricTopology/StereographicBanach/Variant5d34bafb89c76aa228ec18678ddf3f6d94709fa295f47e4d32be5c633b2bd0b0.lean/declarations/value-ofvalue--baff1f580e2566e5a05349d7.md) | 67 | `result-track:baff1f580e2566e5a05349d79dabb5979289ed9e3e4cd884f0d687fa5d19525e` |
| 6 | `theorem` | [point_ofValue](../../../../../mathematics/Topology/MetricTopology/StereographicBanach/Variant5d34bafb89c76aa228ec18678ddf3f6d94709fa295f47e4d32be5c633b2bd0b0.lean/declarations/point-ofvalue--4c6be2774304ca0031fdbe6a.md) | 74 | `result-track:4c6be2774304ca0031fdbe6a1e13ca286bd8ece425851b7c780fc5b4e02af01f` |
| 7 | `theorem` | [ext](../../../../../mathematics/Topology/MetricTopology/StereographicBanach/Variant5d34bafb89c76aa228ec18678ddf3f6d94709fa295f47e4d32be5c633b2bd0b0.lean/declarations/ext--4be189c53a471f4ff20c8f37.md) | 78 | `result-track:4be189c53a471f4ff20c8f370c55f4e936465bf183c0fdc428648e48af2a7375` |
| 8 | `theorem` | [ofValue_value](../../../../../mathematics/Topology/MetricTopology/StereographicBanach/Variant5d34bafb89c76aa228ec18678ddf3f6d94709fa295f47e4d32be5c633b2bd0b0.lean/declarations/ofvalue-value--0e3b20f899f3e65b29263d76.md) | 85 | `result-track:0e3b20f899f3e65b29263d76c78fa2e5f9812a40f8f923374a61677701de54a5` |
| 9 | `def` | [chartEquiv](../../../../../mathematics/Topology/MetricTopology/StereographicBanach/Variant5d34bafb89c76aa228ec18678ddf3f6d94709fa295f47e4d32be5c633b2bd0b0.lean/declarations/chartequiv--46be125b72a45c2d954e2cd9.md) | 91 | `declaration-track:46be125b72a45c2d954e2cd971d86f8b13f1695736ee6d5ccb75386ea3b10a65` |
| 10 | `theorem` | [chartEquiv_apply](../../../../../mathematics/Topology/MetricTopology/StereographicBanach/Variant5d34bafb89c76aa228ec18678ddf3f6d94709fa295f47e4d32be5c633b2bd0b0.lean/declarations/chartequiv-apply--7f4e8a662cbd726a251711ee.md) | 98 | `result-track:7f4e8a662cbd726a251711eed264843608971a02e03278610e3a96b8440d699e` |
| 11 | `theorem` | [chartEquiv_symm_apply](../../../../../mathematics/Topology/MetricTopology/StereographicBanach/Variant5d34bafb89c76aa228ec18678ddf3f6d94709fa295f47e4d32be5c633b2bd0b0.lean/declarations/chartequiv-symm-apply--e7472ce70a0d3c419f907cd2.md) | 102 | `result-track:e7472ce70a0d3c419f907cd2567856cbdf2e7c5efcfd235e152545f37d04839f` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/StereographicBanach/Variant5d34bafb89c76aa228ec18678ddf3f6d94709fa295f47e4d32be5c633b2bd0b0.lean/declarations/instance--f139f7e19ddf764855f483a2.md) | 108 | `declaration-track:f139f7e19ddf764855f483a2be9fa82ecb73598db7b7bf343722c1b40b8cc20b` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/StereographicBanach/Variant5d34bafb89c76aa228ec18678ddf3f6d94709fa295f47e4d32be5c633b2bd0b0.lean/declarations/instance--520c72c33518defc0b275513.md) | 111 | `declaration-track:520c72c33518defc0b275513436991f45689c1d47a4aa0a9c9a4344cd8533c69` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/StereographicBanach/Variant5d34bafb89c76aa228ec18678ddf3f6d94709fa295f47e4d32be5c633b2bd0b0.lean/declarations/instance--6ad64babfff21b5bfdeac4ff.md) | 114 | `declaration-track:6ad64babfff21b5bfdeac4ffea530712de47d4a374ca38533426e2b68705eec7` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/StereographicBanach/Variant5d34bafb89c76aa228ec18678ddf3f6d94709fa295f47e4d32be5c633b2bd0b0.lean/declarations/instance--06714218ebd6c4331934573d.md) | 117 | `declaration-track:06714218ebd6c4331934573d4a4b551193a7c0923eacdbc6130a021333157860` |
| 16 | `def` | [chartLinearIsometryEquiv](../../../../../mathematics/Topology/MetricTopology/StereographicBanach/Variant5d34bafb89c76aa228ec18678ddf3f6d94709fa295f47e4d32be5c633b2bd0b0.lean/declarations/chartlinearisometryequiv--97804534b3d746f421ebc242.md) | 123 | `declaration-track:97804534b3d746f421ebc24255eb007011c4c47d873d510a9312e33c78f3cb86` |
| 17 | `theorem` | [chartLinearIsometryEquiv_apply](../../../../../mathematics/Topology/MetricTopology/StereographicBanach/Variant5d34bafb89c76aa228ec18678ddf3f6d94709fa295f47e4d32be5c633b2bd0b0.lean/declarations/chartlinearisometryequiv-apply--dc90f89606de14cb94c85c44.md) | 129 | `result-track:dc90f89606de14cb94c85c4425cc89652eed25b53d93b9549a3124a7616b961f` |
| 18 | `theorem` | [chartLinearIsometryEquiv_symm_apply](../../../../../mathematics/Topology/MetricTopology/StereographicBanach/Variant5d34bafb89c76aa228ec18678ddf3f6d94709fa295f47e4d32be5c633b2bd0b0.lean/declarations/chartlinearisometryequiv-symm-apply--14ba6640a0839e43eeba9419.md) | 134 | `result-track:14ba6640a0839e43eeba94193c9d124851bafe11d2c690347674468e083d475a` |
| 19 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/StereographicBanach/Variant5d34bafb89c76aa228ec18678ddf3f6d94709fa295f47e4d32be5c633b2bd0b0.lean/declarations/instance--7d2057b56422163afc85e5df.md) | 139 | `declaration-track:7d2057b56422163afc85e5df06430c004c8d49f4f621e366b8078f620ccdc3b9` |
| 20 | `theorem` | [completeSpace](../../../../../mathematics/Topology/MetricTopology/StereographicBanach/Variant5d34bafb89c76aa228ec18678ddf3f6d94709fa295f47e4d32be5c633b2bd0b0.lean/declarations/completespace--1d6468139470ef6181f340b3.md) | 145 | `result-track:1d6468139470ef6181f340b308864f944aa1bd4f96073f1a43f8f0a36eb859d0` |
| 21 | `theorem` | [finiteOnePointChart_isComplete_univ](../../../../../mathematics/Topology/MetricTopology/StereographicBanach/Variant5d34bafb89c76aa228ec18678ddf3f6d94709fa295f47e4d32be5c633b2bd0b0.lean/declarations/finiteonepointchart-iscomplete-univ--4d189aef186a4c9395416540.md) | 153 | `result-track:4d189aef186a4c9395416540c48d2f288e468ba652046a658522b2fa5428177d` |
| 22 | `theorem` | [value_zero](../../../../../mathematics/Topology/MetricTopology/StereographicBanach/Variant5d34bafb89c76aa228ec18678ddf3f6d94709fa295f47e4d32be5c633b2bd0b0.lean/declarations/value-zero--041c5a1a2544276b72633d17.md) | 159 | `result-track:041c5a1a2544276b72633d17458bf0785c8982d7733521c21cc040d49c513713` |
| 23 | `theorem` | [zero_point](../../../../../mathematics/Topology/MetricTopology/StereographicBanach/Variant5d34bafb89c76aa228ec18678ddf3f6d94709fa295f47e4d32be5c633b2bd0b0.lean/declarations/zero-point--4090e13fe6fe3985c533313c.md) | 164 | `result-track:4090e13fe6fe3985c533313cccc9ecefdffe7eae1cf8ee474170cc4274f05e4a` |
| 24 | `theorem` | [value_add](../../../../../mathematics/Topology/MetricTopology/StereographicBanach/Variant5d34bafb89c76aa228ec18678ddf3f6d94709fa295f47e4d32be5c633b2bd0b0.lean/declarations/value-add--1c898006d137fe021da94739.md) | 173 | `result-track:1c898006d137fe021da947395129b4636924b40421ef4cf96dfdfda2964bf67e` |
| 25 | `theorem` | [value_neg](../../../../../mathematics/Topology/MetricTopology/StereographicBanach/Variant5d34bafb89c76aa228ec18678ddf3f6d94709fa295f47e4d32be5c633b2bd0b0.lean/declarations/value-neg--7329c5467b800c4f7627bd0a.md) | 178 | `result-track:7329c5467b800c4f7627bd0afc0dbc37cd004b101b3a06f80347d0c4944e6bab` |
| 26 | `theorem` | [value_sub](../../../../../mathematics/Topology/MetricTopology/StereographicBanach/Variant5d34bafb89c76aa228ec18678ddf3f6d94709fa295f47e4d32be5c633b2bd0b0.lean/declarations/value-sub--1b4aca6ed2444e814759fd6e.md) | 183 | `result-track:1b4aca6ed2444e814759fd6efb6e9a21b23e2ce1fc72dce9112e6a13a9d18857` |
| 27 | `theorem` | [value_smul](../../../../../mathematics/Topology/MetricTopology/StereographicBanach/Variant5d34bafb89c76aa228ec18678ddf3f6d94709fa295f47e4d32be5c633b2bd0b0.lean/declarations/value-smul--92bc7416921822c7604f1f08.md) | 188 | `result-track:92bc7416921822c7604f1f082f6d6fb29e47d3ccb2d5b29426e1daa97c4948ef` |
| 28 | `theorem` | [norm_eq](../../../../../mathematics/Topology/MetricTopology/StereographicBanach/Variant5d34bafb89c76aa228ec18678ddf3f6d94709fa295f47e4d32be5c633b2bd0b0.lean/declarations/norm-eq--1e493c2f2750d48f52488ea9.md) | 193 | `result-track:1e493c2f2750d48f52488ea9c404c21cae65dbb441e07997d8d9b6e27aaa715c` |
| 29 | `theorem` | [dist_eq](../../../../../mathematics/Topology/MetricTopology/StereographicBanach/Variant5d34bafb89c76aa228ec18678ddf3f6d94709fa295f47e4d32be5c633b2bd0b0.lean/declarations/dist-eq--a610c0a964f2af9235330da9.md) | 199 | `result-track:a610c0a964f2af9235330da9f423e8f408ecdea6cc5e26c16efc3e9de4b5c970` |
| 30 | `abbrev` | [FiniteRiemannChart](../../../../../mathematics/Topology/MetricTopology/StereographicBanach/Variant5d34bafb89c76aa228ec18678ddf3f6d94709fa295f47e4d32be5c633b2bd0b0.lean/declarations/finiteriemannchart--855a636860e5e50afcd455e8.md) | 211 | `declaration-track:855a636860e5e50afcd455e82646f457f63d762b011ec6f15a675b7f4f2547d8` |
| 31 | `def` | [riemannChartLinearIsometryEquiv](../../../../../mathematics/Topology/MetricTopology/StereographicBanach/Variant5d34bafb89c76aa228ec18678ddf3f6d94709fa295f47e4d32be5c633b2bd0b0.lean/declarations/riemannchartlinearisometryequiv--bfbf0d44628777503327e0cc.md) | 214 | `declaration-track:bfbf0d44628777503327e0cc3467a143cfece9281d699d9f72850a124323f48d` |
| 32 | `theorem` | [riemannFiniteChart_isComplete_univ](../../../../../mathematics/Topology/MetricTopology/StereographicBanach/Variant5d34bafb89c76aa228ec18678ddf3f6d94709fa295f47e4d32be5c633b2bd0b0.lean/declarations/riemannfinitechart-iscomplete-univ--079698715982d35b9543f18c.md) | 219 | `result-track:079698715982d35b9543f18c8890782ffa0e67da913e56015c3d88a57e6fa55c` |
| 33 | `theorem` | [riemannChart_zero_point](../../../../../mathematics/Topology/MetricTopology/StereographicBanach/Variant5d34bafb89c76aa228ec18678ddf3f6d94709fa295f47e4d32be5c633b2bd0b0.lean/declarations/riemannchart-zero-point--5b195b0b48dd446217a4efd2.md) | 224 | `result-track:5b195b0b48dd446217a4efd23efe874c5813d88ce4f03fb45c064bbcb1413dfa` |
| 34 | `theorem` | [riemannChart_zero_maps_to_south](../../../../../mathematics/Topology/MetricTopology/StereographicBanach/Variant5d34bafb89c76aa228ec18678ddf3f6d94709fa295f47e4d32be5c633b2bd0b0.lean/declarations/riemannchart-zero-maps-to-south--6f274471a242f8612f23aaab.md) | 231 | `result-track:6f274471a242f8612f23aaab6be45c72ae8272f23f46ccc2bc23d7feaafa84c9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
