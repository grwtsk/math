# Verification target: Covering Namespaced Aligned

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3d967f7ff3e7734d144eb41745b04529b78ac6b1",
  "lexical_observation_count": 35,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Covering/Variant8d43a77bb7db3126a385ddb2f175a60b5c1c2ff2e262c4dabcbd7d8ddba19fc9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../Combinatorics/GraphTheory/CoveringNamespacedAligned.lean/index.md) · [Full source](../../../../../Combinatorics/GraphTheory/CoveringNamespacedAligned.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3d967f7ff3e7734d144eb41745b04529b78ac6b1`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Covering/Variant8d43a77bb7db3126a385ddb2f175a60b5c1c2ff2e262c4dabcbd7d8ddba19fc9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/GraphTheory/Covering/Variant8d43a77bb7db3126a385ddb2f175a60b5c1c2ff2e262c4dabcbd7d8ddba19fc9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Combinatorics.Quiver.Cast` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Combinatorics.Quiver.Symmetric` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Sigma.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Equiv.Basic` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Quiver.Star](../../../../../Combinatorics/GraphTheory/CoveringNamespacedAligned.lean/declarations/quiver-star.md) | 63 | `declaration-track:b6b8b83ac93d3b015dcfd904d69aedacb6d0de2057d0e20f1fe056760ba99467` |
