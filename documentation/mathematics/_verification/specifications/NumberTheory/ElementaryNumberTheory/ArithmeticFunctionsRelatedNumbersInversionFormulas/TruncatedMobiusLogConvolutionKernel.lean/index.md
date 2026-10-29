# Verification target: GRWTSK.NumberTheory.Moebius.TruncatedMobiusLogConvolutionKernel

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b56c6e42dd7ae8890c9fc83e8f92283597c06106",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Moebius/TruncatedMobiusLogConvolutionKernel.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/TruncatedMobiusLogConvolutionKernel.lean/index.md) · [Full source](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/TruncatedMobiusLogConvolutionKernel.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b56c6e42dd7ae8890c9fc83e8f92283597c06106`.

Source path: `GRWTSK/NumberTheory/Moebius/TruncatedMobiusLogConvolutionKernel.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Moebius/TruncatedMobiusLogConvolutionKernel.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.NumberTheory.ArithmeticFunction.VonMangoldt` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [truncatedMobiusLogConvolution](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/TruncatedMobiusLogConvolutionKernel.lean/declarations/truncatedmobiuslogconvolution.md) | 20 | `declaration-track:4535ba9800d35bd080b2f65905c227a5418ec956c30f3ecb22d4e9b22c162f95` |
| 2 | `def` | [natBasisPacket](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/TruncatedMobiusLogConvolutionKernel.lean/declarations/natbasispacket.md) | 27 | `declaration-track:1cb9b58fb8ea32a13d3801478854e4c65bac88d2805f9b2613225d223792a44a` |
| 3 | `theorem` | [truncatedMobiusLogConvolution_eq_divisorSum](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/TruncatedMobiusLogConvolutionKernel.lean/declarations/truncatedmobiuslogconvolution-eq-divisorsum.md) | 32 | `result-track:8357509a0a6dd438885918727e0f2f4a35c5a7c3f12f891a276d140a0277ff61` |
| 4 | `theorem` | [truncatedMobiusLogConvolution_moebius_eq_vonMangoldt](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/TruncatedMobiusLogConvolutionKernel.lean/declarations/truncatedmobiuslogconvolution-moebius-eq-vonmangoldt.md) | 39 | `result-track:cd10bb3db410c28f9fd4bc86106e0c4336a465c564ccf4497aea7d487c9e8e49` |
| 5 | `theorem` | [eq_of_upperHalf_dvd](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/TruncatedMobiusLogConvolutionKernel.lean/declarations/eq-of-upperhalf-dvd.md) | 56 | `result-track:27b1b9303647ffc928bb949fa169cc246012f41993f4fdf03b8bab8801afec44` |
| 6 | `theorem` | [truncatedMobiusLogConvolution_upperHalf_basis_zero](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/TruncatedMobiusLogConvolutionKernel.lean/declarations/truncatedmobiuslogconvolution-upperhalf-basis-zero.md) | 78 | `result-track:3e6763481622851296d39f6d0bef45e275ee8f92cee717351ca1b7adcd3d5ae6` |
| 7 | `theorem` | [truncatedMobiusLogConvolution_upperHalf_supported_zero](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/TruncatedMobiusLogConvolutionKernel.lean/declarations/truncatedmobiuslogconvolution-upperhalf-supported-zero.md) | 102 | `result-track:df4a3f76233c306c93a1a93955ffb7b6fa999639a6f8109816a7eaec97b4d6b3` |
| 8 | `theorem` | [upperHalf_kernel_requires_actual_packet_difference](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/TruncatedMobiusLogConvolutionKernel.lean/declarations/upperhalf-kernel-requires-actual-packet-difference.md) | 127 | `result-track:20b08462275247a5fd66df576fafaa6b0c249667b44365dea95918e088cca5a0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=de1b364d5837ba8b64f4a45fd8603d6cce6a2dd9c3256143712eb89aaed29fc8 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Moebius/TruncatedMobiusLogConvolutionKernel.lean","GRWTSK/_verification/specifications/NumberTheory/Moebius/TruncatedMobiusLogConvolutionKernel.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
