# Verification target: GRWTSK.Topology.GeneralTopology.Quotient.Variant8817535a92a51401ad16002c3da61ab4fd5a13a6f819a96024356a6d293edd41

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fe551dfb45adab9c538a9a879677a3db0d5e596c",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Quotient/Variant8817535a92a51401ad16002c3da61ab4fd5a13a6f819a96024356a6d293edd41.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Quotient/Variant8817535a92a51401ad16002c3da61ab4fd5a13a6f819a96024356a6d293edd41.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Quotient/Variant8817535a92a51401ad16002c3da61ab4fd5a13a6f819a96024356a6d293edd41.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fe551dfb45adab9c538a9a879677a3db0d5e596c`.

Source path: `GRWTSK/Topology/GeneralTopology/Quotient/Variant8817535a92a51401ad16002c3da61ab4fd5a13a6f819a96024356a6d293edd41.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Quotient/Variant8817535a92a51401ad16002c3da61ab4fd5a13a6f819a96024356a6d293edd41.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.GroupTheory.GroupAction.Quotient` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.QuotientGroup.Defs` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Group.Pointwise` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Maps.OpenQuotient` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [instTopologicalSpace](../../../../../mathematics/Topology/GeneralTopology/Quotient/Variant8817535a92a51401ad16002c3da61ab4fd5a13a6f819a96024356a6d293edd41.lean/declarations/insttopologicalspace--2bc6c750bcdc123d027d4ada.md) | 26 | `declaration-track:2bc6c750bcdc123d027d4ada965cca5dcc0b21ef0e24590e48c1841c7a14a204` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Quotient/Variant8817535a92a51401ad16002c3da61ab4fd5a13a6f819a96024356a6d293edd41.lean/declarations/instance--6315fbb5721c780c60a110a5.md) | 30 | `declaration-track:6315fbb5721c780c60a110a52cab851edea899130fc4f03f1c5e93d9de1c8710` |
| 3 | `theorem` | [isQuotientMap_mk](../../../../../mathematics/Topology/GeneralTopology/Quotient/Variant8817535a92a51401ad16002c3da61ab4fd5a13a6f819a96024356a6d293edd41.lean/declarations/isquotientmap-mk--ccb96ab9feb971f77beb1f32.md) | 34 | `result-track:ccb96ab9feb971f77beb1f32c0e7b21ad8fc23bdc55b70f663876e1425aa5de6` |
| 4 | `theorem` | [continuous_mk](../../../../../mathematics/Topology/GeneralTopology/Quotient/Variant8817535a92a51401ad16002c3da61ab4fd5a13a6f819a96024356a6d293edd41.lean/declarations/continuous-mk--441f996c829333d7bcef78b2.md) | 41 | `result-track:441f996c829333d7bcef78b2d28f52f8703316387b738bfcb4d0432fd24f21cb` |
| 5 | `theorem` | [isOpenMap_coe](../../../../../mathematics/Topology/GeneralTopology/Quotient/Variant8817535a92a51401ad16002c3da61ab4fd5a13a6f819a96024356a6d293edd41.lean/declarations/isopenmap-coe--9a37c3879f6e74a40509dbea.md) | 49 | `result-track:9a37c3879f6e74a40509dbea76ddf1f8395388403b1df826c5282e87a11d4f81` |
| 6 | `theorem` | [isOpenQuotientMap_mk](../../../../../mathematics/Topology/GeneralTopology/Quotient/Variant8817535a92a51401ad16002c3da61ab4fd5a13a6f819a96024356a6d293edd41.lean/declarations/isopenquotientmap-mk--c7fe4b4827008d4d5df2ac49.md) | 52 | `result-track:c7fe4b4827008d4d5df2ac4942f1afb5461192eb960da325e9d1053f9472bd32` |
| 7 | `theorem` | [dense_preimage_mk](../../../../../mathematics/Topology/GeneralTopology/Quotient/Variant8817535a92a51401ad16002c3da61ab4fd5a13a6f819a96024356a6d293edd41.lean/declarations/dense-preimage-mk--ddbf88dce9b339b1b4f3113d.md) | 56 | `result-track:ddbf88dce9b339b1b4f3113dc5d51ab8208bfe29dfc8af81f46c77aab5cfba77` |
| 8 | `theorem` | [dense_image_mk](../../../../../mathematics/Topology/GeneralTopology/Quotient/Variant8817535a92a51401ad16002c3da61ab4fd5a13a6f819a96024356a6d293edd41.lean/declarations/dense-image-mk--9c2784efdcc5a280cc56cd60.md) | 60 | `result-track:9c2784efdcc5a280cc56cd60e1b1da6599ed66f3d4c4eec4a9562bf4296d6b8e` |
| 9 | `instance` | [instContinuousSMul](../../../../../mathematics/Topology/GeneralTopology/Quotient/Variant8817535a92a51401ad16002c3da61ab4fd5a13a6f819a96024356a6d293edd41.lean/declarations/instcontinuoussmul--876fd63c5872f0aeee43eaeb.md) | 65 | `declaration-track:876fd63c5872f0aeee43eaeb7f9a7e1bc1cee321957e71885ce6e70009ed29b8` |
| 10 | `instance` | [instContinuousConstSMul](../../../../../mathematics/Topology/GeneralTopology/Quotient/Variant8817535a92a51401ad16002c3da61ab4fd5a13a6f819a96024356a6d293edd41.lean/declarations/instcontinuousconstsmul--35c4496f13c77f23b0f6a824.md) | 71 | `declaration-track:35c4496f13c77f23b0f6a824314bf414537902dea44f2fca9f66a703dc1a8efd` |
| 11 | `instance` | [instLocallyCompactSpace](../../../../../mathematics/Topology/GeneralTopology/Quotient/Variant8817535a92a51401ad16002c3da61ab4fd5a13a6f819a96024356a6d293edd41.lean/declarations/instlocallycompactspace--8fd9d99b6260dae395682fc0.md) | 75 | `declaration-track:8fd9d99b6260dae395682fc0487154d9863d0d3fce03457a6c35b79983d2c153` |
| 12 | `theorem` | [nhds_eq](../../../../../mathematics/Topology/GeneralTopology/Quotient/Variant8817535a92a51401ad16002c3da61ab4fd5a13a6f819a96024356a6d293edd41.lean/declarations/nhds-eq--881b4320c82b84475955ce1f.md) | 84 | `result-track:881b4320c82b84475955ce1fc225d34315fc4b89fc4c802eb61771a9b650817f` |
| 13 | `instance` | [instFirstCountableTopology](../../../../../mathematics/Topology/GeneralTopology/Quotient/Variant8817535a92a51401ad16002c3da61ab4fd5a13a6f819a96024356a6d293edd41.lean/declarations/instfirstcountabletopology--ad7f03ff107f54b533d1bb19.md) | 88 | `declaration-track:ad7f03ff107f54b533d1bb1977b2b71ae45a3e099edd893fa969f058da74a948` |
| 14 | `instance` | [instSecondCountableTopology](../../../../../mathematics/Topology/GeneralTopology/Quotient/Variant8817535a92a51401ad16002c3da61ab4fd5a13a6f819a96024356a6d293edd41.lean/declarations/instsecondcountabletopology--67907b7aa428f1d99c1e2827.md) | 96 | `declaration-track:67907b7aa428f1d99c1e2827e399f9d97862f052d316880c893555763c28b71d` |
| 15 | `instance` | [instIsTopologicalGroup](../../../../../mathematics/Topology/GeneralTopology/Quotient/Variant8817535a92a51401ad16002c3da61ab4fd5a13a6f819a96024356a6d293edd41.lean/declarations/instistopologicalgroup--a184343384d70c8bd67bfc31.md) | 105 | `declaration-track:a184343384d70c8bd67bfc31769fc13a7aa461103662959ba5812fb1afd31fb2` |
| 16 | `theorem` | [isClosedMap_coe](../../../../../mathematics/Topology/GeneralTopology/Quotient/Variant8817535a92a51401ad16002c3da61ab4fd5a13a6f819a96024356a6d293edd41.lean/declarations/isclosedmap-coe--eb703c3b913b9e22065d26f6.md) | 112 | `result-track:eb703c3b913b9e22065d26f6b95dc9b11f45b29220babba74fcca9fea73ff8cc` |
| 17 | `instance` | [instT3Space](../../../../../mathematics/Topology/GeneralTopology/Quotient/Variant8817535a92a51401ad16002c3da61ab4fd5a13a6f819a96024356a6d293edd41.lean/declarations/instt3space--81cc5e1e49c98cdef5587d97.md) | 119 | `declaration-track:81cc5e1e49c98cdef5587d977fbc8a5c2e2916ac77f6258449f5f0d064822d05` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
