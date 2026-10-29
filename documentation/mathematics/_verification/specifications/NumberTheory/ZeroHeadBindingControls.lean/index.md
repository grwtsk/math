# Verification target: GRWTSK.NumberTheory.Chebyshev.Checks.ZeroHeadBindingControls

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f7cc5171c3adb0996b21f6b598eead2c0f0468f5",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Chebyshev/Checks/ZeroHeadBindingControls.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../NumberTheory/ZeroHeadBindingControls.lean/index.md) · [Full source](../../../../NumberTheory/ZeroHeadBindingControls.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f7cc5171c3adb0996b21f6b598eead2c0f0468f5`.

Source path: `GRWTSK/NumberTheory/Chebyshev/Checks/ZeroHeadBindingControls.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Chebyshev/Checks/ZeroHeadBindingControls.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Chebyshev.CanonicalZeroHeadBinding`](../../../../NumberTheory/CanonicalZeroHeadBinding.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [touching_disks_rejected](../../../../NumberTheory/ZeroHeadBindingControls.lean/declarations/touching-disks-rejected.md) | 24 | `result-track:9f4b0c36b8900df352dcf8b8c94959e8f7c29d293c852a18dc621163f1b94f5f` |
| 2 | `theorem` | [equal_height_separated_disks_accepted](../../../../NumberTheory/ZeroHeadBindingControls.lean/declarations/equal-height-separated-disks-accepted.md) | 29 | `result-track:151a87f2ea1dffcc49c72cb07f9e4aa276009ad7421a62556362f13a80c3d256` |
| 3 | `theorem` | [closed_cutoff_equality_accepted](../../../../NumberTheory/ZeroHeadBindingControls.lean/declarations/closed-cutoff-equality-accepted.md) | 34 | `result-track:38e4698248b882d334fd7717c8b34256c61d6490a46507efd0f7fdec3141cc5b` |
| 4 | `theorem` | [protruding_disk_rejected](../../../../NumberTheory/ZeroHeadBindingControls.lean/declarations/protruding-disk-rejected.md) | 37 | `result-track:d4ff3aeefc8b099a581aeafb3e20b63f623e2b7957c38156eb8c5bb2522883e2` |
| 5 | `theorem` | [negative_radius_rejected](../../../../NumberTheory/ZeroHeadBindingControls.lean/declarations/negative-radius-rejected.md) | 40 | `result-track:f95777993156d5ca3e582be3522957bb077546b4a9849262b7b31ed8263b0354` |
| 6 | `theorem` | [duplicated_zero_radius_disk_rejected](../../../../NumberTheory/ZeroHeadBindingControls.lean/declarations/duplicated-zero-radius-disk-rejected.md) | 43 | `result-track:f9f8e7b73d7fe5f015f7f57c0764b136653187e405cc2e1aba0c2215303e489d` |
| 7 | `theorem` | [equal_total_does_not_imply_surjective](../../../../NumberTheory/ZeroHeadBindingControls.lean/declarations/equal-total-does-not-imply-surjective.md) | 47 | `result-track:73306cb487bf2421920f02e993e54ced4ff4c0b45abdd1c3b082e42f1a42d238` |
| 8 | `theorem` | [zero_mass_omission_invisible](../../../../NumberTheory/ZeroHeadBindingControls.lean/declarations/zero-mass-omission-invisible.md) | 56 | `result-track:f9f05f14801d0a28f065511eb121e1da67ca9cb24a9a35be7a8a15d49ec23b90` |
| 9 | `theorem` | [inflated_weight_is_not_a_lower_bound](../../../../NumberTheory/ZeroHeadBindingControls.lean/declarations/inflated-weight-is-not-a-lower-bound.md) | 67 | `result-track:bba4466d5bdb5444f84df760249e44319b9846dfd12ef131027b0214b145ff6c` |
| 10 | `theorem` | [multiplicity_mass_not_cardinality](../../../../NumberTheory/ZeroHeadBindingControls.lean/declarations/multiplicity-mass-not-cardinality.md) | 71 | `result-track:ae5b4edd63fd2829a57feb4cfb48697eb9df6bf7ab534ad4ee9b8186d57b3a73` |
| 11 | `theorem` | [empty_geometry_is_vacuous](../../../../NumberTheory/ZeroHeadBindingControls.lean/declarations/empty-geometry-is-vacuous.md) | 76 | `result-track:5a4a29f8961df9ca0ba391c11c791b3fb2070f730665227623b8bc7f5c411fc1` |
| 12 | `theorem` | [empty_total_forces_empty_head](../../../../NumberTheory/ZeroHeadBindingControls.lean/declarations/empty-total-forces-empty-head.md) | 80 | `result-track:15aa0a564cc17c5e70fdf5d9b2bd331b6daa62096413b151c9af1793a62125e9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4cda92b6057bfa2c4be2da6a3c4b88aefce436db82d4e4627772da4aad6238af -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Chebyshev/Checks/ZeroHeadBindingControls.lean","GRWTSK/_verification/specifications/NumberTheory/Chebyshev/Checks/ZeroHeadBindingControls.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
