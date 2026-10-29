# Verification target: Rank Three012 Failed

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "01f86d12a5c37ac26c725caefd047a11b87222c5",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/604a5e4f6e94b508a1bc9eef31db9053de78b8c07564aaa91b822cc37dee4fc1RankThree01202Fa/Variant604a5e4f6e94b508a1bc9eef31db9053de78b8c07564aaa91b822cc37dee4fc1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/RankThree012Failed.lean/index.md) · [Full source](../../../../MeasureAndIntegration/RankThree012Failed.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `01f86d12a5c37ac26c725caefd047a11b87222c5`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/604a5e4f6e94b508a1bc9eef31db9053de78b8c07564aaa91b822cc37dee4fc1RankThree01202Fa/Variant604a5e4f6e94b508a1bc9eef31db9053de78b8c07564aaa91b822cc37dee4fc1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/604a5e4f6e94b508a1bc9eef31db9053de78b8c07564aaa91b822cc37dee4fc1RankThree01202Fa/Variant604a5e4f6e94b508a1bc9eef31db9053de78b8c07564aaa91b822cc37dee4fc1.lean.json)

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
| 1 | `def` | [thetaTailRankThreeNumerator](../../../../MeasureAndIntegration/RankThree012Failed.lean/declarations/thetatailrankthreenumerator.md) | 18 | `declaration-track:7a79084fba7daaf0e8aae979d1a6e62c12a230a8e679e85dce5d64715e70b524` |
| 2 | `theorem` | [rankThree_compound_numerator_identity](../../../../MeasureAndIntegration/RankThree012Failed.lean/declarations/rankthree-compound-numerator-identity.md) | 25 | `result-track:60904633aff5f1022fafd90142a05d6fafb515bca86f0f6cf27701354e40b5cd` |
| 3 | `theorem` | [thetaTailRankThreeNumerator_eq](../../../../MeasureAndIntegration/RankThree012Failed.lean/declarations/thetatailrankthreenumerator-eq.md) | 33 | `result-track:6083b8a47a8b89cd9bfe41d976f60946f84744d8f3390830e76d69ff5f246600` |
| 4 | `theorem` | [hasDerivAt_thetaTail_compoundRatio](../../../../MeasureAndIntegration/RankThree012Failed.lean/declarations/hasderivat-thetatail-compoundratio.md) | 45 | `result-track:c323c7cbfb32c304f57340f778d1c8fd34c5b46298174cfc483383da260b824a` |
| 5 | `theorem` | [thetaTail_compoundRatio_antitone_iff](../../../../MeasureAndIntegration/RankThree012Failed.lean/declarations/thetatail-compoundratio-antitone-iff.md) | 56 | `result-track:53d1d0df0213c967083f71c305e94a0a8583e59ead80c750a24610f50155e556` |
| 6 | `theorem` | [thetaTail012_det_nonpos_of_numerator_nonpos](../../../../MeasureAndIntegration/RankThree012Failed.lean/declarations/thetatail012-det-nonpos-of-numerator-nonpos.md) | 78 | `result-track:efdd108cf0671dd7424f95b2a23b473b0460ab9e3d946853ce9f91cbd63aeec6` |
| 7 | `theorem` | [thetaTailSignRegular_three_zero_one_two_of_numerator_nonpos](../../../../MeasureAndIntegration/RankThree012Failed.lean/declarations/thetatailsignregular-three-zero-one-two-of-numerator-nonpos.md) | 123 | `result-track:a35275cf9af35dae3a499fca59ade78a048f7840ce3d15975f0ebaafb7b9d031` |
| 8 | `theorem` | [thetaPhi_jet_det_nonpos_of_wronskian](../../../../MeasureAndIntegration/RankThree012Failed.lean/declarations/thetaphi-jet-det-nonpos-of-wronskian.md) | 142 | `result-track:1a701ccfd192646c496796331acd01ccde9cc2a2a8e62d15ffc0a67de743a404` |
| 9 | `theorem` | [thetaTailRankThreeNumerator_nonpos_of_wronskian](../../../../MeasureAndIntegration/RankThree012Failed.lean/declarations/thetatailrankthreenumerator-nonpos-of-wronskian.md) | 160 | `result-track:2432181ed005dbc8986679ad8f6ea4be8fee7ab7d99513c9c5b1cbd9f600908f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e0160add08bc9efad16beee574d33e307d9bed2ba7a74e4a26768c9f5dabba90 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/604a5e4f6e94b508a1bc9eef31db9053de78b8c07564aaa91b822cc37dee4fc1RankThree01202Fa/Variant604a5e4f6e94b508a1bc9eef31db9053de78b8c07564aaa91b822cc37dee4fc1.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/604a5e4f6e94b508a1bc9eef31db9053de78b8c07564aaa91b822cc37dee4fc1RankThree01202Fa/Variant604a5e4f6e94b508a1bc9eef31db9053de78b8c07564aaa91b822cc37dee4fc1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
