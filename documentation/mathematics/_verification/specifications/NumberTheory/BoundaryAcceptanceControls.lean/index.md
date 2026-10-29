# Verification target: GRWTSK.NumberTheory.Chebyshev.Checks.BoundaryAcceptanceControls

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ce032539c4afb7d29484be83aa8b9a36688047e7",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Chebyshev/Checks/BoundaryAcceptanceControls.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../NumberTheory/BoundaryAcceptanceControls.lean/index.md) · [Full source](../../../../NumberTheory/BoundaryAcceptanceControls.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ce032539c4afb7d29484be83aa8b9a36688047e7`.

Source path: `GRWTSK/NumberTheory/Chebyshev/Checks/BoundaryAcceptanceControls.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Chebyshev/Checks/BoundaryAcceptanceControls.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.ConcreteNewtonBoundaryAcceptance`](../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ConcreteNewtonBoundaryAcceptance.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [remaining_check_count](../../../../NumberTheory/BoundaryAcceptanceControls.lean/declarations/remaining-check-count.md) | 17 | `result-track:78f7cf7108b1ef5068f1dfa5ed2e1306c585d1c34278bc1ee6e6371f63d56a20` |
| 2 | `theorem` | [first_remaining_label](../../../../NumberTheory/BoundaryAcceptanceControls.lean/declarations/first-remaining-label.md) | 19 | `result-track:40bd69de3b91a6acda9f93686f47c4e374ce060436d0c3ff78d3b43c34d85998` |
| 3 | `theorem` | [last_remaining_label](../../../../NumberTheory/BoundaryAcceptanceControls.lean/declarations/last-remaining-label.md) | 21 | `result-track:5fd98ed982ff802f14717a7c5ca2b475fd8c4d55aac552e3ae552cc9c5cb5eef` |
| 4 | `theorem` | [block_one_still_required](../../../../NumberTheory/BoundaryAcceptanceControls.lean/declarations/block-one-still-required.md) | 24 | `result-track:ec40f06ebd7c03d26d52b894492548de7dfe9ec84f47fe7653b4c4f5c26e288b` |
| 5 | `theorem` | [last_block_still_required](../../../../NumberTheory/BoundaryAcceptanceControls.lean/declarations/last-block-still-required.md) | 29 | `result-track:83e2359d964a593905601f59674ebc71e43ec02379d542dbea82841f29011314` |
| 6 | `theorem` | [final_check_still_required](../../../../NumberTheory/BoundaryAcceptanceControls.lean/declarations/final-check-still-required.md) | 35 | `result-track:540780e6b84a68274a9948208156e988a957d48dc91699aaa927964945aeb956` |
| 7 | `theorem` | [first_uncovered_record](../../../../NumberTheory/BoundaryAcceptanceControls.lean/declarations/first-uncovered-record.md) | 41 | `result-track:f23c83283e082b6857c5338e83102ca3689c17182020e5a6abc0fd67660c1ab0` |
| 8 | `theorem` | [last_prefix_retained](../../../../NumberTheory/BoundaryAcceptanceControls.lean/declarations/last-prefix-retained.md) | 47 | `result-track:3b8436355c8ba2d1f73f41a4cc5b47c5bc0f47b84820938b237da77ecc328ffc` |
| 9 | `theorem` | [changed_remaining_record_rejected](../../../../NumberTheory/BoundaryAcceptanceControls.lean/declarations/changed-remaining-record-rejected.md) | 53 | `result-track:91a85618309d3de6ff95405c68837018bd25d5b1bd4bdb28bfbdeed7628ac292` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d67a5aa6ffb62a2f8c0056a97e15dbaef0485ef79a6df986d2c2594166b953fe -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Chebyshev/Checks/BoundaryAcceptanceControls.lean","GRWTSK/_verification/specifications/NumberTheory/Chebyshev/Checks/BoundaryAcceptanceControls.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
