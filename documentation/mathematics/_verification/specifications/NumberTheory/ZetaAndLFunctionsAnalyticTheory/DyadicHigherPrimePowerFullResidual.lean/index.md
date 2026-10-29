# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.DyadicHigherPrimePowerFullResidual

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "66734eefb2de5f9b09ef807c1ad06194d6bd7b15",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/DyadicHigherPrimePowerFullResidual.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/DyadicHigherPrimePowerFullResidual.lean/index.md) · [Full source](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/DyadicHigherPrimePowerFullResidual.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `66734eefb2de5f9b09ef807c1ad06194d6bd7b15`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/DyadicHigherPrimePowerFullResidual.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/DyadicHigherPrimePowerFullResidual.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.DyadicHigherPrimePowerFourierEnergy`](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/DyadicHigherPrimePowerFourierEnergy.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.Tactic` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [higherPrimePowerMass0Contribution](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/DyadicHigherPrimePowerFullResidual.lean/declarations/higherprimepowermass0contribution.md) | 40 | `declaration-track:daf260727489f7302c6018e5e3c9ca3c750bb8330d26ef69eb8c54648bedbd02` |
| 2 | `def` | [higherPrimePowerMass1Contribution](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/DyadicHigherPrimePowerFullResidual.lean/declarations/higherprimepowermass1contribution.md) | 44 | `declaration-track:eb55339d01f892ff624020c9c436548a83315524904035c8347d7430abcf8756` |
| 3 | `theorem` | [higherPrimePowerMass0Contribution_nonnegative](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/DyadicHigherPrimePowerFullResidual.lean/declarations/higherprimepowermass0contribution-nonnegative.md) | 48 | `result-track:abda8b44f1186f5b1656ea09428ed9742cc362661a71aa9e8b260a16c4e25b4e` |
| 4 | `theorem` | [higherPrimePowerMass1Contribution_nonnegative](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/DyadicHigherPrimePowerFullResidual.lean/declarations/higherprimepowermass1contribution-nonnegative.md) | 53 | `result-track:62929226c1027f7b845cb573704a0f99d328e32a57300ef79cb72b06b2e1ba15` |
| 5 | `theorem` | [higherPrimePowerMass1Contribution_le_mass](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/DyadicHigherPrimePowerFullResidual.lean/declarations/higherprimepowermass1contribution-le-mass.md) | 62 | `result-track:fe76834bc2a0c27100cfb40db0d36bdd6ef9f002a64ce09ac30e995b78c971eb` |
| 6 | `def` | [higherPrimePowerFullWitnessEnergy](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/DyadicHigherPrimePowerFullResidual.lean/declarations/higherprimepowerfullwitnessenergy.md) | 77 | `declaration-track:de51618333f4f37d797c2817ac60d6416c4ac0c1d55a41f303e8b28d08dfdbc7` |
| 7 | `theorem` | [higherPrimePowerFullWitnessEnergy_nonnegative](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/DyadicHigherPrimePowerFullResidual.lean/declarations/higherprimepowerfullwitnessenergy-nonnegative.md) | 82 | `result-track:0a4bec054bc0cc5a3ae19de88d54c7b41ed5920adeb64991fbff7a973d9d0729` |
| 8 | `theorem` | [higherPrimePowerFullWitnessEnergy_le_mass_sq](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/DyadicHigherPrimePowerFullResidual.lean/declarations/higherprimepowerfullwitnessenergy-le-mass-sq.md) | 95 | `result-track:6c3aa5f039cb8eb076413ef1843fd7de07b5869cc2d5c56de3bd2a5059eedeb6` |
| 9 | `theorem` | [sqrt_two_mul_nat_div_sq](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/DyadicHigherPrimePowerFullResidual.lean/declarations/sqrt-two-mul-nat-div-sq.md) | 117 | `result-track:d706a2d14419b0594555b5eef08abded2394675056ee3d17b5ee3075d3491c97` |
| 10 | `theorem` | [higherPrimePowerFullWitnessEnergy_inv_bound](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/DyadicHigherPrimePowerFullResidual.lean/declarations/higherprimepowerfullwitnessenergy-inv-bound.md) | 128 | `result-track:d5349306748dd8abbf7c5697190a3f437e113019fd11a5c44304c72dd4d65fe6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0bbe2a379e8606eb82ea7fd76d80f51818cbf1a30719fc414e369ca3eb263120 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Zeta/Riemann/DyadicHigherPrimePowerFullResidual.lean","GRWTSK/_verification/specifications/NumberTheory/Zeta/Riemann/DyadicHigherPrimePowerFullResidual.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
