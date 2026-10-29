# Verification target: Submodule Bilinear Aligned

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8d197bcff22254b90de03b206a2203ebbe5e9f8b",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Bilinear/Variant04f90c565b50f47634e73ae933d09adb4b957e7366c9c8ebd3e806097409a90e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleBilinearAligned.lean/index.md) · [Full source](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleBilinearAligned.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8d197bcff22254b90de03b206a2203ebbe5e9f8b`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Bilinear/Variant04f90c565b50f47634e73ae933d09adb4b957e7366c9c8ebd3e806097409a90e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Bilinear/Variant04f90c565b50f47634e73ae933d09adb4b957e7366c9c8ebd3e806097409a90e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Span` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.BilinearMap` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [map₂](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleBilinearAligned.lean/declarations/map.md) | 47 | `declaration-track:7aea6ae1f622228aea10a8704af2b6a3f7f1d856abbd54440a227687e176b75c` |
| 2 | `theorem` | [apply_mem_map₂](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleBilinearAligned.lean/declarations/apply-mem-map.md) | 51 | `result-track:7c804bb48d8f0633f191bfe1c4d7c7d75f1a04d28ea7f64acf2c073c48e934a5` |
| 3 | `theorem` | [map₂_le](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleBilinearAligned.lean/declarations/map-le.md) | 56 | `result-track:c586774c017672694977ea2fb65c6979f0555b666f078b46f1f41e35d385bdc0` |
| 4 | `theorem` | [map₂_span_span](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleBilinearAligned.lean/declarations/map-span-span.md) | 63 | `result-track:5b0dac50807b62aa9bccf6d4b982774e1f57b3560e8a28615b073b54e770cf7e` |
| 5 | `theorem` | [map₂_bot_right](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleBilinearAligned.lean/declarations/map-bot-right.md) | 82 | `result-track:90bf2af6e1acd6a8d3192dc44105d86face3c800c9bcd8577d1807fc2da4b43b` |
| 6 | `theorem` | [map₂_bot_left](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleBilinearAligned.lean/declarations/map-bot-left.md) | 90 | `result-track:4d7bab94e014a69caea5299dc77f301e9bee7026c5754edc96131edb53f25a19` |
| 7 | `theorem` | [map₂_le_map₂](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleBilinearAligned.lean/declarations/map-le-map.md) | 98 | `result-track:d5bfb7dd99b87ad9eefb84e22ae87680ac0ba146fbafac07a33fec0e79e1d249` |
| 8 | `theorem` | [map₂_le_map₂_left](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleBilinearAligned.lean/declarations/map-le-map-left.md) | 103 | `result-track:f8ce235abf2aed541fb9f0698984137421ad23af15baf2faa3e48846cc924ae7` |
| 9 | `theorem` | [map₂_le_map₂_right](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleBilinearAligned.lean/declarations/map-le-map-right.md) | 108 | `result-track:a98208a6d574d99efac86dc306bb05b9168a0fec8cc2d4e600981e49a7398d89` |
| 10 | `theorem` | [map₂_sup_right](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleBilinearAligned.lean/declarations/map-sup-right.md) | 113 | `result-track:8617a32d1eb12a1dbf2a760f57b3f58bc4436cf51c7f5c3f6a5825068870c4c4` |
| 11 | `theorem` | [map₂_sup_left](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleBilinearAligned.lean/declarations/map-sup-left.md) | 122 | `result-track:9ebac532c10e99b8d4d726c33474e03be7e9111995909512eb3df94364b555ed` |
| 12 | `theorem` | [image2_subset_map₂](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleBilinearAligned.lean/declarations/image2-subset-map.md) | 133 | `result-track:942a17b1df683b663ae4d25e4fff73416ef0e66e3fac84559cfb1e5062670036` |
| 13 | `theorem` | [map₂_eq_span_image2](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleBilinearAligned.lean/declarations/map-eq-span-image2.md) | 139 | `result-track:1be356a4f355098a7ac268fc14b9de2493d8c9496fbb822e5f5667d1556f9fa6` |
| 14 | `theorem` | [map₂_flip](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleBilinearAligned.lean/declarations/map-flip.md) | 144 | `result-track:0b564b5f89a84d940730a6ee96aa37c0b560b945766c6559b36193d0a09ab795` |
| 15 | `theorem` | [map₂_iSup_left](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleBilinearAligned.lean/declarations/map-isup-left.md) | 150 | `result-track:58a14ad1fe06a44091bb5ec79c761cb7d68a2e5fbb3f797b6631405d081d6e98` |
| 16 | `theorem` | [map₂_iSup_right](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleBilinearAligned.lean/declarations/map-isup-right.md) | 157 | `result-track:c4d8190bf923e5f4831007afaa131ff36801de3c6c3d897fdece7137478589cf` |
| 17 | `theorem` | [map₂_span_singleton_eq_map](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleBilinearAligned.lean/declarations/map-span-singleton-eq-map.md) | 164 | `result-track:e38f3667a221d16b8c6b2554614fd5a63bd0be644ff20b91d97725a69d38f880` |
| 18 | `theorem` | [map₂_span_singleton_eq_map_flip](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleBilinearAligned.lean/declarations/map-span-singleton-eq-map-flip.md) | 176 | `result-track:0de280b6fbcec2a8f135810e25d464c77b480c2d1342b782eb5b39a11cfb9ebf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d9bd044fa90c141ec7497fa504ee828e5b237b40b508d8f70624063a1cfa3d90 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Bilinear/Variant04f90c565b50f47634e73ae933d09adb4b957e7366c9c8ebd3e806097409a90e.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Bilinear/Variant04f90c565b50f47634e73ae933d09adb4b957e7366c9c8ebd3e806097409a90e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
