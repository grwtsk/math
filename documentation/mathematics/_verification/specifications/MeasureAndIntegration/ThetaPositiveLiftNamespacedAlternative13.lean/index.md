# Verification target: Theta Positive Lift Namespaced Alternative13

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0ffcc4206d0aa16f35ac094970578554f7e32b23",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variantd537c73acafd79b4ff35b94af2fba6c9aec5b0980e197a50e0eb6b87ea420899.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/ThetaPositiveLiftNamespacedAlternative13.lean/index.md) · [Full source](../../../../MeasureAndIntegration/ThetaPositiveLiftNamespacedAlternative13.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0ffcc4206d0aa16f35ac094970578554f7e32b23`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variantd537c73acafd79b4ff35b94af2fba6c9aec5b0980e197a50e0eb6b87ea420899.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variantd537c73acafd79b4ff35b94af2fba6c9aec5b0980e197a50e0eb6b87ea420899.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.ThetaTailCalculus` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.IteratedDeriv.Lemmas` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [sourcePowerTail](../../../../MeasureAndIntegration/ThetaPositiveLiftNamespacedAlternative13.lean/declarations/sourcepowertail.md) | 34 | `declaration-track:afefa50138cd0bd5f491407e04953bb797d9e54ad5be6ac6543f1d35a85c8ba0` |
| 2 | `theorem` | [source_power_integrable](../../../../MeasureAndIntegration/ThetaPositiveLiftNamespacedAlternative13.lean/declarations/source-power-integrable.md) | 37 | `result-track:059944b2a611ad60cfb6817111ccfbb52f1be4c571f001727c9ba615ad426c5b` |
| 3 | `theorem` | [sourcePowerTail_eq_sub](../../../../MeasureAndIntegration/ThetaPositiveLiftNamespacedAlternative13.lean/declarations/sourcepowertail-eq-sub.md) | 52 | `result-track:febc2d82dbfe1e591a5d69e20386cdf4084c62b03bd95af9fe0e13dfa0777c0f` |
| 4 | `theorem` | [hasDerivAt_sourcePowerTail](../../../../MeasureAndIntegration/ThetaPositiveLiftNamespacedAlternative13.lean/declarations/hasderivat-sourcepowertail.md) | 60 | `result-track:e1249f6301ec45bb18db16c8cfd54db375e45ef0945f2ae400385a92082703aa` |
| 5 | `def` | [tailBinomialCoeff](../../../../MeasureAndIntegration/ThetaPositiveLiftNamespacedAlternative13.lean/declarations/tailbinomialcoeff.md) | 70 | `declaration-track:7192e78edef17237add5d3537f0bb9d0a7881e52fbb7db04138bce8f5872f722` |
| 6 | `theorem` | [tailBinomialCoeff_sum](../../../../MeasureAndIntegration/ThetaPositiveLiftNamespacedAlternative13.lean/declarations/tailbinomialcoeff-sum.md) | 73 | `result-track:38ea1ebb44e2b1f1b7f3cfa9a1bab198c7445d630d8fe7533f509bdd5b81e6b0` |
| 7 | `theorem` | [hasDerivAt_tailBinomialCoeff](../../../../MeasureAndIntegration/ThetaPositiveLiftNamespacedAlternative13.lean/declarations/hasderivat-tailbinomialcoeff.md) | 81 | `result-track:2be167d24e6c2fce9f58f328507ee7e561ca914f8b4b3410fc76e2683f5fa5ea` |
| 8 | `theorem` | [tailBinomialCoeff_deriv_sum](../../../../MeasureAndIntegration/ThetaPositiveLiftNamespacedAlternative13.lean/declarations/tailbinomialcoeff-deriv-sum.md) | 87 | `result-track:5ea39a3357be61a3a575a70330d68851d4f87bac9f6f24d12889aab3e60c2cda` |
| 9 | `theorem` | [integral_source_coeff_sum](../../../../MeasureAndIntegration/ThetaPositiveLiftNamespacedAlternative13.lean/declarations/integral-source-coeff-sum.md) | 104 | `result-track:14b0e3cf751f20a8d6b406a0aa0d0444c4674c439e06faa6922be11d56586fe8` |
| 10 | `theorem` | [thetaTail_eq_binomial](../../../../MeasureAndIntegration/ThetaPositiveLiftNamespacedAlternative13.lean/declarations/thetatail-eq-binomial.md) | 115 | `result-track:672932f977dc8d94dcbbf225c44ff1d78d41dfc92415cd2145b5209f37a5b9d8` |
| 11 | `theorem` | [hasDerivAt_thetaTail_succ_succ](../../../../MeasureAndIntegration/ThetaPositiveLiftNamespacedAlternative13.lean/declarations/hasderivat-thetatail-succ-succ.md) | 124 | `result-track:fbea6547c85d73b41948aa5997fd8adf88e6418fb3fcfcb2cad340061464a3c7` |
| 12 | `theorem` | [hasDerivAt_thetaTail_succ](../../../../MeasureAndIntegration/ThetaPositiveLiftNamespacedAlternative13.lean/declarations/hasderivat-thetatail-succ.md) | 160 | `result-track:f526dbedd2bc8b81cc96c4264f7f5a4b3ccc7245cfa37fa57fb6ebb0607388d6` |
| 13 | `theorem` | [deriv_thetaTail_succ](../../../../MeasureAndIntegration/ThetaPositiveLiftNamespacedAlternative13.lean/declarations/deriv-thetatail-succ.md) | 167 | `result-track:7e168aece3c13b672cb8f2908b214f790f6deb10d4499cd3211c64b70ddcf292` |
| 14 | `theorem` | [iteratedDeriv_thetaTail_add](../../../../MeasureAndIntegration/ThetaPositiveLiftNamespacedAlternative13.lean/declarations/iteratedderiv-thetatail-add.md) | 173 | `result-track:686b77b5fe98f21b999b35373923cae8ac5c0bff0937890f3379d368b713c241` |
| 15 | `theorem` | [iteratedDeriv_thetaTail](../../../../MeasureAndIntegration/ThetaPositiveLiftNamespacedAlternative13.lean/declarations/iteratedderiv-thetatail.md) | 187 | `result-track:f42c53003f645433c90f51288c4adc610c61350eaa50ec05f77601ae9515276e` |
| 16 | `theorem` | [continuous_thetaTail](../../../../MeasureAndIntegration/ThetaPositiveLiftNamespacedAlternative13.lean/declarations/continuous-thetatail.md) | 193 | `result-track:9ff6d56d5a2d752c16640648791bad486da2af0a221d930557cdbfc45e6a8792` |
| 17 | `theorem` | [contDiff_thetaTail_order](../../../../MeasureAndIntegration/ThetaPositiveLiftNamespacedAlternative13.lean/declarations/contdiff-thetatail-order.md) | 200 | `result-track:8b9a9f93ac20ccd93819056fb448d3cf50d135f897cfcb765c3f29dc7938c7a5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7cc8c3c2a988d0c4943e985e4e0da1b24e7a9935285586c459a16791f9718356 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variantd537c73acafd79b4ff35b94af2fba6c9aec5b0980e197a50e0eb6b87ea420899.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variantd537c73acafd79b4ff35b94af2fba6c9aec5b0980e197a50e0eb6b87ea420899.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
