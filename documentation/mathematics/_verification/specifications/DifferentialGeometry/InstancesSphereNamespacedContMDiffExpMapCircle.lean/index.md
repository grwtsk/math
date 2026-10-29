# Verification target: Instances Sphere Namespaced Cont MDiff Exp Map Circle

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b3bea2732c79c6b5954fccb03aede9c3303635cb",
  "lexical_observation_count": 41,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/DifferentialGeometry/Sphere/Variantf58491a5407bd31d6cf7872080af24030b27930819c5b33a44e9ede4554c03d7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../DifferentialGeometry/InstancesSphereNamespacedContMDiffExpMapCircle.lean/index.md) · [Full source](../../../../DifferentialGeometry/InstancesSphereNamespacedContMDiffExpMapCircle.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b3bea2732c79c6b5954fccb03aede9c3303635cb`.

Source path: `GRWTSK/Geometry/DifferentialGeometry/Sphere/Variantf58491a5407bd31d6cf7872080af24030b27930819c5b33a44e9ede4554c03d7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/DifferentialGeometry/Sphere/Variantf58491a5407bd31d6cf7872080af24030b27930819c5b33a44e9ede4554c03d7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Calculus.Deriv.Inv` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.NormedSpace.BallAction` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.ExpDeriv` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.InnerProductSpace.Calculus` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.InnerProductSpace.PiL2` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Geometry.Manifold.Algebra.LieGroup` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.Geometry.Manifold.Instances.Real` — import line 17; external provider; requires a separately pinned dependency.
- `Mathlib.Geometry.Manifold.MFDeriv` — import line 18; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `macro_rules` | [(anonymous)](../../../../DifferentialGeometry/InstancesSphereNamespacedContMDiffExpMapCircle.lean/declarations/macro-rules.md) | 83 | `declaration-track:8b3c0317d143dcfef97b666de85a54b582d1ccfbd1af90329866b6b54d83dd46` |
| 2 | `def` | [stereoToFun](../../../../DifferentialGeometry/InstancesSphereNamespacedContMDiffExpMapCircle.lean/declarations/stereotofun.md) | 96 | `declaration-track:c00c593c41df6e8305c90f06f610eb248afa313098b288ed08b109dca6d26462` |
| 3 | `theorem` | [stereoToFun_apply](../../../../DifferentialGeometry/InstancesSphereNamespacedContMDiffExpMapCircle.lean/declarations/stereotofun-apply.md) | 103 | `result-track:6c492fa790e2a27f7b47e635a70452d3c0eb23f2e49b4a1fa2685ecdd4924dfc` |
| 4 | `theorem` | [contDiffOn_stereoToFun](../../../../DifferentialGeometry/InstancesSphereNamespacedContMDiffExpMapCircle.lean/declarations/contdiffon-stereotofun.md) | 108 | `result-track:5195f9124aca847e6e30e9cb42728b7000a163ead3795462f390e74abd87815d` |
| 5 | `theorem` | [continuousOn_stereoToFun](../../../../DifferentialGeometry/InstancesSphereNamespacedContMDiffExpMapCircle.lean/declarations/continuouson-stereotofun.md) | 117 | `result-track:a4691895ea682bf12625d58989da10e25c50a4346db9aa71bfdb46444e32bbda` |
| 6 | `def` | [stereoInvFunAux](../../../../DifferentialGeometry/InstancesSphereNamespacedContMDiffExpMapCircle.lean/declarations/stereoinvfunaux.md) | 129 | `declaration-track:b05a6a26ad9d910672e62af9178d8097c2530cf9add033dcc4b48e65b6dd8eac` |
| 7 | `theorem` | [stereoInvFunAux_apply](../../../../DifferentialGeometry/InstancesSphereNamespacedContMDiffExpMapCircle.lean/declarations/stereoinvfunaux-apply.md) | 136 | `result-track:cd6358100972b7ed6546454b4b3452eb64011ba81b9b80e4d4977de4a5ceea30` |
| 8 | `theorem` | [stereoInvFunAux_mem](../../../../DifferentialGeometry/InstancesSphereNamespacedContMDiffExpMapCircle.lean/declarations/stereoinvfunaux-mem.md) | 141 | `result-track:c51704f51b6c82c893151fc868e329ab29aa3549e9004e0c470ab528df123fcd` |
| 9 | `theorem` | [hasFDerivAt_stereoInvFunAux](../../../../DifferentialGeometry/InstancesSphereNamespacedContMDiffExpMapCircle.lean/declarations/hasfderivat-stereoinvfunaux.md) | 155 | `result-track:6cf32234af3d69a61db9a3b134cc4fb895a682df0c335033b9c96e4a70d9bda1` |
| 10 | `theorem` | [hasFDerivAt_stereoInvFunAux_comp_coe](../../../../DifferentialGeometry/InstancesSphereNamespacedContMDiffExpMapCircle.lean/declarations/hasfderivat-stereoinvfunaux-comp-coe.md) | 173 | `result-track:3df4b5eaccbb28361ede85bf6b629fcc949f0d0b901e9980796e29b7b3bff8e1` |
| 11 | `theorem` | [contDiff_stereoInvFunAux](../../../../DifferentialGeometry/InstancesSphereNamespacedContMDiffExpMapCircle.lean/declarations/contdiff-stereoinvfunaux.md) | 180 | `result-track:163153d9063685eeb6ec28abc78f7620d4e677925a9729deba07c779fbbf0c7b` |
| 12 | `def` | [stereoInvFun](../../../../DifferentialGeometry/InstancesSphereNamespacedContMDiffExpMapCircle.lean/declarations/stereoinvfun.md) | 194 | `declaration-track:b30c8307b49eb0a9abfa0a8a58a9737c89a018c289727e6753ae15f1018e0364` |
| 13 | `theorem` | [stereoInvFun_apply](../../../../DifferentialGeometry/InstancesSphereNamespacedContMDiffExpMapCircle.lean/declarations/stereoinvfun-apply.md) | 199 | `result-track:76a42beaf0922f0f6e2ccab8a1e70c61413b9242b99283eff834fed369a0214d` |
| 14 | `theorem` | [stereoInvFun_ne_north_pole](../../../../DifferentialGeometry/InstancesSphereNamespacedContMDiffExpMapCircle.lean/declarations/stereoinvfun-ne-north-pole.md) | 204 | `result-track:aa7185d496014e64fd9e97096a1a96f019bd469dbc8c4207e17020bcbce2328a` |
| 15 | `theorem` | [continuous_stereoInvFun](../../../../DifferentialGeometry/InstancesSphereNamespacedContMDiffExpMapCircle.lean/declarations/continuous-stereoinvfun.md) | 218 | `result-track:947fb7d8d3c3e5100c32df830c0b8ee94d128b1d8aceed5e6c5790a7dc096ad3` |
| 16 | `theorem` | [stereo_left_inv](../../../../DifferentialGeometry/InstancesSphereNamespacedContMDiffExpMapCircle.lean/declarations/stereo-left-inv.md) | 222 | `result-track:fbec98a669c2bec03a8e6f10f015309052e822e0cc8bff5bcf89f7a6cae74f61` |
| 17 | `theorem` | [stereo_right_inv](../../../../DifferentialGeometry/InstancesSphereNamespacedContMDiffExpMapCircle.lean/declarations/stereo-right-inv.md) | 278 | `result-track:9668061567ca204b136910f176e08b005a4d77eb9cceba582fe361ccffed2f4c` |
| 18 | `def` | [stereographic](../../../../DifferentialGeometry/InstancesSphereNamespacedContMDiffExpMapCircle.lean/declarations/stereographic-source-edition-2.md) | 294 | `declaration-track:2f3c0860263635094fca42c49a89d0fdd1679fe7910e618c09117af350ea2272` |
| 19 | `theorem` | [stereographic_apply](../../../../DifferentialGeometry/InstancesSphereNamespacedContMDiffExpMapCircle.lean/declarations/stereographic-apply.md) | 317 | `result-track:2638f826bb29a0f8a8536d17a22d4b5f28e55dddc1f0b978c305799f900340fc` |
| 20 | `theorem` | [stereographic_source](../../../../DifferentialGeometry/InstancesSphereNamespacedContMDiffExpMapCircle.lean/declarations/stereographic-source-source-edition-2.md) | 323 | `result-track:ba080b21d75674a50d1d022796ec21a0f28017d34c00101877c669f4502f5500` |
| 21 | `theorem` | [stereographic_target](../../../../DifferentialGeometry/InstancesSphereNamespacedContMDiffExpMapCircle.lean/declarations/stereographic-target-source-edition-2.md) | 328 | `result-track:cd8c577a00213beac7920531a8ad0196fb53204802bb46f5b9c2239aa350136b` |
| 22 | `theorem` | [stereographic_apply_neg](../../../../DifferentialGeometry/InstancesSphereNamespacedContMDiffExpMapCircle.lean/declarations/stereographic-apply-neg.md) | 333 | `result-track:716a62a6cef6ed8901ad6d11106d2901a89ad1ec312369a181d17e6a0a67ecb9` |
| 23 | `theorem` | [stereographic_neg_apply](../../../../DifferentialGeometry/InstancesSphereNamespacedContMDiffExpMapCircle.lean/declarations/stereographic-neg-apply.md) | 339 | `result-track:622d1dad3d761163de460751e947cdfb9d62bd2ef3112d9bb7084875ec22b06c` |
| 24 | `theorem` | [findim](../../../../DifferentialGeometry/InstancesSphereNamespacedContMDiffExpMapCircle.lean/declarations/findim.md) | 369 | `result-track:9782c47a3bb7105b756febb6686aadcef4502bb7841ee55783ebc54edfdf67c0` |
| 25 | `def` | [stereographic'](../../../../DifferentialGeometry/InstancesSphereNamespacedContMDiffExpMapCircle.lean/declarations/stereographic.md) | 376 | `declaration-track:1055a035ca9f9617b42914f78d1eb08072f3eb1a74f947471f7f5d5f99ff444e` |
| 26 | `theorem` | [stereographic'_source](../../../../DifferentialGeometry/InstancesSphereNamespacedContMDiffExpMapCircle.lean/declarations/stereographic-source.md) | 384 | `result-track:5561bec28bfa3e29f0a467b1992b08e14f57221112ea07e25b658daa7f764d96` |
| 27 | `theorem` | [stereographic'_target](../../../../DifferentialGeometry/InstancesSphereNamespacedContMDiffExpMapCircle.lean/declarations/stereographic-target.md) | 389 | `result-track:0fbb6d5f031351d72a95313706291cea9ea95e3f3fea35de444a84242ec10d88` |
| 28 | `instance` | [chartedSpace](../../../../DifferentialGeometry/InstancesSphereNamespacedContMDiffExpMapCircle.lean/declarations/chartedspace.md) | 395 | `declaration-track:18dfbd990f3b72dd1a95210738c75a56160da9917748875bfa2252eeb5b603f3` |
| 29 | `theorem` | [sphere_ext_iff](../../../../DifferentialGeometry/InstancesSphereNamespacedContMDiffExpMapCircle.lean/declarations/sphere-ext-iff.md) | 406 | `result-track:a994a80434710ec4b8c0a3179f33672a05354e4e99d770bff1792185301ce6bc` |
| 30 | `theorem` | [stereographic'_symm_apply](../../../../DifferentialGeometry/InstancesSphereNamespacedContMDiffExpMapCircle.lean/declarations/stereographic-symm-apply.md) | 410 | `result-track:b43413fafcb6654a73ad100fa6b6f2ba6b654d9301384afcc3be39f8bf80c598` |
| 31 | `instance` | [smoothMfldWithCorners](../../../../DifferentialGeometry/InstancesSphereNamespacedContMDiffExpMapCircle.lean/declarations/smoothmfldwithcorners.md) | 424 | `declaration-track:e45de50a29f5ff794816f88f6ab3a157648fef6e333a626e7800142983a2e92c` |
| 32 | `theorem` | [contMDiff_coe_sphere](../../../../DifferentialGeometry/InstancesSphereNamespacedContMDiffExpMapCircle.lean/declarations/contmdiff-coe-sphere.md) | 455 | `result-track:50f8d2cde3a42ad6d800f5594b64c70f3419ee1b1a934df3f771b890a5d8a0d7` |
| 33 | `theorem` | [ContMDiff.codRestrict_sphere](../../../../DifferentialGeometry/InstancesSphereNamespacedContMDiffExpMapCircle.lean/declarations/contmdiff-codrestrict-sphere.md) | 480 | `result-track:2d27700ae486be88de89c71c240b58495f8d7901ce7ea4a9c271bf066472a41a` |
| 34 | `theorem` | [contMDiff_neg_sphere](../../../../DifferentialGeometry/InstancesSphereNamespacedContMDiffExpMapCircle.lean/declarations/contmdiff-neg-sphere.md) | 505 | `result-track:318b74eb2bd9c2210d07bb4b0fcc7124d590eb8948affb94b138ea080b0f21e9` |
| 35 | `theorem` | [range_mfderiv_coe_sphere](../../../../DifferentialGeometry/InstancesSphereNamespacedContMDiffExpMapCircle.lean/declarations/range-mfderiv-coe-sphere.md) | 520 | `result-track:a2cd066d7a1604d64cd6bc5524c00ae1ee552b01c489aef5b4e599335474566e` |
| 36 | `theorem` | [mfderiv_coe_sphere_injective](../../../../DifferentialGeometry/InstancesSphereNamespacedContMDiffExpMapCircle.lean/declarations/mfderiv-coe-sphere-injective.md) | 564 | `result-track:00f78dbee1f87bbae60c0aa07646ab3e51333c262d8bca87378cbcee29f87ce2` |
| 37 | `theorem` | [finrank_real_complex_fact'](../../../../DifferentialGeometry/InstancesSphereNamespacedContMDiffExpMapCircle.lean/declarations/finrank-real-complex-fact.md) | 596 | `result-track:9e0c90f44acf71c5c6c675a7b04bdb0a9e54726bf292558c43a7b0b8dcb1c95f` |
| 38 | `instance` | [(anonymous)](../../../../DifferentialGeometry/InstancesSphereNamespacedContMDiffExpMapCircle.lean/declarations/instance-source-edition-3.md) | 603 | `declaration-track:fbd5940dc6b85012412cc60806a0d276bba701539e0fa8f7ac5eb0b6a0152a21` |
| 39 | `instance` | [(anonymous)](../../../../DifferentialGeometry/InstancesSphereNamespacedContMDiffExpMapCircle.lean/declarations/instance.md) | 606 | `declaration-track:16c2ac26d123a2c633cf667320d7d81e8a62df0c89cc19210a3d912b0587b878` |
| 40 | `instance` | [(anonymous)](../../../../DifferentialGeometry/InstancesSphereNamespacedContMDiffExpMapCircle.lean/declarations/instance-source-edition-2.md) | 610 | `declaration-track:4911068f0a2ab1cd783a2f9714f5f4a6fc4736e2c40593cfa4334b9b91e6a8f0` |
| 41 | `theorem` | [contMDiff_expMapCircle](../../../../DifferentialGeometry/InstancesSphereNamespacedContMDiffExpMapCircle.lean/declarations/contmdiff-expmapcircle.md) | 628 | `result-track:ca4be7b6685dba868fde2397c392dd3bed24f767b57be4c1fa4358e1110a36f1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=73d74afd2d0ba312f65b7895e4060856009f602f46626d0648005d4e40d4fe49 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Geometry/DifferentialGeometry/Sphere/Variantf58491a5407bd31d6cf7872080af24030b27930819c5b33a44e9ede4554c03d7.lean","GRWTSK/_verification/specifications/Geometry/DifferentialGeometry/Sphere/Variantf58491a5407bd31d6cf7872080af24030b27930819c5b33a44e9ede4554c03d7.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
