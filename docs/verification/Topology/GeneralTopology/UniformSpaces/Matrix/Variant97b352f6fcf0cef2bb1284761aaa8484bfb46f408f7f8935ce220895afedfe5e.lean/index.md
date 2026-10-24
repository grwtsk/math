# Verification target: GRWTSK.Topology.GeneralTopology.UniformSpaces.Matrix.Variant97b352f6fcf0cef2bb1284761aaa8484bfb46f408f7f8935ce220895afedfe5e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "02b62fbb65eb34dd98bbf96ace69543fa6106a54",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/UniformSpaces/Matrix/Variant97b352f6fcf0cef2bb1284761aaa8484bfb46f408f7f8935ce220895afedfe5e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Matrix/Variant97b352f6fcf0cef2bb1284761aaa8484bfb46f408f7f8935ce220895afedfe5e.lean/index.md) · [Full source](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Matrix/Variant97b352f6fcf0cef2bb1284761aaa8484bfb46f408f7f8935ce220895afedfe5e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `02b62fbb65eb34dd98bbf96ace69543fa6106a54`.

Source path: `GRWTSK/Topology/GeneralTopology/UniformSpaces/Matrix/Variant97b352f6fcf0cef2bb1284761aaa8484bfb46f408f7f8935ce220895afedfe5e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/UniformSpaces/Matrix/Variant97b352f6fcf0cef2bb1284761aaa8484bfb46f408f7f8935ce220895afedfe5e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Matrix.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.IsUniformGroup.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.UniformSpace.Pi` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [instUniformSpace](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Matrix/Variant97b352f6fcf0cef2bb1284761aaa8484bfb46f408f7f8935ce220895afedfe5e.lean/declarations/instuniformspace--5f4781088a1ffb7d61ea7923.md) | 21 | `declaration-track:5f4781088a1ffb7d61ea7923708fb35b6ed61433c24663a93521f95b17c20441` |
| 2 | `instance` | [instIsUniformAddGroup](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Matrix/Variant97b352f6fcf0cef2bb1284761aaa8484bfb46f408f7f8935ce220895afedfe5e.lean/declarations/instisuniformaddgroup--dad443d670eeee635731ddc5.md) | 24 | `declaration-track:dad443d670eeee635731ddc5585c66cd81048ebf4fb90505a5f7ffdf49bae7ce` |
| 3 | `theorem` | [uniformity](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Matrix/Variant97b352f6fcf0cef2bb1284761aaa8484bfb46f408f7f8935ce220895afedfe5e.lean/declarations/uniformity--981761dc72d5ea8cf25cab09.md) | 31 | `result-track:981761dc72d5ea8cf25cab096a222e98391653fd692712fbc474a4c942edd199` |
| 4 | `theorem` | [uniformContinuous](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Matrix/Variant97b352f6fcf0cef2bb1284761aaa8484bfb46f408f7f8935ce220895afedfe5e.lean/declarations/uniformcontinuous--6deef1c81ce11e7ccb0df3ab.md) | 37 | `result-track:6deef1c81ce11e7ccb0df3abf7e1c0ca917f13e5385fde7d98e9c1f51ec981bf` |
| 5 | `instance` | [(anonymous)](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Matrix/Variant97b352f6fcf0cef2bb1284761aaa8484bfb46f408f7f8935ce220895afedfe5e.lean/declarations/instance--79e2a9cae355d902c809c92b.md) | 42 | `declaration-track:79e2a9cae355d902c809c92b325eec743cf2a4c19e7e2936255ced1a979e7c93` |
| 6 | `instance` | [(anonymous)](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Matrix/Variant97b352f6fcf0cef2bb1284761aaa8484bfb46f408f7f8935ce220895afedfe5e.lean/declarations/instance--4bd7d9dd8baaaa5d1e0da1ef.md) | 45 | `declaration-track:4bd7d9dd8baaaa5d1e0da1ef378ddf7730b681337ae7bf1d9d1e3a145f9609d6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
