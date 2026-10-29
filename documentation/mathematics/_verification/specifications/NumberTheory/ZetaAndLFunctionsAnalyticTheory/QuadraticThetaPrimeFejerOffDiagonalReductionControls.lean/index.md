# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.Checks.QuadraticThetaPrimeFejerOffDiagonalReductionControls

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f81abe552fa5daec01d4e9683fc4c4a16cc6c546",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/Checks/QuadraticThetaPrimeFejerOffDiagonalReductionControls.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/QuadraticThetaPrimeFejerOffDiagonalReductionControls.lean/index.md) · [Full source](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/QuadraticThetaPrimeFejerOffDiagonalReductionControls.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f81abe552fa5daec01d4e9683fc4c4a16cc6c546`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/Checks/QuadraticThetaPrimeFejerOffDiagonalReductionControls.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/Checks/QuadraticThetaPrimeFejerOffDiagonalReductionControls.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimeFejerOffDiagonalReduction`](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/QuadraticThetaPrimeFejerOffDiagonalReduction.lean/index.md) — import line 3; pinned internal source present.
- `Mathlib.Tactic` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [exactFrontier](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/QuadraticThetaPrimeFejerOffDiagonalReductionControls.lean/declarations/exactfrontier.md) | 13 | `declaration-track:dc6af194e3ff16ea07008fb7eac4d5ae7d6e9186b6ecc55c945322a3de4e6d2b` |
| 2 | `theorem` | [diagonalTargetClosed](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/QuadraticThetaPrimeFejerOffDiagonalReductionControls.lean/declarations/diagonaltargetclosed.md) | 27 | `result-track:a90e20f221e47e2ef4424828496c87a2cfa49dfe298a6bfb4f93fe9776d64e26` |
| 3 | `theorem` | [signedOffDiagonalSuffices](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/QuadraticThetaPrimeFejerOffDiagonalReductionControls.lean/declarations/signedoffdiagonalsuffices.md) | 45 | `result-track:dcd94cfe861409779744849d840841e682d592b5bbe23d75f3313816262b632d` |
| 4 | `def` | [remainingArithmeticFrontier](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/QuadraticThetaPrimeFejerOffDiagonalReductionControls.lean/declarations/remainingarithmeticfrontier.md) | 50 | `declaration-track:55309e99f008cbd3d97bd35cd2b9962edae1fe68a8240b16892c017fc944c999` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6db9fcce04e8ff3d5bd57ee23580aebf1ec39ff7738d6144004bd251a1135800 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Zeta/Riemann/Checks/QuadraticThetaPrimeFejerOffDiagonalReductionControls.lean","GRWTSK/_verification/specifications/NumberTheory/Zeta/Riemann/Checks/QuadraticThetaPrimeFejerOffDiagonalReductionControls.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
