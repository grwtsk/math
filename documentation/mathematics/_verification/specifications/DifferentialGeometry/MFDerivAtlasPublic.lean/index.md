# Verification target: MFDeriv Atlas Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5fe0f38d447a00ea5e5e39d84a66ae26b8103bd4",
  "lexical_observation_count": 58,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/DifferentialGeometry/Atlas/Variant6db87f39cfdfb4e6645ae04b3d1918c6a912034fa2ebbc0690b21f48efe1657e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../DifferentialGeometry/MFDerivAtlasPublic.lean/index.md) · [Full source](../../../../DifferentialGeometry/MFDerivAtlasPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5fe0f38d447a00ea5e5e39d84a66ae26b8103bd4`.

Source path: `GRWTSK/Geometry/DifferentialGeometry/Atlas/Variant6db87f39cfdfb4e6645ae04b3d1918c6a912034fa2ebbc0690b21f48efe1657e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/DifferentialGeometry/Atlas/Variant6db87f39cfdfb4e6645ae04b3d1918c6a912034fa2ebbc0690b21f48efe1657e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [hasMFDerivAt](../../../../DifferentialGeometry/MFDerivAtlasPublic.lean/declarations/hasmfderivat.md) | 57 | `result-track:c5f75d643b826209322f5867ecadb865ee34fb8d118b8f7ac22718874d4b15b1` |
| 2 | `theorem` | [hasMFDerivWithinAt](../../../../DifferentialGeometry/MFDerivAtlasPublic.lean/declarations/hasmfderivwithinat.md) | 60 | `result-track:4b0aa546f4f124b538add354d5af6ab122195ccfa94888d9453ea4572673eb59` |
| 3 | `theorem` | [mdifferentiableWithinAt](../../../../DifferentialGeometry/MFDerivAtlasPublic.lean/declarations/mdifferentiablewithinat.md) | 64 | `result-track:d76d0742ca85f2e7aaa11f2f13695ab562e5a58066849fe48ca55a2f47975d52` |
| 4 | `theorem` | [mdifferentiableAt](../../../../DifferentialGeometry/MFDerivAtlasPublic.lean/declarations/mdifferentiableat-source-edition-2.md) | 67 | `result-track:91599a53002e2b704308acdaa1279f5aa26d0bb54031a0761e2713ea9712d69e` |
| 5 | `theorem` | [mdifferentiableOn](../../../../DifferentialGeometry/MFDerivAtlasPublic.lean/declarations/mdifferentiableon.md) | 70 | `result-track:9e0620fc115e84bef9aaacaa8c3b59d3e2b7348da1f4d3ea4d5ad6d221ac3673` |
| 6 | `theorem` | [mdifferentiable](../../../../DifferentialGeometry/MFDerivAtlasPublic.lean/declarations/mdifferentiable.md) | 73 | `result-track:ece3b0d37fc9019b442ee2c2197ee16b48112308bbf16c932825f1aa73673304` |
| 7 | `theorem` | [hasMFDerivWithinAt_symm](../../../../DifferentialGeometry/MFDerivAtlasPublic.lean/declarations/hasmfderivwithinat-symm.md) | 75 | `result-track:e2f834e212c9302859524831ea720faf020a067dc27f770c16e5cd0ce5a70b53` |
| 8 | `theorem` | [mdifferentiableOn_symm](../../../../DifferentialGeometry/MFDerivAtlasPublic.lean/declarations/mdifferentiableon-symm.md) | 80 | `result-track:4332a1b660a3a2d1d67da4550d48c613681c1de87742edbd9dbfc39620094179` |
| 9 | `theorem` | [mdifferentiableWithinAt_symm](../../../../DifferentialGeometry/MFDerivAtlasPublic.lean/declarations/mdifferentiablewithinat-symm.md) | 83 | `result-track:17cab10f7176ad6d447c487c57ae5b5484daa3665bdce0e27505e336c84485f4` |
| 10 | `theorem` | [mdifferentiableAt_of_mem_maximalAtlas](../../../../DifferentialGeometry/MFDerivAtlasPublic.lean/declarations/mdifferentiableat-of-mem-maximalatlas.md) | 95 | `result-track:b7ae1ae65fd40b25ce014ffbec30641a2d58da456ae35271aab65eb5690fb9fc` |
| 11 | `lemma` | [mdifferentiableAt_symm_of_mem_maximalAtlas](../../../../DifferentialGeometry/MFDerivAtlasPublic.lean/declarations/mdifferentiableat-symm-of-mem-maximalatlas.md) | 99 | `result-track:f9d528721a1e78ab05b2e948ddfae5fc043741c855feded1e551de3abb49527c` |
| 12 | `theorem` | [mdifferentiableAt_atlas](../../../../DifferentialGeometry/MFDerivAtlasPublic.lean/declarations/mdifferentiableat-atlas.md) | 106 | `result-track:4bbac29f7b707654530897a28883d9aa8f64c11ca66b3467460a14308c2724ee` |
| 13 | `theorem` | [mdifferentiableOn_atlas](../../../../DifferentialGeometry/MFDerivAtlasPublic.lean/declarations/mdifferentiableon-atlas.md) | 110 | `result-track:3c84e95d355a577e1a2d6579dce54eba247fad9398db2e8f852c14ce265f711a` |
| 14 | `theorem` | [mdifferentiableAt_atlas_symm](../../../../DifferentialGeometry/MFDerivAtlasPublic.lean/declarations/mdifferentiableat-atlas-symm.md) | 113 | `result-track:8d020e5ad5411de8f37b88ac10419430f81525a4f023825eac3514009145a3b8` |
| 15 | `theorem` | [mdifferentiableOn_atlas_symm](../../../../DifferentialGeometry/MFDerivAtlasPublic.lean/declarations/mdifferentiableon-atlas-symm.md) | 117 | `result-track:d052e2fca5ba8c2ae89ac8a610a10197a5bc80d1a63d5612215e3267e01d6800` |
| 16 | `theorem` | [mdifferentiable_of_mem_atlas](../../../../DifferentialGeometry/MFDerivAtlasPublic.lean/declarations/mdifferentiable-of-mem-atlas.md) | 120 | `result-track:1b170c2640faadddac78d975ae9057ffd8a0401f8924bbc29fc132d0b96ca8dd` |
| 17 | `theorem` | [mdifferentiable_chart](../../../../DifferentialGeometry/MFDerivAtlasPublic.lean/declarations/mdifferentiable-chart.md) | 123 | `result-track:78532641840210f51a3055bea47410543f9e8487b071ad2b08a7a951685e2f55` |
| 18 | `theorem` | [symm](../../../../DifferentialGeometry/MFDerivAtlasPublic.lean/declarations/symm.md) | 135 | `result-track:9221137152f7c4b5305cd637bb58b79f55191fad8147981d17b159a7739be967` |
| 19 | `theorem` | [mdifferentiableAt](../../../../DifferentialGeometry/MFDerivAtlasPublic.lean/declarations/mdifferentiableat.md) | 137 | `result-track:68d1ce97e6f413fb29ebc9e74cf4e7e5195156c76365da7f4a8488469209fc76` |
| 20 | `theorem` | [mdifferentiableAt_symm](../../../../DifferentialGeometry/MFDerivAtlasPublic.lean/declarations/mdifferentiableat-symm.md) | 140 | `result-track:270b3e41ba3bee04527dae5d97a78ea296829a5ea54920402b6b23d2cd8cd65b` |
| 21 | `theorem` | [symm_comp_deriv](../../../../DifferentialGeometry/MFDerivAtlasPublic.lean/declarations/symm-comp-deriv.md) | 143 | `result-track:e3791036ede6091d60be19813decf088f5740b8ccdfd56396041a7eb6106599e` |
| 22 | `theorem` | [comp_symm_deriv](../../../../DifferentialGeometry/MFDerivAtlasPublic.lean/declarations/comp-symm-deriv.md) | 155 | `result-track:00874c1e187f03ceed9bbc6a70b7fcef3d14c74f26e700adfba713c4f948fb1f` |
| 23 | `def` | [mfderiv](../../../../DifferentialGeometry/MFDerivAtlasPublic.lean/declarations/mfderiv.md) | 162 | `declaration-track:002b348dcff0992cf728f7b472f5e57755fb401567350479936e5c44e5145cf7` |
| 24 | `theorem` | [mfderiv_bijective](../../../../DifferentialGeometry/MFDerivAtlasPublic.lean/declarations/mfderiv-bijective.md) | 180 | `result-track:f8e622f51bbbfeb691f5fb575db56ca4b9b6b7f3edb58687c9cebe3ea491ee51` |
| 25 | `theorem` | [mfderiv_injective](../../../../DifferentialGeometry/MFDerivAtlasPublic.lean/declarations/mfderiv-injective.md) | 183 | `result-track:5cf848dbac44841ac55c24814ac7767523804603a31833843c8491e7ef1483cb` |
| 26 | `theorem` | [mfderiv_surjective](../../../../DifferentialGeometry/MFDerivAtlasPublic.lean/declarations/mfderiv-surjective.md) | 186 | `result-track:40d651c45e2936fd1ba2cde09c992bd67ac8d82583907c3da330298edff2b93a` |
| 27 | `theorem` | [ker_mfderiv_eq_bot](../../../../DifferentialGeometry/MFDerivAtlasPublic.lean/declarations/ker-mfderiv-eq-bot.md) | 189 | `result-track:aa5222e0f316b6f7e612731483b1f72c3367e54513e0f85b43a29fb76ea231e4` |
| 28 | `theorem` | [range_mfderiv_eq_top](../../../../DifferentialGeometry/MFDerivAtlasPublic.lean/declarations/range-mfderiv-eq-top.md) | 192 | `result-track:459f8a33742a3b2c6c4ebf74c6039c2ce2da87b84d13571284e7cbfd71b9b50f` |
| 29 | `theorem` | [range_mfderiv_eq_univ](../../../../DifferentialGeometry/MFDerivAtlasPublic.lean/declarations/range-mfderiv-eq-univ.md) | 195 | `result-track:9e1d675a095a4f8f3d4077d267ef5f96f55998464db235e0309fd586c67473a3` |
| 30 | `theorem` | [trans](../../../../DifferentialGeometry/MFDerivAtlasPublic.lean/declarations/trans.md) | 198 | `result-track:683ed8145a095307e14a7d412421d8a873924cf3953b9e54cac3ddce26b2c50f` |
| 31 | `theorem` | [OpenPartialHomeomorph.mdifferentiableAt_extend](../../../../DifferentialGeometry/MFDerivAtlasPublic.lean/declarations/openpartialhomeomorph-mdifferentiableat-extend.md) | 220 | `result-track:27a41895ac52862244f025a030f69ae1b91e5c38c91177c5120237ad5c7bd31f` |
| 32 | `theorem` | [OpenPartialHomeomorph.mdifferentiableOn_extend](../../../../DifferentialGeometry/MFDerivAtlasPublic.lean/declarations/openpartialhomeomorph-mdifferentiableon-extend.md) | 225 | `result-track:3007c6d6649233d7a128a1ec00510a697f74178576a9250766a3076123e9f205` |
| 33 | `theorem` | [mdifferentiableWithinAt_extend_symm](../../../../DifferentialGeometry/MFDerivAtlasPublic.lean/declarations/mdifferentiablewithinat-extend-symm.md) | 231 | `result-track:69ef9cfd815c1d174c35cad4affa5bdb2750e4da16b4a4f46ed9d3c877f6b73c` |
| 34 | `theorem` | [mdifferentiableOn_extend_symm](../../../../DifferentialGeometry/MFDerivAtlasPublic.lean/declarations/mdifferentiableon-extend-symm.md) | 239 | `result-track:deba9645df91edcff27b3234395a964bb70bdb139cb752e322b5fd30755317d2` |
| 35 | `lemma` | [mfderiv_extend_comp_mfderivWithin_extend_symm](../../../../DifferentialGeometry/MFDerivAtlasPublic.lean/declarations/mfderiv-extend-comp-mfderivwithin-extend-symm-source-edition-2.md) | 247 | `result-track:8c6c9ef73a43e97da168663b6b29a36f6b7b7deec91b2b56a70482909f9e14cc` |
| 36 | `lemma` | [mfderiv_extend_comp_mfderivWithin_extend_symm'](../../../../DifferentialGeometry/MFDerivAtlasPublic.lean/declarations/mfderiv-extend-comp-mfderivwithin-extend-symm.md) | 269 | `result-track:156a524e22bcdbdb8b0f26d0591c513d3ec93873373cfeab92d7319b1b045844` |
| 37 | `lemma` | [mfderivWithin_extend_symm_comp_mfderiv_extend](../../../../DifferentialGeometry/MFDerivAtlasPublic.lean/declarations/mfderivwithin-extend-symm-comp-mfderiv-extend.md) | 279 | `result-track:a80d9456dd68aa1a5ba2623e0b3a23cb8d9891a74d52fbf3e5657b9ddf1272b8` |
| 38 | `lemma` | [mfderivWithin_extend_symm_comp_mfderiv_extend'](../../../../DifferentialGeometry/MFDerivAtlasPublic.lean/declarations/mfderivwithin-extend-symm-comp-mfderiv-extend-source-edition-2.md) | 308 | `result-track:b1035461a825bc5e37b92b004791bdda4a12b4ffcc3992e882cfe797f7b6b057` |
| 39 | `lemma` | [isInvertible_mfderivWithin_extend_symm](../../../../DifferentialGeometry/MFDerivAtlasPublic.lean/declarations/isinvertible-mfderivwithin-extend-symm.md) | 316 | `result-track:f2268e2424e0a9f2f5bf717b38cd1fc5aa70147c45b230cc6127cba884aae0c3` |
| 40 | `lemma` | [isInvertible_mfderiv_extend](../../../../DifferentialGeometry/MFDerivAtlasPublic.lean/declarations/isinvertible-mfderiv-extend.md) | 323 | `result-track:e9d25ee9a45a345bbedf82a17d7dd59786e7a53e42d1e828c727ae19c11d848c` |
| 41 | `theorem` | [hasMFDerivAt_extChartAt](../../../../DifferentialGeometry/MFDerivAtlasPublic.lean/declarations/hasmfderivat-extchartat.md) | 337 | `result-track:fbbb936dddcadb619c7c78e1398f9f9b7e4560d0553cc15ae0dad8d2d91f3398` |
| 42 | `theorem` | [hasMFDerivWithinAt_extChartAt](../../../../DifferentialGeometry/MFDerivAtlasPublic.lean/declarations/hasmfderivwithinat-extchartat.md) | 341 | `result-track:bfe3a7018a224a9508c96ee98e56408f317c2ba17297588cee8fb33608f4dc26` |
| 43 | `theorem` | [mdifferentiableAt_extChartAt](../../../../DifferentialGeometry/MFDerivAtlasPublic.lean/declarations/mdifferentiableat-extchartat.md) | 345 | `result-track:c59c62d9beb1680c5867e6c81cc9344eb891005dc104d9d6f03c741535116efc` |
| 44 | `theorem` | [mdifferentiableOn_extChartAt](../../../../DifferentialGeometry/MFDerivAtlasPublic.lean/declarations/mdifferentiableon-extchartat.md) | 349 | `result-track:e0ce67c34ed9088f73dc7c81d27ca64cc162a1c22c1afa751b011cda25f94668` |
| 45 | `theorem` | [mdifferentiableWithinAt_extChartAt_symm](../../../../DifferentialGeometry/MFDerivAtlasPublic.lean/declarations/mdifferentiablewithinat-extchartat-symm.md) | 352 | `result-track:fe003d5fe2eac38ee6b0b2e51534cc217e7dc414b2fe67dd1ab27d26eeab00f3` |
| 46 | `theorem` | [mdifferentiableOn_extChartAt_symm](../../../../DifferentialGeometry/MFDerivAtlasPublic.lean/declarations/mdifferentiableon-extchartat-symm.md) | 356 | `result-track:e8e11f03009cd5a65f8918b5e498b302d37cf76ac61fb36d95b702c48ba2a951` |
| 47 | `lemma` | [mfderiv_extChartAt_comp_mfderivWithin_extChartAt_symm](../../../../DifferentialGeometry/MFDerivAtlasPublic.lean/declarations/mfderiv-extchartat-comp-mfderivwithin-extchartat-symm-source-edition-2.md) | 363 | `result-track:510f66f290c9469b06112bf165a8193a9de095be64e8f691b45dbe41ed2617d5` |
| 48 | `lemma` | [mfderiv_extChartAt_comp_mfderivWithin_extChartAt_symm'](../../../../DifferentialGeometry/MFDerivAtlasPublic.lean/declarations/mfderiv-extchartat-comp-mfderivwithin-extchartat-symm.md) | 372 | `result-track:47e6ca123881d50f084732cb603f2a0d7e667212bda80c0f83b5a3a3f1938e5f` |
| 49 | `lemma` | [mfderivWithin_extChartAt_symm_comp_mfderiv_extChartAt](../../../../DifferentialGeometry/MFDerivAtlasPublic.lean/declarations/mfderivwithin-extchartat-symm-comp-mfderiv-extchartat.md) | 381 | `result-track:6b6e0e56dd92936d21fd9aea3f278880ee85c471c28cfacb7ae2ddd51409e931` |
| 50 | `lemma` | [mfderivWithin_extChartAt_symm_comp_mfderiv_extChartAt'](../../../../DifferentialGeometry/MFDerivAtlasPublic.lean/declarations/mfderivwithin-extchartat-symm-comp-mfderiv-extchartat-source-edition-2.md) | 391 | `result-track:fcda18bcf27b7ce7b0aa4db0dd197ee97e364c752de1a48009d26833c164edb3` |
| 51 | `lemma` | [isInvertible_mfderivWithin_extChartAt_symm](../../../../DifferentialGeometry/MFDerivAtlasPublic.lean/declarations/isinvertible-mfderivwithin-extchartat-symm.md) | 399 | `result-track:31dd4933cce06f8bbe96e96565c9a7b6992110cec38e78c4b337a43a89ffff49` |
| 52 | `lemma` | [isInvertible_mfderiv_extChartAt](../../../../DifferentialGeometry/MFDerivAtlasPublic.lean/declarations/isinvertible-mfderiv-extchartat.md) | 403 | `result-track:2c4202fc98c366f27d5152055a06aa078f3a712be9c8e12a94dfb99b4faca577` |
| 53 | `theorem` | [TangentBundle.continuousLinearMapAt_trivializationAt](../../../../DifferentialGeometry/MFDerivAtlasPublic.lean/declarations/tangentbundle-continuouslinearmapat-trivializationat.md) | 411 | `result-track:e6c7be707bc7acbed802e7e1ad38c9555d0117b8235825cc655e672fd156a2f9` |
| 54 | `theorem` | [TangentBundle.symmL_trivializationAt](../../../../DifferentialGeometry/MFDerivAtlasPublic.lean/declarations/tangentbundle-symml-trivializationat.md) | 425 | `result-track:bd1c60808c41e4aab7ebada7aa1ef1a2b7276c5f6ccea77b5a8290e703d1ed1f` |
| 55 | `lemma` | [fderivWithin_extChartAt_comp_extChartAt_symm_range](../../../../DifferentialGeometry/MFDerivAtlasPublic.lean/declarations/fderivwithin-extchartat-comp-extchartat-symm-range.md) | 437 | `result-track:1fdf544b1540bf74860d84d226bb8c531ffcfe545d5ab6e36c43ce50752c48e0` |
| 56 | `lemma` | [mfderiv_extChartAt_self](../../../../DifferentialGeometry/MFDerivAtlasPublic.lean/declarations/mfderiv-extchartat-self.md) | 448 | `result-track:415fe82939a923e6a7f410b5e3638cf8472dc8f64edf0fea03bfcee68e9196d6` |
| 57 | `lemma` | [mfderivWithin_range_extChartAt_symm](../../../../DifferentialGeometry/MFDerivAtlasPublic.lean/declarations/mfderivwithin-range-extchartat-symm.md) | 459 | `result-track:6dd0f5c9d73b12b73e59798aa38d13fd7d4594924fea490977b910b1557d5508` |
| 58 | `lemma` | [mfderivWithin_extChartAt_symm_inverse_apply](../../../../DifferentialGeometry/MFDerivAtlasPublic.lean/declarations/mfderivwithin-extchartat-symm-inverse-apply.md) | 469 | `result-track:5b59e7415ab61e3d1a599c0a486c6fdf336a1294c556d154a2be9bddf8c381c9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9ad19ec7f5521882033298fce21872cb64d7fe857c616483660e1d47621044a7 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Geometry/DifferentialGeometry/Atlas/Variant6db87f39cfdfb4e6645ae04b3d1918c6a912034fa2ebbc0690b21f48efe1657e.lean","GRWTSK/_verification/specifications/Geometry/DifferentialGeometry/Atlas/Variant6db87f39cfdfb4e6645ae04b3d1918c6a912034fa2ebbc0690b21f48efe1657e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
