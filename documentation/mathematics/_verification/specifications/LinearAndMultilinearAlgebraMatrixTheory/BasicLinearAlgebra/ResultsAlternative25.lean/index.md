# Verification target: Results Alternative25

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "67e58adc491a339720c4ce34bc8fcc34b8d2819f",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantcc44729e32bd481013de25cacc57814be7ff6770532a181f2b65bf4e3d38f098.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ResultsAlternative25.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ResultsAlternative25.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `67e58adc491a339720c4ce34bc8fcc34b8d2819f`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantcc44729e32bd481013de25cacc57814be7ff6770532a181f2b65bf4e3d38f098.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantcc44729e32bd481013de25cacc57814be7ff6770532a181f2b65bf4e3d38f098.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.ThetaPhiChristoffelReduction` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.PositiveAtlas.Grassmannian.FiniteCauchyBinet` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Vandermonde` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [finiteSignedMomentTape](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ResultsAlternative25.lean/declarations/finitesignedmomenttape.md) | 36 | `declaration-track:f7bc08439743db4eda7976bce7075d3e4601103d7121596886679fa28dd7473d` |
| 2 | `def` | [finiteMomentLeft](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ResultsAlternative25.lean/declarations/finitemomentleft.md) | 41 | `declaration-track:0e0d89e4993a1f69a339550df3b99a4aec692d452ecfc3a8ea53c11f63b55027` |
| 3 | `def` | [finiteChristoffelMomentRight](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ResultsAlternative25.lean/declarations/finitechristoffelmomentright.md) | 48 | `declaration-track:d4c056383d0bc97dc2686fe2d3d42f07e20518e83411f5557404aa15639f93a7` |
| 4 | `theorem` | [finiteSignedMoment_christoffelHankel_eq_mul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ResultsAlternative25.lean/declarations/finitesignedmoment-christoffelhankel-eq-mul.md) | 56 | `result-track:173be5c9a3affc19b77c967eccd03efe351d1a879479773ded833b917e82a9ff` |
| 5 | `def` | [finiteMomentVandermondeDet](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ResultsAlternative25.lean/declarations/finitemomentvandermondedet.md) | 73 | `declaration-track:786f8af8f5cc1217cc763395eac3bd3ee5f80c6b7ef968081c5ebd0f8c6c29b9` |
| 6 | `theorem` | [finiteMomentLeft_selected_det](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ResultsAlternative25.lean/declarations/finitemomentleft-selected-det.md) | 81 | `result-track:8039fe006dff9576780de66b10335c85f9ea923187d637f432d78d2ca3bafcd0` |
| 7 | `theorem` | [finiteChristoffelMomentRight_selected_det](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ResultsAlternative25.lean/declarations/finitechristoffelmomentright-selected-det.md) | 98 | `result-track:1132da49f52195d71b12c514e3baba0658bf4e8e9985697735bf8bcd221c54d0` |
| 8 | `theorem` | [factorial_mul_det_christoffel_finiteSignedMoment](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ResultsAlternative25.lean/declarations/factorial-mul-det-christoffel-finitesignedmoment.md) | 124 | `result-track:2446c08a052cebb091b38f658e6d0ead6a88d2f383781a754f12358d793bfc2f` |
| 9 | `def` | [thetaPhiSignedMomentNode](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ResultsAlternative25.lean/declarations/thetaphisignedmomentnode.md) | 144 | `declaration-track:9fd96be6585c20c1434d647f971ed337796365372e00978d0eadbe52a9d572c0` |
| 10 | `theorem` | [thetaPhiSignedMomentNode_add_one_pos](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ResultsAlternative25.lean/declarations/thetaphisignedmomentnode-add-one-pos.md) | 149 | `result-track:d415a81247a3908de53c3582c3b717842f9f36d6b07459f365bca123031fb973` |
| 11 | `theorem` | [thetaModeY_pos_signedMoment](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ResultsAlternative25.lean/declarations/thetamodey-pos-signedmoment.md) | 155 | `result-track:6272c3c23d2d2abd2e1fcae62727768302d49db0561b46d44191ea60a5ac9337` |
| 12 | `def` | [thetaPhiBaseMomentMagnitude](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ResultsAlternative25.lean/declarations/thetaphibasemomentmagnitude.md) | 162 | `declaration-track:04ef696744dcaf3033bcdea5ff6f229f5800b2f0f12da744cfe13380a9fef57f` |
| 13 | `theorem` | [thetaPhiBaseMomentMagnitude_nonnegative](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ResultsAlternative25.lean/declarations/thetaphibasemomentmagnitude-nonnegative.md) | 171 | `result-track:c1aa9b895bebf41878c311982cbd4e81c995e14e8dd3d5cef65f552ae92bb204` |
| 14 | `def` | [thetaPhiBaseSignedMomentWeight](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ResultsAlternative25.lean/declarations/thetaphibasesignedmomentweight.md) | 183 | `declaration-track:827c0d1b010dc88e887223d1e2976f5b01b6180ba744fd3cadd0d01bfde4a02f` |
| 15 | `def` | [thetaPhiBaseSignedMomentTruncation](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ResultsAlternative25.lean/declarations/thetaphibasesignedmomenttruncation.md) | 189 | `declaration-track:6c00e45830ba2a9b19f2db66d6f5450849baa81e52d65811dfe9b670cfc6c4b9` |
| 16 | `def` | [thetaPhiSignedMomentVandermondeDet](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ResultsAlternative25.lean/declarations/thetaphisignedmomentvandermondedet.md) | 196 | `declaration-track:e3b74fd9ea20de267dace300d8323ce0a09b0199c750de3179a82124a27391a7` |
| 17 | `theorem` | [factorial_mul_det_thetaPhi_signedMomentTruncation](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ResultsAlternative25.lean/declarations/factorial-mul-det-thetaphi-signedmomenttruncation.md) | 205 | `result-track:0c734840fb1c95168f2dc866a2f37a002dba53e8d9a294fcc9ae58f4be21a484` |
| 18 | `def` | [ThetaPhiBaseSignedMomentRepresentation](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ResultsAlternative25.lean/declarations/thetaphibasesignedmomentrepresentation.md) | 240 | `declaration-track:a5b7a6fbf88cb4453403cfb2c8078b7134c1f597fcdf0990c65cf960f49fc75e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b88bbffe60b611d2ae98e7391c9da94ef84d7cc42e7052816b937aa35bbd36dd -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantcc44729e32bd481013de25cacc57814be7ff6770532a181f2b65bf4e3d38f098.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantcc44729e32bd481013de25cacc57814be7ff6770532a181f2b65bf4e3d38f098.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
