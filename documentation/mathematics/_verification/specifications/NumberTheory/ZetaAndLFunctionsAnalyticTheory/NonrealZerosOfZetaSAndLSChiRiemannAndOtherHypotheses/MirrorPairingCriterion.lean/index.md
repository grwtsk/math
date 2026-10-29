# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.MirrorPairingCriterion

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ed37ce2c3a960815f2c81bf372cab25ef8d8edc1",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/MirrorPairingCriterion.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MirrorPairingCriterion.lean/index.md) · [Full source](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MirrorPairingCriterion.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ed37ce2c3a960815f2c81bf372cab25ef8d8edc1`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/MirrorPairingCriterion.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/MirrorPairingCriterion.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.CriticalLinePositivityCriterion`](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CriticalLinePositivityCriterion.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.ZeroSymmetry`](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/RiemannZeroSymmetry.lean/index.md) — import line 5; pinned internal source present.
- `Mathlib.Tactic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [MirrorTest](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MirrorPairingCriterion.lean/declarations/mirrortest.md) | 28 | `declaration-track:01a8c852dbefca95cd7a0acada65e02ac83a43b604384454d6c41835df5de5db` |
| 2 | `def` | [mirrorPairingForm](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MirrorPairingCriterion.lean/declarations/mirrorpairingform.md) | 35 | `declaration-track:dab4a5a5c1e807c5961b92e2349fb2447a963f9f8eae86f09e2e54e5c467ae0c` |
| 3 | `theorem` | [mirrorPairing_positive_iff_fixed](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MirrorPairingCriterion.lean/declarations/mirrorpairing-positive-iff-fixed.md) | 40 | `result-track:448a68578cef8a862f8bad670e8e3a2533b65bef18a28fc0805586e83b54049f` |
| 4 | `def` | [criticalLineMirror](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MirrorPairingCriterion.lean/declarations/criticallinemirror.md) | 61 | `declaration-track:2b5c3a524352f0631dbbb14d4a5f2a4a291939d0d39333642a6246450ef0d142` |
| 5 | `theorem` | [criticalLineMirror_eq_self_iff](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MirrorPairingCriterion.lean/declarations/criticallinemirror-eq-self-iff.md) | 65 | `result-track:4c3327c7453b17074b7977da30d77ae25c7a4696993d2281ae0bebea12db8410` |
| 6 | `theorem` | [all_criticalLineMirror_fixed_iff_rh](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MirrorPairingCriterion.lean/declarations/all-criticallinemirror-fixed-iff-rh.md) | 81 | `result-track:cebfd69cf0a3a6ce845bb4023d22b9e5d114b1f629ef8f6b03fc7248a830184c` |
| 7 | `theorem` | [criticalLineMirrorPairingPositivity_iff_rh](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MirrorPairingCriterion.lean/declarations/criticallinemirrorpairingpositivity-iff-rh.md) | 94 | `result-track:1be8e19d3907c26a64809bea5dcbc143887d4de31857601a8744a693b33803e8` |
| 8 | `theorem` | [criticalLineMirrorPairingCriterion](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MirrorPairingCriterion.lean/declarations/criticallinemirrorpairingcriterion.md) | 101 | `result-track:976ff223358460e6f0ab1941c9ce524e0a21d1ad15d752323c75a05e61f07f54` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=edb9beb7cce3ab297dd73f5b464400de6c685446c9d02bf62c566b2844ebc543 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Zeta/Riemann/MirrorPairingCriterion.lean","GRWTSK/_verification/specifications/NumberTheory/Zeta/Riemann/MirrorPairingCriterion.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
