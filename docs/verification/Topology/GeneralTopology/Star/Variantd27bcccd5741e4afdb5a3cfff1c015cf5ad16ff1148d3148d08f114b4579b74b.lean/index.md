# Verification target: GRWTSK.Topology.GeneralTopology.Star.Variantd27bcccd5741e4afdb5a3cfff1c015cf5ad16ff1148d3148d08f114b4579b74b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e2239db4309fe23cc82f05c68ad0e4c9d954f626",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Star/Variantd27bcccd5741e4afdb5a3cfff1c015cf5ad16ff1148d3148d08f114b4579b74b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Star/Variantd27bcccd5741e4afdb5a3cfff1c015cf5ad16ff1148d3148d08f114b4579b74b.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Star/Variantd27bcccd5741e4afdb5a3cfff1c015cf5ad16ff1148d3148d08f114b4579b74b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e2239db4309fe23cc82f05c68ad0e4c9d954f626`.

Source path: `GRWTSK/Topology/GeneralTopology/Star/Variantd27bcccd5741e4afdb5a3cfff1c015cf5ad16ff1148d3148d08f114b4579b74b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Star/Variantd27bcccd5741e4afdb5a3cfff1c015cf5ad16ff1148d3148d08f114b4579b74b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Star.Pi` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Star.Prod` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Constructions` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.ContinuousFunction.Basic` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [ContinuousStar](../../../../../mathematics/Topology/GeneralTopology/Star/Variantd27bcccd5741e4afdb5a3cfff1c015cf5ad16ff1148d3148d08f114b4579b74b.lean/declarations/continuousstar--e6bd48ab3730eac201b6f459.md) | 33 | `declaration-track:e6bd48ab3730eac201b6f459ccd6eabab541b5863950affeadb30c6e496aa13d` |
| 2 | `theorem` | [continuousOn_star](../../../../../mathematics/Topology/GeneralTopology/Star/Variantd27bcccd5741e4afdb5a3cfff1c015cf5ad16ff1148d3148d08f114b4579b74b.lean/declarations/continuouson-star--36d9cbe105f74bf00f9dabb0.md) | 44 | `result-track:36d9cbe105f74bf00f9dabb0cd74ea2e56ded527ed68feb213471c2ba519cb79` |
| 3 | `theorem` | [continuousWithinAt_star](../../../../../mathematics/Topology/GeneralTopology/Star/Variantd27bcccd5741e4afdb5a3cfff1c015cf5ad16ff1148d3148d08f114b4579b74b.lean/declarations/continuouswithinat-star--4b8700fd8387817691f3b716.md) | 48 | `result-track:4b8700fd8387817691f3b716f7cb4b1394ad84436f2ac0cbca79fe72ae648ef8` |
| 4 | `theorem` | [continuousAt_star](../../../../../mathematics/Topology/GeneralTopology/Star/Variantd27bcccd5741e4afdb5a3cfff1c015cf5ad16ff1148d3148d08f114b4579b74b.lean/declarations/continuousat-star--424918f8c0c41ea6e1d1ee4e.md) | 52 | `result-track:424918f8c0c41ea6e1d1ee4e401a08af5d140b9ecf34fb6f86610e00f496e945` |
| 5 | `theorem` | [tendsto_star](../../../../../mathematics/Topology/GeneralTopology/Star/Variantd27bcccd5741e4afdb5a3cfff1c015cf5ad16ff1148d3148d08f114b4579b74b.lean/declarations/tendsto-star--11944d1af2c6de8c94292f1f.md) | 56 | `result-track:11944d1af2c6de8c94292f1f638eb2dc3053dce177f082d777b912f759b55a03` |
| 6 | `theorem` | [Filter.Tendsto.star](../../../../../mathematics/Topology/GeneralTopology/Star/Variantd27bcccd5741e4afdb5a3cfff1c015cf5ad16ff1148d3148d08f114b4579b74b.lean/declarations/filter-tendsto-star--eb9ace1159ffb3d5f9cebce6.md) | 60 | `result-track:eb9ace1159ffb3d5f9cebce6685d41a6bdcdcc8150b9d627800ae07b1b1e8314` |
| 7 | `theorem` | [Continuous.star](../../../../../mathematics/Topology/GeneralTopology/Star/Variantd27bcccd5741e4afdb5a3cfff1c015cf5ad16ff1148d3148d08f114b4579b74b.lean/declarations/continuous-star--1b83e56cc9dc0c1424fc9ca8.md) | 68 | `result-track:1b83e56cc9dc0c1424fc9ca80df6c491a8d55702f66c688b2bc8bb232a383da9` |
| 8 | `theorem` | [ContinuousAt.star](../../../../../mathematics/Topology/GeneralTopology/Star/Variantd27bcccd5741e4afdb5a3cfff1c015cf5ad16ff1148d3148d08f114b4579b74b.lean/declarations/continuousat-star--45fcc6f2327313623b4568dd.md) | 72 | `result-track:45fcc6f2327313623b4568dd004f5e0b25e91ef127f1b71281534ffca6e83bf7` |
| 9 | `theorem` | [ContinuousOn.star](../../../../../mathematics/Topology/GeneralTopology/Star/Variantd27bcccd5741e4afdb5a3cfff1c015cf5ad16ff1148d3148d08f114b4579b74b.lean/declarations/continuouson-star--8733803c0fce7a6f7e0291f8.md) | 76 | `result-track:8733803c0fce7a6f7e0291f8f0d00e27a7cab70298ca9f4225fbdeff15870792` |
| 10 | `theorem` | [ContinuousWithinAt.star](../../../../../mathematics/Topology/GeneralTopology/Star/Variantd27bcccd5741e4afdb5a3cfff1c015cf5ad16ff1148d3148d08f114b4579b74b.lean/declarations/continuouswithinat-star--e9900cd39dcfd998b2cf9a51.md) | 80 | `result-track:e9900cd39dcfd998b2cf9a51eb6333f83aa98e5c50caa4e9fff45d1a09fd6ea5` |
| 11 | `def` | [starContinuousMap](../../../../../mathematics/Topology/GeneralTopology/Star/Variantd27bcccd5741e4afdb5a3cfff1c015cf5ad16ff1148d3148d08f114b4579b74b.lean/declarations/starcontinuousmap--666968bbbcd740e8320c45fb.md) | 87 | `declaration-track:666968bbbcd740e8320c45fb181f60e87e4dba5293b33d5aa45ba9c8b8f7eadf` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Star/Variantd27bcccd5741e4afdb5a3cfff1c015cf5ad16ff1148d3148d08f114b4579b74b.lean/declarations/instance--7deb19af4b1db819181a2e1b.md) | 95 | `declaration-track:7deb19af4b1db819181a2e1ba99ebbd8eb4411c27d7c74e81e08ed40ee0cab08` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Star/Variantd27bcccd5741e4afdb5a3cfff1c015cf5ad16ff1148d3148d08f114b4579b74b.lean/declarations/instance--0b2a0ca0a0d0393b93044785.md) | 99 | `declaration-track:0b2a0ca0a0d0393b93044785a8f1dcbefc1d42558dc0b09de959a25e2f468c2c` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Star/Variantd27bcccd5741e4afdb5a3cfff1c015cf5ad16ff1148d3148d08f114b4579b74b.lean/declarations/instance--0182b5bc802ad3602943ad08.md) | 103 | `declaration-track:0182b5bc802ad3602943ad08cfe07d65a86678370d975038845415445e2036a1` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Star/Variantd27bcccd5741e4afdb5a3cfff1c015cf5ad16ff1148d3148d08f114b4579b74b.lean/declarations/instance--c0918768061d7a67a94bb598.md) | 106 | `declaration-track:c0918768061d7a67a94bb5989e745b7afc350342383a9e6794f84ba11221f912` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
