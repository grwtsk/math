# Verification target: GRWTSK.Topology.GeneralTopology.Proper.Variant0f8159b4c34e38cc7a5f5e8b1513b31ae12c4d4e09b6a9c07a0e7b39c1de8480

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cd02462d122de8084b0fa28d43ea50fc83c65260",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Proper/Variant0f8159b4c34e38cc7a5f5e8b1513b31ae12c4d4e09b6a9c07a0e7b39c1de8480.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Proper/Variant0f8159b4c34e38cc7a5f5e8b1513b31ae12c4d4e09b6a9c07a0e7b39c1de8480.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Proper/Variant0f8159b4c34e38cc7a5f5e8b1513b31ae12c4d4e09b6a9c07a0e7b39c1de8480.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cd02462d122de8084b0fa28d43ea50fc83c65260`.

Source path: `GRWTSK/Topology/GeneralTopology/Proper/Variant0f8159b4c34e38cc7a5f5e8b1513b31ae12c4d4e09b6a9c07a0e7b39c1de8480.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Proper/Variant0f8159b4c34e38cc7a5f5e8b1513b31ae12c4d4e09b6a9c07a0e7b39c1de8480.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Convex.Cone.Closure` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.InnerProductSpace.Adjoint` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ProperCone](../../../../../mathematics/Topology/GeneralTopology/Proper/Variant0f8159b4c34e38cc7a5f5e8b1513b31ae12c4d4e09b6a9c07a0e7b39c1de8480.lean/declarations/propercone--cca360a5793fcf6dff901c39.md) | 46 | `declaration-track:cca360a5793fcf6dff901c39ffd32517df7b27a84db70639ef02613656d60ca6` |
| 2 | `abbrev` | [toPointedCone](../../../../../mathematics/Topology/GeneralTopology/Proper/Variant0f8159b4c34e38cc7a5f5e8b1513b31ae12c4d4e09b6a9c07a0e7b39c1de8480.lean/declarations/topointedcone--5f3a8421d1b85f5d14fb756c.md) | 59 | `declaration-track:5f3a8421d1b85f5d14fb756ce10efcd35c032e3fba492688a09e6fb70e7382be` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Proper/Variant0f8159b4c34e38cc7a5f5e8b1513b31ae12c4d4e09b6a9c07a0e7b39c1de8480.lean/declarations/instance--31d4d0a7e4350358b0147816.md) | 63 | `declaration-track:31d4d0a7e4350358b0147816663f92d2fe84489d9a7621097a3c4f5e7c7044b1` |
| 4 | `theorem` | [toPointedCone_injective](../../../../../mathematics/Topology/GeneralTopology/Proper/Variant0f8159b4c34e38cc7a5f5e8b1513b31ae12c4d4e09b6a9c07a0e7b39c1de8480.lean/declarations/topointedcone-injective--a4b9061ad2aeff8b1d0c0b20.md) | 66 | `result-track:a4b9061ad2aeff8b1d0c0b200e3b7f96257a76d9d0668604e5d167f3ed48fa67` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Proper/Variant0f8159b4c34e38cc7a5f5e8b1513b31ae12c4d4e09b6a9c07a0e7b39c1de8480.lean/declarations/instance--a2b46f7973044fbfb2e7be1c.md) | 70 | `declaration-track:a2b46f7973044fbfb2e7be1cfa23acf372f60549e8deecf11d58f060726aa2fd` |
| 6 | `theorem` | [ext](../../../../../mathematics/Topology/GeneralTopology/Proper/Variant0f8159b4c34e38cc7a5f5e8b1513b31ae12c4d4e09b6a9c07a0e7b39c1de8480.lean/declarations/ext--0d3fc912e8df615270ffae87.md) | 75 | `result-track:0d3fc912e8df615270ffae873bfdc6059ad8e32d44152104fe22ef7d9c050105` |
| 7 | `theorem` | [mem_coe](../../../../../mathematics/Topology/GeneralTopology/Proper/Variant0f8159b4c34e38cc7a5f5e8b1513b31ae12c4d4e09b6a9c07a0e7b39c1de8480.lean/declarations/mem-coe--7eb7ec59fdae4e1048a91f27.md) | 79 | `result-track:7eb7ec59fdae4e1048a91f276f5a2e8a3c10a40e67a8924f64d0854c5d952393` |
| 8 | `instance` | [instZero](../../../../../mathematics/Topology/GeneralTopology/Proper/Variant0f8159b4c34e38cc7a5f5e8b1513b31ae12c4d4e09b6a9c07a0e7b39c1de8480.lean/declarations/instzero--945d915bdb0de46425adea29.md) | 82 | `declaration-track:945d915bdb0de46425adea2943c2bc0601e66a3961454c6dc1cd5b8998ef0b77` |
| 9 | `theorem` | [nonempty](../../../../../mathematics/Topology/GeneralTopology/Proper/Variant0f8159b4c34e38cc7a5f5e8b1513b31ae12c4d4e09b6a9c07a0e7b39c1de8480.lean/declarations/nonempty--e37cde8a6598a01b79c2e220.md) | 84 | `result-track:e37cde8a6598a01b79c2e22040c8aea7ff761b93ca5b3859dd7fb164d2d05f45` |
| 10 | `theorem` | [isClosed](../../../../../mathematics/Topology/GeneralTopology/Proper/Variant0f8159b4c34e38cc7a5f5e8b1513b31ae12c4d4e09b6a9c07a0e7b39c1de8480.lean/declarations/isclosed--0ed807a2481343f1d0ea743c.md) | 87 | `result-track:0ed807a2481343f1d0ea743ce8362aa91d08f9f598c92a046c21c0819b401012` |
| 11 | `def` | [positive](../../../../../mathematics/Topology/GeneralTopology/Proper/Variant0f8159b4c34e38cc7a5f5e8b1513b31ae12c4d4e09b6a9c07a0e7b39c1de8480.lean/declarations/positive--54f35630f6e1919229246b23.md) | 101 | `declaration-track:54f35630f6e1919229246b2314157f3149a5859c2970c01b26da38550b426ffd` |
| 12 | `theorem` | [mem_positive](../../../../../mathematics/Topology/GeneralTopology/Proper/Variant0f8159b4c34e38cc7a5f5e8b1513b31ae12c4d4e09b6a9c07a0e7b39c1de8480.lean/declarations/mem-positive--e4dd5ebcc901f9d02c742f7c.md) | 106 | `result-track:e4dd5ebcc901f9d02c742f7cb56adbacf179213b0f10fbeb9a7d9ab91e262782` |
| 13 | `theorem` | [coe_positive](../../../../../mathematics/Topology/GeneralTopology/Proper/Variant0f8159b4c34e38cc7a5f5e8b1513b31ae12c4d4e09b6a9c07a0e7b39c1de8480.lean/declarations/coe-positive--8fb27a71dc898e110f244c63.md) | 110 | `result-track:8fb27a71dc898e110f244c63f9cbf46015e56916a00c5d500ded01484d5ae0b1` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Proper/Variant0f8159b4c34e38cc7a5f5e8b1513b31ae12c4d4e09b6a9c07a0e7b39c1de8480.lean/declarations/instance--5e4147dfe5a1111eccad5b5a.md) | 120 | `declaration-track:5e4147dfe5a1111eccad5b5a801a907c3d6c626a78a52229406ffc6285603c10` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Proper/Variant0f8159b4c34e38cc7a5f5e8b1513b31ae12c4d4e09b6a9c07a0e7b39c1de8480.lean/declarations/instance--68aaf8d8126ec7b09f764701.md) | 124 | `declaration-track:68aaf8d8126ec7b09f764701cdc9bb6bb332ff688bdc077676ddbb31c1f3e911` |
| 16 | `theorem` | [mem_zero](../../../../../mathematics/Topology/GeneralTopology/Proper/Variant0f8159b4c34e38cc7a5f5e8b1513b31ae12c4d4e09b6a9c07a0e7b39c1de8480.lean/declarations/mem-zero--1eb4a5dfbbb3c3bc83cf88aa.md) | 128 | `result-track:1eb4a5dfbbb3c3bc83cf88aae9e756d8703062fc6a820eccc12549ac610d889b` |
| 17 | `theorem` | [coe_zero](../../../../../mathematics/Topology/GeneralTopology/Proper/Variant0f8159b4c34e38cc7a5f5e8b1513b31ae12c4d4e09b6a9c07a0e7b39c1de8480.lean/declarations/coe-zero--e1b19d548d90475bf3b4cee1.md) | 132 | `result-track:e1b19d548d90475bf3b4cee118982440762112635bd458e029bddaf279538e71` |
| 18 | `theorem` | [pointed_zero](../../../../../mathematics/Topology/GeneralTopology/Proper/Variant0f8159b4c34e38cc7a5f5e8b1513b31ae12c4d4e09b6a9c07a0e7b39c1de8480.lean/declarations/pointed-zero--c66cae44dc53f54176315198.md) | 135 | `result-track:c66cae44dc53f541763151987661af982a7d11973aa3f7eee105a5590a753b71` |
| 19 | `theorem` | [pointed](../../../../../mathematics/Topology/GeneralTopology/Proper/Variant0f8159b4c34e38cc7a5f5e8b1513b31ae12c4d4e09b6a9c07a0e7b39c1de8480.lean/declarations/pointed--cadca0afd730db55a4225324.md) | 146 | `result-track:cadca0afd730db55a4225324504999d971a10629368690309351c644edb6f781` |
| 20 | `def` | [map](../../../../../mathematics/Topology/GeneralTopology/Proper/Variant0f8159b4c34e38cc7a5f5e8b1513b31ae12c4d4e09b6a9c07a0e7b39c1de8480.lean/declarations/map--a4b7dc2e9bbfb565cebaf072.md) | 151 | `declaration-track:a4b7dc2e9bbfb565cebaf0720043e5049e963ab6e2224170b90e28599ef445f8` |
| 21 | `theorem` | [coe_map](../../../../../mathematics/Topology/GeneralTopology/Proper/Variant0f8159b4c34e38cc7a5f5e8b1513b31ae12c4d4e09b6a9c07a0e7b39c1de8480.lean/declarations/coe-map--85f5a4c2d4d9292440ce2c3c.md) | 156 | `result-track:85f5a4c2d4d9292440ce2c3cf92b443e3b87cab0da87f15b2bfce3c101674817` |
| 22 | `theorem` | [mem_map](../../../../../mathematics/Topology/GeneralTopology/Proper/Variant0f8159b4c34e38cc7a5f5e8b1513b31ae12c4d4e09b6a9c07a0e7b39c1de8480.lean/declarations/mem-map--30827ca24d5e738f4e7a06f3.md) | 161 | `result-track:30827ca24d5e738f4e7a06f31e23968b45d73473c54a4c057624f9d9cc298527` |
| 23 | `theorem` | [map_id](../../../../../mathematics/Topology/GeneralTopology/Proper/Variant0f8159b4c34e38cc7a5f5e8b1513b31ae12c4d4e09b6a9c07a0e7b39c1de8480.lean/declarations/map-id--82df455d22b937686fdf1bbc.md) | 166 | `result-track:82df455d22b937686fdf1bbcdf05f056b24b433e32d4b485e14913703228dd1a` |
| 24 | `def` | [dual](../../../../../mathematics/Topology/GeneralTopology/Proper/Variant0f8159b4c34e38cc7a5f5e8b1513b31ae12c4d4e09b6a9c07a0e7b39c1de8480.lean/declarations/dual--8be249727e24176fcc2a6d33.md) | 170 | `declaration-track:8be249727e24176fcc2a6d331248e1fc3227742c9867d8bb658bc874fea1f32c` |
| 25 | `theorem` | [coe_dual](../../../../../mathematics/Topology/GeneralTopology/Proper/Variant0f8159b4c34e38cc7a5f5e8b1513b31ae12c4d4e09b6a9c07a0e7b39c1de8480.lean/declarations/coe-dual--a5424ff5a7dd5132097d8998.md) | 175 | `result-track:a5424ff5a7dd5132097d8998413db7471fee5beaf094b689abff9dfeb674e829` |
| 26 | `theorem` | [mem_dual](../../../../../mathematics/Topology/GeneralTopology/Proper/Variant0f8159b4c34e38cc7a5f5e8b1513b31ae12c4d4e09b6a9c07a0e7b39c1de8480.lean/declarations/mem-dual--3b917c5c4df7e573e0f5541e.md) | 180 | `result-track:3b917c5c4df7e573e0f5541e93120f8525caa145eee7b100e841d9e420ea6178` |
| 27 | `def` | [comap](../../../../../mathematics/Topology/GeneralTopology/Proper/Variant0f8159b4c34e38cc7a5f5e8b1513b31ae12c4d4e09b6a9c07a0e7b39c1de8480.lean/declarations/comap--06b99f8132245c4045b2856f.md) | 184 | `declaration-track:06b99f8132245c4045b2856f6a8be6f9a7366c733385f27def3299ec38e843b5` |
| 28 | `theorem` | [coe_comap](../../../../../mathematics/Topology/GeneralTopology/Proper/Variant0f8159b4c34e38cc7a5f5e8b1513b31ae12c4d4e09b6a9c07a0e7b39c1de8480.lean/declarations/coe-comap--1be842763d4425ce11bcddde.md) | 191 | `result-track:1be842763d4425ce11bcddde92441591bb960edf02beeac76a523f233d83e008` |
| 29 | `theorem` | [comap_id](../../../../../mathematics/Topology/GeneralTopology/Proper/Variant0f8159b4c34e38cc7a5f5e8b1513b31ae12c4d4e09b6a9c07a0e7b39c1de8480.lean/declarations/comap-id--c95e0e0bc56a1aeccddba61e.md) | 195 | `result-track:c95e0e0bc56a1aeccddba61ef644ecd4463727abedbe129d5bbfa877e81c9f92` |
| 30 | `theorem` | [comap_comap](../../../../../mathematics/Topology/GeneralTopology/Proper/Variant0f8159b4c34e38cc7a5f5e8b1513b31ae12c4d4e09b6a9c07a0e7b39c1de8480.lean/declarations/comap-comap--8fcf14e1ac54665d0e601def.md) | 198 | `result-track:8fcf14e1ac54665d0e601def2e44f7aad58c739c11372d0135bcba160c8c8364` |
| 31 | `theorem` | [mem_comap](../../../../../mathematics/Topology/GeneralTopology/Proper/Variant0f8159b4c34e38cc7a5f5e8b1513b31ae12c4d4e09b6a9c07a0e7b39c1de8480.lean/declarations/mem-comap--744aad04470a2627c51c4e41.md) | 203 | `result-track:744aad04470a2627c51c4e41c8769d6fa1594ba55309271430750beb33efbf74` |
| 32 | `theorem` | [dual_dual](../../../../../mathematics/Topology/GeneralTopology/Proper/Variant0f8159b4c34e38cc7a5f5e8b1513b31ae12c4d4e09b6a9c07a0e7b39c1de8480.lean/declarations/dual-dual--b814c2c382351ba1546213e1.md) | 217 | `result-track:b814c2c382351ba1546213e1fbd3533f996b6ef21c1bb2b32f77a6fa559558ca` |
| 33 | `theorem` | [hyperplane_separation](../../../../../mathematics/Topology/GeneralTopology/Proper/Variant0f8159b4c34e38cc7a5f5e8b1513b31ae12c4d4e09b6a9c07a0e7b39c1de8480.lean/declarations/hyperplane-separation--bbf136e5cc5e9b11af43bea5.md) | 225 | `result-track:bbf136e5cc5e9b11af43bea540af736a54dd485278cb4a2ddb66b2d1561fbeea` |
| 34 | `theorem` | [hyperplane_separation_of_notMem](../../../../../mathematics/Topology/GeneralTopology/Proper/Variant0f8159b4c34e38cc7a5f5e8b1513b31ae12c4d4e09b6a9c07a0e7b39c1de8480.lean/declarations/hyperplane-separation-of-notmem--b9b859d0fa04b854de99f508.md) | 267 | `result-track:b9b859d0fa04b854de99f50823eb4f4e98532ebe1b8ed764f7222306dfe7f3f2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
