# Verification target: GRWTSK.Topology.GeneralTopology.WithZeroTopology.Variant7491535ba77d72ffdfa704b661734cd20182dfca1b59ea04ef053e7e3eb77ed8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "566e053105d496bf12b7490813a14cfc5af48700",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/WithZeroTopology/Variant7491535ba77d72ffdfa704b661734cd20182dfca1b59ea04ef053e7e3eb77ed8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/WithZeroTopology/Variant7491535ba77d72ffdfa704b661734cd20182dfca1b59ea04ef053e7e3eb77ed8.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/WithZeroTopology/Variant7491535ba77d72ffdfa704b661734cd20182dfca1b59ea04ef053e7e3eb77ed8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `566e053105d496bf12b7490813a14cfc5af48700`.

Source path: `GRWTSK/Topology/GeneralTopology/WithZeroTopology/Variant7491535ba77d72ffdfa704b661734cd20182dfca1b59ea04ef053e7e3eb77ed8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/WithZeroTopology/Variant7491535ba77d72ffdfa704b661734cd20182dfca1b59ea04ef053e7e3eb77ed8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.GroupWithZero.Canonical` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.GroupWithZero` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Order.OrderClosed` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Separation.Regular` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/WithZeroTopology/Variant7491535ba77d72ffdfa704b661734cd20182dfca1b59ea04ef053e7e3eb77ed8.lean/declarations/instance--0c86e55fadd4fbf0a1553f9f.md) | 43 | `declaration-track:0c86e55fadd4fbf0a1553f9f179a6074fd7f8d272413da2bf64678920df8e3e0` |
| 2 | `theorem` | [nhds_eq_update](../../../../../mathematics/Topology/GeneralTopology/WithZeroTopology/Variant7491535ba77d72ffdfa704b661734cd20182dfca1b59ea04ef053e7e3eb77ed8.lean/declarations/nhds-eq-update--641742e4465c8aef812fee75.md) | 46 | `result-track:641742e4465c8aef812fee75117e9b7ba03c2d95ba7b14532fbc143740c46196` |
| 3 | `theorem` | [nhds_zero](../../../../../mathematics/Topology/GeneralTopology/WithZeroTopology/Variant7491535ba77d72ffdfa704b661734cd20182dfca1b59ea04ef053e7e3eb77ed8.lean/declarations/nhds-zero--a03233627fd1f68ba7c3f6db.md) | 54 | `result-track:a03233627fd1f68ba7c3f6dbb634402625dc6077bc5f908ef288be66fe61a7f9` |
| 4 | `theorem` | [hasBasis_nhds_zero](../../../../../mathematics/Topology/GeneralTopology/WithZeroTopology/Variant7491535ba77d72ffdfa704b661734cd20182dfca1b59ea04ef053e7e3eb77ed8.lean/declarations/hasbasis-nhds-zero--f6e01b1e5de45f5ddb501fcc.md) | 59 | `result-track:f6e01b1e5de45f5ddb501fccb1405e2e5f789e72307ff2f1797750ad8c4aeeec` |
| 5 | `theorem` | [Iio_mem_nhds_zero](../../../../../mathematics/Topology/GeneralTopology/WithZeroTopology/Variant7491535ba77d72ffdfa704b661734cd20182dfca1b59ea04ef053e7e3eb77ed8.lean/declarations/iio-mem-nhds-zero--3c2410bd248b108851f14c43.md) | 64 | `result-track:3c2410bd248b108851f14c435fcb2436c4d48ac10961017ba93aeac5bdaef74d` |
| 6 | `theorem` | [nhds_zero_of_units](../../../../../mathematics/Topology/GeneralTopology/WithZeroTopology/Variant7491535ba77d72ffdfa704b661734cd20182dfca1b59ea04ef053e7e3eb77ed8.lean/declarations/nhds-zero-of-units--4b6ab7818eeee3b4013d7063.md) | 69 | `result-track:4b6ab7818eeee3b4013d7063c4bca938733b69b4cf3c0a5678d153ddd718b224` |
| 7 | `theorem` | [tendsto_zero](../../../../../mathematics/Topology/GeneralTopology/WithZeroTopology/Variant7491535ba77d72ffdfa704b661734cd20182dfca1b59ea04ef053e7e3eb77ed8.lean/declarations/tendsto-zero--75f78b49106a5970d5781d37.md) | 72 | `result-track:75f78b49106a5970d5781d37072b0f105ea8f0cf9da3887ed040c125aa73f388` |
| 8 | `theorem` | [nhds_of_ne_zero](../../../../../mathematics/Topology/GeneralTopology/WithZeroTopology/Variant7491535ba77d72ffdfa704b661734cd20182dfca1b59ea04ef053e7e3eb77ed8.lean/declarations/nhds-of-ne-zero--a2e1d0410d64f9c38e72377a.md) | 82 | `result-track:a2e1d0410d64f9c38e72377afcce1f718ec04db88ceab0d2be935f6b2fb4c09d` |
| 9 | `theorem` | [nhds_coe_units](../../../../../mathematics/Topology/GeneralTopology/WithZeroTopology/Variant7491535ba77d72ffdfa704b661734cd20182dfca1b59ea04ef053e7e3eb77ed8.lean/declarations/nhds-coe-units--8e091aa87919a91bf88507d4.md) | 87 | `result-track:8e091aa87919a91bf88507d4b0a6c2f13a2c90036fe41e4781e5cc42e35a4f13` |
| 10 | `theorem` | [singleton_mem_nhds_of_units](../../../../../mathematics/Topology/GeneralTopology/WithZeroTopology/Variant7491535ba77d72ffdfa704b661734cd20182dfca1b59ea04ef053e7e3eb77ed8.lean/declarations/singleton-mem-nhds-of-units--59e7874056361108ed149129.md) | 92 | `result-track:59e7874056361108ed149129a55c316843d5ea9ad006a5b84e834d2faff7da68` |
| 11 | `theorem` | [singleton_mem_nhds_of_ne_zero](../../../../../mathematics/Topology/GeneralTopology/WithZeroTopology/Variant7491535ba77d72ffdfa704b661734cd20182dfca1b59ea04ef053e7e3eb77ed8.lean/declarations/singleton-mem-nhds-of-ne-zero--1849399a8e5a690f74cc2419.md) | 96 | `result-track:1849399a8e5a690f74cc2419b9b422e6279374f63478602d4e32e8efaa929341` |
| 12 | `theorem` | [hasBasis_nhds_of_ne_zero](../../../../../mathematics/Topology/GeneralTopology/WithZeroTopology/Variant7491535ba77d72ffdfa704b661734cd20182dfca1b59ea04ef053e7e3eb77ed8.lean/declarations/hasbasis-nhds-of-ne-zero--690ade1c316795fa27a006c6.md) | 98 | `result-track:690ade1c316795fa27a006c6829f58e0fe66e874c2a2dc18f0d7a89d9bb4ce26` |
| 13 | `theorem` | [hasBasis_nhds_units](../../../../../mathematics/Topology/GeneralTopology/WithZeroTopology/Variant7491535ba77d72ffdfa704b661734cd20182dfca1b59ea04ef053e7e3eb77ed8.lean/declarations/hasbasis-nhds-units--df91f5a5640ad73a65d03c80.md) | 103 | `result-track:df91f5a5640ad73a65d03c80eae71dfc3a00ad471a3e31f323f429d14a12b475` |
| 14 | `theorem` | [tendsto_of_ne_zero](../../../../../mathematics/Topology/GeneralTopology/WithZeroTopology/Variant7491535ba77d72ffdfa704b661734cd20182dfca1b59ea04ef053e7e3eb77ed8.lean/declarations/tendsto-of-ne-zero--620f69debcdd848897e277f6.md) | 107 | `result-track:620f69debcdd848897e277f66e9a350baf0647217ffb16f6cc59dece2253ebd6` |
| 15 | `theorem` | [tendsto_units](../../../../../mathematics/Topology/GeneralTopology/WithZeroTopology/Variant7491535ba77d72ffdfa704b661734cd20182dfca1b59ea04ef053e7e3eb77ed8.lean/declarations/tendsto-units--deb0be72bee391f0abcf9a21.md) | 110 | `result-track:deb0be72bee391f0abcf9a2100a087378cc6c4ea225ae03f02f728eb244be11e` |
| 16 | `theorem` | [Iio_mem_nhds](../../../../../mathematics/Topology/GeneralTopology/WithZeroTopology/Variant7491535ba77d72ffdfa704b661734cd20182dfca1b59ea04ef053e7e3eb77ed8.lean/declarations/iio-mem-nhds--315330ded7efc825c7e7609c.md) | 113 | `result-track:315330ded7efc825c7e7609c3cdaca7b1f8c3084d1bda45afce2583945c0fddf` |
| 17 | `theorem` | [isOpen_iff](../../../../../mathematics/Topology/GeneralTopology/WithZeroTopology/Variant7491535ba77d72ffdfa704b661734cd20182dfca1b59ea04ef053e7e3eb77ed8.lean/declarations/isopen-iff--7cbc913b1d5522ba8a94d0b3.md) | 120 | `result-track:7cbc913b1d5522ba8a94d0b3a7e8666917b96fa1d68ad0e28f5ad57dfbe7300f` |
| 18 | `theorem` | [isClosed_iff](../../../../../mathematics/Topology/GeneralTopology/WithZeroTopology/Variant7491535ba77d72ffdfa704b661734cd20182dfca1b59ea04ef053e7e3eb77ed8.lean/declarations/isclosed-iff--bba693cf22b8a01de105e77c.md) | 125 | `result-track:bba693cf22b8a01de105e77cf53a80e22f15280080b1a1069491a1a817011bc1` |
| 19 | `theorem` | [isOpen_Iio](../../../../../mathematics/Topology/GeneralTopology/WithZeroTopology/Variant7491535ba77d72ffdfa704b661734cd20182dfca1b59ea04ef053e7e3eb77ed8.lean/declarations/isopen-iio--45bf896adaf614b48e4baa8f.md) | 129 | `result-track:45bf896adaf614b48e4baa8f1630860046b31d6659462df729f688e2837bb798` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/WithZeroTopology/Variant7491535ba77d72ffdfa704b661734cd20182dfca1b59ea04ef053e7e3eb77ed8.lean/declarations/instance--68133df160874b94e70c64a8.md) | 139 | `declaration-track:68133df160874b94e70c64a84bb465ccc5784fa2f3b7ddc0f49c2e38925d5a03` |
| 21 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/WithZeroTopology/Variant7491535ba77d72ffdfa704b661734cd20182dfca1b59ea04ef053e7e3eb77ed8.lean/declarations/instance--09b5f5354c2f21d494f8a9f7.md) | 148 | `declaration-track:09b5f5354c2f21d494f8a9f74065721168570fe30ba59776d949ed932cd4d191` |
| 22 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/WithZeroTopology/Variant7491535ba77d72ffdfa704b661734cd20182dfca1b59ea04ef053e7e3eb77ed8.lean/declarations/instance--fa172bd35c1c20aff2bc9b92.md) | 158 | `declaration-track:fa172bd35c1c20aff2bc9b92e54ab552ffcafad9b479984e971e3d5a65bf323c` |
| 23 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/WithZeroTopology/Variant7491535ba77d72ffdfa704b661734cd20182dfca1b59ea04ef053e7e3eb77ed8.lean/declarations/instance--cd7c80a5245137419599b53b.md) | 181 | `declaration-track:cd7c80a5245137419599b53b4728c068b99686e959f9f2997af48133c84fa1b1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
