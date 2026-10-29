# Verification target: Geometry Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e7bdc8d4b2a5056cd289ccb51b586e166c6daee8",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/SpecialFunctions/Geometry/Variant594c449d5b40eb4938353bdcc9cb7c870d0289482685a22b131d3c17e8b8f2ac.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GroupTheoryAndGeneralizations/GeometryNamespaced.lean/index.md) · [Full source](../../../../GroupTheoryAndGeneralizations/GeometryNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e7bdc8d4b2a5056cd289ccb51b586e166c6daee8`.

Source path: `GRWTSK/Analysis/SpecialFunctions/Geometry/Variant594c449d5b40eb4938353bdcc9cb7c870d0289482685a22b131d3c17e8b8f2ac.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/SpecialFunctions/Geometry/Variant594c449d5b40eb4938353bdcc9cb7c870d0289482685a22b131d3c17e8b8f2ac.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.AbelReynolds.Symmetry` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Action.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Exp` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Log.Basic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ReciprocalScaleExponent](../../../../GroupTheoryAndGeneralizations/GeometryNamespaced.lean/declarations/reciprocalscaleexponent.md) | 24 | `declaration-track:92622546c849438c48ccdeccd08ee75e851f506e1d95fa760994ed9859948d82` |
| 2 | `structure` | [PerspectiveExponent](../../../../GroupTheoryAndGeneralizations/GeometryNamespaced.lean/declarations/perspectiveexponent.md) | 27 | `declaration-track:45700139c90a508a1db03076be6cf2189464c6b3fe865c6b9d6395ce90be9d93` |
| 3 | `structure` | [SymmetryPhase](../../../../GroupTheoryAndGeneralizations/GeometryNamespaced.lean/declarations/symmetryphase.md) | 30 | `declaration-track:f24a682ea4e7bc645f52245abb8799203b36f0bdbb54bb5d5c8cb38982b6b1be` |
| 4 | `def` | [reciprocalRadius](../../../../GroupTheoryAndGeneralizations/GeometryNamespaced.lean/declarations/reciprocalradius.md) | 34 | `declaration-track:b88b56a19033bb14d50dfd16abdbe0d282ee82df3e45d38d6e1e75ec9b06b19f` |
| 5 | `structure` | [PerspectiveBound](../../../../GroupTheoryAndGeneralizations/GeometryNamespaced.lean/declarations/perspectivebound.md) | 38 | `declaration-track:00e3be88a815ebde444bc96fe4e582e596c2ace41074a73132b30b99f08df83a` |
| 6 | `structure` | [GeometricStage](../../../../GroupTheoryAndGeneralizations/GeometryNamespaced.lean/declarations/geometricstage.md) | 46 | `declaration-track:0724e7c9bcb3dca3876069ce5b25f95d92c6e6750416efd03d82beb72b12e934` |
| 7 | `def` | [Stabilizes](../../../../GroupTheoryAndGeneralizations/GeometryNamespaced.lean/declarations/stabilizes.md) | 54 | `declaration-track:7da3b65de20f4d1b9e6a5a1db04dabf5cefad349a9f855fe751fcce06c488384` |
| 8 | `theorem` | [fixed_return_iff_relative_stabilizes](../../../../GroupTheoryAndGeneralizations/GeometryNamespaced.lean/declarations/fixed-return-iff-relative-stabilizes.md) | 61 | `result-track:479af3213cb9afdc39f2f23d29b7768737697f6e5944bbe6b57a87c1658b27fd` |
| 9 | `structure` | [GeometricReflectionCertificate](../../../../GroupTheoryAndGeneralizations/GeometryNamespaced.lean/declarations/geometricreflectioncertificate.md) | 104 | `declaration-track:a98ad09f947a51398f3edfb783bb6fa201d1ed013a6f41ae17cba4ac353f53c5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7f9e6157f3d52a42d5510534f0a136f525e85cee2db7d4b5eeb46b5c6b78ae04 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/SpecialFunctions/Geometry/Variant594c449d5b40eb4938353bdcc9cb7c870d0289482685a22b131d3c17e8b8f2ac.lean","GRWTSK/_verification/specifications/Analysis/SpecialFunctions/Geometry/Variant594c449d5b40eb4938353bdcc9cb7c870d0289482685a22b131d3c17e8b8f2ac.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
