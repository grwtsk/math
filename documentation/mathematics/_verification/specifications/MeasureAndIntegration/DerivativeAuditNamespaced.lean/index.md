# Verification target: Derivative Audit Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "85ad922c7a85164bd02ce37a3095840fb1b9fcf8",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Aac481cacd86c4ee16cc8d7b8395bc59f3e53e7366759b178f5045a03d27dd9cDerivativeAudit/Variant016fefeee5a158176e2bd6600df61a0733c89ceabc360647ad224f2f6a3d1413.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/DerivativeAuditNamespaced.lean/index.md) · [Full source](../../../../MeasureAndIntegration/DerivativeAuditNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `85ad922c7a85164bd02ce37a3095840fb1b9fcf8`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Aac481cacd86c4ee16cc8d7b8395bc59f3e53e7366759b178f5045a03d27dd9cDerivativeAudit/Variant016fefeee5a158176e2bd6600df61a0733c89ceabc360647ad224f2f6a3d1413.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Aac481cacd86c4ee16cc8d7b8395bc59f3e53e7366759b178f5045a03d27dd9cDerivativeAudit/Variant016fefeee5a158176e2bd6600df61a0733c89ceabc360647ad224f2f6a3d1413.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.ThetaTailTransport` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [sourcePowerTail](../../../../MeasureAndIntegration/DerivativeAuditNamespaced.lean/declarations/sourcepowertail.md) | 16 | `declaration-track:a0cc474870f05c8824b59045ff37cd78a17d3c3527aa2927f02635eeda625625` |
| 2 | `theorem` | [source_power_integrable](../../../../MeasureAndIntegration/DerivativeAuditNamespaced.lean/declarations/source-power-integrable.md) | 19 | `result-track:ce37f779077ecdc10dd2d6b7dc83ac15ae37162f53fe15b0c59f454a271e9710` |
| 3 | `theorem` | [sourcePowerTail_eq_sub](../../../../MeasureAndIntegration/DerivativeAuditNamespaced.lean/declarations/sourcepowertail-eq-sub.md) | 33 | `result-track:a244d771d1598077f87c3bea233663ec469a5c0bbf1419a0e741effb34a622e1` |
| 4 | `theorem` | [hasDerivAt_sourcePowerTail](../../../../MeasureAndIntegration/DerivativeAuditNamespaced.lean/declarations/hasderivat-sourcepowertail.md) | 41 | `result-track:97a7078876b782f454a249e51922a8c04db7ce128d3b55fce78d7a91d177b205` |
| 5 | `theorem` | [thetaTail_two_eq](../../../../MeasureAndIntegration/DerivativeAuditNamespaced.lean/declarations/thetatail-two-eq.md) | 50 | `result-track:2335a83ef7d4fa4f448db8a1c9744babef960005a3989e7680d37c413ee81e4a` |
| 6 | `theorem` | [hasDerivAt_thetaTail_two](../../../../MeasureAndIntegration/DerivativeAuditNamespaced.lean/declarations/hasderivat-thetatail-two.md) | 60 | `result-track:0eebac962ef7aa4a1338cdef3bca1f172c86031e08efc526eb84cf43cb77bc62` |
| 7 | `def` | [tailBinomialCoeff](../../../../MeasureAndIntegration/DerivativeAuditNamespaced.lean/declarations/tailbinomialcoeff.md) | 71 | `declaration-track:f5006a67e53433a620f7634e5c95ac8d2be60a492e063356623581fae3dcd985` |
| 8 | `theorem` | [tailBinomialCoeff_sum](../../../../MeasureAndIntegration/DerivativeAuditNamespaced.lean/declarations/tailbinomialcoeff-sum.md) | 74 | `result-track:2226ab1e0605c4e5f0ef2687996089252a06fbc88623abb51529eedbf504fe1a` |
| 9 | `theorem` | [hasDerivAt_tailBinomialCoeff](../../../../MeasureAndIntegration/DerivativeAuditNamespaced.lean/declarations/hasderivat-tailbinomialcoeff.md) | 82 | `result-track:25b6169c255b7876a44cb804568b4a0fdb13ff5405d7814f47e403dadda6b983` |
| 10 | `theorem` | [tailBinomialCoeff_deriv_sum](../../../../MeasureAndIntegration/DerivativeAuditNamespaced.lean/declarations/tailbinomialcoeff-deriv-sum.md) | 88 | `result-track:cc0a141ea8d6c71bb4e3c7d6fcda2a896e4ed03147b1106b30250fbf684fc6c9` |
| 11 | `theorem` | [integral_source_coeff_sum](../../../../MeasureAndIntegration/DerivativeAuditNamespaced.lean/declarations/integral-source-coeff-sum.md) | 105 | `result-track:7846e8f55093e8953ed8c7878763dddb5e7ed431e5154d4bd0d888b185f7a449` |
| 12 | `theorem` | [thetaTail_eq_binomial](../../../../MeasureAndIntegration/DerivativeAuditNamespaced.lean/declarations/thetatail-eq-binomial.md) | 116 | `result-track:3a063b90287d9d4acc16a0b8f8145334bbfd84d75d999d57fb4011a998f10157` |
| 13 | `theorem` | [hasDerivAt_thetaTail_succ_succ](../../../../MeasureAndIntegration/DerivativeAuditNamespaced.lean/declarations/hasderivat-thetatail-succ-succ.md) | 125 | `result-track:f0454955d43c148977c079ba994fb4e05fc5b25268dca121cbe9347871f12d11` |
| 14 | `theorem` | [hasDerivAt_thetaTail_succ](../../../../MeasureAndIntegration/DerivativeAuditNamespaced.lean/declarations/hasderivat-thetatail-succ.md) | 161 | `result-track:407225bd82b99faf604e4e7558b091d4f97fc3c7f0b395bebb62d9262a3f05d4` |
| 15 | `theorem` | [deriv_thetaTail_succ](../../../../MeasureAndIntegration/DerivativeAuditNamespaced.lean/declarations/deriv-thetatail-succ.md) | 167 | `result-track:4a08815f0c81c5bd6fdf31188ad6d474a58db7ee6926dac505b89ba0243fe0a1` |
| 16 | `theorem` | [iteratedDeriv_thetaTail_add](../../../../MeasureAndIntegration/DerivativeAuditNamespaced.lean/declarations/iteratedderiv-thetatail-add.md) | 172 | `result-track:acbc01f1354d6a5401371b6d9009682edc82b82f4d4662661edc636ee0b62f1d` |
| 17 | `theorem` | [iteratedDeriv_thetaTail](../../../../MeasureAndIntegration/DerivativeAuditNamespaced.lean/declarations/iteratedderiv-thetatail.md) | 185 | `result-track:f01264347833e71a4ebdb68dd1971dcb23f5cabdd30d4ac34c2cc676262fdb01` |
| 18 | `theorem` | [continuous_thetaTail](../../../../MeasureAndIntegration/DerivativeAuditNamespaced.lean/declarations/continuous-thetatail.md) | 190 | `result-track:a703e473b6c64dded025a2b57bfcfa9cba6bcff768f60ea66a1dd0c76412718e` |
| 19 | `theorem` | [contDiff_thetaTail_order](../../../../MeasureAndIntegration/DerivativeAuditNamespaced.lean/declarations/contdiff-thetatail-order.md) | 197 | `result-track:1acbf80ae1736123ada0bd945c979120ba3a6316f2cfaa7bd618e0b83ec9800f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ce71b3e6e231caf7a91c664aeee9a5dd3ef5b2b8bdf7e23c22c5ac0c044475d5 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Aac481cacd86c4ee16cc8d7b8395bc59f3e53e7366759b178f5045a03d27dd9cDerivativeAudit/Variant016fefeee5a158176e2bd6600df61a0733c89ceabc360647ad224f2f6a3d1413.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Aac481cacd86c4ee16cc8d7b8395bc59f3e53e7366759b178f5045a03d27dd9cDerivativeAudit/Variant016fefeee5a158176e2bd6600df61a0733c89ceabc360647ad224f2f6a3d1413.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
