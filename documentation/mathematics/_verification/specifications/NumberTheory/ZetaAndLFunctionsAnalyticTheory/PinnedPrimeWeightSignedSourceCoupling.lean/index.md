# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.PinnedPrimeWeightSignedSourceCoupling

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9102da31aa4c46d069e457878bac7e738ad6f353",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/PinnedPrimeWeightSignedSourceCoupling.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/PinnedPrimeWeightSignedSourceCoupling.lean/index.md) · [Full source](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/PinnedPrimeWeightSignedSourceCoupling.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9102da31aa4c46d069e457878bac7e738ad6f353`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/PinnedPrimeWeightSignedSourceCoupling.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/PinnedPrimeWeightSignedSourceCoupling.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.PinnedPrimeWeightEnvelopeCollapse`](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/PinnedPrimeWeightEnvelopeCollapse.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.Tactic` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [PinnedPrimeWeightSignedSourceRule](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/PinnedPrimeWeightSignedSourceCoupling.lean/declarations/pinnedprimeweightsignedsourcerule.md) | 44 | `declaration-track:f9e9442f0218a24d76af74033cac88830dc7a9b37a12d986362b17e0c4554ebc` |
| 2 | `theorem` | [target_le_response_add_residual](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/PinnedPrimeWeightSignedSourceCoupling.lean/declarations/target-le-response-add-residual.md) | 60 | `result-track:76f846f7611b5f2a7093c40f146b4ce5f15b2ea12b496b2413db51a28ed50cd4` |
| 3 | `theorem` | [pointwise_to_amplitudeRequirement](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/PinnedPrimeWeightSignedSourceCoupling.lean/declarations/pointwise-to-amplituderequirement.md) | 86 | `result-track:f324dd79d9e40390e7e1f0789d123b1ad514d13867a0b8602bc93f076911249a` |
| 4 | `theorem` | [pointwise_to_bertrandRatioRequirement](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/PinnedPrimeWeightSignedSourceCoupling.lean/declarations/pointwise-to-bertrandratiorequirement.md) | 117 | `result-track:785197075f02b34d14dabf5b6a9db435da8ea33b17cd528b04995b3b5a9a2519` |
| 5 | `def` | [PinnedPrimeWeightSignedSourceCouplingCriterionAt](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/PinnedPrimeWeightSignedSourceCoupling.lean/declarations/pinnedprimeweightsignedsourcecouplingcriterionat.md) | 141 | `declaration-track:6d32eb9f94eef99ca3efcd44513af7aaa58877613d3d4375712e5f16a0b66355` |
| 6 | `def` | [PinnedPrimeWeightFixedSignedSourceCouplingCriterionAt](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/PinnedPrimeWeightSignedSourceCoupling.lean/declarations/pinnedprimeweightfixedsignedsourcecouplingcriterionat.md) | 158 | `declaration-track:52287cc1a7763f21f71aaff6ab9895489789c30116c56eecf682a2f2dfb0a583` |
| 7 | `theorem` | [pinnedPrimeWeightSignedSourceCouplingCriterion_to_bertrandRatioCriterion](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/PinnedPrimeWeightSignedSourceCoupling.lean/declarations/pinnedprimeweightsignedsourcecouplingcriterion-to-bertrandratiocriterion.md) | 175 | `result-track:e69c10e8c30341bd41db8bb5d90060c7d03f810b659afaf355d614aafa76c721` |
| 8 | `theorem` | [pinnedPrimeWeightFixedSignedSourceCouplingCriterion_to_fixedBertrandRatioCriterion](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/PinnedPrimeWeightSignedSourceCoupling.lean/declarations/pinnedprimeweightfixedsignedsourcecouplingcriterion-to-fixedbertrandrati.md) | 192 | `result-track:8b53c981f50abb10edfa8140193a8d508c9066e81306311500a9f12a052ce336` |
| 9 | `theorem` | [pinnedPrimeWeightFixedSignedSourceCouplingCriterion_to_recurrence](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/PinnedPrimeWeightSignedSourceCoupling.lean/declarations/pinnedprimeweightfixedsignedsourcecouplingcriterion-to-recurrence.md) | 212 | `result-track:b24a4eb8094bab0e3d180142adc576f388afd848e7e49dd43e4df371ca81e06a` |
| 10 | `theorem` | [pinnedPrimeWeightFixedSignedSourceCouplingCriterion_to_descent](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/PinnedPrimeWeightSignedSourceCoupling.lean/declarations/pinnedprimeweightfixedsignedsourcecouplingcriterion-to-descent.md) | 225 | `result-track:293dd0d55d4caaa92a4d9f6fa6d75a10680fe621b18d3f4f2666aac41527a9ed` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2a48d1f3edb93a8ec8434d9c724458d0eb681f93ef6c4f59beefa5e302dc72c6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Zeta/Riemann/PinnedPrimeWeightSignedSourceCoupling.lean","GRWTSK/_verification/specifications/NumberTheory/Zeta/Riemann/PinnedPrimeWeightSignedSourceCoupling.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
