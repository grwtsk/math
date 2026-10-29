# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.Checks.PinnedPrimeWeightFeatureNormControls

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "19ed0372fe8c62d29aa36e7e016d0433fccccb0d",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/Checks/PinnedPrimeWeightFeatureNormControls.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/PinnedPrimeWeightFeatureNormControls.lean/index.md) · [Full source](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/PinnedPrimeWeightFeatureNormControls.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `19ed0372fe8c62d29aa36e7e016d0433fccccb0d`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/Checks/PinnedPrimeWeightFeatureNormControls.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/Checks/PinnedPrimeWeightFeatureNormControls.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.ClauseIndexedPinnedPrimeWeight`](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ClauseIndexedPinnedPrimeWeight.lean/index.md) — import line 3; pinned internal source present.
- `Mathlib.Tactic` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [positivePolarity](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/PinnedPrimeWeightFeatureNormControls.lean/declarations/positivepolarity.md) | 16 | `declaration-track:b3578f5c0fd219f311b4d96453bee8aab4e8eaf6df381134d562b52b7fc1c7e6` |
| 2 | `theorem` | [dyadic_prime_coefficient_uniform_bound](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/PinnedPrimeWeightFeatureNormControls.lean/declarations/dyadic-prime-coefficient-uniform-bound.md) | 21 | `result-track:78d89e3b4ec9e95fce3174d02d80044188bc584525bc53193e2512307aa977a6` |
| 3 | `theorem` | [concrete_three_clause_pinned_criterion](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/PinnedPrimeWeightFeatureNormControls.lean/declarations/concrete-three-clause-pinned-criterion.md) | 28 | `result-track:b841fcf76c78990f224baecf0554cee1e030318eaf1b4165db83dfee2858e5d5` |
| 4 | `theorem` | [concrete_two_clause_pinned_criterion](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/PinnedPrimeWeightFeatureNormControls.lean/declarations/concrete-two-clause-pinned-criterion.md) | 35 | `result-track:dfbc4dcfe3db10190c60013599e7b788b12e8450e08b5978d8ada53a18d57386` |
| 5 | `def` | [zeroPinnedPrimeWeightStage](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/PinnedPrimeWeightFeatureNormControls.lean/declarations/zeropinnedprimeweightstage.md) | 44 | `declaration-track:b52f57e237aef1aba36d551185799f3ce547c442be08467a33389d6a5d01ad20` |
| 6 | `theorem` | [zeroPinnedPrimeWeightStage_response](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/PinnedPrimeWeightFeatureNormControls.lean/declarations/zeropinnedprimeweightstage-response.md) | 50 | `result-track:2fd540372c96b34b4630d3368467a010e4bae1dee3d20f774d4a89280738de79` |
| 7 | `theorem` | [zero_pinned_stage_not_source_majorant](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/PinnedPrimeWeightFeatureNormControls.lean/declarations/zero-pinned-stage-not-source-majorant.md) | 59 | `result-track:41b277fb8e19e72e6617b77705e70694fc1e2d79f490a65796535ae84f56b5c3` |
| 8 | `def` | [completedSourceChannels](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/PinnedPrimeWeightFeatureNormControls.lean/declarations/completedsourcechannels.md) | 72 | `declaration-track:ed731cf99f7c12f54b6581b5139ce67c52a9d9f6890a57ab252a8f5590ed9bba` |
| 9 | `def` | [requiredAnalyticObligations](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/PinnedPrimeWeightFeatureNormControls.lean/declarations/requiredanalyticobligations.md) | 80 | `declaration-track:d6ff827a12d06a38c19edba69f7e988a2f65590aeba4c640d3583509c1bb9f0f` |
| 10 | `def` | [prohibitedPromotions](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/PinnedPrimeWeightFeatureNormControls.lean/declarations/prohibitedpromotions.md) | 88 | `declaration-track:85422a8afdbf94a2aa631608e9af1a796a7ddcda368b20c1ec83cb17a441b066` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4576ba195be8ca1b5677262dd5d4d3c1f61732ae5263bf6a14fed2c7c972da6e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Zeta/Riemann/Checks/PinnedPrimeWeightFeatureNormControls.lean","GRWTSK/_verification/specifications/NumberTheory/Zeta/Riemann/Checks/PinnedPrimeWeightFeatureNormControls.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