| 2 | `def` | [Quiver.Star.mk](../../../../../Combinatorics/GraphTheory/CoveringNamespacedAligned.lean/declarations/quiver-star-mk.md) | 69 | `declaration-track:3a21925800b1167f04bea3c7178bf3fdeb9ae6dd729083bd3c5485ef1ccff55d` |
| 3 | `def` | [Quiver.Costar](../../../../../Combinatorics/GraphTheory/CoveringNamespacedAligned.lean/declarations/quiver-costar.md) | 76 | `declaration-track:eb0811b55e8c0b66d367fc0df944823e7d912e734d99005edf727f8a3e0d587c` |
| 4 | `def` | [Quiver.Costar.mk](../../../../../Combinatorics/GraphTheory/CoveringNamespacedAligned.lean/declarations/quiver-costar-mk.md) | 82 | `declaration-track:b3a60f1b49cb7666d15d77077b0f4bfa1b1c208b7c40b60a836c9506e3cb25a8` |
| 5 | `def` | [Prefunctor.star](../../../../../Combinatorics/GraphTheory/CoveringNamespacedAligned.lean/declarations/prefunctor-star.md) | 88 | `declaration-track:f204294ac6666adaac4939b47802c8f4eb466e7ffef250a3fb874902d5f17a15` |
| 6 | `def` | [Prefunctor.costar](../../../../../Combinatorics/GraphTheory/CoveringNamespacedAligned.lean/declarations/prefunctor-costar.md) | 94 | `declaration-track:895169321b862cf3d132752630ef37b95de3d39382d139f4366c57fcfcf9067c` |
| 7 | `theorem` | [Prefunctor.star_apply](../../../../../Combinatorics/GraphTheory/CoveringNamespacedAligned.lean/declarations/prefunctor-star-apply.md) | 99 | `result-track:e7cf4d9ffd15ef1850e4a3b65732b5e52e9ce2fa25e8c1cb325a01a1658976b5` |
| 8 | `theorem` | [Prefunctor.costar_apply](../../../../../Combinatorics/GraphTheory/CoveringNamespacedAligned.lean/declarations/prefunctor-costar-apply.md) | 105 | `result-track:d4399f70facec697f118969144c6efc1777073195fe38735720e3100d1d68550` |
| 9 | `theorem` | [Prefunctor.star_comp](../../../../../Combinatorics/GraphTheory/CoveringNamespacedAligned.lean/declarations/prefunctor-star-comp.md) | 110 | `result-track:792a399b1d8878ff9ce88e42df0b1d616f23b98dabfd0111e4c8426ba327324d` |
| 10 | `theorem` | [Prefunctor.costar_comp](../../../../../Combinatorics/GraphTheory/CoveringNamespacedAligned.lean/declarations/prefunctor-costar-comp.md) | 114 | `result-track:52791bb886d34780deb6ff6febdfc6bc307c7054a2cc2f54fa7bbcc82decbfe9` |
| 11 | `structure` | [Prefunctor.IsCovering](../../../../../Combinatorics/GraphTheory/CoveringNamespacedAligned.lean/declarations/prefunctor-iscovering.md) | 119 | `declaration-track:3db895f737345ddcfad539ee7cfce1fe715eed26408a6e2a4342d325e3e9b132` |
| 12 | `theorem` | [Prefunctor.IsCovering.map_injective](../../../../../Combinatorics/GraphTheory/CoveringNamespacedAligned.lean/declarations/prefunctor-iscovering-map-injective.md) | 125 | `result-track:c940b56de5cd2ccb634f5c9e39af0a0544380620baac902e2b84f1bfd0af381c` |
| 13 | `theorem` | [Prefunctor.IsCovering.comp](../../../../../Combinatorics/GraphTheory/CoveringNamespacedAligned.lean/declarations/prefunctor-iscovering-comp.md) | 132 | `result-track:0295c152129db9d39b8b56a1a099a1518c0ff654e3722f5760be0d1e4984b396` |
| 14 | `theorem` | [Prefunctor.IsCovering.of_comp_right](../../../../../Combinatorics/GraphTheory/CoveringNamespacedAligned.lean/declarations/prefunctor-iscovering-of-comp-right.md) | 137 | `result-track:58150a0dee501cd3a28a251824579bf76fa9bb08d3b00c6108e0bc5e73566d5b` |
| 15 | `theorem` | [Prefunctor.IsCovering.of_comp_left](../../../../../Combinatorics/GraphTheory/CoveringNamespacedAligned.lean/declarations/prefunctor-iscovering-of-comp-left.md) | 143 | `result-track:95f7a4ccd98e23cc35d917c9459579c923cba2a5af2ff50e9021668386be5470` |
| 16 | `def` | [Quiver.symmetrifyStar](../../../../../Combinatorics/GraphTheory/CoveringNamespacedAligned.lean/declarations/quiver-symmetrifystar.md) | 152 | `declaration-track:a2b10ab8343f819422011eebe9d9f03dbc49903f19f78dc2f4fb0bf6627846d7` |
| 17 | `def` | [Quiver.symmetrifyCostar](../../../../../Combinatorics/GraphTheory/CoveringNamespacedAligned.lean/declarations/quiver-symmetrifycostar.md) | 159 | `declaration-track:a49af8f1bb7c07e2f7b1f62ac81d992b6f2ca85364f3345f62f64cb6366da666` |
| 18 | `theorem` | [Prefunctor.symmetrifyStar](../../../../../Combinatorics/GraphTheory/CoveringNamespacedAligned.lean/declarations/prefunctor-symmetrifystar.md) | 164 | `result-track:0a9b9a065fc63f1b18476a31425c6591b493e71a6b995e282675e419acebc1c0` |
| 19 | `theorem` | [Prefunctor.symmetrifyCostar](../../../../../Combinatorics/GraphTheory/CoveringNamespacedAligned.lean/declarations/prefunctor-symmetrifycostar.md) | 176 | `result-track:b8bb7f8634cdc7c8ffdfd7a189fb823b9e2610cc79f242d5d0b1f11e211885a6` |
| 20 | `theorem` | [Prefunctor.IsCovering.symmetrify](../../../../../Combinatorics/GraphTheory/CoveringNamespacedAligned.lean/declarations/prefunctor-iscovering-symmetrify.md) | 188 | `result-track:67882722da30eccb505efbfe5deb831ebb7a665dde99d1cf854b6d3b2e95efbc` |
| 21 | `def` | [Quiver.PathStar](../../../../../Combinatorics/GraphTheory/CoveringNamespacedAligned.lean/declarations/quiver-pathstar.md) | 201 | `declaration-track:a0aa50bf268275ec47758dd11cf44d872376fd7c88efb393f9fd22bed7cd2a49` |
| 22 | `def` | [Quiver.PathStar.mk](../../../../../Combinatorics/GraphTheory/CoveringNamespacedAligned.lean/declarations/quiver-pathstar-mk.md) | 207 | `declaration-track:80852f223ab760850f9899acff98853e7ac4b31918f9c2696f227ed254e084a0` |
| 23 | `def` | [Prefunctor.pathStar](../../../../../Combinatorics/GraphTheory/CoveringNamespacedAligned.lean/declarations/prefunctor-pathstar.md) | 212 | `declaration-track:09d613376f7c911683eeddfb92751a4b4a02d79a3f3327a67aa75cd5366a235a` |
| 24 | `theorem` | [Prefunctor.pathStar_apply](../../../../../Combinatorics/GraphTheory/CoveringNamespacedAligned.lean/declarations/prefunctor-pathstar-apply.md) | 217 | `result-track:36b5eb078f7a572c2a00440e0fb68e5f6115a1125dbab798e0cbab908c2e2ebb` |
| 25 | `theorem` | [Prefunctor.pathStar_injective](../../../../../Combinatorics/GraphTheory/CoveringNamespacedAligned.lean/declarations/prefunctor-pathstar-injective.md) | 222 | `result-track:7e0c9ced0fa839ac184af4e3b7cb680348782833bd7ec4e2b0646a04e3cdb1fb` |
| 26 | `theorem` | [Prefunctor.pathStar_surjective](../../../../../Combinatorics/GraphTheory/CoveringNamespacedAligned.lean/declarations/prefunctor-pathstar-surjective.md) | 257 | `result-track:c253ed846c8ca5905b62b6af38b23c5d6bf968df4cee4ec15d98bd4c444ebf32` |
| 27 | `theorem` | [Prefunctor.pathStar_bijective](../../../../../Combinatorics/GraphTheory/CoveringNamespacedAligned.lean/declarations/prefunctor-pathstar-bijective.md) | 277 | `result-track:3fad1dcac623b8e5da15ff2adcbdba1ab270cdad34a284b63ebab48d78126930` |
| 28 | `theorem` | [pathStar_bijective](../../../../../Combinatorics/GraphTheory/CoveringNamespacedAligned.lean/declarations/pathstar-bijective.md) | 286 | `result-track:5ec9d5d6dadf308f0e9a1c47a3cd93e7ce0e7283fb20d4f449adde37418ebf48` |
| 29 | `def` | [Quiver.starEquivCostar](../../../../../Combinatorics/GraphTheory/CoveringNamespacedAligned.lean/declarations/quiver-starequivcostar.md) | 299 | `declaration-track:46703f879a09ebd4a53924f0dd92545d36113aad342a60ddd8f093866413e487` |
| 30 | `theorem` | [Quiver.starEquivCostar_apply](../../../../../Combinatorics/GraphTheory/CoveringNamespacedAligned.lean/declarations/quiver-starequivcostar-apply.md) | 307 | `result-track:2ab1d6268e283796f03174c20a78155d4ab418f49120bd5185e1b5349a188c56` |
| 31 | `theorem` | [Quiver.starEquivCostar_symm_apply](../../../../../Combinatorics/GraphTheory/CoveringNamespacedAligned.lean/declarations/quiver-starequivcostar-symm-apply.md) | 313 | `result-track:ddb538a5b32a498748725359f914d56b334ee1cce6d9f33707cad1f6ee35db25` |
| 32 | `theorem` | [Prefunctor.costar_conj_star](../../../../../Combinatorics/GraphTheory/CoveringNamespacedAligned.lean/declarations/prefunctor-costar-conj-star.md) | 318 | `result-track:4c7a709f0e98c3c33ef31c7a26d0f817b182a5d32024f583d3b7bab7b777915a` |
| 33 | `theorem` | [Prefunctor.bijective_costar_iff_bijective_star](../../../../../Combinatorics/GraphTheory/CoveringNamespacedAligned.lean/declarations/prefunctor-bijective-costar-iff-bijective-star.md) | 323 | `result-track:33ee709636d69428e49891567c08cac9435f2e62339da1d7ae3fc6883f17e90c` |
| 34 | `theorem` | [Prefunctor.isCovering_of_bijective_star](../../../../../Combinatorics/GraphTheory/CoveringNamespacedAligned.lean/declarations/prefunctor-iscovering-of-bijective-star.md) | 328 | `result-track:9f2b0502221672edd420b14953cc1ada5c0843dd9f5b427d486b7b94f965831b` |
| 35 | `theorem` | [Prefunctor.isCovering_of_bijective_costar](../../../../../Combinatorics/GraphTheory/CoveringNamespacedAligned.lean/declarations/prefunctor-iscovering-of-bijective-costar.md) | 332 | `result-track:70b3930b4407f9f430e3a90fd2ed09188cd42a57c3aa0f838dcc9971d9f65f69` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=89b0d6845fed8de06f15f00878c0db9cf06491e0a154ba5f1f51cc6ae11ce15c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Covering/Variant8d43a77bb7db3126a385ddb2f175a60b5c1c2ff2e262c4dabcbd7d8ddba19fc9.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/GraphTheory/Covering/Variant8d43a77bb7db3126a385ddb2f175a60b5c1c2ff2e262c4dabcbd7d8ddba19fc9.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
