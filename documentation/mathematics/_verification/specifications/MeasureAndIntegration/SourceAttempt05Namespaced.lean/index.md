# Verification target: Source Attempt05 Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "abde6ddf92f3fe19b3fd6d529e4699a561969757",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceAttempt05/Variant166b7b7ec5acbabd1488dd422c613161aef6d7634e42771acc42645f1e13a0d2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/SourceAttempt05Namespaced.lean/index.md) · [Full source](../../../../MeasureAndIntegration/SourceAttempt05Namespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `abde6ddf92f3fe19b3fd6d529e4699a561969757`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/SourceAttempt05/Variant166b7b7ec5acbabd1488dd422c613161aef6d7634e42771acc42645f1e13a0d2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/SourceAttempt05/Variant166b7b7ec5acbabd1488dd422c613161aef6d7634e42771acc42645f1e13a0d2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Gaussian.GaussianIntegral` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [kernel](../../../../MeasureAndIntegration/SourceAttempt05Namespaced.lean/declarations/kernel.md) | 21 | `declaration-track:de6445eda2b1306951352b14e413f35af9f375e4e6cca0af5acfff3a7b10c040` |
| 2 | `def` | [secondMomentIntegrand](../../../../MeasureAndIntegration/SourceAttempt05Namespaced.lean/declarations/secondmomentintegrand.md) | 22 | `declaration-track:b011bb4dbbf1054515d0704874396b75c18b3ef62b53d5859c747298f11cdc00` |
| 3 | `def` | [majorant](../../../../MeasureAndIntegration/SourceAttempt05Namespaced.lean/declarations/majorant.md) | 23 | `declaration-track:235c92bbe896fb123c09e58704350c9ccf757f0db34e3de77ff78b93c1be5424` |
| 4 | `theorem` | [denominator_pos](../../../../MeasureAndIntegration/SourceAttempt05Namespaced.lean/declarations/denominator-pos.md) | 25 | `result-track:468e0d8725e7ab0280bb6d4a277bf77cf7fed9161f8550e6b6e1126eec9b93b8` |
| 5 | `theorem` | [kernel_nonneg](../../../../MeasureAndIntegration/SourceAttempt05Namespaced.lean/declarations/kernel-nonneg.md) | 30 | `result-track:a1cbba4c9f87a345b7501456e37c369aacf72d69b7414202934cf0dc5499180d` |
| 6 | `theorem` | [reciprocal_denominator_bound](../../../../MeasureAndIntegration/SourceAttempt05Namespaced.lean/declarations/reciprocal-denominator-bound.md) | 33 | `result-track:9cbb6d6b575aea84f67cd78fe3c7db2d269ee0686ef3d2ae994bc78caecf7486` |
| 7 | `theorem` | [secondMoment_bound](../../../../MeasureAndIntegration/SourceAttempt05Namespaced.lean/declarations/secondmoment-bound.md) | 45 | `result-track:6271d70f3936cdbe37d7aa8597c2b5bfe372e7688fb002e1589552327199534f` |
| 8 | `theorem` | [polynomial_exp_integrable](../../../../MeasureAndIntegration/SourceAttempt05Namespaced.lean/declarations/polynomial-exp-integrable.md) | 57 | `result-track:2b20648fae60ac353607a47e811e3e46f94c84565920525858d17792ecc50cf7` |
| 9 | `theorem` | [polynomial_exp_integral](../../../../MeasureAndIntegration/SourceAttempt05Namespaced.lean/declarations/polynomial-exp-integral.md) | 66 | `result-track:5a9bf9e573b53d79f45a9c1283797a84acd14acd74c2558db76f5ddd0a41e6e7` |
| 10 | `theorem` | [majorant_integrable](../../../../MeasureAndIntegration/SourceAttempt05Namespaced.lean/declarations/majorant-integrable.md) | 76 | `result-track:692b6dbaab781f4528fde6f702e4b3a8b94dfc21263d2a8afc8af2be50045743` |
| 11 | `theorem` | [majorant_integral](../../../../MeasureAndIntegration/SourceAttempt05Namespaced.lean/declarations/majorant-integral.md) | 83 | `result-track:0a6ee09f0305f3dab0fab81e97d82f8ddc33e5a0abcbf57c47f69e14657bae59` |
| 12 | `theorem` | [secondMoment_measurable](../../../../MeasureAndIntegration/SourceAttempt05Namespaced.lean/declarations/secondmoment-measurable.md) | 93 | `result-track:4fce143adcdcb58fd441f3bd1da14859f08461bd22d90889473cc83c9f05c589` |
| 13 | `theorem` | [secondMoment_integrable](../../../../MeasureAndIntegration/SourceAttempt05Namespaced.lean/declarations/secondmoment-integrable.md) | 97 | `result-track:f929bb023b7da2ab3077b19bfccee8e927cc80310a696151353fd02640154703` |
| 14 | `theorem` | [secondMoment_integral_nonneg](../../../../MeasureAndIntegration/SourceAttempt05Namespaced.lean/declarations/secondmoment-integral-nonneg.md) | 104 | `result-track:4130a1c0fe58a1e04b1fc5108a0f4a379218e2c8443ad2bf68f7ae8d77610147` |
| 15 | `theorem` | [secondMoment_integral_le](../../../../MeasureAndIntegration/SourceAttempt05Namespaced.lean/declarations/secondmoment-integral-le.md) | 109 | `result-track:57a5c12bf5b742820b624ef5a0281b85aed9151f1d37907b5e170f59926483a0` |
| 16 | `def` | [weightedDeficit](../../../../MeasureAndIntegration/SourceAttempt05Namespaced.lean/declarations/weighteddeficit.md) | 115 | `declaration-track:12108fabd28c97802e5f7613a02d484e58c1c77f87e25eec897138af89f10887` |
| 17 | `theorem` | [weightedDeficit_measurable](../../../../MeasureAndIntegration/SourceAttempt05Namespaced.lean/declarations/weighteddeficit-measurable.md) | 117 | `result-track:65198ee2945d5188924e7450af92cda1bdc02b931993d4f0197bd2167263780a` |
| 18 | `theorem` | [weightedDeficit_bound](../../../../MeasureAndIntegration/SourceAttempt05Namespaced.lean/declarations/weighteddeficit-bound.md) | 122 | `result-track:ca95cd17d67b1e07e55cf663baccf3e4b7de260c09312d9a3601f3fc605756b8` |
| 19 | `theorem` | [weightedDeficit_integrable](../../../../MeasureAndIntegration/SourceAttempt05Namespaced.lean/declarations/weighteddeficit-integrable.md) | 130 | `result-track:c6c4cf5ce767a831ed0c5ac404e6d1c25c09bedd020da99d027d9d6fdd189dbc` |
| 20 | `theorem` | [weightedDeficit_integral_budget](../../../../MeasureAndIntegration/SourceAttempt05Namespaced.lean/declarations/weighteddeficit-integral-budget.md) | 140 | `result-track:3686514074c859c56f69b342c76f070cc12a8ec56d22e7c95c7d63bc4c962ecd` |
| 21 | `theorem` | [gamma_budget_from_identity](../../../../MeasureAndIntegration/SourceAttempt05Namespaced.lean/declarations/gamma-budget-from-identity.md) | 160 | `result-track:d90cfaf94402bfe57a2dcb7dba76fd91222eb49e833cae6a08a857e9a6c974f6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=89346061e6ab35db635115a806751363579399a99feef02916604465a275c590 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/SourceAttempt05/Variant166b7b7ec5acbabd1488dd422c613161aef6d7634e42771acc42645f1e13a0d2.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/SourceAttempt05/Variant166b7b7ec5acbabd1488dd422c613161aef6d7634e42771acc42645f1e13a0d2.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
