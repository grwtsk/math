# Verification target: Family Hyps

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e8809a5400e3378f2b0ff197da0aa74786efc02a",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FamilyHyps/Variantccc879617a22c17f0afc12da314ff04e9ca3723eb88041588d672dfa40347622.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/FamilyHyps.lean/index.md) · [Full source](../../../../MeasureAndIntegration/FamilyHyps.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e8809a5400e3378f2b0ff197da0aa74786efc02a`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FamilyHyps/Variantccc879617a22c17f0afc12da314ff04e9ca3723eb88041588d672dfa40347622.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FamilyHyps/Variantccc879617a22c17f0afc12da314ff04e9ca3723eb88041588d672dfa40347622.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.XiPrime.ExplicitFormula` — import line 22; external provider; requires a separately pinned dependency.
- `Zeta23.XiPrime.Assembly` — import line 23; external provider; requires a separately pinned dependency.
- `Zeta23.XiPrime.QuarticWindow.Params` — import line 24; external provider; requires a separately pinned dependency.
- `Zeta23.Taper.GevreyRamps` — import line 25; external provider; requires a separately pinned dependency.
- `Zeta23.Taper.Params` — import line 26; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [iteratedDeriv_eq_zero](../../../../MeasureAndIntegration/FamilyHyps.lean/declarations/iteratedderiv-eq-zero.md) | 42 | `result-track:8d19943b7ff4944304a5171300fd6fa737a956150028436c7ff4ea3ea215aec5` |
| 2 | `lemma` | [exists_deriv_bound](../../../../MeasureAndIntegration/FamilyHyps.lean/declarations/exists-deriv-bound.md) | 70 | `result-track:456d7be3491239e26b655af0af9de344af70e7164cdaf1fba5b3db5aca693b2b` |
| 3 | `lemma` | [iteratedDeriv_fP](../../../../MeasureAndIntegration/FamilyHyps.lean/declarations/iteratedderiv-fp.md) | 88 | `result-track:4bfdd49954f76158e30ac1b0c343e330daf9f65faf1dc2017e4284b87f0923b0` |
| 4 | `lemma` | [iteratedDeriv_fM](../../../../MeasureAndIntegration/FamilyHyps.lean/declarations/iteratedderiv-fm.md) | 96 | `result-track:b415e2297013c2cfaedf9ffda5816699b1aec16d22d4b0b5fea0a8a19a1eb0bb` |
| 5 | `lemma` | [abs_iteratedDeriv_fP_le](../../../../MeasureAndIntegration/FamilyHyps.lean/declarations/abs-iteratedderiv-fp-le.md) | 105 | `result-track:6ba0669b9a39604031c1f186bb643752cdf33d3c0169db93f75a5ad3b857ece4` |
| 6 | `lemma` | [abs_iteratedDeriv_fM_le](../../../../MeasureAndIntegration/FamilyHyps.lean/declarations/abs-iteratedderiv-fm-le.md) | 123 | `result-track:f090eac7a06889875dc95a18157d4795152d7584fba032c1a39824d871b7d978` |
| 7 | `lemma` | [iteratedDeriv_fP_mul_fM_eq_zero](../../../../MeasureAndIntegration/FamilyHyps.lean/declarations/iteratedderiv-fp-mul-fm-eq-zero.md) | 141 | `result-track:6c8ea61f16ebdaab3d5f7ef5356e33e2306f74fede262750883fdc2ba9c5f44b` |
| 8 | `lemma` | [fP_contDiffAt](../../../../MeasureAndIntegration/FamilyHyps.lean/declarations/fp-contdiffat.md) | 158 | `result-track:671e5421950ec4d057ac26831df19a7cd0859326104a7c157e42ff63779e6e4e` |
| 9 | `lemma` | [fM_contDiffAt](../../../../MeasureAndIntegration/FamilyHyps.lean/declarations/fm-contdiffat.md) | 162 | `result-track:17bcd5b32e72dc0c33e4dfe4894d7c5b1fc6f82efbd1085c6c0fabb93112b437` |
| 10 | `lemma` | [abs_iteratedDeriv_phi_le](../../../../MeasureAndIntegration/FamilyHyps.lean/declarations/abs-iteratedderiv-phi-le.md) | 167 | `result-track:6e654d28837d684758459237f57db409f185dbd9f192ef25320baa8b66b044bb` |
| 11 | `lemma` | [abs_iteratedDeriv_phi_le_indicator](../../../../MeasureAndIntegration/FamilyHyps.lean/declarations/abs-iteratedderiv-phi-le-indicator.md) | 202 | `result-track:6044597cbaab026bb6aa562f33a9604ebe00d9d0272433a8c3cd9387ed51c5ab` |
| 12 | `lemma` | [integral_indicator_Ioo_const](../../../../MeasureAndIntegration/FamilyHyps.lean/declarations/integral-indicator-ioo-const.md) | 211 | `result-track:300d1cac4c635a903a3400535027939f75b6425d30083304c43213303d2d461f` |
| 13 | `theorem` | [integral_abs_iteratedDeriv_phi_le](../../../../MeasureAndIntegration/FamilyHyps.lean/declarations/integral-abs-iteratedderiv-phi-le.md) | 218 | `result-track:a1db66ee3d9ae3cc2598625f6928420c612448ef71a11d6caf8c9347b94e2f77` |
| 14 | `lemma` | [hasCompactSupport_iteratedDeriv'](../../../../MeasureAndIntegration/FamilyHyps.lean/declarations/hascompactsupport-iteratedderiv.md) | 245 | `result-track:393a92d4ed26cdf487aa3af544f0ecc1da3ae9245589d8d6967717ff192ede65` |
| 15 | `theorem` | [familyHyps_flat](../../../../MeasureAndIntegration/FamilyHyps.lean/declarations/familyhyps-flat.md) | 255 | `result-track:9ef663b816479f6b989adeaeaaab1ed425bc80cc73f5227358564e2dbf7123c8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8a9d40167d8ff3419fb3cbbb6e0471320031f6fa1094c4c1067ad1ea84f1e87b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FamilyHyps/Variantccc879617a22c17f0afc12da314ff04e9ca3723eb88041588d672dfa40347622.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FamilyHyps/Variantccc879617a22c17f0afc12da314ff04e9ca3723eb88041588d672dfa40347622.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
