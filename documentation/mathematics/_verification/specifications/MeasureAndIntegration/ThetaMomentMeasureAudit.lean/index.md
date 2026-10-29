# Verification target: Theta Moment Measure Audit

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5ce99ede775e5c4726064fac107c1d878c51c659",
  "lexical_observation_count": 42,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/ThetaMomentMeasureAudit/Variant50c8a1f09208b7e0d9c3b56194e36bc21bbc17ba97e98459e2dd332b98bb5f2e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/ThetaMomentMeasureAudit.lean/index.md) · [Full source](../../../../MeasureAndIntegration/ThetaMomentMeasureAudit.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5ce99ede775e5c4726064fac107c1d878c51c659`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/ThetaMomentMeasureAudit/Variant50c8a1f09208b7e0d9c3b56194e36bc21bbc17ba97e98459e2dd332b98bb5f2e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/ThetaMomentMeasureAudit/Variant50c8a1f09208b7e0d9c3b56194e36bc21bbc17ba97e98459e2dd332b98bb5f2e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.ThetaTailCalculus` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Bochner.ContinuousLinearMap` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Integrals.Basic` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Polynomial.Roots` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Polynomial` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Archimedean.Basic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [sourceMeasure](../../../../MeasureAndIntegration/ThetaMomentMeasureAudit.lean/declarations/sourcemeasure.md) | 30 | `declaration-track:915665a21edc2e0c99dbd169cf45598a66b8aeb12191a0539c451d162f1afe10` |
| 2 | `def` | [momentMeasure](../../../../MeasureAndIntegration/ThetaMomentMeasureAudit.lean/declarations/momentmeasure.md) | 34 | `declaration-track:42db312def8c68c425dfaa6e2990853f196cb49752ab85583cf9a19a900bc8b7` |
| 3 | `def` | [moment](../../../../MeasureAndIntegration/ThetaMomentMeasureAudit.lean/declarations/moment.md) | 38 | `declaration-track:5d89a2c67cd5c7a78e0a70c208877a6c723cac3d65a8052f3db10e3b0cc92bed` |
| 4 | `theorem` | [density_measurable](../../../../MeasureAndIntegration/ThetaMomentMeasureAudit.lean/declarations/density-measurable.md) | 40 | `result-track:09bab9980b0fd5c22dcc529f20db1ed0811f9358e2077aecca6f4f45b60c46a0` |
| 5 | `theorem` | [phi_nonnegative_ae](../../../../MeasureAndIntegration/ThetaMomentMeasureAudit.lean/declarations/phi-nonnegative-ae.md) | 44 | `result-track:3b5432e406a160ef2f4b3759c19e1e3b819d6660bca73d266ce76d885d4eabf2` |
| 6 | `theorem` | [source_power_integrable](../../../../MeasureAndIntegration/ThetaMomentMeasureAudit.lean/declarations/source-power-integrable.md) | 50 | `result-track:85b3c01135e71404f92212702248bf62f7559164e22f231a899a89fa4383a7ab` |
| 7 | `theorem` | [sourceMeasure_power_integrable](../../../../MeasureAndIntegration/ThetaMomentMeasureAudit.lean/declarations/sourcemeasure-power-integrable.md) | 58 | `result-track:1cdc997a2953a5c05f5fd323d7c64a8b76c239d25bffe4ba1f5a50068dd8f6ed` |
| 8 | `theorem` | [moment_power_integrable](../../../../MeasureAndIntegration/ThetaMomentMeasureAudit.lean/declarations/moment-power-integrable.md) | 67 | `result-track:375a1f942bcc672f47d4e0bb44a79df9cf7eed81463b5fd120d1ce889ab29d00` |
| 9 | `theorem` | [moment_eq_source_integral](../../../../MeasureAndIntegration/ThetaMomentMeasureAudit.lean/declarations/moment-eq-source-integral.md) | 76 | `result-track:e7eaf38dd636c5bc802793eeee6f7ddca686716cf30c596979b077c1b06d74bf` |
| 10 | `theorem` | [moment_eq_factorial_mul_thetaTail](../../../../MeasureAndIntegration/ThetaMomentMeasureAudit.lean/declarations/moment-eq-factorial-mul-thetatail.md) | 88 | `result-track:97f4350cad771d26680491c6443dd6d09e24a8ca293829e5b4f182c561ebc04b` |
| 11 | `theorem` | [moment_positive](../../../../MeasureAndIntegration/ThetaMomentMeasureAudit.lean/declarations/moment-positive.md) | 99 | `result-track:5a2bfde3d4281d0c695cf7571fb92303ec81eb29608562fd31a4b0f8ab6eb605` |
| 12 | `theorem` | [moment_le_factorial_bound](../../../../MeasureAndIntegration/ThetaMomentMeasureAudit.lean/declarations/moment-le-factorial-bound.md) | 104 | `result-track:4abbeb75403741b2c7fb3fa2bbeb2fe035f273b0de17bd709c29d90461127455` |
| 13 | `theorem` | [momentMeasure_finite](../../../../MeasureAndIntegration/ThetaMomentMeasureAudit.lean/declarations/momentmeasure-finite.md) | 111 | `result-track:501448a5ef569f891fbbcd8b6251201a71aed859bcc9fb131ea91eb17aec6ed7` |
| 14 | `theorem` | [momentMeasure_ne_zero](../../../../MeasureAndIntegration/ThetaMomentMeasureAudit.lean/declarations/momentmeasure-ne-zero.md) | 116 | `result-track:34cef4b8bcc28f911a0c789ba2c2c875b72f11321b1fa57100932bd2d924c32a` |
| 15 | `theorem` | [momentMeasure_nonnegative_ae](../../../../MeasureAndIntegration/ThetaMomentMeasureAudit.lean/declarations/momentmeasure-nonnegative-ae.md) | 122 | `result-track:5d61c7d82e55bd79e23add03813d957dd3275c195c9c7b5eba92901f3cd01081` |
| 16 | `theorem` | [integral_momentMeasure_eq_source](../../../../MeasureAndIntegration/ThetaMomentMeasureAudit.lean/declarations/integral-momentmeasure-eq-source.md) | 134 | `result-track:baf90a89868d70c4575e255f65c8b28bcc4a4cc34daa6f4c1df4e0ca09f800b6` |
| 17 | `theorem` | [integrable_momentMeasure_iff](../../../../MeasureAndIntegration/ThetaMomentMeasureAudit.lean/declarations/integrable-momentmeasure-iff.md) | 147 | `result-track:e3aaff435709e80aa51b4c49782c14d2d6024598590dab508ca53428ce55d1e0` |
| 18 | `theorem` | [polynomial_integrable](../../../../MeasureAndIntegration/ThetaMomentMeasureAudit.lean/declarations/polynomial-integrable.md) | 161 | `result-track:19508f1283ab01b43d3bc750dbb985c3b76ba10246677f8d71a768bdb5cb02ac` |
| 19 | `theorem` | [polynomial_square_integrable](../../../../MeasureAndIntegration/ThetaMomentMeasureAudit.lean/declarations/polynomial-square-integrable.md) | 168 | `result-track:ea7777efec3292cc5b603a1281a94f1ad0e84e406e8591bc5ab5c2c6dce7747d` |
| 20 | `theorem` | [polynomial_square_integral_positive](../../../../MeasureAndIntegration/ThetaMomentMeasureAudit.lean/declarations/polynomial-square-integral-positive.md) | 174 | `result-track:4cbbaf5a26b86a7bfa10c18aa6835fb5632b7fa8ce07897fefe1005b68323f53` |
| 21 | `theorem` | [moment_zero_eq_thetaTail_one](../../../../MeasureAndIntegration/ThetaMomentMeasureAudit.lean/declarations/moment-zero-eq-thetatail-one.md) | 208 | `result-track:8e4e4222e19292b26de4fd086c9483a20e7b21374fb1b87d451c4e887cccfa00` |
| 22 | `def` | [initialDiagonal](../../../../MeasureAndIntegration/ThetaMomentMeasureAudit.lean/declarations/initialdiagonal.md) | 213 | `declaration-track:aa3e72cfeb3bc841314290babfa77ecec082c71976c38d0b980919ca0b2864c1` |
| 23 | `def` | [initialOffDiagonalSquared](../../../../MeasureAndIntegration/ThetaMomentMeasureAudit.lean/declarations/initialoffdiagonalsquared.md) | 216 | `declaration-track:3ed57817a4a24871bcf9d28e98061d6c3d080bd3a705c5299531b83c413b82fd` |
| 24 | `theorem` | [initialDiagonal_positive](../../../../MeasureAndIntegration/ThetaMomentMeasureAudit.lean/declarations/initialdiagonal-positive.md) | 220 | `result-track:05f579b4c7a3cbe84f760da6ede1976ff0ffcf2c06b332636105cc84b6cc72ad` |
| 25 | `theorem` | [centered_square_integral](../../../../MeasureAndIntegration/ThetaMomentMeasureAudit.lean/declarations/centered-square-integral.md) | 224 | `result-track:3d6114c2ac8d1ba3683f26240bfbbfff212a82829ac4e03d7f8176b650588812` |
| 26 | `theorem` | [centered_square_integral_positive](../../../../MeasureAndIntegration/ThetaMomentMeasureAudit.lean/declarations/centered-square-integral-positive.md) | 244 | `result-track:84bc44361c0fc1690f10c6d538881cd1e50ab75d736541903271958895208b90` |
| 27 | `theorem` | [initialOffDiagonalSquared_positive](../../../../MeasureAndIntegration/ThetaMomentMeasureAudit.lean/declarations/initialoffdiagonalsquared-positive.md) | 253 | `result-track:4ef9129f3323b71a35edf32b4ae682b793bf72e5e0942a7462dbe79d59677202` |
| 28 | `def` | [initialOffDiagonal](../../../../MeasureAndIntegration/ThetaMomentMeasureAudit.lean/declarations/initialoffdiagonal.md) | 270 | `declaration-track:661174d4cbfd9c2d80edf8c6760eec02baf89df360d8836ffbfb6bb3ae183ead` |
| 29 | `theorem` | [initialOffDiagonal_positive](../../../../MeasureAndIntegration/ThetaMomentMeasureAudit.lean/declarations/initialoffdiagonal-positive.md) | 273 | `result-track:d77da0743afafd2a2277f1112d880be546681cced5c3dad958dcdecaf6404ec5` |
| 30 | `theorem` | [initialOffDiagonal_sq](../../../../MeasureAndIntegration/ThetaMomentMeasureAudit.lean/declarations/initialoffdiagonal-sq.md) | 277 | `result-track:b8eae4bf974fdda1f08c690ed50f815446a772622d5bdbf45528cc84793b6c79` |
| 31 | `theorem` | [initialDiagonal_eq_tail_ratio](../../../../MeasureAndIntegration/ThetaMomentMeasureAudit.lean/declarations/initialdiagonal-eq-tail-ratio.md) | 282 | `result-track:a076aaceeb54af1b5704eeac942ff8e5fc0a12b6f70ca1c790c25bb6e0e17f0b` |
| 32 | `theorem` | [initialOffDiagonalSquared_eq_tail_ratio](../../../../MeasureAndIntegration/ThetaMomentMeasureAudit.lean/declarations/initialoffdiagonalsquared-eq-tail-ratio.md) | 289 | `result-track:1c190dbe3641bdbc92212e98dd485687fbaa177f71b4d5aed4bf9469f43cf6a2` |
| 33 | `def` | [cyclicVectorNorm](../../../../MeasureAndIntegration/ThetaMomentMeasureAudit.lean/declarations/cyclicvectornorm.md) | 298 | `declaration-track:77540a9a3e0409637cddec319aca6711a2e30a16ccf36e7daa9210a6032758c3` |
| 34 | `theorem` | [cyclicVectorNorm_sq](../../../../MeasureAndIntegration/ThetaMomentMeasureAudit.lean/declarations/cyclicvectornorm-sq.md) | 301 | `result-track:f67749016964e5fd869e1240762bc846e8710e671d90e649b90fa72c632bfbdf` |
| 35 | `theorem` | [sourceMeasure_dominates_restricted_volume](../../../../MeasureAndIntegration/ThetaMomentMeasureAudit.lean/declarations/sourcemeasure-dominates-restricted-volume.md) | 307 | `result-track:c60497f7d2eadf0b792741cbf464cf595c3e0ea882930515b3611f9fadc9be14` |
| 36 | `theorem` | [momentMeasure_Ioi_positive](../../../../MeasureAndIntegration/ThetaMomentMeasureAudit.lean/declarations/momentmeasure-ioi-positive.md) | 316 | `result-track:b7759a9669cdad43106e3b484577b93cabf0ca77ec9eb17630128742fc58eff4` |
| 37 | `theorem` | [exponential_majorant_integrable](../../../../MeasureAndIntegration/ThetaMomentMeasureAudit.lean/declarations/exponential-majorant-integrable.md) | 340 | `result-track:170b74b8331190de0645c6ee288dd8c1fc3c049ab7525c4daee76fd8259da59d` |
| 38 | `theorem` | [source_exp_le_majorant](../../../../MeasureAndIntegration/ThetaMomentMeasureAudit.lean/declarations/source-exp-le-majorant.md) | 347 | `result-track:a627982be2b01819dc79a257b0743c5aaede1220e803f7d5bc0b56bc92452443` |
| 39 | `theorem` | [exponential_integrable](../../../../MeasureAndIntegration/ThetaMomentMeasureAudit.lean/declarations/exponential-integrable.md) | 360 | `result-track:8d2a7fe92a46d5ab1600a0cf6beb1b0dbafc1cb6563920d1be406f06a56abec0` |
| 40 | `theorem` | [exponential_integral_le](../../../../MeasureAndIntegration/ThetaMomentMeasureAudit.lean/declarations/exponential-integral-le.md) | 374 | `result-track:099ffaa0c6d93c2c25606c8608ae5d9c5d5652bc7bff4d70f4056ad7f72f40f4` |
| 41 | `theorem` | [even_moment_tail_lower](../../../../MeasureAndIntegration/ThetaMomentMeasureAudit.lean/declarations/even-moment-tail-lower.md) | 402 | `result-track:fc953374513eb20b9183e172163ab9b5793d9756e2487e4023628d9b01d3f363` |
| 42 | `theorem` | [no_geometric_even_moment_bound](../../../../MeasureAndIntegration/ThetaMomentMeasureAudit.lean/declarations/no-geometric-even-moment-bound.md) | 424 | `result-track:8d658eb28b069f0f4275c20c9a7a32386e2109efe75dc4c914bab29df9b0d57a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e6ade0efe701d5eb5aadfeba2d2e6e38b03a9b87dcc15955f54d3f92259024ae -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/ThetaMomentMeasureAudit/Variant50c8a1f09208b7e0d9c3b56194e36bc21bbc17ba97e98459e2dd332b98bb5f2e.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/ThetaMomentMeasureAudit/Variant50c8a1f09208b7e0d9c3b56194e36bc21bbc17ba97e98459e2dd332b98bb5f2e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
