# Verification target: Results Alternative14

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e499bebb6a667ec1f538cd7f96e539a978023936",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant6bc77d248394162823fc246143b1596fe6893403629f6610554574cad75f42d4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ResultsAlternative14.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ResultsAlternative14.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e499bebb6a667ec1f538cd7f96e539a978023936`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant6bc77d248394162823fc246143b1596fe6893403629f6610554574cad75f42d4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant6bc77d248394162823fc246143b1596fe6893403629f6610554574cad75f42d4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.ThetaPhiSignedMomentParityCriterion` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Real.Pi.Bounds` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [thetaPhiShiftedCharlier](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ResultsAlternative14.lean/declarations/thetaphishiftedcharlier.md) | 35 | `declaration-track:17e59ba747f070059de2c029027b6306810497319ee98d54fbbbbc3ec65ef40a` |
| 2 | `theorem` | [thetaPhiShiftedCharlier_seven](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ResultsAlternative14.lean/declarations/thetaphishiftedcharlier-seven.md) | 45 | `result-track:4638d47054aecd9e85b06c44a4c7093f4d8bdd2c9b91d663836e4b5a63e9d825` |
| 3 | `theorem` | [thetaPhiShiftedCharlier_seven_shift](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ResultsAlternative14.lean/declarations/thetaphishiftedcharlier-seven-shift.md) | 55 | `result-track:c4e4b8c8e2de0cdb8891da15668562ce0537892d9a0465062fccd3744579b42f` |
| 4 | `theorem` | [thetaPhiShiftedCharlier_seven_pi_neg](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ResultsAlternative14.lean/declarations/thetaphishiftedcharlier-seven-pi-neg.md) | 66 | `result-track:8a9ffa125cb80fef387486729015e00348b623d1c0b474438e2ca993479fafeb` |
| 5 | `theorem` | [signedJetDet_const_mul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ResultsAlternative14.lean/declarations/signedjetdet-const-mul.md) | 107 | `result-track:d62bbb7b2c4c6e5bc0a19d5c1c65366da0b0d14cafb12b32f62e53337808f666` |
| 6 | `def` | [thetaPhiFirstModeScale](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ResultsAlternative14.lean/declarations/thetaphifirstmodescale.md) | 126 | `declaration-track:d32748ccfc7533ff6219b9384bde1999dc4dd95fc6b209db029e6eaa2f864f89` |
| 7 | `theorem` | [thetaPhiFirstModeScale_pos](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ResultsAlternative14.lean/declarations/thetaphifirstmodescale-pos.md) | 129 | `result-track:4ef6144f9690e841187d11d1df1f0e3a2cb58d61804de456991180010c4f55df` |
| 8 | `theorem` | [thetaPhiDerivativeTapeTruncation_one_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ResultsAlternative14.lean/declarations/thetaphiderivativetapetruncation-one-zero.md) | 135 | `result-track:9a071253fa1919ff1b9d481b305e81305cd47a8daad383e1c6cd19691a4d9804` |
| 9 | `def` | [ThetaPhiOneModeRankSevenCharlierBridge](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ResultsAlternative14.lean/declarations/thetaphionemoderanksevencharlierbridge.md) | 151 | `declaration-track:e897e1b2f7837011c4e1312fe01ef6715590bb16add46ab3ea47f54c6b844c39` |
| 10 | `theorem` | [thetaPhiOneModeRankSevenPolynomialJet_neg](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ResultsAlternative14.lean/declarations/thetaphionemoderanksevenpolynomialjet-neg.md) | 161 | `result-track:60d1fa58324256f138e4788cea763ec66fdf431ec1ae3e21a0c6465a0ee1bbac` |
| 11 | `theorem` | [thetaPhiOneModeRankSevenTruncation_neg](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ResultsAlternative14.lean/declarations/thetaphionemoderankseventruncation-neg.md) | 177 | `result-track:a436a44f9c4c4212b2331ebae110d127610e57921ac3e2f6a0bf63d44be7e458` |
| 12 | `theorem` | [not_thetaPhiSignedMomentParityCriterion_of_rankSevenBridge](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ResultsAlternative14.lean/declarations/not-thetaphisignedmomentparitycriterion-of-ranksevenbridge.md) | 198 | `result-track:44de5a289d6ea435fae8b61888c440b42162852ce78b57644b44937660923b8a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=30574025fc27c80ef3d3882b44315e3804f68f68964c44673db43d85c832504c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant6bc77d248394162823fc246143b1596fe6893403629f6610554574cad75f42d4.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant6bc77d248394162823fc246143b1596fe6893403629f6610554574cad75f42d4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
