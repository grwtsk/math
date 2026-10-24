# Verification target: GRWTSK.Topology.GeneralTopology.Slope.Variantffe52d1f9f177d38631bb8304539bc4786915366b2043eb2f45af89ebff33c9a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "379585a1ff78c666b0e0b68f37f83d60e417e80c",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Slope/Variantffe52d1f9f177d38631bb8304539bc4786915366b2043eb2f45af89ebff33c9a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Slope/Variantffe52d1f9f177d38631bb8304539bc4786915366b2043eb2f45af89ebff33c9a.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Slope/Variantffe52d1f9f177d38631bb8304539bc4786915366b2043eb2f45af89ebff33c9a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `379585a1ff78c666b0e0b68f37f83d60e417e80c`.

Source path: `GRWTSK/Topology/GeneralTopology/Slope/Variantffe52d1f9f177d38631bb8304539bc4786915366b2043eb2f45af89ebff33c9a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Slope/Variantffe52d1f9f177d38631bb8304539bc4786915366b2043eb2f45af89ebff33c9a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Calculus.Deriv.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.AffineSpace.Slope` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [hasDerivAtFilter_iff_tendsto_slope](../../../../../mathematics/Topology/GeneralTopology/Slope/Variantffe52d1f9f177d38631bb8304539bc4786915366b2043eb2f45af89ebff33c9a.lean/declarations/hasderivatfilter-iff-tendsto-slope--68d67cbb0d8bd7847a7419ce.md) | 66 | `result-track:68d67cbb0d8bd7847a7419ce69cfbac6ad2393fb530e274e8fb1e00f11841d48` |
| 2 | `theorem` | [hasDerivWithinAt_iff_tendsto_slope](../../../../../mathematics/Topology/GeneralTopology/Slope/Variantffe52d1f9f177d38631bb8304539bc4786915366b2043eb2f45af89ebff33c9a.lean/declarations/hasderivwithinat-iff-tendsto-slope--13d4bbfd90157a9676aa9f6e.md) | 81 | `result-track:13d4bbfd90157a9676aa9f6e85d7869c3a469e66f189d77a244baa5019eaf119` |
| 3 | `theorem` | [hasDerivWithinAt_iff_tendsto_slope'](../../../../../mathematics/Topology/GeneralTopology/Slope/Variantffe52d1f9f177d38631bb8304539bc4786915366b2043eb2f45af89ebff33c9a.lean/declarations/hasderivwithinat-iff-tendsto-slope--15c3e224925ba9684b719589.md) | 87 | `result-track:15c3e224925ba9684b719589751a1d2f5bf5a9c12993265cab6c43ef7076cb7e` |
| 4 | `theorem` | [hasDerivAt_iff_tendsto_slope](../../../../../mathematics/Topology/GeneralTopology/Slope/Variantffe52d1f9f177d38631bb8304539bc4786915366b2043eb2f45af89ebff33c9a.lean/declarations/hasderivat-iff-tendsto-slope--611b1835a672ab90e92d82e9.md) | 92 | `result-track:611b1835a672ab90e92d82e925cc0d3c2757c94fc566b2ac456d784a13295147` |
| 5 | `theorem` | [HasDerivWithinAt.limsup_slope_le](../../../../../mathematics/Topology/GeneralTopology/Slope/Variantffe52d1f9f177d38631bb8304539bc4786915366b2043eb2f45af89ebff33c9a.lean/declarations/hasderivwithinat-limsup-slope-le--eec2ab2047e6a0350fb9cd5f.md) | 104 | `result-track:eec2ab2047e6a0350fb9cd5f2a64ef43d4384bf3c3c145c8491be2e1d99f9e66` |
| 6 | `theorem` | [HasDerivWithinAt.limsup_slope_le'](../../../../../mathematics/Topology/GeneralTopology/Slope/Variantffe52d1f9f177d38631bb8304539bc4786915366b2043eb2f45af89ebff33c9a.lean/declarations/hasderivwithinat-limsup-slope-le--b50a66c891e8a24e2b2df82c.md) | 109 | `result-track:b50a66c891e8a24e2b2df82cc80d6783b031ed76e08b4a4251b1e75f4721aa17` |
| 7 | `theorem` | [HasDerivWithinAt.liminf_right_slope_le](../../../../../mathematics/Topology/GeneralTopology/Slope/Variantffe52d1f9f177d38631bb8304539bc4786915366b2043eb2f45af89ebff33c9a.lean/declarations/hasderivwithinat-liminf-right-slope-le--4352cfb99acbfb6c4cc616d4.md) | 114 | `result-track:4352cfb99acbfb6c4cc616d42c84aebb13d4bf23308005a5623e1e6cb8c0fbfb` |
| 8 | `theorem` | [HasDerivWithinAt.limsup_norm_slope_le](../../../../../mathematics/Topology/GeneralTopology/Slope/Variantffe52d1f9f177d38631bb8304539bc4786915366b2043eb2f45af89ebff33c9a.lean/declarations/hasderivwithinat-limsup-norm-slope-le--f1062f2325cdf079c900b9d6.md) | 132 | `result-track:f1062f2325cdf079c900b9d6a8b9207fa0234edf34c5da887c99e4c80bda198f` |
| 9 | `theorem` | [HasDerivWithinAt.limsup_slope_norm_le](../../../../../mathematics/Topology/GeneralTopology/Slope/Variantffe52d1f9f177d38631bb8304539bc4786915366b2043eb2f45af89ebff33c9a.lean/declarations/hasderivwithinat-limsup-slope-norm-le--bc484b7194430a4d027ea59f.md) | 153 | `result-track:bc484b7194430a4d027ea59f5f0f96c90b92b86f2d7cd1e3690c9c0a2bc41be7` |
| 10 | `theorem` | [HasDerivWithinAt.liminf_right_norm_slope_le](../../../../../mathematics/Topology/GeneralTopology/Slope/Variantffe52d1f9f177d38631bb8304539bc4786915366b2043eb2f45af89ebff33c9a.lean/declarations/hasderivwithinat-liminf-right-norm-slope-le--357e912a67456de1e5beff2e.md) | 166 | `result-track:357e912a67456de1e5beff2e0a370cafd36c0e1e13c53c3f1e0a477de0db1500` |
| 11 | `theorem` | [HasDerivWithinAt.liminf_right_slope_norm_le](../../../../../mathematics/Topology/GeneralTopology/Slope/Variantffe52d1f9f177d38631bb8304539bc4786915366b2043eb2f45af89ebff33c9a.lean/declarations/hasderivwithinat-liminf-right-slope-norm-le--6b1775f21ac1c415eec9d018.md) | 182 | `result-track:6b1775f21ac1c415eec9d018b3e65498c4e272727011feb9eda0fb3ae69cfdd5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
