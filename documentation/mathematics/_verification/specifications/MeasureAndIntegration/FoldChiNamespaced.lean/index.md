# Verification target: Fold Chi Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "84c70d1e4b5f80d1277d1af74612d069d085396a",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FoldChi/Variant2ead0232d2aa708bbdf23ce3da830589c96196172e5603e8a63791b857705a26.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/FoldChiNamespaced.lean/index.md) · [Full source](../../../../MeasureAndIntegration/FoldChiNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `84c70d1e4b5f80d1277d1af74612d069d085396a`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FoldChi/Variant2ead0232d2aa708bbdf23ce3da830589c96196172e5603e8a63791b857705a26.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FoldChi/Variant2ead0232d2aa708bbdf23ce3da830589c96196172e5603e8a63791b857705a26.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.ThmE.CountByIntegralChi` — import line 24; external provider; requires a separately pinned dependency.
- `Zeta23.RvM.Fold` — import line 25; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [factorsThrough_inv](../../../../MeasureAndIntegration/FoldChiNamespaced.lean/declarations/factorsthrough-inv.md) | 44 | `result-track:f3c19f1653b2a7fc7b788de8da66155fa93e7c2b374b126634b76d3e0afb6b95` |
| 2 | `lemma` | [conductor_inv](../../../../MeasureAndIntegration/FoldChiNamespaced.lean/declarations/conductor-inv.md) | 49 | `result-track:136fa629848ab5569cd27b7342949b3fe22a02ce37aa519ed7d015bcb91a0ece` |
| 3 | `lemma` | [isPrimitive_inv](../../../../MeasureAndIntegration/FoldChiNamespaced.lean/declarations/isprimitive-inv.md) | 59 | `result-track:9257bb0ef44bf9bdd6e6684407e2612412857c0bf3f630bdd6b4f9398bac1271` |
| 4 | `lemma` | [gammaFactor_conj](../../../../MeasureAndIntegration/FoldChiNamespaced.lean/declarations/gammafactor-conj.md) | 66 | `result-track:adb8abb93c4454510caae3b27c26df66118365bd9541ba325dbc0ba2b4a67f7a` |
| 5 | `lemma` | [gammaFactor_inv](../../../../MeasureAndIntegration/FoldChiNamespaced.lean/declarations/gammafactor-inv.md) | 73 | `result-track:d3108980cbe3e59e66241b1fb003610e518453f1272da4a7bb90070ff4b58bef` |
| 6 | `lemma` | [completedLFunction_inv_eq_conj](../../../../MeasureAndIntegration/FoldChiNamespaced.lean/declarations/completedlfunction-inv-eq-conj.md) | 90 | `result-track:4b303879a66fdfb8f46ac3d8422955706c63827dcfa6b15a2ba476407829e1c4` |
| 7 | `lemma` | [completedLSym_inv_eq_conj](../../../../MeasureAndIntegration/FoldChiNamespaced.lean/declarations/completedlsym-inv-eq-conj.md) | 113 | `result-track:1935d7c1068f8744389424e04765c758da50ef8c4b90bcf2a007f283b2ae27c1` |
| 8 | `lemma` | [logDeriv_completedLSym_inv_conj](../../../../MeasureAndIntegration/FoldChiNamespaced.lean/declarations/logderiv-completedlsym-inv-conj.md) | 123 | `result-track:2a6afa6fb0eecec79e4300711b8ac5b6d74e41b36151e46f8167d32a937d2a0b` |
| 9 | `theorem` | [logDeriv_completedLSym_one_sub_conj](../../../../MeasureAndIntegration/FoldChiNamespaced.lean/declarations/logderiv-completedlsym-one-sub-conj.md) | 131 | `result-track:86452818d01501e209364ee04894362c7aab95223b5e8916f04b5dbeabd781a0` |
| 10 | `lemma` | [continuousAt_logDeriv_completedLSym](../../../../MeasureAndIntegration/FoldChiNamespaced.lean/declarations/continuousat-logderiv-completedlsym.md) | 151 | `result-track:5707f1992b8ea557d5e3359782fa979f0ab3108dbbe58edc1ef1610fe2301895` |
| 11 | `lemma` | [horizontal_foldChi](../../../../MeasureAndIntegration/FoldChiNamespaced.lean/declarations/horizontal-foldchi.md) | 163 | `result-track:827ce49a5581ede97af8339667daf5b14f2aac89ed0d3eab1a244f2bdf5aaa9d` |
| 12 | `lemma` | [vertical_foldChi](../../../../MeasureAndIntegration/FoldChiNamespaced.lean/declarations/vertical-foldchi.md) | 194 | `result-track:3fa7b7aee0eecc2d1e43868993d6e4830d0ac51b5cdcc66bd9a085f9075f2e0e` |
| 13 | `theorem` | [rectangleIntegral_logDeriv_completedLSym_eq_halfContour](../../../../MeasureAndIntegration/FoldChiNamespaced.lean/declarations/rectangleintegral-logderiv-completedlsym-eq-halfcontour.md) | 208 | `result-track:900d9ecdd6091c5ab87ee802e6025b961d292d172059c9c9db28fbfbd2a4aace` |
| 14 | `theorem` | [NcountL_eq_im_halfContour](../../../../MeasureAndIntegration/FoldChiNamespaced.lean/declarations/ncountl-eq-im-halfcontour.md) | 231 | `result-track:816077e6a0a69c4adecffc462fc9e44f6977c109f3aaea5b52f221005dbf09c4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=58f24711090824719df4508d1509babf807f99ce77288b9e9f70b3a9573df4af -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FoldChi/Variant2ead0232d2aa708bbdf23ce3da830589c96196172e5603e8a63791b857705a26.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FoldChi/Variant2ead0232d2aa708bbdf23ce3da830589c96196172e5603e8a63791b857705a26.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
