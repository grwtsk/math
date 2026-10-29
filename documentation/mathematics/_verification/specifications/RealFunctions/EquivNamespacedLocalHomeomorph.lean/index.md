# Verification target: Equiv Namespaced Local Homeomorph

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "18fdffc1134922d0fe471ae56cdec78fd2355d5b",
  "lexical_observation_count": 65,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Equiv/Variantbaf1e016dc2cfd65c4ec51e9e716d72899f77416221e98126dbe472baf310ec0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../RealFunctions/EquivNamespacedLocalHomeomorph.lean/index.md) · [Full source](../../../../RealFunctions/EquivNamespacedLocalHomeomorph.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `18fdffc1134922d0fe471ae56cdec78fd2355d5b`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Equiv/Variantbaf1e016dc2cfd65c4ec51e9e716d72899f77416221e98126dbe472baf310ec0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Equiv/Variantbaf1e016dc2cfd65c4ec51e9e716d72899f77416221e98126dbe472baf310ec0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Calculus.FDeriv.Linear` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.FDeriv.Comp` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [hasStrictFDerivAt](../../../../RealFunctions/EquivNamespacedLocalHomeomorph.lean/declarations/hasstrictfderivat-source-edition-2.md) | 67 | `result-track:ba633301a6baa199ecc4001206610142a87224a51ec84040bc72231c27524cd7` |
| 2 | `theorem` | [hasFDerivWithinAt](../../../../RealFunctions/EquivNamespacedLocalHomeomorph.lean/declarations/hasfderivwithinat-source-edition-2.md) | 71 | `result-track:71f3061b867847289ab44c6d23cf7cf30eb29bbc6b0a10caf719b1565d562383` |
| 3 | `theorem` | [hasFDerivAt](../../../../RealFunctions/EquivNamespacedLocalHomeomorph.lean/declarations/hasfderivat-source-edition-2.md) | 75 | `result-track:c48d0acf778ebe7bd3dcc36228627cb4083c0246a082c5eed42fa57538c7b259` |
| 4 | `theorem` | [differentiableAt](../../../../RealFunctions/EquivNamespacedLocalHomeomorph.lean/declarations/differentiableat-source-edition-2.md) | 79 | `result-track:897d582ab01bc105362d9d82d5a84f5c83a15cbb5157db4394033df6548ad67b` |
| 5 | `theorem` | [differentiableWithinAt](../../../../RealFunctions/EquivNamespacedLocalHomeomorph.lean/declarations/differentiablewithinat.md) | 83 | `result-track:9ea5b57d3d4e084e3d0970cc726217229b30df9723032ddd7468d0d6e1252dcd` |
| 6 | `theorem` | [fderiv](../../../../RealFunctions/EquivNamespacedLocalHomeomorph.lean/declarations/fderiv-source-edition-2.md) | 87 | `result-track:aa93ceeab050e29f4543d7d9465c0721a55aad43ed8756f09e4f6264c9030031` |
| 7 | `theorem` | [fderivWithin](../../../../RealFunctions/EquivNamespacedLocalHomeomorph.lean/declarations/fderivwithin.md) | 91 | `result-track:071c8650984c085f409593043562a42c25cc9d4a1cde25342caa68a45ba8a0b6` |
| 8 | `theorem` | [differentiable](../../../../RealFunctions/EquivNamespacedLocalHomeomorph.lean/declarations/differentiable-source-edition-2.md) | 95 | `result-track:c92665574d2f83be500062c418e3582f06849a448c50bd74440dc396a855e1a1` |
| 9 | `theorem` | [differentiableOn](../../../../RealFunctions/EquivNamespacedLocalHomeomorph.lean/declarations/differentiableon-source-edition-2.md) | 98 | `result-track:82aadfdd4778fd159e39de9df5409dc99592140538254ed769dbe59bbcaaecf1` |
| 10 | `theorem` | [comp_differentiableWithinAt_iff](../../../../RealFunctions/EquivNamespacedLocalHomeomorph.lean/declarations/comp-differentiablewithinat-iff-source-edition-2.md) | 102 | `result-track:5de4660990e1edc51da020949289eeeb389d9c0d277818e1c781babb992366d9` |
| 11 | `theorem` | [comp_differentiableAt_iff](../../../../RealFunctions/EquivNamespacedLocalHomeomorph.lean/declarations/comp-differentiableat-iff.md) | 111 | `result-track:2edd1162c462f521a92119b510ae6b468ad5fe508aa9c3528f753c2b53f4f4cf` |
| 12 | `theorem` | [comp_differentiableOn_iff](../../../../RealFunctions/EquivNamespacedLocalHomeomorph.lean/declarations/comp-differentiableon-iff.md) | 117 | `result-track:1828b35ade6e86dc02a1c1a6f66a2718758ee85442cbeda8145ae09bca5d429c` |
| 13 | `theorem` | [comp_differentiable_iff](../../../../RealFunctions/EquivNamespacedLocalHomeomorph.lean/declarations/comp-differentiable-iff-source-edition-2.md) | 123 | `result-track:e7805ca72a63cd0ca781786f04e3e174495688d2b0688908c006cc42787ca7d6` |
| 14 | `theorem` | [comp_hasFDerivWithinAt_iff](../../../../RealFunctions/EquivNamespacedLocalHomeomorph.lean/declarations/comp-hasfderivwithinat-iff-source-edition-3.md) | 128 | `result-track:8dc343cb88b850500204d5b3ef66b833dcffb6ec1fa2212f506616b85ba4646d` |
| 15 | `theorem` | [comp_hasStrictFDerivAt_iff](../../../../RealFunctions/EquivNamespacedLocalHomeomorph.lean/declarations/comp-hasstrictfderivat-iff-source-edition-2.md) | 140 | `result-track:e80528998713bdd3a839bc8568fa12ff5d47d6f0b7ccdc1b59e40ea52da0a41e` |
| 16 | `theorem` | [comp_hasFDerivAt_iff](../../../../RealFunctions/EquivNamespacedLocalHomeomorph.lean/declarations/comp-hasfderivat-iff-source-edition-4.md) | 147 | `result-track:f0cd9e2a07a1cf99f6b3fecbd6a62a8ae249dfe46f1c808d5240c69c4a6ac20f` |
| 17 | `theorem` | [comp_hasFDerivWithinAt_iff'](../../../../RealFunctions/EquivNamespacedLocalHomeomorph.lean/declarations/comp-hasfderivwithinat-iff-source-edition-2.md) | 152 | `result-track:1dbc30a514e6f0de4a1c8dea0bf3d2ed35bd3cba4e8c05bd75f3db1e19402864` |
| 18 | `theorem` | [comp_hasFDerivAt_iff'](../../../../RealFunctions/EquivNamespacedLocalHomeomorph.lean/declarations/comp-hasfderivat-iff-source-edition-2.md) | 159 | `result-track:77efd83bd40937f9ad7f2a8e7569919e98d156e5b7a016e6627cde33cfba3f95` |
| 19 | `theorem` | [comp_fderivWithin](../../../../RealFunctions/EquivNamespacedLocalHomeomorph.lean/declarations/comp-fderivwithin.md) | 164 | `result-track:49416daead21963b26962db0cdb5cb777187bea27038de68bbf23de66a8f4aba` |
| 20 | `theorem` | [comp_fderiv](../../../../RealFunctions/EquivNamespacedLocalHomeomorph.lean/declarations/comp-fderiv-source-edition-2.md) | 173 | `result-track:a902884423810087a0ae2722613b43be6290765da17ec934d64e4eeacd92a690` |
| 21 | `theorem` | [comp_right_differentiableWithinAt_iff](../../../../RealFunctions/EquivNamespacedLocalHomeomorph.lean/declarations/comp-right-differentiablewithinat-iff.md) | 179 | `result-track:677d6824ef03228d211ae89b39a336c32e0b4028a3f40acbe92b9a8e4c9ed4ee` |
| 22 | `theorem` | [comp_right_differentiableAt_iff](../../../../RealFunctions/EquivNamespacedLocalHomeomorph.lean/declarations/comp-right-differentiableat-iff.md) | 190 | `result-track:ac7b12deb8da6dccb1d364c247378457ac0026b623f7af468d1c1414bba68bde` |
| 23 | `theorem` | [comp_right_differentiableOn_iff](../../../../RealFunctions/EquivNamespacedLocalHomeomorph.lean/declarations/comp-right-differentiableon-iff.md) | 196 | `result-track:3a04af61a2f68288cbe73c499eaefb3b1167c6d4f94438f2fb0026040636eabb` |
| 24 | `theorem` | [comp_right_differentiable_iff](../../../../RealFunctions/EquivNamespacedLocalHomeomorph.lean/declarations/comp-right-differentiable-iff.md) | 204 | `result-track:e49b13897f80fdf95f29e259439b946f40f83fa87a0b2c6a176cc7e87c5f1bb1` |
| 25 | `theorem` | [comp_right_hasFDerivWithinAt_iff](../../../../RealFunctions/EquivNamespacedLocalHomeomorph.lean/declarations/comp-right-hasfderivwithinat-iff-source-edition-2.md) | 209 | `result-track:aebdffc8db1651baa9e32be2ed085dcc486bd2dec9f7d2e36bd4c5c02b852de2` |
| 26 | `theorem` | [comp_right_hasFDerivAt_iff](../../../../RealFunctions/EquivNamespacedLocalHomeomorph.lean/declarations/comp-right-hasfderivat-iff-source-edition-2.md) | 225 | `result-track:c65add6395e85fd8491c7012fca78a4343039a323a856a61a5287ce3deefac3b` |
| 27 | `theorem` | [comp_right_hasFDerivWithinAt_iff'](../../../../RealFunctions/EquivNamespacedLocalHomeomorph.lean/declarations/comp-right-hasfderivwithinat-iff.md) | 230 | `result-track:5a4d42ba381705455484a56ea1ea2122a0b316aea209565133eec2fd3168c2c9` |
| 28 | `theorem` | [comp_right_hasFDerivAt_iff'](../../../../RealFunctions/EquivNamespacedLocalHomeomorph.lean/declarations/comp-right-hasfderivat-iff.md) | 237 | `result-track:0cb794bcda7c65306540fef14fe0f8c82471b4fbc7eb53e9298da4ab2624fef0` |
| 29 | `theorem` | [comp_right_fderivWithin](../../../../RealFunctions/EquivNamespacedLocalHomeomorph.lean/declarations/comp-right-fderivwithin.md) | 242 | `result-track:9e8fe450bdb9e811bed8a5190947ff34e88f3914a764bdfd34c661aaebc1e6e9` |
| 30 | `theorem` | [comp_right_fderiv](../../../../RealFunctions/EquivNamespacedLocalHomeomorph.lean/declarations/comp-right-fderiv.md) | 255 | `result-track:b9b3d89a3d74690d391b2310e25188f506d882c5502de6bb30683f4b25c8254a` |
| 31 | `theorem` | [hasStrictFDerivAt](../../../../RealFunctions/EquivNamespacedLocalHomeomorph.lean/declarations/hasstrictfderivat.md) | 270 | `result-track:1d4c29334e2341e5c672273a630436717aa78dd2f75718bcb86ddc480d1d7878` |
| 32 | `theorem` | [hasFDerivWithinAt](../../../../RealFunctions/EquivNamespacedLocalHomeomorph.lean/declarations/hasfderivwithinat.md) | 274 | `result-track:5c703512290faddaab5513bd54046b859825a06141c8d9616e25392085108167` |
| 33 | `theorem` | [hasFDerivAt](../../../../RealFunctions/EquivNamespacedLocalHomeomorph.lean/declarations/hasfderivat.md) | 278 | `result-track:a218ada87bc0f4b4ace825f35f103a731f4c29b3321f47c4b1d71319f123e525` |
| 34 | `theorem` | [differentiableAt](../../../../RealFunctions/EquivNamespacedLocalHomeomorph.lean/declarations/differentiableat.md) | 282 | `result-track:49144eb35c30fc980b330168f35ff83417de38373dfc63b6ec2ce6e83f9dc33c` |
| 35 | `theorem` | [differentiableWithinAt](../../../../RealFunctions/EquivNamespacedLocalHomeomorph.lean/declarations/differentiablewithinat-source-edition-2.md) | 286 | `result-track:b50ac70b819290635d226e7100529d3f6994454c5a2fdca7065d3dbe6b57604b` |
| 36 | `theorem` | [fderiv](../../../../RealFunctions/EquivNamespacedLocalHomeomorph.lean/declarations/fderiv.md) | 290 | `result-track:96aba6f75cc36c1d9a08386d3c31d77e78fa171d604ac4a7f1a32a7bb841b2be` |
| 37 | `theorem` | [fderivWithin](../../../../RealFunctions/EquivNamespacedLocalHomeomorph.lean/declarations/fderivwithin-source-edition-2.md) | 294 | `result-track:23fde02d4600696b3c141ec623a0885da1f7cd979267c4f6c8877f8ed9058f46` |
| 38 | `theorem` | [differentiable](../../../../RealFunctions/EquivNamespacedLocalHomeomorph.lean/declarations/differentiable.md) | 298 | `result-track:41569019a7185bea05f6535b79811387ae51047fff0a88e6d8322ff7392a3cfe` |
| 39 | `theorem` | [differentiableOn](../../../../RealFunctions/EquivNamespacedLocalHomeomorph.lean/declarations/differentiableon.md) | 301 | `result-track:672a2c8fc3623c9f2201be61bc6d24005114acc6f6d0f88f132e11c2800b6296` |
| 40 | `theorem` | [comp_differentiableWithinAt_iff](../../../../RealFunctions/EquivNamespacedLocalHomeomorph.lean/declarations/comp-differentiablewithinat-iff.md) | 305 | `result-track:3a615ea71095d9314e39ae0a609d21a5e49a6d4bac6f92d8c03935a50e89d86c` |
| 41 | `theorem` | [comp_differentiableAt_iff](../../../../RealFunctions/EquivNamespacedLocalHomeomorph.lean/declarations/comp-differentiableat-iff-source-edition-2.md) | 310 | `result-track:7683e3cba24c89b28a23c0571de88eada706ce8934bdc95a689920fb3ca05dd6` |
| 42 | `theorem` | [comp_differentiableOn_iff](../../../../RealFunctions/EquivNamespacedLocalHomeomorph.lean/declarations/comp-differentiableon-iff-source-edition-2.md) | 315 | `result-track:4cecf7b73d0f2e554a31b6087d4c926bb574549e0ab49d8eebaad23deca585cd` |
| 43 | `theorem` | [comp_differentiable_iff](../../../../RealFunctions/EquivNamespacedLocalHomeomorph.lean/declarations/comp-differentiable-iff.md) | 320 | `result-track:4b503b72224db1b314fd959d2a88680377e4fae6bd289d8b9e2ba5a2bf3db0af` |
| 44 | `theorem` | [comp_hasFDerivWithinAt_iff](../../../../RealFunctions/EquivNamespacedLocalHomeomorph.lean/declarations/comp-hasfderivwithinat-iff-source-edition-4.md) | 324 | `result-track:cd2e489568abc86bd61e20995f89f6041e0aa5cd2919a59d7eb94fa84ed0f792` |
| 45 | `theorem` | [comp_hasStrictFDerivAt_iff](../../../../RealFunctions/EquivNamespacedLocalHomeomorph.lean/declarations/comp-hasstrictfderivat-iff.md) | 329 | `result-track:7dfc2415d89cde4d66ca6a96660bfd31f97308fee4e7631eb4e78952962d6d15` |
| 46 | `theorem` | [comp_hasFDerivAt_iff](../../../../RealFunctions/EquivNamespacedLocalHomeomorph.lean/declarations/comp-hasfderivat-iff-source-edition-3.md) | 334 | `result-track:8f4e3acfd7e096f9e19563a97c08958d6695b03d3f4ae7c9a0afe16ca05c907d` |
| 47 | `theorem` | [comp_hasFDerivWithinAt_iff'](../../../../RealFunctions/EquivNamespacedLocalHomeomorph.lean/declarations/comp-hasfderivwithinat-iff.md) | 339 | `result-track:0f91c18cd68c88ee9644b527426202d9d3ed3cd8cee6a273753868bd5de1b939` |
| 48 | `theorem` | [comp_hasFDerivAt_iff'](../../../../RealFunctions/EquivNamespacedLocalHomeomorph.lean/declarations/comp-hasfderivat-iff.md) | 344 | `result-track:2ca1d202b27ed1d28ef7ffbca054ffb0f12f7d7b58a85a5247c4cb26634b4e25` |
| 49 | `theorem` | [comp_fderivWithin](../../../../RealFunctions/EquivNamespacedLocalHomeomorph.lean/declarations/comp-fderivwithin-source-edition-2.md) | 349 | `result-track:c60a61c6762b9bf76534019554375c03d80cf20974a72eb7422e6099545f6344` |
| 50 | `theorem` | [comp_fderiv](../../../../RealFunctions/EquivNamespacedLocalHomeomorph.lean/declarations/comp-fderiv.md) | 354 | `result-track:68773af03c12c504ff29fa5b0260dbb72f4bfb95fe7b2ef641789f707c2eba99` |
| 51 | `theorem` | [HasStrictFDerivAt.of_local_left_inverse](../../../../RealFunctions/EquivNamespacedLocalHomeomorph.lean/declarations/hasstrictfderivat-of-local-left-inverse.md) | 367 | `result-track:ccb872c1a79ca6a1fc5a745d2c728b6c3ee69884140464c4eabddd7bd9890824` |
| 52 | `theorem` | [HasFDerivAt.of_local_left_inverse](../../../../RealFunctions/EquivNamespacedLocalHomeomorph.lean/declarations/hasfderivat-of-local-left-inverse.md) | 395 | `result-track:9b3b435c923ceb7e939a654ccd063e5fef46b4fb26b53ab13497d27635afe0d2` |
| 53 | `theorem` | [LocalHomeomorph.hasStrictFDerivAt_symm](../../../../RealFunctions/EquivNamespacedLocalHomeomorph.lean/declarations/localhomeomorph-hasstrictfderivat-symm.md) | 421 | `result-track:d0a37aeee2ccdda26c206a3ba134edb5073e025687d83fffc46c1e844be1a867` |
| 54 | `theorem` | [LocalHomeomorph.hasFDerivAt_symm](../../../../RealFunctions/EquivNamespacedLocalHomeomorph.lean/declarations/localhomeomorph-hasfderivat-symm.md) | 432 | `result-track:05b5f4f44d80fa309cdee004f86ceb65f8058b282b08e4da43729695034fa59e` |
| 55 | `theorem` | [HasFDerivWithinAt.eventually_ne](../../../../RealFunctions/EquivNamespacedLocalHomeomorph.lean/declarations/hasfderivwithinat-eventually-ne.md) | 438 | `result-track:256f49cfed3f8f2ffeee14f6ccba259132874686ede519a3e0dbbdbda186b42c` |
| 56 | `theorem` | [HasFDerivAt.eventually_ne](../../../../RealFunctions/EquivNamespacedLocalHomeomorph.lean/declarations/hasfderivat-eventually-ne.md) | 447 | `result-track:348e4080a795a2617e1750773c13adbe6866af67aecdafbf4b95707c8b982906` |
| 57 | `theorem` | [has_fderiv_at_filter_real_equiv](../../../../RealFunctions/EquivNamespacedLocalHomeomorph.lean/declarations/has-fderiv-at-filter-real-equiv.md) | 467 | `result-track:349d1e2de6dfc9009bac8af4e7753fa9c2e5aee46aeec2c1559e18eabf8de298` |
| 58 | `theorem` | [HasFDerivAt.lim_real](../../../../RealFunctions/EquivNamespacedLocalHomeomorph.lean/declarations/hasfderivat-lim-real.md) | 476 | `result-track:a0f689aafd732cb814ffe7be86d0dcef9223363b2a8c707121691302ec74702e` |
| 59 | `theorem` | [HasFDerivWithinAt.mapsTo_tangent_cone](../../../../RealFunctions/EquivNamespacedLocalHomeomorph.lean/declarations/hasfderivwithinat-mapsto-tangent-cone.md) | 493 | `result-track:75a34d21302f7567e63a69232671b01dcc631a3a0deed9a7916ab59906388f8c` |
| 60 | `theorem` | [HasFDerivWithinAt.uniqueDiffWithinAt](../../../../RealFunctions/EquivNamespacedLocalHomeomorph.lean/declarations/hasfderivwithinat-uniquediffwithinat.md) | 504 | `result-track:aa9b154f54dfcb880cb778eb1525869810e6550870ab10bd0a16e8e9634884ea` |
| 61 | `theorem` | [UniqueDiffOn.image](../../../../RealFunctions/EquivNamespacedLocalHomeomorph.lean/declarations/uniquediffon-image.md) | 514 | `result-track:374033fd215f765ea575ca92c0f3b37e8ec418b7fb3ec177c18b7833d99db154` |
| 62 | `theorem` | [HasFDerivWithinAt.uniqueDiffWithinAt_of_continuousLinearEquiv](../../../../RealFunctions/EquivNamespacedLocalHomeomorph.lean/declarations/hasfderivwithinat-uniquediffwithinat-of-continuouslinearequiv.md) | 520 | `result-track:9b6690ce36f79d61857048cb64b11e0260f5d3465ebbddd42163e7f82e0c3663` |
| 63 | `theorem` | [ContinuousLinearEquiv.uniqueDiffOn_image](../../../../RealFunctions/EquivNamespacedLocalHomeomorph.lean/declarations/continuouslinearequiv-uniquediffon-image.md) | 526 | `result-track:830f17d527609a24d6f298e967a7efedec05bbb844190e6e4aa1f3f16830b605` |
| 64 | `theorem` | [ContinuousLinearEquiv.uniqueDiffOn_image_iff](../../../../RealFunctions/EquivNamespacedLocalHomeomorph.lean/declarations/continuouslinearequiv-uniquediffon-image-iff.md) | 532 | `result-track:055fe506bfaa5c5f7495746bd47f7cd0817b11bef103ad3fe4dc4c1cee6f4059` |
| 65 | `theorem` | [ContinuousLinearEquiv.uniqueDiffOn_preimage_iff](../../../../RealFunctions/EquivNamespacedLocalHomeomorph.lean/declarations/continuouslinearequiv-uniquediffon-preimage-iff.md) | 538 | `result-track:36e7d607337990aef431d828e2316d0de3ec3eecf905962f83f7aecec4b89a82` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1fb2a0dc21a690e21f6a81a1166ceee95f543963026296af9342571c25be1af3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Equiv/Variantbaf1e016dc2cfd65c4ec51e9e716d72899f77416221e98126dbe472baf310ec0.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/DifferentialCalculus/Equiv/Variantbaf1e016dc2cfd65c4ec51e9e716d72899f77416221e98126dbe472baf310ec0.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
