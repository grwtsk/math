# Verification target: Temperate Growth Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5cb955c3f434875ffc3417088861e8076356182d",
  "lexical_observation_count": 45,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/TemperateGrowth/Varianta3961bdbfbae43d4ddfb5e9d6c1d6323bea95398dd9228ad1bfb2731620d88dc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../FunctionalAnalysis/DistributionsGeneralizedFunctionsDistributionSpaces/TemperateGrowthNamespacedPublic.lean/index.md) · [Full source](../../../../../FunctionalAnalysis/DistributionsGeneralizedFunctionsDistributionSpaces/TemperateGrowthNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5cb955c3f434875ffc3417088861e8076356182d`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/TemperateGrowth/Varianta3961bdbfbae43d4ddfb5e9d6c1d6323bea95398dd9228ad1bfb2731620d88dc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/TemperateGrowth/Varianta3961bdbfbae43d4ddfb5e9d6c1d6323bea95398dd9228ad1bfb2731620d88dc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Calculus.ContDiff.Bounds` — import line 20; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.InnerProductSpace.Calculus` — import line 21; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.JapaneseBracket` — import line 22; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Pow.Deriv` — import line 23; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [HasTemperateGrowth](../../../../../FunctionalAnalysis/DistributionsGeneralizedFunctionsDistributionSpaces/TemperateGrowthNamespacedPublic.lean/declarations/hastemperategrowth-source-edition-2.md) | 48 | `declaration-track:9d5bc01cd92bf31eed9bd1612732d005b8670754d8e4040e6df49b61f2bd984d` |
| 2 | `theorem` | [hasTemperateGrowth_iff_isBigO](../../../../../FunctionalAnalysis/DistributionsGeneralizedFunctionsDistributionSpaces/TemperateGrowthNamespacedPublic.lean/declarations/hastemperategrowth-iff-isbigo.md) | 59 | `result-track:56be1d68da55344316e6406972229b04f1dd38ead1ad337b5d27ab4a0a7cefdd` |
| 3 | `theorem` | [HasTemperateGrowth.isBigO](../../../../../FunctionalAnalysis/DistributionsGeneralizedFunctionsDistributionSpaces/TemperateGrowthNamespacedPublic.lean/declarations/hastemperategrowth-isbigo.md) | 71 | `result-track:b98aaaa118cbecde06b80249b56a73be74c6c5815e59ea1c1870659d8e55273c` |
| 4 | `theorem` | [HasTemperateGrowth.isBigO_uniform](../../../../../FunctionalAnalysis/DistributionsGeneralizedFunctionsDistributionSpaces/TemperateGrowthNamespacedPublic.lean/declarations/hastemperategrowth-isbigo-uniform.md) | 81 | `result-track:c4824e153d1385e98fb7e76dde6b1f54f1f4cf8d8dab954fea1c103ab3626d2c` |
| 5 | `theorem` | [HasTemperateGrowth.norm_iteratedFDeriv_le_uniform](../../../../../FunctionalAnalysis/DistributionsGeneralizedFunctionsDistributionSpaces/TemperateGrowthNamespacedPublic.lean/declarations/hastemperategrowth-norm-iteratedfderiv-le-uniform.md) | 93 | `result-track:6154de0540f2feade3eec65352fbfe9d679ad95570aff628d91c669ea0067610` |
| 6 | `lemma` | [HasTemperateGrowth.of_fderiv](../../../../../FunctionalAnalysis/DistributionsGeneralizedFunctionsDistributionSpaces/TemperateGrowthNamespacedPublic.lean/declarations/hastemperategrowth-of-fderiv.md) | 106 | `result-track:12a9905629353c7c6537fc0c567ea8ed2cbf4f836612cd5081868f6a46062a66` |
| 7 | `lemma` | [HasTemperateGrowth.zero](../../../../../FunctionalAnalysis/DistributionsGeneralizedFunctionsDistributionSpaces/TemperateGrowthNamespacedPublic.lean/declarations/hastemperategrowth-zero.md) | 118 | `result-track:869ccdc54e0541d505a2481b33f2a84f602e6fe4a31ce519f9defdc5cf754a22` |
| 8 | `lemma` | [HasTemperateGrowth.const](../../../../../FunctionalAnalysis/DistributionsGeneralizedFunctionsDistributionSpaces/TemperateGrowthNamespacedPublic.lean/declarations/hastemperategrowth-const.md) | 124 | `result-track:8d98d3776d739b0ebf7d646f2257490baac02546bc89b410b4139189374c1447` |
| 9 | `lemma` | [Temperate Growth Namespaced Public](../../../../../FunctionalAnalysis/DistributionsGeneralizedFunctionsDistributionSpaces/TemperateGrowthNamespacedPublic.lean/declarations/hastemperategrowth-source-line-129-occurrence-2.md) | 129 | `result-track:68ccbb5d48062778d490671dfca044e8e2fa2727dc71ee59a964bdeae4f7a180` |
| 10 | `theorem` | [HasTemperateGrowth.comp'](../../../../../FunctionalAnalysis/DistributionsGeneralizedFunctionsDistributionSpaces/TemperateGrowthNamespacedPublic.lean/declarations/hastemperategrowth-comp-source-edition-2.md) | 142 | `result-track:afce8529a0e4e54a36bbf5c03a7a5960184303841a83394d383b6f20ee309c52` |
| 11 | `theorem` | [HasTemperateGrowth.comp](../../../../../FunctionalAnalysis/DistributionsGeneralizedFunctionsDistributionSpaces/TemperateGrowthNamespacedPublic.lean/declarations/hastemperategrowth-comp.md) | 183 | `result-track:32acd96ed273eb5908b218450f485c8bcd7682742fb3c870f5fca1234622669c` |
| 12 | `theorem` | [HasTemperateGrowth.neg](../../../../../FunctionalAnalysis/DistributionsGeneralizedFunctionsDistributionSpaces/TemperateGrowthNamespacedPublic.lean/declarations/hastemperategrowth-neg.md) | 197 | `result-track:6b50673334848948fc9c68f18907fd4822a3da9f1dae7bdb9b2f9eaa4607237b` |
| 13 | `theorem` | [HasTemperateGrowth.add](../../../../../FunctionalAnalysis/DistributionsGeneralizedFunctionsDistributionSpaces/TemperateGrowthNamespacedPublic.lean/declarations/hastemperategrowth-add.md) | 203 | `result-track:8df03e5135c590e6dffbfd5de4d31b04282292f640c4fb17dcc554013bd8259f` |
| 14 | `theorem` | [HasTemperateGrowth.sub](../../../../../FunctionalAnalysis/DistributionsGeneralizedFunctionsDistributionSpaces/TemperateGrowthNamespacedPublic.lean/declarations/hastemperategrowth-sub.md) | 217 | `result-track:41204e10d6ed6773e59e567d25765952e3e76aca5e985c3dcd026ccd4c77e1db` |
| 15 | `theorem` | [HasTemperateGrowth.sum](../../../../../FunctionalAnalysis/DistributionsGeneralizedFunctionsDistributionSpaces/TemperateGrowthNamespacedPublic.lean/declarations/hastemperategrowth-sum.md) | 223 | `result-track:cdd4a599f416ee0fe85813432316221eedd826b9d8d4e83055b4ebbb6c1b4c75` |
| 16 | `theorem` | [Temperate Growth Namespaced Public](../../../../../FunctionalAnalysis/DistributionsGeneralizedFunctionsDistributionSpaces/TemperateGrowthNamespacedPublic.lean/declarations/bilinear-hastemperategrowth.md) | 245 | `result-track:e3a4f1a0b5196899cacead80b371d277282378ae83deb9370c6cc48fb29dc2e2` |
| 17 | `lemma` | [HasTemperateGrowth.id](../../../../../FunctionalAnalysis/DistributionsGeneralizedFunctionsDistributionSpaces/TemperateGrowthNamespacedPublic.lean/declarations/hastemperategrowth-id.md) | 264 | `result-track:30c2bce5687d25ca1d86db34eb1bc89a4a04c6e47395ea9e659ff07362386465` |
| 18 | `lemma` | [HasTemperateGrowth.id'](../../../../../FunctionalAnalysis/DistributionsGeneralizedFunctionsDistributionSpaces/TemperateGrowthNamespacedPublic.lean/declarations/hastemperategrowth-id-source-edition-2.md) | 272 | `result-track:c668840d45ec055db9d2e9cb32cb8609b70fbe5f677bfc4ede16ded0b2c5ce1f` |
| 19 | `theorem` | [HasTemperateGrowth.smul](../../../../../FunctionalAnalysis/DistributionsGeneralizedFunctionsDistributionSpaces/TemperateGrowthNamespacedPublic.lean/declarations/hastemperategrowth-smul.md) | 279 | `result-track:3081e35c05a39eb01244e7049280dfac06f10f8dc6a8251130321e527dfc7eb5` |
| 20 | `theorem` | [HasTemperateGrowth.mul](../../../../../FunctionalAnalysis/DistributionsGeneralizedFunctionsDistributionSpaces/TemperateGrowthNamespacedPublic.lean/declarations/hastemperategrowth-mul.md) | 287 | `result-track:d1070fb59ecef60d213d8f4c08e4bf9633bed2af70320c5fea80ccb57edef76b` |
| 21 | `theorem` | [HasTemperateGrowth.pow](../../../../../FunctionalAnalysis/DistributionsGeneralizedFunctionsDistributionSpaces/TemperateGrowthNamespacedPublic.lean/declarations/hastemperategrowth-pow.md) | 292 | `result-track:31f18e90a4796a3dd4b72f3555d4e6fb7804526a8933ad64cefee72a94f9a19b` |
| 22 | `lemma` | [Temperate Growth Namespaced Public](../../../../../FunctionalAnalysis/DistributionsGeneralizedFunctionsDistributionSpaces/TemperateGrowthNamespacedPublic.lean/declarations/hastemperategrowth-source-line-301-occurrence-2.md) | 301 | `result-track:d817a0a4ea250d98eaab9b97c8cef96b9562c8e5a65fac20ca80f1be1e26151a` |
| 23 | `lemma` | [Temperate Growth Namespaced Public](../../../../../FunctionalAnalysis/DistributionsGeneralizedFunctionsDistributionSpaces/TemperateGrowthNamespacedPublic.lean/declarations/hastemperategrowth-source-line-309-occurrence-2.md) | 309 | `result-track:09a47391ef4bd447513caed0e0115acfc14570cc6688f0519a36b86b65859d24` |
| 24 | `theorem` | [hasTemperateGrowth_inner_left](../../../../../FunctionalAnalysis/DistributionsGeneralizedFunctionsDistributionSpaces/TemperateGrowthNamespacedPublic.lean/declarations/hastemperategrowth-inner-left.md) | 316 | `result-track:c9ef9a5287e7aaa79352fa5095d7259577cd72b1e0f4c804296a3fbc4a51915f` |
| 25 | `theorem` | [hasTemperateGrowth_inner_right](../../../../../FunctionalAnalysis/DistributionsGeneralizedFunctionsDistributionSpaces/TemperateGrowthNamespacedPublic.lean/declarations/hastemperategrowth-inner-right.md) | 320 | `result-track:b17a0c57e933b0b382cb68f149b461f7d9362df8a22e761d931391841c38f680` |
| 26 | `theorem` | [hasTemperateGrowth_norm_sq](../../../../../FunctionalAnalysis/DistributionsGeneralizedFunctionsDistributionSpaces/TemperateGrowthNamespacedPublic.lean/declarations/hastemperategrowth-norm-sq.md) | 325 | `result-track:f9ba8f7df1700128ea294a7531fa443fa89b88830c827dee1d2c793958f7e814` |
| 27 | `theorem` | [hasTemperateGrowth_one_add_norm_sq_rpow](../../../../../FunctionalAnalysis/DistributionsGeneralizedFunctionsDistributionSpaces/TemperateGrowthNamespacedPublic.lean/declarations/hastemperategrowth-one-add-norm-sq-rpow.md) | 337 | `result-track:ac45b89b6f6d72f068565027325ffad23d80525a886bfd639f1b77a26bd63bb7` |
| 28 | `theorem` | [Real.hasTemperateGrowth_sin](../../../../../FunctionalAnalysis/DistributionsGeneralizedFunctionsDistributionSpaces/TemperateGrowthNamespacedPublic.lean/declarations/real-hastemperategrowth-sin.md) | 417 | `result-track:802ef5de61089c4dae276d98c3e83e2d12a5e811c78b7ff06c6eb9c6d9e495f4` |
| 29 | `theorem` | [Real.hasTemperateGrowth_cos](../../../../../FunctionalAnalysis/DistributionsGeneralizedFunctionsDistributionSpaces/TemperateGrowthNamespacedPublic.lean/declarations/real-hastemperategrowth-cos.md) | 423 | `result-track:4bb6f5aff2f8481b0dbe9aa5692e049baa31f185232d6c27fbab294b426fefaa` |
| 30 | `theorem` | [Complex.hasTemperateGrowth_ofReal](../../../../../FunctionalAnalysis/DistributionsGeneralizedFunctionsDistributionSpaces/TemperateGrowthNamespacedPublic.lean/declarations/complex-hastemperategrowth-ofreal.md) | 433 | `result-track:11836fab94b627ca6f6413e955c1d2204e8d8255fb200a70fc7ccec84095dbb0` |
| 31 | `theorem` | [Complex.hasTemperateGrowth_re](../../../../../FunctionalAnalysis/DistributionsGeneralizedFunctionsDistributionSpaces/TemperateGrowthNamespacedPublic.lean/declarations/complex-hastemperategrowth-re.md) | 440 | `result-track:f107b977840ca8ebc71d2d432bc740c08366165cdc1f281f40cafc05dd04abd7` |
| 32 | `theorem` | [Complex.hasTemperateGrowth_im](../../../../../FunctionalAnalysis/DistributionsGeneralizedFunctionsDistributionSpaces/TemperateGrowthNamespacedPublic.lean/declarations/complex-hastemperategrowth-im.md) | 444 | `result-track:802afc9370539838595b3831842fe9c0ac3d9fef92b5f3edfe1755c1010b8542` |
| 33 | `theorem` | [Complex.hasTemperateGrowth_exp_mul_I](../../../../../FunctionalAnalysis/DistributionsGeneralizedFunctionsDistributionSpaces/TemperateGrowthNamespacedPublic.lean/declarations/complex-hastemperategrowth-exp-mul-i.md) | 449 | `result-track:d54d7eace6fa6483da2ba536c9bd5fc626202a5e9f3c53ee977ecf3e89232df2` |
| 34 | `theorem` | [RCLike.hasTemperateGrowth_ofReal](../../../../../FunctionalAnalysis/DistributionsGeneralizedFunctionsDistributionSpaces/TemperateGrowthNamespacedPublic.lean/declarations/rclike-hastemperategrowth-ofreal.md) | 462 | `result-track:17cb530d11264a1938bf9168cd3b4c51e02f3ff2b04819bf35b93443dc3745fc` |
| 35 | `theorem` | [RCLike.hasTemperateGrowth_re](../../../../../FunctionalAnalysis/DistributionsGeneralizedFunctionsDistributionSpaces/TemperateGrowthNamespacedPublic.lean/declarations/rclike-hastemperategrowth-re.md) | 470 | `result-track:1d8acbcbe7f6a16f404dfba331aedc8914fee3438e4e78f2d6377f9c5e8ca278` |
| 36 | `theorem` | [RCLike.hasTemperateGrowth_im](../../../../../FunctionalAnalysis/DistributionsGeneralizedFunctionsDistributionSpaces/TemperateGrowthNamespacedPublic.lean/declarations/rclike-hastemperategrowth-im.md) | 475 | `result-track:cd1e2dff14818287e2f4dff25e32b5f4702fda7228a1eb18e835017783d94e86` |
| 37 | `class` | [HasTemperateGrowth](../../../../../FunctionalAnalysis/DistributionsGeneralizedFunctionsDistributionSpaces/TemperateGrowthNamespacedPublic.lean/declarations/hastemperategrowth.md) | 489 | `declaration-track:7941edaabcbfb4353f3f40d5c98d7860426b5fb12192dda5e9129b8c1c671993` |
| 38 | `def` | [integrablePower](../../../../../FunctionalAnalysis/DistributionsGeneralizedFunctionsDistributionSpaces/TemperateGrowthNamespacedPublic.lean/declarations/integrablepower.md) | 495 | `declaration-track:f9bd78b7c635aff94eb688590f47ee2a0436267577969bcf58819decfbef6ce9` |
| 39 | `lemma` | [integrable_pow_neg_integrablePower](../../../../../FunctionalAnalysis/DistributionsGeneralizedFunctionsDistributionSpaces/TemperateGrowthNamespacedPublic.lean/declarations/integrable-pow-neg-integrablepower.md) | 498 | `result-track:29ff35e300d13522e34572246c215e66b0d4879da303dde67fe847dfc428c6c5` |
| 40 | `instance` | [Temperate Growth Namespaced Public](../../../../../FunctionalAnalysis/DistributionsGeneralizedFunctionsDistributionSpaces/TemperateGrowthNamespacedPublic.lean/declarations/insthastemperategrowth.md) | 503 | `declaration-track:2a47b27d0c2a21ad46011f0f421dbbb0da787bbf4ab3dc1c79b1c5c25db3981a` |
| 41 | `instance` | [IsAddHaarMeasure.instHasTemperateGrowth](../../../../../FunctionalAnalysis/DistributionsGeneralizedFunctionsDistributionSpaces/TemperateGrowthNamespacedPublic.lean/declarations/isaddhaarmeasure-insthastemperategrowth.md) | 507 | `declaration-track:ac250fc25f878f43ac902e917227e2ae5e580195ef76d54711c368441490c4d0` |
| 42 | `lemma` | [Temperate Growth Namespaced Public](../../../../../FunctionalAnalysis/DistributionsGeneralizedFunctionsDistributionSpaces/TemperateGrowthNamespacedPublic.lean/declarations/pow-mul-le-of-le-of-pow-mul-le.md) | 515 | `result-track:359f863722d8e46010311cc00a237e1e0b7f5364ca313d3c4cf2a3d2be168959` |
| 43 | `lemma` | [Temperate Growth Namespaced Public](../../../../../FunctionalAnalysis/DistributionsGeneralizedFunctionsDistributionSpaces/TemperateGrowthNamespacedPublic.lean/declarations/integrable-of-le-of-pow-mul-le.md) | 548 | `result-track:6c0fcb8fa4fd6891fa87696638554b37ffb85b58f39baa9e60f4cb042c7a324b` |
| 44 | `lemma` | [Temperate Growth Namespaced Public](../../../../../FunctionalAnalysis/DistributionsGeneralizedFunctionsDistributionSpaces/TemperateGrowthNamespacedPublic.lean/declarations/integral-pow-mul-le-of-le-of-pow-mul-le.md) | 560 | `result-track:6ee837269025ab0135b4986a0ca43ab8afa40d95ab7f23b034bb737885b6f60c` |
| 45 | `theorem` | [HasTemperateGrowth.exists_eLpNorm_lt_top](../../../../../FunctionalAnalysis/DistributionsGeneralizedFunctionsDistributionSpaces/TemperateGrowthNamespacedPublic.lean/declarations/hastemperategrowth-exists-elpnorm-lt-top.md) | 575 | `result-track:c7ba6a872f2094470f8a0025f4f96052562e89828e9ccf460f57ff4f52277f38` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8000156f5a1020cc7a38ae8ba46f9c6d4e29cfc4eed472d501f9cda962fd30f5 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/FunctionalAnalysis/TemperateGrowth/Varianta3961bdbfbae43d4ddfb5e9d6c1d6323bea95398dd9228ad1bfb2731620d88dc.lean","GRWTSK/_verification/specifications/Analysis/FunctionalAnalysis/TemperateGrowth/Varianta3961bdbfbae43d4ddfb5e9d6c1d6323bea95398dd9228ad1bfb2731620d88dc.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
