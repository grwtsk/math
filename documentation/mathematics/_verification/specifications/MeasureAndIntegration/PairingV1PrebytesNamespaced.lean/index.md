# Verification target: Pairing V1 Prebytes Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "30906af89f678769d08fc6412c74641d246ce387",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/PairingV1Prebytes/Variant6d37f49fe4bb02888c28f77e715e34cb0805109b54a3390ca923ec1b54386168.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/PairingV1PrebytesNamespaced.lean/index.md) · [Full source](../../../../MeasureAndIntegration/PairingV1PrebytesNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `30906af89f678769d08fc6412c74641d246ce387`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/PairingV1Prebytes/Variant6d37f49fe4bb02888c28f77e715e34cb0805109b54a3390ca923ec1b54386168.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/PairingV1Prebytes/Variant6d37f49fe4bb02888c28f77e715e34cb0805109b54a3390ca923ec1b54386168.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceContinuousHalfEnergy` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceHankelReflection` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [greenKernel](../../../../MeasureAndIntegration/PairingV1PrebytesNamespaced.lean/declarations/greenkernel.md) | 35 | `declaration-track:21076f3790bc1951d7d0ac6201e29a20522fea7ffb25d6a83341fd4c2f0a4e49` |
| 2 | `def` | [sourceGreenPairing](../../../../MeasureAndIntegration/PairingV1PrebytesNamespaced.lean/declarations/sourcegreenpairing.md) | 38 | `declaration-track:254b6d3e46fff0fdfdd396faebf5e5ad4c205d81070d2f9cc8a0732fe17d6fae` |
| 3 | `def` | [sourceGreenConvolution](../../../../MeasureAndIntegration/PairingV1PrebytesNamespaced.lean/declarations/sourcegreenconvolution.md) | 42 | `declaration-track:7628523a798248944af64c2e39815a37174f23f7a740a6d802217d7e3b376162` |
| 4 | `theorem` | [greenKernel_continuous](../../../../MeasureAndIntegration/PairingV1PrebytesNamespaced.lean/declarations/greenkernel-continuous.md) | 46 | `result-track:ff61c9872b424577fbb613eed98a6427bb2fbafba4f6ce5b895443a204637dec` |
| 5 | `theorem` | [greenKernel_even](../../../../MeasureAndIntegration/PairingV1PrebytesNamespaced.lean/declarations/greenkernel-even.md) | 50 | `result-track:0b9608855aceda4fd31e67fb4a030546e7645890c04df5c98b23061806c0a3c7` |
| 6 | `theorem` | [sourceGreenPairing_integrable](../../../../MeasureAndIntegration/PairingV1PrebytesNamespaced.lean/declarations/sourcegreenpairing-integrable.md) | 54 | `result-track:16a2a62f718e722250dca607041f34b56fbb6e7569a09bfb4f380a40d730cf02` |
| 7 | `theorem` | [sourceGreenConvolution_integrable](../../../../MeasureAndIntegration/PairingV1PrebytesNamespaced.lean/declarations/sourcegreenconvolution-integrable.md) | 59 | `result-track:3fc48e2e39e127b2c6582a82530ba708b0a1af7dde6e3549abbee9f0ed22a830` |
| 8 | `theorem` | [sourceGreenPairing_eq_twice_negativeSmoothMoment](../../../../MeasureAndIntegration/PairingV1PrebytesNamespaced.lean/declarations/sourcegreenpairing-eq-twice-negativesmoothmoment.md) | 66 | `result-track:e204ca4d46e63dd17832e83e480a93fb0b1dcbaba6186f75975c2381c736bea7` |
| 9 | `theorem` | [sourceGreenPairing_eq_causal_energy](../../../../MeasureAndIntegration/PairingV1PrebytesNamespaced.lean/declarations/sourcegreenpairing-eq-causal-energy.md) | 104 | `result-track:85bebec3b33094c3e932d4f51136cd1bd4be905cca9508e243e9b0e97673cfa7` |
| 10 | `theorem` | [criticalContinuousMoment_eq_neg_half_green](../../../../MeasureAndIntegration/PairingV1PrebytesNamespaced.lean/declarations/criticalcontinuousmoment-eq-neg-half-green.md) | 111 | `result-track:69fa95edfced7e1aa8c78a5dba9272247e4f30fc66be2f2cb167bdaacff2b856` |
| 11 | `theorem` | [normalizedPrimitiveBump_even](../../../../MeasureAndIntegration/PairingV1PrebytesNamespaced.lean/declarations/normalizedprimitivebump-even.md) | 117 | `result-track:64f8220bf498940c63bfb87cfa954f34a60d3250700374302225ec29b556f104` |
| 12 | `theorem` | [normalizedPrimitiveBump_deriv_odd](../../../../MeasureAndIntegration/PairingV1PrebytesNamespaced.lean/declarations/normalizedprimitivebump-deriv-odd.md) | 130 | `result-track:ea421d8a8eb6809a81a180ef859e78c5d0b5ab95d2b8889ca0602519bccc1ee3` |
| 13 | `theorem` | [causalSourceTail_add_reflection](../../../../MeasureAndIntegration/PairingV1PrebytesNamespaced.lean/declarations/causalsourcetail-add-reflection.md) | 143 | `result-track:a474864c04acbbd1abbcd0855119e82ae2d9e4e952b5c32267ee7e05dbc052a0` |
| 14 | `theorem` | [sourceGreenConvolution_upper_half](../../../../MeasureAndIntegration/PairingV1PrebytesNamespaced.lean/declarations/sourcegreenconvolution-upper-half.md) | 150 | `result-track:8fe8e2325f4d4b8a4b2ded5906d450b6d2521b48a8f9696bb8cc847ec0f0d3f5` |
| 15 | `theorem` | [sourceGreenConvolution_lower_half](../../../../MeasureAndIntegration/PairingV1PrebytesNamespaced.lean/declarations/sourcegreenconvolution-lower-half.md) | 163 | `result-track:5f9a02cb902c0fb95e8aeec35589f5fb8e34850dbf76370f88660e452edf337b` |
| 16 | `theorem` | [sourceGreenConvolution_eq_tails](../../../../MeasureAndIntegration/PairingV1PrebytesNamespaced.lean/declarations/sourcegreenconvolution-eq-tails.md) | 178 | `result-track:50b76d43e4fb38b0bf948f45533067504e7d0e5a01899057e0ec88bd5b28f8ab` |
| 17 | `theorem` | [sourceGreenConvolution_eq_neg_bump](../../../../MeasureAndIntegration/PairingV1PrebytesNamespaced.lean/declarations/sourcegreenconvolution-eq-neg-bump.md) | 187 | `result-track:37ae0c82e4790819a53022308da85d3a1c1f481a305a96ce9cba4cc3009189bc` |
| 18 | `theorem` | [sourceGreenConvolution_continuous](../../../../MeasureAndIntegration/PairingV1PrebytesNamespaced.lean/declarations/sourcegreenconvolution-continuous.md) | 193 | `result-track:5fb3e6eeeb83111ce1d1dcae7083bc3e8dddc05bc1bc62ba08edd1820a804331` |
| 19 | `theorem` | [sourceGreenConvolution_hasCompactSupport](../../../../MeasureAndIntegration/PairingV1PrebytesNamespaced.lean/declarations/sourcegreenconvolution-hascompactsupport.md) | 201 | `result-track:1677db01c26445d5a9ae1cb60aebe4e29bd630d45d2d4ca2f26a8903bcca7162` |
| 20 | `theorem` | [sourceGreenConvolution_zero_of_not_mem](../../../../MeasureAndIntegration/PairingV1PrebytesNamespaced.lean/declarations/sourcegreenconvolution-zero-of-not-mem.md) | 209 | `result-track:ae8957011d4796ee91db07772c61bbceaa08cf939099cc8a6553c74872682d7b` |
| 21 | `def` | [sourceGreenDoubleKernel](../../../../MeasureAndIntegration/PairingV1PrebytesNamespaced.lean/declarations/sourcegreendoublekernel.md) | 215 | `declaration-track:c40c4d3f06b4cd13b0a8e41d8ca38af8951846705e41e170bea1453724f033e3` |
| 22 | `theorem` | [sourceGreenDoubleKernel_continuous](../../../../MeasureAndIntegration/PairingV1PrebytesNamespaced.lean/declarations/sourcegreendoublekernel-continuous.md) | 220 | `result-track:ac89971f3972185cc0ae6b71d5ed25d8389c3cb99b721f758ebf48f33dc28be2` |
| 23 | `theorem` | [sourceGreenDoubleKernel_hasCompactSupport](../../../../MeasureAndIntegration/PairingV1PrebytesNamespaced.lean/declarations/sourcegreendoublekernel-hascompactsupport.md) | 229 | `result-track:22798e3d0892fd7e2cbd51089908e1926e65143546ed576b84c4d8f65b56d9e4` |
| 24 | `theorem` | [sourceGreenDoubleKernel_integrable](../../../../MeasureAndIntegration/PairingV1PrebytesNamespaced.lean/declarations/sourcegreendoublekernel-integrable.md) | 247 | `result-track:5be76d63131db824c903cf18f581b926a0b0b1cbc73001d2e902fd0737e7cbc0` |
| 25 | `theorem` | [source_mul_sourceGreenConvolution_integrable](../../../../MeasureAndIntegration/PairingV1PrebytesNamespaced.lean/declarations/source-mul-sourcegreenconvolution-integrable.md) | 253 | `result-track:da8a50ee9aff4e72f95ef44d5d3db4140dfbdfdd30f8040ff33b600531fdd64c` |
| 26 | `theorem` | [source_mul_reflected_tail_integral](../../../../MeasureAndIntegration/PairingV1PrebytesNamespaced.lean/declarations/source-mul-reflected-tail-integral.md) | 261 | `result-track:c510a435a1d9cd2233c318362b8e64d2a2935eacd81288651795bfa96bfcd8da` |
| 27 | `theorem` | [source_mul_sourceGreenConvolution_integral](../../../../MeasureAndIntegration/PairingV1PrebytesNamespaced.lean/declarations/source-mul-sourcegreenconvolution-integral.md) | 269 | `result-track:ee9f88bb3e325bc25a5d8b50763638541ff99fd37b4eca85552a20d8849cb2bf` |
| 28 | `theorem` | [sourceGreenPairing_eq_convolution_pairing](../../../../MeasureAndIntegration/PairingV1PrebytesNamespaced.lean/declarations/sourcegreenpairing-eq-convolution-pairing.md) | 283 | `result-track:72a11e74c2c34b97991ba6852e8bc6b411926b875c5a95f38e197d997cb260ef` |
| 29 | `theorem` | [sourceGreenPairing_eq_double_integral](../../../../MeasureAndIntegration/PairingV1PrebytesNamespaced.lean/declarations/sourcegreenpairing-eq-double-integral.md) | 289 | `result-track:ebf3cac33531ba9720149873a7238b91aa6290ac1c95b01294aa0db9aaa05e73` |
| 30 | `theorem` | [sourceGreenPairing_eq_neg_source_bump](../../../../MeasureAndIntegration/PairingV1PrebytesNamespaced.lean/declarations/sourcegreenpairing-eq-neg-source-bump.md) | 296 | `result-track:29fa574fc88fe70c3eb5d1a0eb0b24016fceed21966608f16abb4b3e1146f0e4` |
| 31 | `theorem` | [sourceGreenPairing_eq_normalized_energy](../../../../MeasureAndIntegration/PairingV1PrebytesNamespaced.lean/declarations/sourcegreenpairing-eq-normalized-energy.md) | 304 | `result-track:da5a7a4ba079ddd09835e2e39eb8e8fcb88d42c515a498077fd8e6aa622af21f` |
| 32 | `theorem` | [sourceGreenPairing_eq_rational](../../../../MeasureAndIntegration/PairingV1PrebytesNamespaced.lean/declarations/sourcegreenpairing-eq-rational.md) | 311 | `result-track:b08ce11f616f81333d2e9c14246df2e4a22af0a14490c4eebc5009f10e16af51` |
| 33 | `theorem` | [sourceGreenPairing_pos](../../../../MeasureAndIntegration/PairingV1PrebytesNamespaced.lean/declarations/sourcegreenpairing-pos.md) | 317 | `result-track:76ff1b1a0ee4352454e9fd1b22ab4dac9a1c5e25b6d428c876d51d0d2b0e5748` |
| 34 | `theorem` | [criticalContinuousMoment_eq_half_source_bump](../../../../MeasureAndIntegration/PairingV1PrebytesNamespaced.lean/declarations/criticalcontinuousmoment-eq-half-source-bump.md) | 322 | `result-track:14f630af3df0b15e94567f4fc4b13fbf03de1844350cdc8f3453547ecc8d83cc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=070928402b0172289f5c15f8d9cbeae192c444af604fff9fc557bf140c335391 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/PairingV1Prebytes/Variant6d37f49fe4bb02888c28f77e715e34cb0805109b54a3390ca923ec1b54386168.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/PairingV1Prebytes/Variant6d37f49fe4bb02888c28f77e715e34cb0805109b54a3390ca923ec1b54386168.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
