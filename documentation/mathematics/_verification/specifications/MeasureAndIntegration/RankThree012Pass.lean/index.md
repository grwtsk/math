# Verification target: Rank Three012 Pass

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "56572dab2e4c19b08676d8927d99849ecf529282",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/226d6200dbf227eae44c112d1aad229bc03ff5b652ff75bded6ff99e972beb0eRankThree01203Pa/Variant226d6200dbf227eae44c112d1aad229bc03ff5b652ff75bded6ff99e972beb0e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/RankThree012Pass.lean/index.md) · [Full source](../../../../MeasureAndIntegration/RankThree012Pass.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `56572dab2e4c19b08676d8927d99849ecf529282`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/226d6200dbf227eae44c112d1aad229bc03ff5b652ff75bded6ff99e972beb0eRankThree01203Pa/Variant226d6200dbf227eae44c112d1aad229bc03ff5b652ff75bded6ff99e972beb0e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/226d6200dbf227eae44c112d1aad229bc03ff5b652ff75bded6ff99e972beb0eRankThree01203Pa/Variant226d6200dbf227eae44c112d1aad229bc03ff5b652ff75bded6ff99e972beb0e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.ThetaTailRankThreeGaps` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.ThetaTailRankThreeCriterion` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [thetaTailRankThreeNumerator](../../../../MeasureAndIntegration/RankThree012Pass.lean/declarations/thetatailrankthreenumerator.md) | 18 | `declaration-track:8adf0fa733006d77bc752736d02a316b45f23c40ddd431d14d1050d9098aa587` |
| 2 | `theorem` | [rankThree_compound_numerator_identity](../../../../MeasureAndIntegration/RankThree012Pass.lean/declarations/rankthree-compound-numerator-identity.md) | 25 | `result-track:c1216f931f47715bbdcc8b2b4ed4f3e231f988515507567893833cea90c30594` |
| 3 | `theorem` | [thetaTailRankThreeNumerator_eq](../../../../MeasureAndIntegration/RankThree012Pass.lean/declarations/thetatailrankthreenumerator-eq.md) | 33 | `result-track:f34c5b9ac5496ea7dc407f22505a07d7dfb5f267248173f651c216756e85d17f` |
| 4 | `theorem` | [hasDerivAt_thetaTail_compoundRatio](../../../../MeasureAndIntegration/RankThree012Pass.lean/declarations/hasderivat-thetatail-compoundratio.md) | 45 | `result-track:cd49d53e16b320e4a624cb79ea0adee724d628ed7f49eec749a634e7c6b958a3` |
| 5 | `theorem` | [thetaTail_compoundRatio_antitone_iff](../../../../MeasureAndIntegration/RankThree012Pass.lean/declarations/thetatail-compoundratio-antitone-iff.md) | 56 | `result-track:423b6d6db8a6c436d63ee5c73c0886df427344e46106b70eb2da6ddbc9df0815` |
| 6 | `theorem` | [thetaTail012_det_nonpos_of_numerator_nonpos](../../../../MeasureAndIntegration/RankThree012Pass.lean/declarations/thetatail012-det-nonpos-of-numerator-nonpos.md) | 78 | `result-track:318897133cc211989cd1f7e83b182e67bd04b6dd68d6db33d05025c17793eea4` |
| 7 | `theorem` | [thetaTailSignRegular_three_zero_one_two_of_numerator_nonpos](../../../../MeasureAndIntegration/RankThree012Pass.lean/declarations/thetatailsignregular-three-zero-one-two-of-numerator-nonpos.md) | 123 | `result-track:c641bacabdf5cec52202decd0f6e72f7b7156090675753c183ad97ffbf0f1a6d` |
| 8 | `theorem` | [thetaPhi_jet_det_nonpos_of_wronskian](../../../../MeasureAndIntegration/RankThree012Pass.lean/declarations/thetaphi-jet-det-nonpos-of-wronskian.md) | 142 | `result-track:0b39c953ac7c43fd54a50b2f91eaf33df58c7fc5d0597722a583471c40326331` |
| 9 | `theorem` | [thetaTailRankThreeNumerator_nonpos_of_wronskian](../../../../MeasureAndIntegration/RankThree012Pass.lean/declarations/thetatailrankthreenumerator-nonpos-of-wronskian.md) | 160 | `result-track:2cea617b1e670bfc3ea745d3133d17d8cb0284901550081524c3907086a901fb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a4dc776ac29969bf30c880340655b7a8b833108fdd26fba3292f343aff571fc6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/226d6200dbf227eae44c112d1aad229bc03ff5b652ff75bded6ff99e972beb0eRankThree01203Pa/Variant226d6200dbf227eae44c112d1aad229bc03ff5b652ff75bded6ff99e972beb0e.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/226d6200dbf227eae44c112d1aad229bc03ff5b652ff75bded6ff99e972beb0eRankThree01203Pa/Variant226d6200dbf227eae44c112d1aad229bc03ff5b652ff75bded6ff99e972beb0e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
