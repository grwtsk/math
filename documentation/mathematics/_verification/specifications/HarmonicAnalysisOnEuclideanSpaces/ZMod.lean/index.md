# Verification target: ZMod

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "70d80c7d9e17f8374cfc030c3f7707e2cd0ffcde",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/ZMod/Variantffee7868a2e9e3234d99486222db77e10d8f3a68fa8d56fca444d4f1c9ec6452.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../HarmonicAnalysisOnEuclideanSpaces/ZMod.lean/index.md) · [Full source](../../../../HarmonicAnalysisOnEuclideanSpaces/ZMod.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `70d80c7d9e17f8374cfc030c3f7707e2cd0ffcde`.

Source path: `GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/ZMod/Variantffee7868a2e9e3234d99486222db77e10d8f3a68fa8d56fca444d4f1c9ec6452.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/HarmonicAnalysis/FourierAnalysis/ZMod/Variantffee7868a2e9e3234d99486222db77e10d8f3a68fa8d56fca444d4f1c9ec6452.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.EvenFunction` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Complex.CircleAddChar` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Fourier.FourierTransform` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.DirichletCharacter.GaussSum` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [auxDFT](../../../../HarmonicAnalysisOnEuclideanSpaces/ZMod.lean/declarations/auxdft.md) | 46 | `declaration-track:02c7552c63b8ac141bab5b93fa22d765e9f997f779ef9a01a7d3c98e5282e9c9` |
| 2 | `lemma` | [auxDFT_neg](../../../../HarmonicAnalysisOnEuclideanSpaces/ZMod.lean/declarations/auxdft-neg.md) | 49 | `result-track:aa24871a18c9049afb370db2072e10aca5f1e9074f9eef0671e3607294ed6e6a` |
| 3 | `lemma` | [auxDFT_auxDFT](../../../../HarmonicAnalysisOnEuclideanSpaces/ZMod.lean/declarations/auxdft-auxdft.md) | 54 | `result-track:db758831e28187177e87f479feb094c3ced38b06418a6357fa1c888f08eb0a0b` |
| 4 | `lemma` | [auxDFT_smul](../../../../HarmonicAnalysisOnEuclideanSpaces/ZMod.lean/declarations/auxdft-smul.md) | 69 | `result-track:7215cdfd6cd0de29bd8a72927be5a8d61573ed5c0821670f2581475efec257b0` |
| 5 | `def` | [dft](../../../../HarmonicAnalysisOnEuclideanSpaces/ZMod.lean/declarations/dft.md) | 81 | `declaration-track:db10b4e76524834dcc6ce94b2d222f1215b1751099ba72d866cf1b2b5bf4206b` |
| 6 | `lemma` | [dft_apply](../../../../HarmonicAnalysisOnEuclideanSpaces/ZMod.lean/declarations/dft-apply.md) | 100 | `result-track:9c6cc836e3d95e9910eea0e4a8d29659f716239ef6bbb82832936f800a5fa20c` |
| 7 | `lemma` | [dft_def](../../../../HarmonicAnalysisOnEuclideanSpaces/ZMod.lean/declarations/dft-def.md) | 104 | `result-track:d45a6bf27d03af5aeb29d65ea87242f7ee28ac36964e04160af5b231e28bb023` |
| 8 | `lemma` | [invDFT_apply](../../../../HarmonicAnalysisOnEuclideanSpaces/ZMod.lean/declarations/invdft-apply.md) | 108 | `result-track:3092efb637d4572aaee23f23c6444e1fb652e978471e688e8ef16bf94df78c0b` |
| 9 | `lemma` | [invDFT_def](../../../../HarmonicAnalysisOnEuclideanSpaces/ZMod.lean/declarations/invdft-def-source-edition-2.md) | 112 | `result-track:b2a2203d8c0bcf732e25b70e3c143f52888f92958f6c5d8e9cd89e775b80b2b2` |
| 10 | `lemma` | [invDFT_apply'](../../../../HarmonicAnalysisOnEuclideanSpaces/ZMod.lean/declarations/invdft-apply-source-edition-2.md) | 116 | `result-track:6b306aea5a550b8a05dedb6125ef74b178bae1cb44a1eb06b4d0613cd107cfe8` |
| 11 | `lemma` | [invDFT_def'](../../../../HarmonicAnalysisOnEuclideanSpaces/ZMod.lean/declarations/invdft-def.md) | 119 | `result-track:2465861a25d2bdeae77b06759ff354b91aabe476ae1201e2174c34503ba5e7b2` |
| 12 | `lemma` | [dft_apply_zero](../../../../HarmonicAnalysisOnEuclideanSpaces/ZMod.lean/declarations/dft-apply-zero.md) | 122 | `result-track:558990495b38ca4df16098ff48e1da5e260f9a2c27bce935989f23de7084bff1` |
| 13 | `lemma` | [dft_eq_fourier](../../../../HarmonicAnalysisOnEuclideanSpaces/ZMod.lean/declarations/dft-eq-fourier.md) | 129 | `result-track:fa72fd021c56c1738c17d35245b2097a1bb23fc309afe55fb4d237818b276a73` |
| 14 | `lemma` | [dft_const_smul](../../../../HarmonicAnalysisOnEuclideanSpaces/ZMod.lean/declarations/dft-const-smul.md) | 145 | `result-track:93c9203ed9326966d6ab9156422ae579a54e2c2eb1d161d571f6992b0cda022d` |
| 15 | `lemma` | [dft_smul_const](../../../../HarmonicAnalysisOnEuclideanSpaces/ZMod.lean/declarations/dft-smul-const.md) | 149 | `result-track:57af29b8e5fbdcbbfe5e03a133d9d5e639757508016d4567d8b76db86fecfea4` |
| 16 | `lemma` | [dft_const_mul](../../../../HarmonicAnalysisOnEuclideanSpaces/ZMod.lean/declarations/dft-const-mul.md) | 154 | `result-track:1de3cc7b2ef70e2e1fd755f2e5b0c48589b74aa94b6a234ef8909860572f36c3` |
| 17 | `lemma` | [dft_mul_const](../../../../HarmonicAnalysisOnEuclideanSpaces/ZMod.lean/declarations/dft-mul-const.md) | 158 | `result-track:90bd096b91c49c95b4a78dcf2c02720bafc7bc4b8040093720ca880d5e8b28e7` |
| 18 | `lemma` | [dft_comp_neg](../../../../HarmonicAnalysisOnEuclideanSpaces/ZMod.lean/declarations/dft-comp-neg.md) | 166 | `result-track:037f09f2097525fc7a1605964121a98862154a77f3016f567a4129ce8114610c` |
| 19 | `lemma` | [dft_dft](../../../../HarmonicAnalysisOnEuclideanSpaces/ZMod.lean/declarations/dft-dft.md) | 170 | `result-track:24306f2393d9e80718e899f66f96d37c838e521dc10b782de8f0b58a88954377` |
| 20 | `lemma` | [dft_comp_unitMul](../../../../HarmonicAnalysisOnEuclideanSpaces/ZMod.lean/declarations/dft-comp-unitmul.md) | 175 | `result-track:1dfd32f5460a0d5a7932733d07fa6b59fdd8dbffd5fc7e0e57fa408bc4e32589` |
| 21 | `lemma` | [dft_even_iff](../../../../HarmonicAnalysisOnEuclideanSpaces/ZMod.lean/declarations/dft-even-iff.md) | 183 | `result-track:343a73459d33c16902d5c978722efe868e0a59ef521e1a16f2dd0fd2db1802a4` |
| 22 | `lemma` | [dft_odd_iff](../../../../HarmonicAnalysisOnEuclideanSpaces/ZMod.lean/declarations/dft-odd-iff.md) | 190 | `result-track:7d621a44503c68dc57b01e32df1359720e0be6b853e762d65f95937738ef145a` |
| 23 | `lemma` | [fourierTransform_eq_gaussSum_mulShift](../../../../HarmonicAnalysisOnEuclideanSpaces/ZMod.lean/declarations/fouriertransform-eq-gausssum-mulshift.md) | 205 | `result-track:27ef5a4cbac9180ce30d89c9b4076a0e64966fb1d234d097809e448e37c3dadc` |
| 24 | `lemma` | [IsPrimitive.fourierTransform_eq_inv_mul_gaussSum](../../../../HarmonicAnalysisOnEuclideanSpaces/ZMod.lean/declarations/isprimitive-fouriertransform-eq-inv-mul-gausssum.md) | 213 | `result-track:455017f7d2e026bb10e0e4eec61cf5e4c589fc3126cb98a184055ae5618e3271` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=cba27b8bf3fc36c44ce034676bf475580957f2673b5d1861602a06afe984de33 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/ZMod/Variantffee7868a2e9e3234d99486222db77e10d8f3a68fa8d56fca444d4f1c9ec6452.lean","GRWTSK/_verification/specifications/Analysis/HarmonicAnalysis/FourierAnalysis/ZMod/Variantffee7868a2e9e3234d99486222db77e10d8f3a68fa8d56fca444d4f1c9ec6452.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
