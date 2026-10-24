# Verification target: GRWTSK.Topology.MetricTopology.ContinuousAffineMap.Variant3d9578cc4964258d31ae93d4f78dbf0a4f32dbf055043b99e5bdf287d6a71dae

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d8b49892f12821ace044443b8061b099706c5450",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/ContinuousAffineMap/Variant3d9578cc4964258d31ae93d4f78dbf0a4f32dbf055043b99e5bdf287d6a71dae.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/MetricTopology/ContinuousAffineMap/Variant3d9578cc4964258d31ae93d4f78dbf0a4f32dbf055043b99e5bdf287d6a71dae.lean/index.md) · [Full source](../../../../../mathematics/Topology/MetricTopology/ContinuousAffineMap/Variant3d9578cc4964258d31ae93d4f78dbf0a4f32dbf055043b99e5bdf287d6a71dae.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d8b49892f12821ace044443b8061b099706c5450`.

Source path: `GRWTSK/Topology/MetricTopology/ContinuousAffineMap/Variant3d9578cc4964258d31ae93d4f78dbf0a4f32dbf055043b99e5bdf287d6a71dae.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/ContinuousAffineMap/Variant3d9578cc4964258d31ae93d4f78dbf0a4f32dbf055043b99e5bdf287d6a71dae.lean.json)

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
| 1 | `instance` | [hasNorm](../../../../../mathematics/Topology/MetricTopology/ContinuousAffineMap/Variant3d9578cc4964258d31ae93d4f78dbf0a4f32dbf055043b99e5bdf287d6a71dae.lean/declarations/hasnorm--f4d0aa5f1d8a05813798b02b.md) | 55 | `declaration-track:f4d0aa5f1d8a05813798b02bc1cec1568b2cdbf6104c54a87ddb2dc6ccf816b9` |
| 2 | `theorem` | [norm_def](../../../../../mathematics/Topology/MetricTopology/ContinuousAffineMap/Variant3d9578cc4964258d31ae93d4f78dbf0a4f32dbf055043b99e5bdf287d6a71dae.lean/declarations/norm-def--ebfc2e5d5fe7b50826772504.md) | 58 | `result-track:ebfc2e5d5fe7b50826772504d5e802675d92bb5873ec7032bb594f8323db4d63` |
| 3 | `theorem` | [norm_contLinear_le](../../../../../mathematics/Topology/MetricTopology/ContinuousAffineMap/Variant3d9578cc4964258d31ae93d4f78dbf0a4f32dbf055043b99e5bdf287d6a71dae.lean/declarations/norm-contlinear-le--7f5367ab11bc7d57de303066.md) | 61 | `result-track:7f5367ab11bc7d57de303066bb15a1806020e925425d48ef4cd7ed7eb631e1c3` |
| 4 | `theorem` | [norm_image_zero_le](../../../../../mathematics/Topology/MetricTopology/ContinuousAffineMap/Variant3d9578cc4964258d31ae93d4f78dbf0a4f32dbf055043b99e5bdf287d6a71dae.lean/declarations/norm-image-zero-le--364e6251c0ba292b3c499d5c.md) | 64 | `result-track:364e6251c0ba292b3c499d5c92e73b2d8e257db0d13f4df3256142cf3d986a35` |
| 5 | `theorem` | [norm_eq](../../../../../mathematics/Topology/MetricTopology/ContinuousAffineMap/Variant3d9578cc4964258d31ae93d4f78dbf0a4f32dbf055043b99e5bdf287d6a71dae.lean/declarations/norm-eq--0652760e4644d3fdc636d3b2.md) | 68 | `result-track:0652760e4644d3fdc636d3b2df7f772b3b633051d9b79619658ef07867184d75` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/ContinuousAffineMap/Variant3d9578cc4964258d31ae93d4f78dbf0a4f32dbf055043b99e5bdf287d6a71dae.lean/declarations/instance--adfdb9dd36dd9f4009a418c6.md) | 74 | `declaration-track:adfdb9dd36dd9f4009a418c6caec42ea0b461c6e378f3497b5ef30c8183f2171` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/ContinuousAffineMap/Variant3d9578cc4964258d31ae93d4f78dbf0a4f32dbf055043b99e5bdf287d6a71dae.lean/declarations/instance--ed96f24ed14c99f68a78658f.md) | 77 | `declaration-track:ed96f24ed14c99f68a78658f2e7c7f09b78f0196e52a108d8b2cc68c5f90d355` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/ContinuousAffineMap/Variant3d9578cc4964258d31ae93d4f78dbf0a4f32dbf055043b99e5bdf287d6a71dae.lean/declarations/instance--e7ed320c34409d9edf98be00.md) | 80 | `declaration-track:e7ed320c34409d9edf98be0024b07ee5cd87e8cbcc115b1098b4e38f3faf8f2d` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/ContinuousAffineMap/Variant3d9578cc4964258d31ae93d4f78dbf0a4f32dbf055043b99e5bdf287d6a71dae.lean/declarations/instance--5d10f0c207b8ec64c7700b91.md) | 83 | `declaration-track:5d10f0c207b8ec64c7700b917dcf76ded362533494f3fab3fcb3290508918022` |
| 10 | `theorem` | [norm_comp_le](../../../../../mathematics/Topology/MetricTopology/ContinuousAffineMap/Variant3d9578cc4964258d31ae93d4f78dbf0a4f32dbf055043b99e5bdf287d6a71dae.lean/declarations/norm-comp-le--19ba234ce2ccf5eb33701f97.md) | 86 | `result-track:19ba234ce2ccf5eb33701f9777a94a91bac451bad4b26c4f94438fdd4dea6731` |
| 11 | `def` | [decompLinearIsometryEquiv](../../../../../mathematics/Topology/MetricTopology/ContinuousAffineMap/Variant3d9578cc4964258d31ae93d4f78dbf0a4f32dbf055043b99e5bdf287d6a71dae.lean/declarations/decomplinearisometryequiv--5808552661e2d3c15181e8ae.md) | 105 | `declaration-track:5808552661e2d3c15181e8aef45976000dc329a04314a98c9118c2dab4d5c594` |
| 12 | `theorem` | [fst_decompLinearIsometryEquiv](../../../../../mathematics/Topology/MetricTopology/ContinuousAffineMap/Variant3d9578cc4964258d31ae93d4f78dbf0a4f32dbf055043b99e5bdf287d6a71dae.lean/declarations/fst-decomplinearisometryequiv--fe1cb88de77516ab355e6c42.md) | 110 | `result-track:fe1cb88de77516ab355e6c42cc9caecde6fb3fa73d55754eab24585045b09d85` |
| 13 | `theorem` | [snd_decompLinearIsometryEquiv](../../../../../mathematics/Topology/MetricTopology/ContinuousAffineMap/Variant3d9578cc4964258d31ae93d4f78dbf0a4f32dbf055043b99e5bdf287d6a71dae.lean/declarations/snd-decomplinearisometryequiv--7831928897a3d91407001f52.md) | 115 | `result-track:7831928897a3d91407001f5219c766481e38872aa4de3b45d883fb8297fa353c` |
| 14 | `theorem` | [decompLinearIsometryEquiv_symm_apply](../../../../../mathematics/Topology/MetricTopology/ContinuousAffineMap/Variant3d9578cc4964258d31ae93d4f78dbf0a4f32dbf055043b99e5bdf287d6a71dae.lean/declarations/decomplinearisometryequiv-symm-apply--6833c1c5796eea789093b334.md) | 120 | `result-track:6833c1c5796eea789093b334d884d2860422d6a5e9320cb13b786d4b19a00726` |
| 15 | `theorem` | [decompLinearIsometryEquiv_symm_contLinear](../../../../../mathematics/Topology/MetricTopology/ContinuousAffineMap/Variant3d9578cc4964258d31ae93d4f78dbf0a4f32dbf055043b99e5bdf287d6a71dae.lean/declarations/decomplinearisometryequiv-symm-contlinear--380625588afa02ed4558c735.md) | 125 | `result-track:380625588afa02ed4558c735c108ef5aa9268340939a55925d54a179b4f3e025` |
| 16 | `abbrev` | [toConstProdContinuousLinearMap](../../../../../mathematics/Topology/MetricTopology/ContinuousAffineMap/Variant3d9578cc4964258d31ae93d4f78dbf0a4f32dbf055043b99e5bdf287d6a71dae.lean/declarations/toconstprodcontinuouslinearmap--7c3c876d6e35e782328ccb19.md) | 132 | `declaration-track:7c3c876d6e35e782328ccb19baa91dbe3e6b19e44da3edaa9dea1cc61f666be8` |
| 17 | `theorem` | [toConstProdContinuousLinearMap_fst](../../../../../mathematics/Topology/MetricTopology/ContinuousAffineMap/Variant3d9578cc4964258d31ae93d4f78dbf0a4f32dbf055043b99e5bdf287d6a71dae.lean/declarations/toconstprodcontinuouslinearmap-fst--ae5a3980923576795f786ef2.md) | 135 | `result-track:ae5a3980923576795f786ef2dc58fe2b4e44a74a58a1593262c1e76602113878` |
| 18 | `theorem` | [toConstProdContinuousLinearMap_snd](../../../../../mathematics/Topology/MetricTopology/ContinuousAffineMap/Variant3d9578cc4964258d31ae93d4f78dbf0a4f32dbf055043b99e5bdf287d6a71dae.lean/declarations/toconstprodcontinuouslinearmap-snd--28a4b62fdc04cabc63eecbc9.md) | 140 | `result-track:28a4b62fdc04cabc63eecbc94d8d505256c9ff34aacebd33899f7d5bcba96b92` |
| 19 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/ContinuousAffineMap/Variant3d9578cc4964258d31ae93d4f78dbf0a4f32dbf055043b99e5bdf287d6a71dae.lean/declarations/instance--f04a5f01f8a26da9f799d92a.md) | 152 | `declaration-track:f04a5f01f8a26da9f799d92a9fe573ccdb1fbc3ed3095de4a61a37542aa875f1` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/ContinuousAffineMap/Variant3d9578cc4964258d31ae93d4f78dbf0a4f32dbf055043b99e5bdf287d6a71dae.lean/declarations/instance--72d91dfffc7edde377e88ef0.md) | 155 | `declaration-track:72d91dfffc7edde377e88ef03ba03d26002f5a415511b5c87824421e33b7d9a3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
