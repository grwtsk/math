# Verification target: GRWTSK.DynamicalSystems.TransitionSystems.CertifiedPartialMaps

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "99c41b5af8896e9a135b867c0bf47ac14afd36a1",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/DynamicalSystems/TransitionSystems/CertifiedPartialMaps.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../DynamicalSystemsAndErgodicTheory/CertifiedPartialMaps.lean/index.md) · [Full source](../../../../DynamicalSystemsAndErgodicTheory/CertifiedPartialMaps.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `99c41b5af8896e9a135b867c0bf47ac14afd36a1`.

Source path: `GRWTSK/DynamicalSystems/TransitionSystems/CertifiedPartialMaps.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/DynamicalSystems/TransitionSystems/CertifiedPartialMaps.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Logic.Certificates.ProofCoverage`](../../../../MathematicalLogicAndFoundations/GeneralLogic/ProofCoverageHistoricalSourceEdition2.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.DynamicalSystems.TransitionSystems.GuardedFiniteBudget`](../../../../DynamicalSystemsAndErgodicTheory/GuardedFiniteBudget.lean/index.md) — import line 5; pinned internal source present.
- [`GRWTSK.Analysis.ErrorBounds.PartialMapComposition`](../../../../RealFunctions/PartialMapComposition.lean/index.md) — import line 6; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [AdmittedTraversal](../../../../DynamicalSystemsAndErgodicTheory/CertifiedPartialMaps.lean/declarations/admittedtraversal.md) | 40 | `declaration-track:157c34691686bce8edf675a1781dfd2883195348b2bbb1866a44595ebba0be5d` |
| 2 | `theorem` | [mathematical_evidence_of_terminal_caps](../../../../DynamicalSystemsAndErgodicTheory/CertifiedPartialMaps.lean/declarations/mathematical-evidence-of-terminal-caps.md) | 49 | `result-track:45cfc756fa03026c2973efa0c3d404b2facaa7ff6add73f425b14c2b2c8048d2` |
| 3 | `theorem` | [guard_of_terminal_caps](../../../../DynamicalSystemsAndErgodicTheory/CertifiedPartialMaps.lean/declarations/guard-of-terminal-caps.md) | 57 | `result-track:327d11a12c4c7b941f8c894a05513efa467a5084828f0e89b0c716622b9322c2` |
| 4 | `theorem` | [verified_to_terminal_cap](../../../../DynamicalSystemsAndErgodicTheory/CertifiedPartialMaps.lean/declarations/verified-to-terminal-cap.md) | 84 | `result-track:46ce9d707be14febdbbb33c63d3ebe61294407baa306f26aedff3e16b26d914f` |
| 5 | `theorem` | [admitted_traversal_safe_and_accounted](../../../../DynamicalSystemsAndErgodicTheory/CertifiedPartialMaps.lean/declarations/admitted-traversal-safe-and-accounted.md) | 92 | `result-track:c329f8b24c16e0bb6ad91da0cd6ec8eeda74f4e1eb4888a3fccda34b3411a86e` |
| 6 | `theorem` | [admitted_traversal_retains_obligation](../../../../DynamicalSystemsAndErgodicTheory/CertifiedPartialMaps.lean/declarations/admitted-traversal-retains-obligation.md) | 109 | `result-track:f017c206af07c367b124a91d276b64118cc12c4f6334300145ac3d500d60c1ff` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a19199db4344c644c511d504a6153e5b887869cba573d5f27ac2248307296f8b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/DynamicalSystems/TransitionSystems/CertifiedPartialMaps.lean","GRWTSK/_verification/specifications/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/TransitionSystems/CertifiedPartialMaps.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
