# Verification target: GRWTSK.Topology.GeneralTopology.PiTopology.Variant255cab3cb5c4c5f7966033ddf25736f9cc7d7821d47c88f77f584236059d6492

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0301ad841b5368792e98e1ffbc756d7fde31a6bd",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/PiTopology/Variant255cab3cb5c4c5f7966033ddf25736f9cc7d7821d47c88f77f584236059d6492.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/PiTopology/Variant255cab3cb5c4c5f7966033ddf25736f9cc7d7821d47c88f77f584236059d6492.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/PiTopology/Variant255cab3cb5c4c5f7966033ddf25736f9cc7d7821d47c88f77f584236059d6492.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0301ad841b5368792e98e1ffbc756d7fde31a6bd`.

Source path: `GRWTSK/Topology/GeneralTopology/PiTopology/Variant255cab3cb5c4c5f7966033ddf25736f9cc7d7821d47c88f77f584236059d6492.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/PiTopology/Variant255cab3cb5c4c5f7966033ddf25736f9cc7d7821d47c88f77f584236059d6492.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.MvPowerSeries.PiTopology` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.PowerSeries.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.PowerSeries.Trunc` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Finsupp.Pi` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/PiTopology/Variant255cab3cb5c4c5f7966033ddf25736f9cc7d7821d47c88f77f584236059d6492.lean/declarations/instance--33e9823c812fb288fe33e790.md) | 73 | `declaration-track:33e9823c812fb288fe33e7905e1926afa32a558cab59827c074378be9728af1c` |
| 2 | `theorem` | [instT0Space](../../../../../mathematics/Topology/GeneralTopology/PiTopology/Variant255cab3cb5c4c5f7966033ddf25736f9cc7d7821d47c88f77f584236059d6492.lean/declarations/instt0space--9708741afd222f9e49bf1114.md) | 78 | `result-track:9708741afd222f9e49bf1114746bd64faacfd0bc14f499a9c6252a328f09678a` |
| 3 | `theorem` | [instT2Space](../../../../../mathematics/Topology/GeneralTopology/PiTopology/Variant255cab3cb5c4c5f7966033ddf25736f9cc7d7821d47c88f77f584236059d6492.lean/declarations/instt2space--84a2441eadab9eab84692fbc.md) | 83 | `result-track:84a2441eadab9eab84692fbcebf9cd637ded1c223b3939af7bc14268b8df040a` |
| 4 | `theorem` | [continuous_coeff](../../../../../mathematics/Topology/GeneralTopology/PiTopology/Variant255cab3cb5c4c5f7966033ddf25736f9cc7d7821d47c88f77f584236059d6492.lean/declarations/continuous-coeff--ca47b8ef0ea86493fac729d4.md) | 87 | `result-track:ca47b8ef0ea86493fac729d45f1e285555a6ec90680d6de7d0728698be4ddc48` |
| 5 | `theorem` | [continuous_constantCoeff](../../../../../mathematics/Topology/GeneralTopology/PiTopology/Variant255cab3cb5c4c5f7966033ddf25736f9cc7d7821d47c88f77f584236059d6492.lean/declarations/continuous-constantcoeff--245726ed2d5f04a947e5c030.md) | 91 | `result-track:245726ed2d5f04a947e5c030b320b5b2d71054b30baca169b045628ed409299a` |
| 6 | `theorem` | [tendsto_iff_coeff_tendsto](../../../../../mathematics/Topology/GeneralTopology/PiTopology/Variant255cab3cb5c4c5f7966033ddf25736f9cc7d7821d47c88f77f584236059d6492.lean/declarations/tendsto-iff-coeff-tendsto--c187a753fcd147e37178f1a7.md) | 95 | `result-track:c187a753fcd147e37178f1a7eb8f26226cf4ab6fdab94f579ef6fc39bc331565` |
| 7 | `theorem` | [tendsto_trunc_atTop](../../../../../mathematics/Topology/GeneralTopology/PiTopology/Variant255cab3cb5c4c5f7966033ddf25736f9cc7d7821d47c88f77f584236059d6492.lean/declarations/tendsto-trunc-attop--058fc1a544c396e9efcbe028.md) | 109 | `result-track:058fc1a544c396e9efcbe02875b57f61f3986fe0f155103d337a1ad23685c3ad` |
| 8 | `theorem` | [denseRange_toPowerSeries](../../../../../mathematics/Topology/GeneralTopology/PiTopology/Variant255cab3cb5c4c5f7966033ddf25736f9cc7d7821d47c88f77f584236059d6492.lean/declarations/denserange-topowerseries--7f1dd1b4d8174cb2316b04d3.md) | 116 | `result-track:7f1dd1b4d8174cb2316b04d337ce94ee5c1312dcb086799ffa509c8d272728e9` |
| 9 | `theorem` | [instIsTopologicalSemiring](../../../../../mathematics/Topology/GeneralTopology/PiTopology/Variant255cab3cb5c4c5f7966033ddf25736f9cc7d7821d47c88f77f584236059d6492.lean/declarations/instistopologicalsemiring--97f7b659962dc157244c0b08.md) | 122 | `result-track:97f7b659962dc157244c0b08cdcb901b81408a7a02cc25318f84dd4a836bbe67` |
| 10 | `theorem` | [instIsTopologicalRing](../../../../../mathematics/Topology/GeneralTopology/PiTopology/Variant255cab3cb5c4c5f7966033ddf25736f9cc7d7821d47c88f77f584236059d6492.lean/declarations/instistopologicalring--4220dcc1e0df55b99c6d582b.md) | 128 | `result-track:4220dcc1e0df55b99c6d582b878b9908913342c591dbcc3956d0d35f2cd8dd48` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/PiTopology/Variant255cab3cb5c4c5f7966033ddf25736f9cc7d7821d47c88f77f584236059d6492.lean/declarations/instance--85fe611e8954774839dc7a6e.md) | 143 | `declaration-track:85fe611e8954774839dc7a6ee8ea19dcf7b377be5f36dd82ca06f4a25fd2bbcb` |
| 12 | `theorem` | [uniformContinuous_coeff](../../../../../mathematics/Topology/GeneralTopology/PiTopology/Variant255cab3cb5c4c5f7966033ddf25736f9cc7d7821d47c88f77f584236059d6492.lean/declarations/uniformcontinuous-coeff--1c111dd8a5314902c8b14b7a.md) | 147 | `result-track:1c111dd8a5314902c8b14b7accb5af865ee44d21f9e38f6a35ae819613cdea61` |
| 13 | `theorem` | [instCompleteSpace](../../../../../mathematics/Topology/GeneralTopology/PiTopology/Variant255cab3cb5c4c5f7966033ddf25736f9cc7d7821d47c88f77f584236059d6492.lean/declarations/instcompletespace--78b7338ca7d6aee1094b17cb.md) | 153 | `result-track:78b7338ca7d6aee1094b17cb297edf1c41eefd97b3f05e93cd7049b112a068d8` |
| 14 | `theorem` | [instIsUniformAddGroup](../../../../../mathematics/Topology/GeneralTopology/PiTopology/Variant255cab3cb5c4c5f7966033ddf25736f9cc7d7821d47c88f77f584236059d6492.lean/declarations/instisuniformaddgroup--daeeaca8112ec49b9458ae55.md) | 159 | `result-track:daeeaca8112ec49b9458ae55b2fd75c27c54069c99f99e8eb97bd9c91d93212d` |
| 15 | `theorem` | [continuous_C](../../../../../mathematics/Topology/GeneralTopology/PiTopology/Variant255cab3cb5c4c5f7966033ddf25736f9cc7d7821d47c88f77f584236059d6492.lean/declarations/continuous-c--18f1cf69cbe59af8b809558f.md) | 179 | `result-track:18f1cf69cbe59af8b809558f58428f02a148d4f60f4dacc966cc2f35486fa1dd` |
| 16 | `theorem` | [isTopologicallyNilpotent_of_constantCoeff_isNilpotent](../../../../../mathematics/Topology/GeneralTopology/PiTopology/Variant255cab3cb5c4c5f7966033ddf25736f9cc7d7821d47c88f77f584236059d6492.lean/declarations/istopologicallynilpotent-of-constantcoeff-isnilpotent--d934816ff8719bf60a0ed2ab.md) | 182 | `result-track:d934816ff8719bf60a0ed2ab958390f840f21e917f75e6f254f70ed41819b92d` |
| 17 | `theorem` | [isTopologicallyNilpotent_of_constantCoeff_zero](../../../../../mathematics/Topology/GeneralTopology/PiTopology/Variant255cab3cb5c4c5f7966033ddf25736f9cc7d7821d47c88f77f584236059d6492.lean/declarations/istopologicallynilpotent-of-constantcoeff-zero--b2a8746bb28e63e6a3b6d109.md) | 187 | `result-track:b2a8746bb28e63e6a3b6d10907feb4e3253154f0fa8d82b2948daf44426f5ae5` |
| 18 | `theorem` | [isTopologicallyNilpotent_iff_constantCoeff_isNilpotent](../../../../../mathematics/Topology/GeneralTopology/PiTopology/Variant255cab3cb5c4c5f7966033ddf25736f9cc7d7821d47c88f77f584236059d6492.lean/declarations/istopologicallynilpotent-iff-constantcoeff-isnilpotent--cf3ce72a6770e22eb8ea0841.md) | 195 | `result-track:cf3ce72a6770e22eb8ea08412a5a733d0629c54b51e6dfb5dc5092c4f250e1f7` |
| 19 | `theorem` | [hasSum_of_monomials_self](../../../../../mathematics/Topology/GeneralTopology/PiTopology/Variant255cab3cb5c4c5f7966033ddf25736f9cc7d7821d47c88f77f584236059d6492.lean/declarations/hassum-of-monomials-self--a58ae112945a12479a0eddda.md) | 215 | `result-track:a58ae112945a12479a0edddab0ed8f359a992d262a9331ef86e304774d196002` |
| 20 | `theorem` | [as_tsum](../../../../../mathematics/Topology/GeneralTopology/PiTopology/Variant255cab3cb5c4c5f7966033ddf25736f9cc7d7821d47c88f77f584236059d6492.lean/declarations/as-tsum--8bde1756a1504759a4b8eee6.md) | 225 | `result-track:8bde1756a1504759a4b8eee6c0ae16069229e78c3e54eccdbbe776c1c28daca5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
