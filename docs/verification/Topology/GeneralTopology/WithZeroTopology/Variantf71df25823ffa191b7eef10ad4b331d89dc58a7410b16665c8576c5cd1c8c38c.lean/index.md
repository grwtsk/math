# Verification target: GRWTSK.Topology.GeneralTopology.WithZeroTopology.Variantf71df25823ffa191b7eef10ad4b331d89dc58a7410b16665c8576c5cd1c8c38c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4033492a3f8f9f58794901a729b7d55b27843444",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/WithZeroTopology/Variantf71df25823ffa191b7eef10ad4b331d89dc58a7410b16665c8576c5cd1c8c38c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/WithZeroTopology/Variantf71df25823ffa191b7eef10ad4b331d89dc58a7410b16665c8576c5cd1c8c38c.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/WithZeroTopology/Variantf71df25823ffa191b7eef10ad4b331d89dc58a7410b16665c8576c5cd1c8c38c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4033492a3f8f9f58794901a729b7d55b27843444`.

Source path: `GRWTSK/Topology/GeneralTopology/WithZeroTopology/Variantf71df25823ffa191b7eef10ad4b331d89dc58a7410b16665c8576c5cd1c8c38c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/WithZeroTopology/Variantf71df25823ffa191b7eef10ad4b331d89dc58a7410b16665c8576c5cd1c8c38c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.WithZero` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.GroupWithZero` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Order.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/WithZeroTopology/Variantf71df25823ffa191b7eef10ad4b331d89dc58a7410b16665c8576c5cd1c8c38c.lean/declarations/instance--ac4afc2bb73793f8eacbcb68.md) | 52 | `declaration-track:ac4afc2bb73793f8eacbcb68bcc5a70d6c2e71c63b5111b0c8b0561fcd7d2cc0` |
| 2 | `theorem` | [nhds_eq_update](../../../../../mathematics/Topology/GeneralTopology/WithZeroTopology/Variantf71df25823ffa191b7eef10ad4b331d89dc58a7410b16665c8576c5cd1c8c38c.lean/declarations/nhds-eq-update--e3f3f42ac4aca914de78c70a.md) | 56 | `result-track:e3f3f42ac4aca914de78c70af8bc613fbfba61e23f5ed8182624dd7e198a7487` |
| 3 | `theorem` | [nhds_zero](../../../../../mathematics/Topology/GeneralTopology/WithZeroTopology/Variantf71df25823ffa191b7eef10ad4b331d89dc58a7410b16665c8576c5cd1c8c38c.lean/declarations/nhds-zero--35636df046cdd477578a2f67.md) | 64 | `result-track:35636df046cdd477578a2f670573b03bfe923d468824c11aa6acf62386712a8c` |
| 4 | `theorem` | [hasBasis_nhds_zero](../../../../../mathematics/Topology/GeneralTopology/WithZeroTopology/Variantf71df25823ffa191b7eef10ad4b331d89dc58a7410b16665c8576c5cd1c8c38c.lean/declarations/hasbasis-nhds-zero--9708809a044b08c23c6c2f06.md) | 70 | `result-track:9708809a044b08c23c6c2f06eefe284fa76a10bd498ee0016723c92e02e49e55` |
| 5 | `theorem` | [Iio_mem_nhds_zero](../../../../../mathematics/Topology/GeneralTopology/WithZeroTopology/Variantf71df25823ffa191b7eef10ad4b331d89dc58a7410b16665c8576c5cd1c8c38c.lean/declarations/iio-mem-nhds-zero--e8c6fa2c0106598dcd822101.md) | 76 | `result-track:e8c6fa2c0106598dcd8221016b0855aaab3eba03dfa92813bd44d69f5333f9c7` |
| 6 | `theorem` | [nhds_zero_of_units](../../../../../mathematics/Topology/GeneralTopology/WithZeroTopology/Variantf71df25823ffa191b7eef10ad4b331d89dc58a7410b16665c8576c5cd1c8c38c.lean/declarations/nhds-zero-of-units--b0b4426b737cc47d0f77f568.md) | 82 | `result-track:b0b4426b737cc47d0f77f56853dc030c55b55db7e3d9b5ffac315386abfc1f18` |
| 7 | `theorem` | [tendsto_zero](../../../../../mathematics/Topology/GeneralTopology/WithZeroTopology/Variantf71df25823ffa191b7eef10ad4b331d89dc58a7410b16665c8576c5cd1c8c38c.lean/declarations/tendsto-zero--5f04ac79999f3a50e537184d.md) | 86 | `result-track:5f04ac79999f3a50e537184dc5f5eaa1200c0736f37a423c467093535d467104` |
| 8 | `theorem` | [nhds_of_ne_zero](../../../../../mathematics/Topology/GeneralTopology/WithZeroTopology/Variantf71df25823ffa191b7eef10ad4b331d89dc58a7410b16665c8576c5cd1c8c38c.lean/declarations/nhds-of-ne-zero--62e82559584fd61efbe66a1e.md) | 97 | `result-track:62e82559584fd61efbe66a1e99241bd2f70f6be4172da606de75756de8660127` |
| 9 | `theorem` | [nhds_coe_units](../../../../../mathematics/Topology/GeneralTopology/WithZeroTopology/Variantf71df25823ffa191b7eef10ad4b331d89dc58a7410b16665c8576c5cd1c8c38c.lean/declarations/nhds-coe-units--198b6ac4a159b6e7b2b5b43c.md) | 103 | `result-track:198b6ac4a159b6e7b2b5b43cfda9b695118a7edb3aec06555e4de34ac72686fb` |
| 10 | `theorem` | [singleton_mem_nhds_of_units](../../../../../mathematics/Topology/GeneralTopology/WithZeroTopology/Variantf71df25823ffa191b7eef10ad4b331d89dc58a7410b16665c8576c5cd1c8c38c.lean/declarations/singleton-mem-nhds-of-units--0b9150ee19870690f4d1fff1.md) | 109 | `result-track:0b9150ee19870690f4d1fff16efa6c08c84195589aa55d06aed90b1f7528df50` |
| 11 | `theorem` | [singleton_mem_nhds_of_ne_zero](../../../../../mathematics/Topology/GeneralTopology/WithZeroTopology/Variantf71df25823ffa191b7eef10ad4b331d89dc58a7410b16665c8576c5cd1c8c38c.lean/declarations/singleton-mem-nhds-of-ne-zero--10c3560a368d7b1476b09b10.md) | 114 | `result-track:10c3560a368d7b1476b09b10a0277ff3cdfda1151b4414ff938cd429ea35a6c5` |
| 12 | `theorem` | [hasBasis_nhds_of_ne_zero](../../../../../mathematics/Topology/GeneralTopology/WithZeroTopology/Variantf71df25823ffa191b7eef10ad4b331d89dc58a7410b16665c8576c5cd1c8c38c.lean/declarations/hasbasis-nhds-of-ne-zero--e50d3a0a2f6a6fc8d3a62a50.md) | 117 | `result-track:e50d3a0a2f6a6fc8d3a62a50560765319f8f6014f678bc554c5240f90e1a33a9` |
| 13 | `theorem` | [hasBasis_nhds_units](../../../../../mathematics/Topology/GeneralTopology/WithZeroTopology/Variantf71df25823ffa191b7eef10ad4b331d89dc58a7410b16665c8576c5cd1c8c38c.lean/declarations/hasbasis-nhds-units--0ed006b5cc5931de35c9fd86.md) | 123 | `result-track:0ed006b5cc5931de35c9fd8607e4079a875fe092c85894a0e82f91869715cebd` |
| 14 | `theorem` | [tendsto_of_ne_zero](../../../../../mathematics/Topology/GeneralTopology/WithZeroTopology/Variantf71df25823ffa191b7eef10ad4b331d89dc58a7410b16665c8576c5cd1c8c38c.lean/declarations/tendsto-of-ne-zero--6f55d0812a064b61540e0c6c.md) | 128 | `result-track:6f55d0812a064b61540e0c6c4932de4666b49eee16ee929ab5553b747b7edc05` |
| 15 | `theorem` | [tendsto_units](../../../../../mathematics/Topology/GeneralTopology/WithZeroTopology/Variantf71df25823ffa191b7eef10ad4b331d89dc58a7410b16665c8576c5cd1c8c38c.lean/declarations/tendsto-units--e34cc813ec1466d23951c474.md) | 132 | `result-track:e34cc813ec1466d23951c47495c06043a972f1f36ff06c47aeec34be2084a98b` |
| 16 | `theorem` | [Iio_mem_nhds](../../../../../mathematics/Topology/GeneralTopology/WithZeroTopology/Variantf71df25823ffa191b7eef10ad4b331d89dc58a7410b16665c8576c5cd1c8c38c.lean/declarations/iio-mem-nhds--39e2f6b15669258e4e273e56.md) | 136 | `result-track:39e2f6b15669258e4e273e56a47544c0610e6015bc09e9c99c8fdba377270b87` |
| 17 | `theorem` | [isOpen_iff](../../../../../mathematics/Topology/GeneralTopology/WithZeroTopology/Variantf71df25823ffa191b7eef10ad4b331d89dc58a7410b16665c8576c5cd1c8c38c.lean/declarations/isopen-iff--414c8750eb7d85881fd1c9fb.md) | 144 | `result-track:414c8750eb7d85881fd1c9fb9b7820ad49f6d5a395b7a29f9e13735777bf0bae` |
| 18 | `theorem` | [isClosed_iff](../../../../../mathematics/Topology/GeneralTopology/WithZeroTopology/Variantf71df25823ffa191b7eef10ad4b331d89dc58a7410b16665c8576c5cd1c8c38c.lean/declarations/isclosed-iff--8528eeb2afca6db0e20e84e2.md) | 150 | `result-track:8528eeb2afca6db0e20e84e20c32cfa150521dbb17e1a32b96310630146714bc` |
| 19 | `theorem` | [isOpen_Iio](../../../../../mathematics/Topology/GeneralTopology/WithZeroTopology/Variantf71df25823ffa191b7eef10ad4b331d89dc58a7410b16665c8576c5cd1c8c38c.lean/declarations/isopen-iio--32a80428d1304a804f500404.md) | 155 | `result-track:32a80428d1304a804f500404046a9cdfd25496b5f4f98b687c09a325f70822e5` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/WithZeroTopology/Variantf71df25823ffa191b7eef10ad4b331d89dc58a7410b16665c8576c5cd1c8c38c.lean/declarations/instance--f8aef63b7cf96409d8a14229.md) | 166 | `declaration-track:f8aef63b7cf96409d8a14229bd5d8b3d077d2d4caf9cb81d973a9edabef07a98` |
| 21 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/WithZeroTopology/Variantf71df25823ffa191b7eef10ad4b331d89dc58a7410b16665c8576c5cd1c8c38c.lean/declarations/instance--38658a8732441349eef171bf.md) | 176 | `declaration-track:38658a8732441349eef171bf1189c0c6704a8c891d8cb94592cc40b9709f0e8c` |
| 22 | `lemma` | [t3Space](../../../../../mathematics/Topology/GeneralTopology/WithZeroTopology/Variantf71df25823ffa191b7eef10ad4b331d89dc58a7410b16665c8576c5cd1c8c38c.lean/declarations/t3space--e56c54724fa8b2aa99b64c28.md) | 184 | `result-track:e56c54724fa8b2aa99b64c2821d3f36cff3c1356d15e860d719334f64715c04a` |
| 23 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/WithZeroTopology/Variantf71df25823ffa191b7eef10ad4b331d89dc58a7410b16665c8576c5cd1c8c38c.lean/declarations/instance--cd37d815eb43d866e685d0cf.md) | 190 | `declaration-track:cd37d815eb43d866e685d0cf9bba66be99ba21191b29b7ac94fff5f97f2c365d` |
| 24 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/WithZeroTopology/Variantf71df25823ffa191b7eef10ad4b331d89dc58a7410b16665c8576c5cd1c8c38c.lean/declarations/instance--6ca656270491ae679ea90cc0.md) | 213 | `declaration-track:6ca656270491ae679ea90cc05cd52f186427cf4b4dedbf1ead907fae0c3f12f5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
