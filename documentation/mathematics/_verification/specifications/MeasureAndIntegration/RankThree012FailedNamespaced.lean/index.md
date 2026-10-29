# Verification target: Rank Three012 Failed Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "40c750e5f925c852a3d4e25fefa0b0534a79a073",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/604a5e4f6e94b508a1bc9eef31db9053de78b8c07564aaa91b822cc37dee4fc1RankThree01202Fa/Variant60649b9223f81a65da4a30e162bce2e8f30d1dc0de9f3449990bed67baf95dd8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/RankThree012FailedNamespaced.lean/index.md) · [Full source](../../../../MeasureAndIntegration/RankThree012FailedNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `40c750e5f925c852a3d4e25fefa0b0534a79a073`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/604a5e4f6e94b508a1bc9eef31db9053de78b8c07564aaa91b822cc37dee4fc1RankThree01202Fa/Variant60649b9223f81a65da4a30e162bce2e8f30d1dc0de9f3449990bed67baf95dd8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/604a5e4f6e94b508a1bc9eef31db9053de78b8c07564aaa91b822cc37dee4fc1RankThree01202Fa/Variant60649b9223f81a65da4a30e162bce2e8f30d1dc0de9f3449990bed67baf95dd8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.ThetaTailRankThreeGaps` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.ThetaTailRankThreeCriterion` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [thetaTailRankThreeNumerator](../../../../MeasureAndIntegration/RankThree012FailedNamespaced.lean/declarations/thetatailrankthreenumerator.md) | 26 | `declaration-track:653c4436dea6053cebb8838e66ae031894d4422e13e7ba28a16935d86edf80cd` |
| 2 | `theorem` | [rankThree_compound_numerator_identity](../../../../MeasureAndIntegration/RankThree012FailedNamespaced.lean/declarations/rankthree-compound-numerator-identity.md) | 33 | `result-track:359f88ac4d15d46d119dc20cd764ab811675e3454cbaa0ca11ec56e790014fc6` |
| 3 | `theorem` | [thetaTailRankThreeNumerator_eq](../../../../MeasureAndIntegration/RankThree012FailedNamespaced.lean/declarations/thetatailrankthreenumerator-eq.md) | 41 | `result-track:4a41e35f9942664d06093dd2bbcf312f86ca3a2e4eb44515f05071716bc0973a` |
| 4 | `theorem` | [hasDerivAt_thetaTail_compoundRatio](../../../../MeasureAndIntegration/RankThree012FailedNamespaced.lean/declarations/hasderivat-thetatail-compoundratio.md) | 53 | `result-track:0da4a5e7688c8a1a7af8907bc3b92ccd6b82a4c104b83b7270acabc5f1d95f14` |
| 5 | `theorem` | [thetaTail_compoundRatio_antitone_iff](../../../../MeasureAndIntegration/RankThree012FailedNamespaced.lean/declarations/thetatail-compoundratio-antitone-iff.md) | 64 | `result-track:cb3ea596789274390a248a73566d9391952b711a8e432f772aa53b4dfdcbf6f3` |
| 6 | `theorem` | [thetaTail012_det_nonpos_of_numerator_nonpos](../../../../MeasureAndIntegration/RankThree012FailedNamespaced.lean/declarations/thetatail012-det-nonpos-of-numerator-nonpos.md) | 86 | `result-track:bf3c0a3f80c0d96831f0d940ae590599c359007064357db2aa2705e9869a7462` |
| 7 | `theorem` | [thetaTailSignRegular_three_zero_one_two_of_numerator_nonpos](../../../../MeasureAndIntegration/RankThree012FailedNamespaced.lean/declarations/thetatailsignregular-three-zero-one-two-of-numerator-nonpos.md) | 131 | `result-track:8011820918e895d6cea12bd5828e8a0bfcce88bf3989d6e62cefa4ede89384f5` |
| 8 | `theorem` | [thetaPhi_jet_det_nonpos_of_wronskian](../../../../MeasureAndIntegration/RankThree012FailedNamespaced.lean/declarations/thetaphi-jet-det-nonpos-of-wronskian.md) | 150 | `result-track:036638750b4a77c35e0d05a49e7e3a97976165013c0fb8732a1184d11b5a3cb7` |
| 9 | `theorem` | [thetaTailRankThreeNumerator_nonpos_of_wronskian](../../../../MeasureAndIntegration/RankThree012FailedNamespaced.lean/declarations/thetatailrankthreenumerator-nonpos-of-wronskian.md) | 168 | `result-track:50d9066d4b7204c8b3a27106ccdbb038db28bf77f2a6bfafe9e0a1676c8f3405` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=45904782c574be404a84ee1d8f2146669b0c3a905a5054bdb87dd2c3dc01d514 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/604a5e4f6e94b508a1bc9eef31db9053de78b8c07564aaa91b822cc37dee4fc1RankThree01202Fa/Variant60649b9223f81a65da4a30e162bce2e8f30d1dc0de9f3449990bed67baf95dd8.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/604a5e4f6e94b508a1bc9eef31db9053de78b8c07564aaa91b822cc37dee4fc1RankThree01202Fa/Variant60649b9223f81a65da4a30e162bce2e8f30d1dc0de9f3449990bed67baf95dd8.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
