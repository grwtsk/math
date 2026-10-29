# Verification target: Fourier Transform Deriv Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9aaf9246a748d42ddbf7989048cd3267580295bf",
  "lexical_observation_count": 49,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FourierTransformDeriv/Variantdfeeaf9e72c1e3b417201766fa02f3dc65118a3f8ad98972ec5b4dece19674af.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../HarmonicAnalysisOnEuclideanSpaces/FourierTransformDerivNamespacedPublic.lean/index.md) · [Full source](../../../../HarmonicAnalysisOnEuclideanSpaces/FourierTransformDerivNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9aaf9246a748d42ddbf7989048cd3267580295bf`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FourierTransformDeriv/Variantdfeeaf9e72c1e3b417201766fa02f3dc65118a3f8ad98972ec5b4dece19674af.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/FourierTransformDeriv/Variantdfeeaf9e72c1e3b417201766fa02f3dc65118a3f8ad98972ec5b4dece19674af.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Calculus.ContDiff.Bounds` — import line 17; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.ContDiff.CPolynomial` — import line 18; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.LineDeriv.IntegrationByParts` — import line 19; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.ParametricIntegral` — import line 20; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [hasDerivAt_fourierChar](../../../../HarmonicAnalysisOnEuclideanSpaces/FourierTransformDerivNamespacedPublic.lean/declarations/hasderivat-fourierchar.md) | 107 | `result-track:00617bb57480d66188eec0f2c9b5af489e12ba782f0c2d55e959123333233a84` |
| 2 | `lemma` | [differentiable_fourierChar](../../../../HarmonicAnalysisOnEuclideanSpaces/FourierTransformDerivNamespacedPublic.lean/declarations/differentiable-fourierchar.md) | 114 | `result-track:5bb26719eb5769114f0cb424787c7b4f70749fa35194535b4fc75cfa4ed3ba49` |
| 3 | `lemma` | [deriv_fourierChar](../../../../HarmonicAnalysisOnEuclideanSpaces/FourierTransformDerivNamespacedPublic.lean/declarations/deriv-fourierchar.md) | 117 | `result-track:47d2b01b2b9054f61a092e65be3c735799c30671228510fbd0237f244949acbc` |
| 4 | `lemma` | [hasFDerivAt_fourierChar_neg_bilinear_right](../../../../HarmonicAnalysisOnEuclideanSpaces/FourierTransformDerivNamespacedPublic.lean/declarations/hasfderivat-fourierchar-neg-bilinear-right.md) | 123 | `result-track:d4be0516c92b717d397deb9e8ba853e3079670c5a51c64c1ed959505ba0c951e` |
| 5 | `lemma` | [fderiv_fourierChar_neg_bilinear_right_apply](../../../../HarmonicAnalysisOnEuclideanSpaces/FourierTransformDerivNamespacedPublic.lean/declarations/fderiv-fourierchar-neg-bilinear-right-apply.md) | 134 | `result-track:d14e97efe4bedcf444bfc758da0a84393f01eee6f0d524fe4fe088371729b7c4` |
| 6 | `lemma` | [differentiable_fourierChar_neg_bilinear_right](../../../../HarmonicAnalysisOnEuclideanSpaces/FourierTransformDerivNamespacedPublic.lean/declarations/differentiable-fourierchar-neg-bilinear-right.md) | 140 | `result-track:6500b0b805ae1572edaed526d635427eb537d3f9b509466ff6a76f8db8b837d4` |
| 7 | `lemma` | [hasFDerivAt_fourierChar_neg_bilinear_left](../../../../HarmonicAnalysisOnEuclideanSpaces/FourierTransformDerivNamespacedPublic.lean/declarations/hasfderivat-fourierchar-neg-bilinear-left.md) | 144 | `result-track:6f4a0402c20f6cc59574e15938ba8862a3914db9cd51b2a1b4640b0ca09dd6b5` |
| 8 | `lemma` | [fderiv_fourierChar_neg_bilinear_left_apply](../../../../HarmonicAnalysisOnEuclideanSpaces/FourierTransformDerivNamespacedPublic.lean/declarations/fderiv-fourierchar-neg-bilinear-left-apply.md) | 149 | `result-track:4715bf911267ff68bdbc4aeba3b021bbc17f7e9b0f6dff55f69aeac92e9a7a3a` |
| 9 | `lemma` | [differentiable_fourierChar_neg_bilinear_left](../../../../HarmonicAnalysisOnEuclideanSpaces/FourierTransformDerivNamespacedPublic.lean/declarations/differentiable-fourierchar-neg-bilinear-left.md) | 156 | `result-track:dcb283532f0ada36454d3f2e4040a66da4eecfbe7417b8277576dd5244f16d62` |
| 10 | `def` | [fourierSMulRight](../../../../HarmonicAnalysisOnEuclideanSpaces/FourierTransformDerivNamespacedPublic.lean/declarations/fouriersmulright.md) | 172 | `declaration-track:5c43802ac05b89a5fda6abf8434c48cfad54ddf6b958baa3370e2a939f9b2070` |
| 11 | `lemma` | [fourierSMulRight_apply](../../../../HarmonicAnalysisOnEuclideanSpaces/FourierTransformDerivNamespacedPublic.lean/declarations/fouriersmulright-apply.md) | 174 | `result-track:155acf43f8878a673ac47dc6d7d711edfacf436c29633460fa5302924d05b164` |
| 12 | `lemma` | [hasFDerivAt_fourierChar_smul](../../../../HarmonicAnalysisOnEuclideanSpaces/FourierTransformDerivNamespacedPublic.lean/declarations/hasfderivat-fourierchar-smul.md) | 179 | `result-track:625dc83d381996a74c08dd2bcb42564bb1866b127063b0755da426f91068903d` |
| 13 | `lemma` | [norm_fourierSMulRight](../../../../HarmonicAnalysisOnEuclideanSpaces/FourierTransformDerivNamespacedPublic.lean/declarations/norm-fouriersmulright.md) | 191 | `result-track:88e64247f43fde1c3aa0bea7ee9e420d7e1805e2915e9b6ba0b130e3d15af1f2` |
| 14 | `lemma` | [norm_fourierSMulRight_le](../../../../HarmonicAnalysisOnEuclideanSpaces/FourierTransformDerivNamespacedPublic.lean/declarations/norm-fouriersmulright-le.md) | 197 | `result-track:b9e1358ec527802276daffb40be755d83a67c6bd6267c19058c4f0075eebef88` |
| 15 | `lemma` | [Fourier Transform Deriv Namespaced Public](../../../../HarmonicAnalysisOnEuclideanSpaces/FourierTransformDerivNamespacedPublic.lean/declarations/root-grwtsk-analysis-realanalysis-differentialcalculus-hasderivatfourier-source-edition-3.md) | 203 | `result-track:79225d4b155444e4129ecb6e1e9e7e6114f063d3c8a955c45071bfa9991a94fc` |
| 16 | `theorem` | [hasFDerivAt_fourierIntegral](../../../../HarmonicAnalysisOnEuclideanSpaces/FourierTransformDerivNamespacedPublic.lean/declarations/hasfderivat-fourierintegral.md) | 221 | `result-track:ff8d1f947b611e0924b52b0a77d51026b4cde6d0d742d04131b0a2031d24ea9f` |
| 17 | `lemma` | [fderiv_fourierIntegral](../../../../HarmonicAnalysisOnEuclideanSpaces/FourierTransformDerivNamespacedPublic.lean/declarations/fderiv-fourierintegral.md) | 248 | `result-track:9dde79ba35972d65653133711688f8f25735c2a227183bfb12fb73c90260687c` |
| 18 | `lemma` | [differentiable_fourierIntegral](../../../../HarmonicAnalysisOnEuclideanSpaces/FourierTransformDerivNamespacedPublic.lean/declarations/differentiable-fourierintegral.md) | 256 | `result-track:a38db247e36627056748946cd6fb255dc900c2b9c35ec7bac575559c0919dba6` |
| 19 | `theorem` | [fourierIntegral_fderiv](../../../../HarmonicAnalysisOnEuclideanSpaces/FourierTransformDerivNamespacedPublic.lean/declarations/fourierintegral-fderiv.md) | 264 | `result-track:9b771b4f1ad8924db46ba2bbcbe3eb4f827759fd797175711d5f0e53441b73c6` |
| 20 | `def` | [fourierPowSMulRight](../../../../HarmonicAnalysisOnEuclideanSpaces/FourierTransformDerivNamespacedPublic.lean/declarations/fourierpowsmulright.md) | 298 | `declaration-track:8e1822db29d6af53463a3eddbcecd6be2374c42c41d3f212615658745b484a9e` |
| 21 | `lemma` | [fourierPowSMulRight_apply](../../../../HarmonicAnalysisOnEuclideanSpaces/FourierTransformDerivNamespacedPublic.lean/declarations/fourierpowsmulright-apply.md) | 304 | `result-track:aee0769b925b1097cfb9e21136bc5c64fe194d83bce5c2c661e6480bb4faba3a` |
| 22 | `lemma` | [fourierPowSMulRight_eq_comp](../../../../HarmonicAnalysisOnEuclideanSpaces/FourierTransformDerivNamespacedPublic.lean/declarations/fourierpowsmulright-eq-comp.md) | 312 | `result-track:5b809e5091f3f4c3e50beb2cec408ab2decf1773dd5ab103e661ca6e63149679` |
| 23 | `lemma` | [Fourier Transform Deriv Namespaced Public](../../../../HarmonicAnalysisOnEuclideanSpaces/FourierTransformDerivNamespacedPublic.lean/declarations/root-grwtsk-analysis-realanalysis-differentialcalculus-hasderivatfourier-source-edition-4.md) | 318 | `result-track:a0a78e12db3b93581614778fc9552249f3d26b28c70211ff0b70921266bf711c` |
| 24 | `lemma` | [Fourier Transform Deriv Namespaced Public](../../../../HarmonicAnalysisOnEuclideanSpaces/FourierTransformDerivNamespacedPublic.lean/declarations/root-grwtsk-analysis-realanalysis-differentialcalculus-hasderivatfourier.md) | 325 | `result-track:1c1dd1cf2ed136b93879f4d1eb0d4bea9d0abf388c3433f977836087b00f1d30` |
| 25 | `lemma` | [norm_fourierPowSMulRight_le](../../../../HarmonicAnalysisOnEuclideanSpaces/FourierTransformDerivNamespacedPublic.lean/declarations/norm-fourierpowsmulright-le.md) | 334 | `result-track:8d878c4e401db455a4d9b60198248804a8af72b3d2a0e1321098007b3dfe3d15` |
| 26 | `lemma` | [norm_iteratedFDeriv_fourierPowSMulRight](../../../../HarmonicAnalysisOnEuclideanSpaces/FourierTransformDerivNamespacedPublic.lean/declarations/norm-iteratedfderiv-fourierpowsmulright.md) | 349 | `result-track:f713dc709a7dba7c574407d3459ec9822f4c54c48e4e1388aca1467972b5ecf8` |
| 27 | `lemma` | [Fourier Transform Deriv Namespaced Public](../../../../HarmonicAnalysisOnEuclideanSpaces/FourierTransformDerivNamespacedPublic.lean/declarations/root-grwtsk-analysis-realanalysis-differentialcalculus-hasderivatfourier-source-edition-2.md) | 440 | `result-track:4d9d10a93659c626e4dcb6418f7a211ad7c09721a5b1af78a473f18713580369` |
| 28 | `lemma` | [integrable_fourierPowSMulRight](../../../../HarmonicAnalysisOnEuclideanSpaces/FourierTransformDerivNamespacedPublic.lean/declarations/integrable-fourierpowsmulright.md) | 449 | `result-track:9cac6afc6bccdeea5ee0d7d09ffbeb247cce632c3c7da5ddfa061cb58845e866` |
| 29 | `lemma` | [hasFTaylorSeriesUpTo_fourierIntegral](../../../../HarmonicAnalysisOnEuclideanSpaces/FourierTransformDerivNamespacedPublic.lean/declarations/hasftaylorseriesupto-fourierintegral.md) | 455 | `result-track:49bd76e2f4491f7eef96fafca33a2e3c480bca9a6c24c024a95c46ce858c77d6` |
| 30 | `lemma` | [hasFTaylorSeriesUpTo_fourierIntegral'](../../../../HarmonicAnalysisOnEuclideanSpaces/FourierTransformDerivNamespacedPublic.lean/declarations/hasftaylorseriesupto-fourierintegral-source-edition-2.md) | 507 | `result-track:63452802a924297a601dcce16c7bc6a7f0b12f17478ac00804f761f9e6170899` |
| 31 | `theorem` | [contDiff_fourierIntegral](../../../../HarmonicAnalysisOnEuclideanSpaces/FourierTransformDerivNamespacedPublic.lean/declarations/contdiff-fourierintegral.md) | 515 | `result-track:0508ceb6b1eabf44746814417944bbfa0cee274ad1df98b2cb848a501ab41303` |
| 32 | `lemma` | [iteratedFDeriv_fourierIntegral](../../../../HarmonicAnalysisOnEuclideanSpaces/FourierTransformDerivNamespacedPublic.lean/declarations/iteratedfderiv-fourierintegral.md) | 527 | `result-track:57b38d348a99aa283b3e279b65a2d20efa0e9332ec113529f0781794db06eea0` |
| 33 | `theorem` | [fourierIntegral_iteratedFDeriv](../../../../HarmonicAnalysisOnEuclideanSpaces/FourierTransformDerivNamespacedPublic.lean/declarations/fourierintegral-iteratedfderiv.md) | 540 | `result-track:f18e977c1c9307cc64a125e1202a9e0d8ff57b060a3e2fcdca424dfd73b15880` |
| 34 | `theorem` | [fourierPowSMulRight_iteratedFDeriv_fourierIntegral](../../../../HarmonicAnalysisOnEuclideanSpaces/FourierTransformDerivNamespacedPublic.lean/declarations/fourierpowsmulright-iteratedfderiv-fourierintegral.md) | 580 | `result-track:761de245d1d9d992d730b12f6183cde83e7a7aa704d8fd8c469a655d2976f660` |
| 35 | `theorem` | [norm_fourierPowSMulRight_iteratedFDeriv_fourierIntegral_le](../../../../HarmonicAnalysisOnEuclideanSpaces/FourierTransformDerivNamespacedPublic.lean/declarations/norm-fourierpowsmulright-iteratedfderiv-fourierintegral-le.md) | 614 | `result-track:3dae3ca96d0734b91868590b272e1d18bd11fe9d6a80ea178c14d161e8ab0e21` |
| 36 | `lemma` | [pow_mul_norm_iteratedFDeriv_fourierIntegral_le](../../../../HarmonicAnalysisOnEuclideanSpaces/FourierTransformDerivNamespacedPublic.lean/declarations/pow-mul-norm-iteratedfderiv-fourierintegral-le.md) | 644 | `result-track:f2ef2ea886a0d687baae8c1de16894e6f64e2190e5d9500814e2c113780478bf` |
| 37 | `theorem` | [hasFDerivAt_fourier](../../../../HarmonicAnalysisOnEuclideanSpaces/FourierTransformDerivNamespacedPublic.lean/declarations/hasfderivat-fourier.md) | 686 | `result-track:a14a09aaf0d0cfae45bdbc25f015792cbaae201d72daf9336cf59fe48b0d086d` |
| 38 | `theorem` | [fderiv_fourier](../../../../HarmonicAnalysisOnEuclideanSpaces/FourierTransformDerivNamespacedPublic.lean/declarations/fderiv-fourier.md) | 693 | `result-track:6b3ebc56ac9b066ad0cf27b4ab220cadcc6e42710233bf324eac26da83367e3f` |
| 39 | `theorem` | [differentiable_fourier](../../../../HarmonicAnalysisOnEuclideanSpaces/FourierTransformDerivNamespacedPublic.lean/declarations/differentiable-fourier.md) | 698 | `result-track:3ad07cfa7e42f3e1d70bbc136070a3966afa1cc63c0f5e98eb48799fa01f4fa5` |
| 40 | `theorem` | [fourier_fderiv](../../../../HarmonicAnalysisOnEuclideanSpaces/FourierTransformDerivNamespacedPublic.lean/declarations/fourier-fderiv.md) | 705 | `result-track:d39d37d6c1845c71fff6e380edd95f8ea76f7bd1e5f80c9e2c94e8ea30eaccff` |
| 41 | `theorem` | [contDiff_fourier](../../../../HarmonicAnalysisOnEuclideanSpaces/FourierTransformDerivNamespacedPublic.lean/declarations/contdiff-fourier.md) | 712 | `result-track:4b4dd1f92f2025cfc6cf37bcd5c7dfa2f55e7c6818bd0da583fa8158e3bd28bf` |
| 42 | `theorem` | [iteratedFDeriv_fourier](../../../../HarmonicAnalysisOnEuclideanSpaces/FourierTransformDerivNamespacedPublic.lean/declarations/iteratedfderiv-fourier.md) | 719 | `result-track:7247d250aec898200321f8d8a4ac0ca34a0925cedc2bade5ae65cbbe7a2f7d68` |
| 43 | `theorem` | [fourier_iteratedFDeriv](../../../../HarmonicAnalysisOnEuclideanSpaces/FourierTransformDerivNamespacedPublic.lean/declarations/fourier-iteratedfderiv.md) | 727 | `result-track:6d5995b4143147112247c3f06d189a2ada14b12eea22a7c4165c270e7ec601fc` |
| 44 | `lemma` | [pow_mul_norm_iteratedFDeriv_fourier_le](../../../../HarmonicAnalysisOnEuclideanSpaces/FourierTransformDerivNamespacedPublic.lean/declarations/pow-mul-norm-iteratedfderiv-fourier-le.md) | 736 | `result-track:7328ce55eda2f4edf58e0ef9d9079d19dc5d8eeb629839c9ac0069ce79579991` |
| 45 | `lemma` | [hasDerivAt_fourier](../../../../HarmonicAnalysisOnEuclideanSpaces/FourierTransformDerivNamespacedPublic.lean/declarations/hasderivat-fourier.md) | 769 | `result-track:b757c33093b8f904a0bdcb9f0c1cd7db4e95486d78be0486fe6d101116cdcf9c` |
| 46 | `theorem` | [deriv_fourier](../../../../HarmonicAnalysisOnEuclideanSpaces/FourierTransformDerivNamespacedPublic.lean/declarations/deriv-fourier.md) | 789 | `result-track:0fd2c60caad2a494ae5871f3b25eff6f6a2aac1e28058fe6f840c77881f79057` |
| 47 | `theorem` | [fourier_deriv](../../../../HarmonicAnalysisOnEuclideanSpaces/FourierTransformDerivNamespacedPublic.lean/declarations/fourier-deriv.md) | 797 | `result-track:926f9dfe6399c460a9d1ebab6bdd0cfdff13c124bd147f911658708222c41bd7` |
| 48 | `theorem` | [iteratedDeriv_fourier](../../../../HarmonicAnalysisOnEuclideanSpaces/FourierTransformDerivNamespacedPublic.lean/declarations/iteratedderiv-fourier.md) | 810 | `result-track:a1f46d3c2cb28fd9e4511c7ded876b80bf646fded460f4f690837cdc661e8a28` |
| 49 | `theorem` | [fourier_iteratedDeriv](../../../../HarmonicAnalysisOnEuclideanSpaces/FourierTransformDerivNamespacedPublic.lean/declarations/fourier-iteratedderiv.md) | 826 | `result-track:06091949fb6149a80ac5758e98b82d19361734145bc13355c7c96f259f8affce` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c6966f2e0ab3261eaaca664fe70d35d186e174ca0673b52d7933a5702c926fd7 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FourierTransformDeriv/Variantdfeeaf9e72c1e3b417201766fa02f3dc65118a3f8ad98972ec5b4dece19674af.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/DifferentialCalculus/FourierTransformDeriv/Variantdfeeaf9e72c1e3b417201766fa02f3dc65118a3f8ad98972ec5b4dece19674af.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
