# Verification target: Duality Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b1244b0db1cf17d49da91d3dc86f5cdd529104db",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Duality/Variant75669e68bb25ed1baeae255ec4baddd51adb661b640c789cdcd0b78c4037242e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DualityNamespaced.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DualityNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b1244b0db1cf17d49da91d3dc86f5cdd529104db`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Duality/Variant75669e68bb25ed1baeae255ec4baddd51adb661b640c789cdcd0b78c4037242e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Duality/Variant75669e68bb25ed1baeae255ec4baddd51adb661b640c789cdcd0b78c4037242e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.MV.Spacing` — import line 12; external provider; requires a separately pinned dependency.
- `Zeta23.MV` — import line 13; external provider; requires a separately pinned dependency.
- `Zeta23.LinAlg.HermitianPosPart` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [EigenBound](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DualityNamespaced.lean/declarations/eigenbound.md) | 42 | `declaration-track:f21daeb6651497e9c618361f03f2babf5c4301ab313c4b8085fffcae1106f82e` |
| 2 | `def` | [kfun](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DualityNamespaced.lean/declarations/kfun.md) | 52 | `declaration-track:a84e4ef37ceb80ab1d5fc337a9b709baeec16c09338b37d09609ac61642ac822` |
| 3 | `lemma` | [kfun_antisymm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DualityNamespaced.lean/declarations/kfun-antisymm.md) | 56 | `result-track:c9e864060c6a254bfffd3d37b77fb0f7a344a00b73593f9e996755401cba229a` |
| 4 | `def` | [Mmat](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DualityNamespaced.lean/declarations/mmat.md) | 63 | `declaration-track:106c08014fad90f40573eba0146691f2489fcebdc8d19f4d7eaf46a5f5a7d226` |
| 5 | `lemma` | [Mmat_isHermitian](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DualityNamespaced.lean/declarations/mmat-ishermitian.md) | 66 | `result-track:a79725231b9104e8c1222fd4556f59c5632547ef1804e7290f185ceaba50e65d` |
| 6 | `lemma` | [star_dotProduct_self](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DualityNamespaced.lean/declarations/star-dotproduct-self.md) | 75 | `result-track:442c619390434004c0f0136d336b0231e9bf7c831aeb16302b8d735ad1ebe055` |
| 7 | `lemma` | [star_dotProduct_mulVec_eq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DualityNamespaced.lean/declarations/star-dotproduct-mulvec-eq.md) | 82 | `result-track:75b66e65497129307abe3bf823a55801539b78a8d77bf392c4665d0850b4ce48` |
| 8 | `lemma` | [sum_norm_sq_unitary](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DualityNamespaced.lean/declarations/sum-norm-sq-unitary.md) | 101 | `result-track:6d38313da67de3842e8ba28f7b5bf053bd90d8510876a0cb270c85a212b4d641` |
| 9 | `lemma` | [abs_eigenvalue_le](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DualityNamespaced.lean/declarations/abs-eigenvalue-le.md) | 114 | `result-track:76f286e71458844e924df3e9201648a8ee88e14160ed9e442a99ea56593cf5b4` |
| 10 | `lemma` | [norm_form_le](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DualityNamespaced.lean/declarations/norm-form-le.md) | 155 | `result-track:2646e78da0af9d764b011c126997626f72488a8f546592d66f1ea9dc52536e35` |
| 11 | `theorem` | [mvDiag_of_eigenBound](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DualityNamespaced.lean/declarations/mvdiag-of-eigenbound.md) | 166 | `result-track:89ff7c44662ea7347e072417719ed3df05438c87879873c8edd0f019c1d00b03` |
| 12 | `theorem` | [mvHilbert_of_eigenBound](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DualityNamespaced.lean/declarations/mvhilbert-of-eigenbound.md) | 204 | `result-track:6c74e66efce0f4d2946934033823b8b6838b7f7e94cde4a3f6c44968e0558251` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c7115be1e5d763074b0748489701a2419ec9222c5e5460a456efe5e7b8d4b35a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Duality/Variant75669e68bb25ed1baeae255ec4baddd51adb661b640c789cdcd0b78c4037242e.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Duality/Variant75669e68bb25ed1baeae255ec4baddd51adb661b640c789cdcd0b78c4037242e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
