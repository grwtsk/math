# Verification target: GRWTSK.Topology.GeneralTopology.Star.Variant7ba85eaa8b730ea0363e96267e890d4ee0e0e3c08c855342c337e9fe2e42987d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fbf6344b40f0f6537cf9c0e4c9b80a083ef2f251",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Star/Variant7ba85eaa8b730ea0363e96267e890d4ee0e0e3c08c855342c337e9fe2e42987d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Star/Variant7ba85eaa8b730ea0363e96267e890d4ee0e0e3c08c855342c337e9fe2e42987d.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Star/Variant7ba85eaa8b730ea0363e96267e890d4ee0e0e3c08c855342c337e9fe2e42987d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fbf6344b40f0f6537cf9c0e4c9b80a083ef2f251`.

Source path: `GRWTSK/Topology/GeneralTopology/Star/Variant7ba85eaa8b730ea0363e96267e890d4ee0e0e3c08c855342c337e9fe2e42987d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Star/Variant7ba85eaa8b730ea0363e96267e890d4ee0e0e3c08c855342c337e9fe2e42987d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.CStarAlgebra.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.ContinuousMap.Bounded.Normed` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.ContinuousMap.Star` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [instStarAddMonoid](../../../../../mathematics/Topology/GeneralTopology/Star/Variant7ba85eaa8b730ea0363e96267e890d4ee0e0e3c08c855342c337e9fe2e42987d.lean/declarations/inststaraddmonoid--7e17f58869d0c25166457adc.md) | 60 | `declaration-track:7e17f58869d0c25166457adc88da5fb7e18075bb1d21679386c209cff6745c97` |
| 2 | `theorem` | [coe_star](../../../../../mathematics/Topology/GeneralTopology/Star/Variant7ba85eaa8b730ea0363e96267e890d4ee0e0e3c08c855342c337e9fe2e42987d.lean/declarations/coe-star--96595620b8e0e3cc463f5c6e.md) | 68 | `result-track:96595620b8e0e3cc463f5c6ea169ec8dadd7acc778c6f27de14cf84aab7f0c4d` |
| 3 | `theorem` | [star_apply](../../../../../mathematics/Topology/GeneralTopology/Star/Variant7ba85eaa8b730ea0363e96267e890d4ee0e0e3c08c855342c337e9fe2e42987d.lean/declarations/star-apply--178671e9691737190163fab2.md) | 71 | `result-track:178671e9691737190163fab28aa51db9d3e48568487d049a825b06c1858ff44a` |
| 4 | `instance` | [instNormedStarGroup](../../../../../mathematics/Topology/GeneralTopology/Star/Variant7ba85eaa8b730ea0363e96267e890d4ee0e0e3c08c855342c337e9fe2e42987d.lean/declarations/instnormedstargroup--1612c7cf2942afc3c850477f.md) | 73 | `declaration-track:1612c7cf2942afc3c850477fa30ffe351df9f292d6dc714bf15a67983e38e10a` |
| 5 | `instance` | [instStarModule](../../../../../mathematics/Topology/GeneralTopology/Star/Variant7ba85eaa8b730ea0363e96267e890d4ee0e0e3c08c855342c337e9fe2e42987d.lean/declarations/inststarmodule--d40253054756133e0fa03481.md) | 76 | `declaration-track:d40253054756133e0fa03481a637a89de401be8f2d4e8d2724b920aa344393ca` |
| 6 | `instance` | [instStarRing](../../../../../mathematics/Topology/GeneralTopology/Star/Variant7ba85eaa8b730ea0363e96267e890d4ee0e0e3c08c855342c337e9fe2e42987d.lean/declarations/inststarring--2fc6e54d44f2ae7e7cca20e0.md) | 86 | `declaration-track:2fc6e54d44f2ae7e7cca20e0e3135f774ead6c40abff4807c0f72857fde2b193` |
| 7 | `instance` | [instCStarRing](../../../../../mathematics/Topology/GeneralTopology/Star/Variant7ba85eaa8b730ea0363e96267e890d4ee0e0e3c08c855342c337e9fe2e42987d.lean/declarations/instcstarring--c3995c54d9f01312b55b1cc8.md) | 92 | `declaration-track:c3995c54d9f01312b55b1cc8b0a14e903f842aba5a9923c4b02e15fa75f10eb7` |
| 8 | `def` | [toContinuousMapStarₐ](../../../../../mathematics/Topology/GeneralTopology/Star/Variant7ba85eaa8b730ea0363e96267e890d4ee0e0e3c08c855342c337e9fe2e42987d.lean/declarations/tocontinuousmapstar--bb65e1129a2b509e5390ff1e.md) | 108 | `declaration-track:bb65e1129a2b509e5390ff1e182ca6e5bf166f629067f31dece430a2cc013a51` |
| 9 | `theorem` | [coe_toContinuousMapStarₐ](../../../../../mathematics/Topology/GeneralTopology/Star/Variant7ba85eaa8b730ea0363e96267e890d4ee0e0e3c08c855342c337e9fe2e42987d.lean/declarations/coe-tocontinuousmapstar--2b6d8d4f3bb9c8e901eb29be.md) | 112 | `result-track:2b6d8d4f3bb9c8e901eb29bee28535a62d12142af8096067577c45fe46395597` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
