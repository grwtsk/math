# Verification target: GRWTSK.Topology.GeneralTopology.PiTopology.Variantd8679fce5d71509ed3530bb0f45d1c96f065dcd0f376abd1288765f63b148aba

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "389dfc16137b1911e7074a93fae2c3833a2eaad6",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/PiTopology/Variantd8679fce5d71509ed3530bb0f45d1c96f065dcd0f376abd1288765f63b148aba.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/PiTopology/Variantd8679fce5d71509ed3530bb0f45d1c96f065dcd0f376abd1288765f63b148aba.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/PiTopology/Variantd8679fce5d71509ed3530bb0f45d1c96f065dcd0f376abd1288765f63b148aba.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `389dfc16137b1911e7074a93fae2c3833a2eaad6`.

Source path: `GRWTSK/Topology/GeneralTopology/PiTopology/Variantd8679fce5d71509ed3530bb0f45d1c96f065dcd0f376abd1288765f63b148aba.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/PiTopology/Variantd8679fce5d71509ed3530bb0f45d1c96f065dcd0f376abd1288765f63b148aba.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.MvPowerSeries.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.MvPowerSeries.Trunc` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Nilpotent.Defs` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.InfiniteSum.Constructions` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Ring.Basic` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.IsUniformGroup.Basic` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.UniformSpace.Pi` — import line 17; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.TopologicallyNilpotent` — import line 18; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/PiTopology/Variantd8679fce5d71509ed3530bb0f45d1c96f065dcd0f376abd1288765f63b148aba.lean/declarations/instance--d02ef7db3284bd3ec2fde1f2.md) | 101 | `declaration-track:d02ef7db3284bd3ec2fde1f247e09332916e961fe5a75cf01641fe50b2d8bbf2` |
| 2 | `theorem` | [instTopologicalSpace_mono](../../../../../mathematics/Topology/GeneralTopology/PiTopology/Variantd8679fce5d71509ed3530bb0f45d1c96f065dcd0f376abd1288765f63b148aba.lean/declarations/insttopologicalspace-mono--c69a4b92bbf1a1cf7c754cfa.md) | 104 | `result-track:c69a4b92bbf1a1cf7c754cfaeb9a2d5ac7e7488e036720591e34db7aee017944` |
| 3 | `theorem` | [instT0Space](../../../../../mathematics/Topology/GeneralTopology/PiTopology/Variantd8679fce5d71509ed3530bb0f45d1c96f065dcd0f376abd1288765f63b148aba.lean/declarations/instt0space--f8f31e1fa45aac83b0db2b63.md) | 111 | `result-track:f8f31e1fa45aac83b0db2b63d46705a3ff8051f9c049fbbf3e19bfd9f031db76` |
| 4 | `theorem` | [instT2Space](../../../../../mathematics/Topology/GeneralTopology/PiTopology/Variantd8679fce5d71509ed3530bb0f45d1c96f065dcd0f376abd1288765f63b148aba.lean/declarations/instt2space--d343466f8d94fdc1d71798da.md) | 115 | `result-track:d343466f8d94fdc1d71798da6d991287c9df7f6922c5cebef4e24b6fcf716891` |
| 5 | `theorem` | [continuous_coeff](../../../../../mathematics/Topology/GeneralTopology/PiTopology/Variantd8679fce5d71509ed3530bb0f45d1c96f065dcd0f376abd1288765f63b148aba.lean/declarations/continuous-coeff--3d737c18aeedbada63dc0477.md) | 120 | `result-track:3d737c18aeedbada63dc047770d0b161abf485d237579c36cad668714ac1855e` |
| 6 | `theorem` | [continuous_constantCoeff](../../../../../mathematics/Topology/GeneralTopology/PiTopology/Variantd8679fce5d71509ed3530bb0f45d1c96f065dcd0f376abd1288765f63b148aba.lean/declarations/continuous-constantcoeff--bd3a1c301a502e9aaff3e861.md) | 126 | `result-track:bd3a1c301a502e9aaff3e86176c2c7a69f08cdca538ef643eb06d67eec048564` |
| 7 | `theorem` | [tendsto_iff_coeff_tendsto](../../../../../mathematics/Topology/GeneralTopology/PiTopology/Variantd8679fce5d71509ed3530bb0f45d1c96f065dcd0f376abd1288765f63b148aba.lean/declarations/tendsto-iff-coeff-tendsto--d8f88e0789fcb110a416eea6.md) | 130 | `result-track:d8f88e0789fcb110a416eea6663f3559e8800006aec7441faf485c681e9e3dc7` |
| 8 | `theorem` | [tendsto_trunc'_atTop](../../../../../mathematics/Topology/GeneralTopology/PiTopology/Variantd8679fce5d71509ed3530bb0f45d1c96f065dcd0f376abd1288765f63b148aba.lean/declarations/tendsto-trunc-attop--6ece708974a3bb0c6be707eb.md) | 137 | `result-track:6ece708974a3bb0c6be707eb56800fe84418abbd58cfe6832ef07f57acdff4e9` |
| 9 | `theorem` | [tendsto_trunc_atTop](../../../../../mathematics/Topology/GeneralTopology/PiTopology/Variantd8679fce5d71509ed3530bb0f45d1c96f065dcd0f376abd1288765f63b148aba.lean/declarations/tendsto-trunc-attop--abdfe9819198fb988cb50fe3.md) | 143 | `result-track:abdfe9819198fb988cb50fe338c24dc120a6e501cf71679309bfc7e26f3c94f2` |
| 10 | `theorem` | [denseRange_toMvPowerSeries](../../../../../mathematics/Topology/GeneralTopology/PiTopology/Variantd8679fce5d71509ed3530bb0f45d1c96f065dcd0f376abd1288765f63b148aba.lean/declarations/denserange-tomvpowerseries--13e5c5e7bf1cb91eebe5650d.md) | 156 | `result-track:13e5c5e7bf1cb91eebe5650daf2c1db766692c51ab3a0c1fe70aad493a0a4e7e` |
| 11 | `theorem` | [instIsTopologicalSemiring](../../../../../mathematics/Topology/GeneralTopology/PiTopology/Variantd8679fce5d71509ed3530bb0f45d1c96f065dcd0f376abd1288765f63b148aba.lean/declarations/instistopologicalsemiring--e7872ac9a3deef9e39cd9c69.md) | 165 | `result-track:e7872ac9a3deef9e39cd9c696f0136daf49a2de6648d62b8cf107e92e112aaf9` |
| 12 | `theorem` | [instIsTopologicalRing](../../../../../mathematics/Topology/GeneralTopology/PiTopology/Variantd8679fce5d71509ed3530bb0f45d1c96f065dcd0f376abd1288765f63b148aba.lean/declarations/instistopologicalring--2cc5fb94316939e30b9d8a80.md) | 175 | `result-track:2cc5fb94316939e30b9d8a8075c52d530b042e3d0c5233fef24f9640ad840636` |
| 13 | `theorem` | [continuous_C](../../../../../mathematics/Topology/GeneralTopology/PiTopology/Variantd8679fce5d71509ed3530bb0f45d1c96f065dcd0f376abd1288765f63b148aba.lean/declarations/continuous-c--6ae8044dcfb7c1bf3a707086.md) | 184 | `result-track:6ae8044dcfb7c1bf3a707086b402528d4bde71bc437704c0c2045abe6e56fc89` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/PiTopology/Variantd8679fce5d71509ed3530bb0f45d1c96f065dcd0f376abd1288765f63b148aba.lean/declarations/instance--81faabd4ea1eff63efbc3b49.md) | 195 | `declaration-track:81faabd4ea1eff63efbc3b497f8e452626d67b348128cd2bf79f73d6d20d3e7b` |
| 15 | `theorem` | [variables_tendsto_zero](../../../../../mathematics/Topology/GeneralTopology/PiTopology/Variantd8679fce5d71509ed3530bb0f45d1c96f065dcd0f376abd1288765f63b148aba.lean/declarations/variables-tendsto-zero--cb0bc34eb83387bca095c385.md) | 200 | `result-track:cb0bc34eb83387bca095c3851856268db16252142ae47e0d5d27b7238152e10a` |
| 16 | `theorem` | [isTopologicallyNilpotent_of_constantCoeff_isNilpotent](../../../../../mathematics/Topology/GeneralTopology/PiTopology/Variantd8679fce5d71509ed3530bb0f45d1c96f065dcd0f376abd1288765f63b148aba.lean/declarations/istopologicallynilpotent-of-constantcoeff-isnilpotent--fc1b0e41692bcc0917cdaf57.md) | 212 | `result-track:fc1b0e41692bcc0917cdaf57e36f301f8000994c89d6bebdd30d77d31f3f3669` |
| 17 | `theorem` | [isTopologicallyNilpotent_of_constantCoeff_zero](../../../../../mathematics/Topology/GeneralTopology/PiTopology/Variantd8679fce5d71509ed3530bb0f45d1c96f065dcd0f376abd1288765f63b148aba.lean/declarations/istopologicallynilpotent-of-constantcoeff-zero--a16ff5d3189b6591ed1e16f5.md) | 221 | `result-track:a16ff5d3189b6591ed1e16f50c3641bb333d55958123e1941206c481674b3474` |
| 18 | `theorem` | [isTopologicallyNilpotent_iff_constantCoeff_isNilpotent](../../../../../mathematics/Topology/GeneralTopology/PiTopology/Variantd8679fce5d71509ed3530bb0f45d1c96f065dcd0f376abd1288765f63b148aba.lean/declarations/istopologicallynilpotent-iff-constantcoeff-isnilpotent--014c14f9c49cac0d8fa89380.md) | 233 | `result-track:014c14f9c49cac0d8fa89380fde30bda27990c03e8c28ddf39f564c44e931c15` |
| 19 | `theorem` | [hasSum_of_monomials_self](../../../../../mathematics/Topology/GeneralTopology/PiTopology/Variantd8679fce5d71509ed3530bb0f45d1c96f065dcd0f376abd1288765f63b148aba.lean/declarations/hassum-of-monomials-self--a9151c84e2fdbf93435d7183.md) | 244 | `result-track:a9151c84e2fdbf93435d7183ebd8ab2399398059fafdd416e04df082638baf69` |
| 20 | `theorem` | [as_tsum](../../../../../mathematics/Topology/GeneralTopology/PiTopology/Variantd8679fce5d71509ed3530bb0f45d1c96f065dcd0f376abd1288765f63b148aba.lean/declarations/as-tsum--c2fc6ba6726b216ec47f8413.md) | 253 | `result-track:c2fc6ba6726b216ec47f8413ebf07612e5b3b4bbb3ec0870467daa0af74db25c` |
| 21 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/PiTopology/Variantd8679fce5d71509ed3530bb0f45d1c96f065dcd0f376abd1288765f63b148aba.lean/declarations/instance--912ef4f51fc15c9fafa26f7e.md) | 264 | `declaration-track:912ef4f51fc15c9fafa26f7e21f4cede051e861e88b8640a5370b4029346bff1` |
| 22 | `theorem` | [uniformContinuous_coeff](../../../../../mathematics/Topology/GeneralTopology/PiTopology/Variantd8679fce5d71509ed3530bb0f45d1c96f065dcd0f376abd1288765f63b148aba.lean/declarations/uniformcontinuous-coeff--e387662a27654250cb1a0f34.md) | 269 | `result-track:e387662a27654250cb1a0f34e8cc499469fa68c4d470170c77c57fc6a77e920b` |
| 23 | `theorem` | [instCompleteSpace](../../../../../mathematics/Topology/GeneralTopology/PiTopology/Variantd8679fce5d71509ed3530bb0f45d1c96f065dcd0f376abd1288765f63b148aba.lean/declarations/instcompletespace--805ad02a4dbbd9d31c0a2072.md) | 275 | `result-track:805ad02a4dbbd9d31c0a20724d762906b9f2194e309c3f011a81ef3da721cd72` |
| 24 | `theorem` | [instIsUniformAddGroup](../../../../../mathematics/Topology/GeneralTopology/PiTopology/Variantd8679fce5d71509ed3530bb0f45d1c96f065dcd0f376abd1288765f63b148aba.lean/declarations/instisuniformaddgroup--1730be853d26712fe467274c.md) | 280 | `result-track:1730be853d26712fe467274c330dd1e5ad9714a59fa83485984613ddd48375c6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
