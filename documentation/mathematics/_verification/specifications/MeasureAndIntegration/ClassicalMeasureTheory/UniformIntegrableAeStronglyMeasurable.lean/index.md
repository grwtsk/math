# Verification target: Uniform Integrable Ae Strongly Measurable

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0a20fe34047ff03983087f39f261020e75101cf0",
  "lexical_observation_count": 47,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/UniformIntegrable/Variant95fa7b9bb1072b70e0bd776ca88cb957d33bb22a0c8931e7833937f55ebf4278.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/UniformIntegrableAeStronglyMeasurable.lean/index.md) · [Full source](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/UniformIntegrableAeStronglyMeasurable.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0a20fe34047ff03983087f39f261020e75101cf0`.

Source path: `GRWTSK/Analysis/MeasureTheory/UniformIntegrable/Variant95fa7b9bb1072b70e0bd776ca88cb957d33bb22a0c8931e7833937f55ebf4278.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/UniformIntegrable/Variant95fa7b9bb1072b70e0bd776ca88cb957d33bb22a0c8931e7833937f55ebf4278.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Function.ConvergenceInMeasure` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.L1Space` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [UnifIntegrable](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/UniformIntegrableAeStronglyMeasurable.lean/declarations/unifintegrable-source-edition-2.md) | 65 | `declaration-track:82825f3811a9029a2919ef19b91513782246161e7d33fe4d61f0f98200465a29` |
| 2 | `def` | [UniformIntegrable](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/UniformIntegrableAeStronglyMeasurable.lean/declarations/uniformintegrable.md) | 72 | `declaration-track:8977497fc9b36a58fca599b9af2d9812742395b9b8786adef09823107e2b93d8` |
| 3 | `theorem` | [aeStronglyMeasurable](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/UniformIntegrableAeStronglyMeasurable.lean/declarations/aestronglymeasurable.md) | 78 | `result-track:87d4f228f09ff3a868d0c97e90225660fda974f1cf9c7eb57c01314e68be1926` |
| 4 | `theorem` | [unifIntegrable](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/UniformIntegrableAeStronglyMeasurable.lean/declarations/unifintegrable.md) | 83 | `result-track:4682ca5382f578759afef3756a34b48777e67314072ed50b1c9406c8a6b39675` |
| 5 | `theorem` | [memℒp](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/UniformIntegrableAeStronglyMeasurable.lean/declarations/mem-p.md) | 88 | `result-track:c6b00872108345004bb15c32cc1dc43bff97329b53ed399411c98a9cb7cd8f76` |
| 6 | `theorem` | [add](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/UniformIntegrableAeStronglyMeasurable.lean/declarations/add.md) | 108 | `result-track:55dafb4cfbc3addc982e208ee43d5267cda28dfba3b9f8a53c4c486887483e4f` |
| 7 | `theorem` | [neg](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/UniformIntegrableAeStronglyMeasurable.lean/declarations/neg.md) | 125 | `result-track:5975db1bd9696d5e4a2efc95595b696753abeeba84dec4599af3d8681470df6a` |
| 8 | `theorem` | [sub](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/UniformIntegrableAeStronglyMeasurable.lean/declarations/sub.md) | 130 | `result-track:96bd8b26cc5dde8326222b2371f5b26d127d090cd25daf3d1c3a8c26c5219580` |
| 9 | `theorem` | [ae_eq](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/UniformIntegrableAeStronglyMeasurable.lean/declarations/ae-eq.md) | 137 | `result-track:63d39f6cebfda9914761d8bf759e1f325929509f5d17cb68f8ba5839a1a5437c` |
| 10 | `theorem` | [unifIntegrable_zero_meas](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/UniformIntegrableAeStronglyMeasurable.lean/declarations/unifintegrable-zero-meas.md) | 148 | `result-track:d70c768e087f8f08cb5cf4fa90ca623f04dd7f9111bced0fa1fb878ab11615de` |
| 11 | `theorem` | [unifIntegrable_congr_ae](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/UniformIntegrableAeStronglyMeasurable.lean/declarations/unifintegrable-congr-ae.md) | 153 | `result-track:e5c4f2b4ebdaf3e5626496813113944a8c5ce35ad96865a2c036feb601e08f4a` |
| 12 | `theorem` | [tendsto_indicator_ge](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/UniformIntegrableAeStronglyMeasurable.lean/declarations/tendsto-indicator-ge.md) | 158 | `result-track:a2d1f380deb82a6aa162a27b1740518613ec6943e463f54958369e11bcbc2e1d` |
| 13 | `theorem` | [Memℒp.integral_indicator_norm_ge_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/UniformIntegrableAeStronglyMeasurable.lean/declarations/mem-p-integral-indicator-norm-ge-le.md) | 176 | `result-track:95a6808efe5dc015768710d8a344f01e2bd724c3af86f421b151dd1270ffa33c` |
| 14 | `theorem` | [Memℒp.integral_indicator_norm_ge_nonneg_le_of_meas](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/UniformIntegrableAeStronglyMeasurable.lean/declarations/mem-p-integral-indicator-norm-ge-nonneg-le-of-meas.md) | 213 | `result-track:f749701c2c2b0eb0eb3dac5f55e560a3028ca3b8ed8a696764d17ec9fd8adefd` |
| 15 | `theorem` | [Memℒp.integral_indicator_norm_ge_nonneg_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/UniformIntegrableAeStronglyMeasurable.lean/declarations/mem-p-integral-indicator-norm-ge-nonneg-le.md) | 220 | `result-track:a4cf26a794455a354d278e9460e8a99ef12bf32152f1ac0c14b5a204d5db849a` |
| 16 | `theorem` | [Memℒp.snormEssSup_indicator_norm_ge_eq_zero](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/UniformIntegrableAeStronglyMeasurable.lean/declarations/mem-p-snormesssup-indicator-norm-ge-eq-zero.md) | 231 | `result-track:7ae5e3eb6e31046e4a32c5b317cddf373bd70bd4e22a2f0f0d29c8c1554a47f2` |
| 17 | `theorem` | [Memℒp.snorm_indicator_norm_ge_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/UniformIntegrableAeStronglyMeasurable.lean/declarations/mem-p-snorm-indicator-norm-ge-le.md) | 259 | `result-track:36ab948d4acd6a58e59d00fd8c6d4763bd407ca686e191e5f4c51c67b9cfe311` |
| 18 | `theorem` | [Memℒp.snorm_indicator_norm_ge_pos_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/UniformIntegrableAeStronglyMeasurable.lean/declarations/mem-p-snorm-indicator-norm-ge-pos-le.md) | 297 | `result-track:326efbe91889241d2f46ca921ec8a5abb5fdecfd7488d9e20de755777818af1d` |
| 19 | `theorem` | [snorm_indicator_le_of_bound](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/UniformIntegrableAeStronglyMeasurable.lean/declarations/snorm-indicator-le-of-bound.md) | 311 | `result-track:a5f55c010137d84499dd0b3c100f84aa34058a6575dd534b0131a9c834150f6c` |
| 20 | `theorem` | [Memℒp.snorm_indicator_le'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/UniformIntegrableAeStronglyMeasurable.lean/declarations/mem-p-snorm-indicator-le-source-edition-2.md) | 345 | `result-track:6044eb7bc3346b3a32c01bb1ad5020e1e98fcfa54c8c5c90c06120f6ec9e5a9e` |
| 21 | `theorem` | [Memℒp.snorm_indicator_le_of_meas](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/UniformIntegrableAeStronglyMeasurable.lean/declarations/mem-p-snorm-indicator-le-of-meas.md) | 377 | `result-track:b72c962c4f04cea5463e9926701a8a26bf97c3d889cccd3c9908f7a07a332ad5` |
| 22 | `theorem` | [Memℒp.snorm_indicator_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/UniformIntegrableAeStronglyMeasurable.lean/declarations/mem-p-snorm-indicator-le.md) | 388 | `result-track:520bb9a12d29981355b54c747c0267b8fb7d440202a6416c72d3bc36ef98f981` |
| 23 | `theorem` | [unifIntegrable_const](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/UniformIntegrableAeStronglyMeasurable.lean/declarations/unifintegrable-const.md) | 402 | `result-track:ab76420e954fa8fcf90be34cc424c81c8f324b4643e4794d198c3fff7637a083` |
| 24 | `theorem` | [unifIntegrable_subsingleton](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/UniformIntegrableAeStronglyMeasurable.lean/declarations/unifintegrable-subsingleton.md) | 410 | `result-track:27d00ea48b4b2e3597e081548ae4e421c5cf67b9c921a50e6dda6840bee69ce4` |
| 25 | `theorem` | [unifIntegrable_fin](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/UniformIntegrableAeStronglyMeasurable.lean/declarations/unifintegrable-fin.md) | 423 | `result-track:756b4de9790adc28bd3b44c907c20f18dd4d4f861ef879f7107223692c716c64` |
| 26 | `theorem` | [unifIntegrable_finite](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/UniformIntegrableAeStronglyMeasurable.lean/declarations/unifintegrable-finite.md) | 450 | `result-track:c192bf3af223b3568bba759b5ebcb2b7c7b77dbac86fb4c569f7e150146beed7` |
| 27 | `theorem` | [snorm_sub_le_of_dist_bdd](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/UniformIntegrableAeStronglyMeasurable.lean/declarations/snorm-sub-le-of-dist-bdd.md) | 465 | `result-track:3f87749aef376d51f58a52d7ecfb6a6259897d318902032085d0372d2b5ffba4` |
| 28 | `theorem` | [tendsto_Lp_of_tendsto_ae_of_meas](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/UniformIntegrableAeStronglyMeasurable.lean/declarations/tendsto-lp-of-tendsto-ae-of-meas.md) | 484 | `result-track:7ad072dd03b459d341b8ab5af5224ecad5fa2fc6b29b3790bba15af88e1a826b` |
| 29 | `theorem` | [tendsto_Lp_of_tendsto_ae](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/UniformIntegrableAeStronglyMeasurable.lean/declarations/tendsto-lp-of-tendsto-ae.md) | 555 | `result-track:359bcd58d2b20ae112ec2a973f1c0aef04a0e12e1647a7436f687bf6b93cdfa3` |
| 30 | `theorem` | [unifIntegrable_of_tendsto_Lp_zero](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/UniformIntegrableAeStronglyMeasurable.lean/declarations/unifintegrable-of-tendsto-lp-zero.md) | 577 | `result-track:72d5bca0357416ebf5f33e173fe1afcd2bc8d3af64825fd1e224432ddfcace4e` |
| 31 | `theorem` | [unifIntegrable_of_tendsto_Lp](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/UniformIntegrableAeStronglyMeasurable.lean/declarations/unifintegrable-of-tendsto-lp.md) | 593 | `result-track:eccaafc46d7aba19664409c6a372d21a86a5a873a07720e1c0f20817d72b482b` |
| 32 | `theorem` | [tendsto_Lp_of_tendstoInMeasure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/UniformIntegrableAeStronglyMeasurable.lean/declarations/tendsto-lp-of-tendstoinmeasure.md) | 608 | `result-track:9c227ffce852c393678583c6907a1da58b67aadf2e09fa6d095dcf9e878dd5c4` |
| 33 | `theorem` | [tendstoInMeasure_iff_tendsto_Lp](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/UniformIntegrableAeStronglyMeasurable.lean/declarations/tendstoinmeasure-iff-tendsto-lp.md) | 623 | `result-track:dd8fbaaf4ba80871690a9abb8781e7dd8437a55c710d1538ced8d596cfc0de42` |
| 34 | `theorem` | [unifIntegrable_of'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/UniformIntegrableAeStronglyMeasurable.lean/declarations/unifintegrable-of-source-edition-2.md) | 635 | `result-track:f88bcffc9d2e8e2bc943b122b59eed38ddae3437d19abc3668eab1731103c3c7` |
| 35 | `theorem` | [unifIntegrable_of](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/UniformIntegrableAeStronglyMeasurable.lean/declarations/unifintegrable-of.md) | 700 | `result-track:ec57655ea1f96b0fabcc99a279871f132f798174deca7370b49cb633fd907fae` |
| 36 | `theorem` | [uniformIntegrable_zero_meas](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/UniformIntegrableAeStronglyMeasurable.lean/declarations/uniformintegrable-zero-meas.md) | 742 | `result-track:1c6d866b1e5626857c691ef46d45f3536d028cf1386c46430dcb0f0fbc1deea4` |
| 37 | `theorem` | [UniformIntegrable.ae_eq](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/UniformIntegrableAeStronglyMeasurable.lean/declarations/uniformintegrable-ae-eq.md) | 747 | `result-track:38fcf4afdc8f3bdc49b61e41ec458b0da7acca7da968f705b8faa9b298398e6a` |
| 38 | `theorem` | [uniformIntegrable_congr_ae](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/UniformIntegrableAeStronglyMeasurable.lean/declarations/uniformintegrable-congr-ae.md) | 755 | `result-track:d0163bc88efb7346d6c23b4a07782e712d4feb317342f77c985a202637bc3406` |
| 39 | `theorem` | [uniformIntegrable_finite](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/UniformIntegrableAeStronglyMeasurable.lean/declarations/uniformintegrable-finite.md) | 761 | `result-track:7ff1fd978c43aff06ce2c906f4c0063f0889a7eeeac462cb7a4350cb76fabbe5` |
| 40 | `theorem` | [uniformIntegrable_subsingleton](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/UniformIntegrableAeStronglyMeasurable.lean/declarations/uniformintegrable-subsingleton.md) | 780 | `result-track:e8dafc7119aefa7183ac330b9e1b0cdfdbe9f4a61b984cc51e4c6bfb0add9e32` |
| 41 | `theorem` | [uniformIntegrable_const](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/UniformIntegrableAeStronglyMeasurable.lean/declarations/uniformintegrable-const.md) | 786 | `result-track:ac9187ce9e0887e49bdc23962239bf5efcd488cbeb65ee2cced1d4efaec28291` |
| 42 | `theorem` | [uniformIntegrable_of'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/UniformIntegrableAeStronglyMeasurable.lean/declarations/uniformintegrable-of.md) | 794 | `result-track:34478ac543cc82609b58f1e19f84df267fe65d58b813a1c593bb06177048b670` |
| 43 | `theorem` | [uniformIntegrable_of](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/UniformIntegrableAeStronglyMeasurable.lean/declarations/uniformintegrable-of-source-edition-2.md) | 836 | `result-track:749954ddc004d9142b69752dcd556b4902d8ab54d6361ca065e217e9976940e1` |
| 44 | `theorem` | [UniformIntegrable.spec'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/UniformIntegrableAeStronglyMeasurable.lean/declarations/uniformintegrable-spec.md) | 856 | `result-track:8232d651df12103334fc39b23e1054385dd98ceb43ad979acb34c3e6400f4619` |
| 45 | `theorem` | [UniformIntegrable.spec](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/UniformIntegrableAeStronglyMeasurable.lean/declarations/uniformintegrable-spec-source-edition-2.md) | 892 | `result-track:de7c3f89ba6260c09a8284f26fe7a324c0794fd2e61f47445abb182da6ba905d` |
| 46 | `theorem` | [uniformIntegrable_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/UniformIntegrableAeStronglyMeasurable.lean/declarations/uniformintegrable-iff.md) | 910 | `result-track:b2b98aeb2a991e7c372e58b1843b42d3696f04b8694140523e872feae0095db3` |
| 47 | `theorem` | [uniformIntegrable_average](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/UniformIntegrableAeStronglyMeasurable.lean/declarations/uniformintegrable-average.md) | 920 | `result-track:9939ecf94a3879442454b2d2ef7f7dc02361881ee1c236f0eed2def38aaad710` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0891e50e77ad4f7799e19c3abe9aa402961e6c699f9372e44019f0386f4898bd -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/MeasureTheory/UniformIntegrable/Variant95fa7b9bb1072b70e0bd776ca88cb957d33bb22a0c8931e7833937f55ebf4278.lean","GRWTSK/_verification/specifications/Analysis/MeasureTheory/UniformIntegrable/Variant95fa7b9bb1072b70e0bd776ca88cb957d33bb22a0c8931e7833937f55ebf4278.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
