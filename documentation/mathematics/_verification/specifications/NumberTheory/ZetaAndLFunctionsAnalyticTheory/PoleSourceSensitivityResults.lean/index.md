# Verification target: Pole Source Sensitivity Results

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "484576590b124a5e7e22ea5c1c4af2cb3a97e415",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PoleSourceSensitivity/Variant9d2975379d83224038d4aebf7c952ec222ba066c1e10350b48a1c0128b83192f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/PoleSourceSensitivityResults.lean/index.md) · [Full source](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/PoleSourceSensitivityResults.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `484576590b124a5e7e22ea5c1c4af2cb3a97e415`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PoleSourceSensitivity/Variant9d2975379d83224038d4aebf7c952ec222ba066c1e10350b48a1c0128b83192f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PoleSourceSensitivity/Variant9d2975379d83224038d4aebf7c952ec222ba066c1e10350b48a1c0128b83192f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceLaplaceEndpoint` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [leadingCoefficient](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/PoleSourceSensitivityResults.lean/declarations/leadingcoefficient.md) | 22 | `declaration-track:b58429f9da688c5096c2e99bb5b4f8911d12dac454b7bd96ead0b7d6b8aee941` |
| 2 | `theorem` | [leading_coefficient_ne_zero](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/PoleSourceSensitivityResults.lean/declarations/leading-coefficient-ne-zero.md) | 26 | `result-track:1469391d3538cf440d6a2496778d8f9d3802c291b0708db8bc3d59ed676c06ea` |
| 3 | `theorem` | [source_laplace_scaled_eventually_ge_half](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/PoleSourceSensitivityResults.lean/declarations/source-laplace-scaled-eventually-ge-half.md) | 33 | `result-track:1297a3426085ae4a4445dbcbd3f2da4ab97a95eb5ad2c28b97ab6416d6bb16e3` |
| 4 | `theorem` | [source_laplace_exponential_lower_bound](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/PoleSourceSensitivityResults.lean/declarations/source-laplace-exponential-lower-bound.md) | 48 | `result-track:9d2d8a5555fc0a0ec4de1ce179d5800ddd437e8bb7b7761e62b808fe31294526` |
| 5 | `theorem` | [source_laplace_even](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/PoleSourceSensitivityResults.lean/declarations/source-laplace-even.md) | 74 | `result-track:b1e672f1c799fd8b676d9efc55a9fe29da1fe8d6ec5b302eb321fcd09431d2e1` |
| 6 | `theorem` | [source_laplace_left_exponential_lower_bound](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/PoleSourceSensitivityResults.lean/declarations/source-laplace-left-exponential-lower-bound.md) | 81 | `result-track:41a0be03cc053cf130d0ae8bc3419fc3b38a33fa8b9507daf2b5fc7b56bf260d` |
| 7 | `theorem` | [source_laplace_off_axis_exponential_lower_bound](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/PoleSourceSensitivityResults.lean/declarations/source-laplace-off-axis-exponential-lower-bound.md) | 97 | `result-track:cb566c95c2ead5f353996cbc1bea9e31d861ce1ffa726289aeb7e41763ab8b36` |
| 8 | `theorem` | [right_pole_has_no_positive_exponential_lower_bound](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/PoleSourceSensitivityResults.lean/declarations/right-pole-has-no-positive-exponential-lower-bound.md) | 112 | `result-track:2e431ec668abb9cbb45b48bc8432a37966843a8459ef89cd4e8db70a8589b1a0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b14134462fccd1e976af2913089c0345b7cd59feda33d76e986b6c283d572320 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PoleSourceSensitivity/Variant9d2975379d83224038d4aebf7c952ec222ba066c1e10350b48a1c0128b83192f.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PoleSourceSensitivity/Variant9d2975379d83224038d4aebf7c952ec222ba066c1e10350b48a1c0128b83192f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
