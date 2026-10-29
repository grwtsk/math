# Verification target: GRWTSK.NumberTheory.Primes.GoldbachProgressionArcBoundary

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6282342dcf45c447702dd5a10a68b519152a4304",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Primes/GoldbachProgressionArcBoundary.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/GoldbachProgressionArcBoundary.lean/index.md) · [Full source](../../../../MeasureAndIntegration/GoldbachProgressionArcBoundary.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6282342dcf45c447702dd5a10a68b519152a4304`.

Source path: `GRWTSK/NumberTheory/Primes/GoldbachProgressionArcBoundary.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Primes/GoldbachProgressionArcBoundary.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Primes.GoldbachProgressionErrorTransfer`](../../../../NumberTheory/MultiplicativeNumberTheory/GoldbachProgressionErrorTransfer.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.NumberTheory.Primes.GoldbachRationalArcModelBoundary`](../../../../MeasureAndIntegration/GoldbachRationalArcModelBoundary.lean/index.md) — import line 5; pinned internal source present.
- `Mathlib.MeasureTheory.Integral.Bochner.Set` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [goldbachProgressionArcModel](../../../../MeasureAndIntegration/GoldbachProgressionArcBoundary.lean/declarations/goldbachprogressionarcmodel.md) | 47 | `declaration-track:7116a0b5577c4717e998413cc3bf07ec2d670e9c57a11cf0db693d9bd16a7cf6` |
| 2 | `def` | [goldbachProgressionArcModelMajorSum](../../../../MeasureAndIntegration/GoldbachProgressionArcBoundary.lean/declarations/goldbachprogressionarcmodelmajorsum.md) | 52 | `declaration-track:25c3af4c776e385f6c559200c1d237e920ba24621877fffc224b0b7e53d4c0fc` |
| 3 | `def` | [goldbachProgressionArcResidual](../../../../MeasureAndIntegration/GoldbachProgressionArcBoundary.lean/declarations/goldbachprogressionarcresidual.md) | 59 | `declaration-track:33ed97d21c732e8e81ed1f58591505cdc274f6ad28466226136c4a058eec5ae2` |
| 4 | `def` | [goldbachProgressionResidueErrorTotal](../../../../MeasureAndIntegration/GoldbachProgressionArcBoundary.lean/declarations/goldbachprogressionresidueerrortotal.md) | 65 | `declaration-track:f74b76f8aeff7b764bc29eea29ec112145fc6ce598cddbd06daa9620ee88ee34` |
| 5 | `def` | [goldbachProgressionPointwiseErrorBudget](../../../../MeasureAndIntegration/GoldbachProgressionArcBoundary.lean/declarations/goldbachprogressionpointwiseerrorbudget.md) | 71 | `declaration-track:e208f9bb9d610e2a3422cb51641ca7efee8c6512a7213aa8e1cd360c46724e84` |
| 6 | `def` | [goldbachProgressionArcErrorBudget](../../../../MeasureAndIntegration/GoldbachProgressionArcBoundary.lean/declarations/goldbachprogressionarcerrorbudget.md) | 79 | `declaration-track:27b8520237e065a80fc1554748c42d0b78bee5cd743737781209dbd85d298e77` |
| 7 | `theorem` | [continuous_goldbachProgressionCircleModel](../../../../MeasureAndIntegration/GoldbachProgressionArcBoundary.lean/declarations/continuous-goldbachprogressioncirclemodel.md) | 87 | `result-track:7831c358ce7d3de0547eb42c17bf6962896049fc496df241fd1c46db1de9943d` |
| 8 | `theorem` | [integrableOn_goldbachProgressionArcModel](../../../../MeasureAndIntegration/GoldbachProgressionArcBoundary.lean/declarations/integrableon-goldbachprogressionarcmodel.md) | 98 | `result-track:ca90bd8b9611a4e3b14ac971470c29755cccab74df7ff7a04b8f7b1b0294c85d` |
| 9 | `theorem` | [goldbachProgressionArcResidual_eq_integral](../../../../MeasureAndIntegration/GoldbachProgressionArcBoundary.lean/declarations/goldbachprogressionarcresidual-eq-integral.md) | 109 | `result-track:100e4b7130be25b0964c09cb411448e13f73404d91d63f6972be64f4a543f051` |
| 10 | `theorem` | [goldbachProgressionResidueErrorTotal_nonneg](../../../../MeasureAndIntegration/GoldbachProgressionArcBoundary.lean/declarations/goldbachprogressionresidueerrortotal-nonneg.md) | 125 | `result-track:f5e524bfcae3d01de64293594ad80f524f22bbaa0e3fa5e431f7451ce6b281e8` |
| 11 | `theorem` | [goldbachProgressionPointwiseErrorBudget_nonneg](../../../../MeasureAndIntegration/GoldbachProgressionArcBoundary.lean/declarations/goldbachprogressionpointwiseerrorbudget-nonneg.md) | 135 | `result-track:acae5bc5638f7a58df27cf1fcd80eb0707c084bbe1e02215d210475708f3ea8c` |
| 12 | `theorem` | [norm_goldbachProgressionCircleResidual_le_on_arc](../../../../MeasureAndIntegration/GoldbachProgressionArcBoundary.lean/declarations/norm-goldbachprogressioncircleresidual-le-on-arc.md) | 150 | `result-track:1026f863ea0791af0710d0cba49de6761d159799613db13ae58da9e64166b460` |
| 13 | `theorem` | [norm_goldbachProgressionArcResidual_le](../../../../MeasureAndIntegration/GoldbachProgressionArcBoundary.lean/declarations/norm-goldbachprogressionarcresidual-le.md) | 178 | `result-track:23e978bdb893fac582287fade791d17f8854201c5c87f9b13c2aaaee7f77d7bd` |
| 14 | `theorem` | [goldbachRationalArcSum_eq_progressionModel_add_residual](../../../../MeasureAndIntegration/GoldbachProgressionArcBoundary.lean/declarations/goldbachrationalarcsum-eq-progressionmodel-add-residual.md) | 220 | `result-track:3e98866451dba7f922cf4780465da3eb925f11e941a884e32ec413adaca3786e` |
| 15 | `theorem` | [goldbachCount_pos_of_progression_residue_bounds](../../../../MeasureAndIntegration/GoldbachProgressionArcBoundary.lean/declarations/goldbachcount-pos-of-progression-residue-bounds.md) | 236 | `result-track:2bd2bd4f0106b1ac950304c63e5da214304a85ad3b906906dd3389012de0de33` |
| 16 | `theorem` | [goldbachCount_pos_of_progression_truncated_certificate](../../../../MeasureAndIntegration/GoldbachProgressionArcBoundary.lean/declarations/goldbachcount-pos-of-progression-truncated-certificate.md) | 276 | `result-track:f9614be642fa2d11fe8c669c6668f2a3c6cb5d9e990b312be8e948dee87cb6ae` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f7d8ecb20a97ba6746e817e0c9e132df3be941ff054e543ff04ddd4c90d2aa15 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Primes/GoldbachProgressionArcBoundary.lean","GRWTSK/_verification/specifications/NumberTheory/Primes/GoldbachProgressionArcBoundary.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
