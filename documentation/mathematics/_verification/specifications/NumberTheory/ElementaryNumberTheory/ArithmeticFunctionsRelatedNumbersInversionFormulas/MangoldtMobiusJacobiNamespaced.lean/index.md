# Verification target: Mangoldt Mobius Jacobi Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "57e21e72770a08a8b34e7633d3ccb21cb0820114",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/C018801e863f92899f398a5b9987b2375e60cff5030ed72092e932c0fd7c99e1MangoldtMobiusJa/Variant46d32f14f1eb265476b46a84704b3cd1c7522055bcc1170dea27c7feb1233d36.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/MangoldtMobiusJacobiNamespaced.lean/index.md) · [Full source](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/MangoldtMobiusJacobiNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `57e21e72770a08a8b34e7633d3ccb21cb0820114`.

Source path: `GRWTSK/Algebra/LinearAlgebra/C018801e863f92899f398a5b9987b2375e60cff5030ed72092e932c0fd7c99e1MangoldtMobiusJa/Variant46d32f14f1eb265476b46a84704b3cd1c7522055bcc1170dea27c7feb1233d36.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/C018801e863f92899f398a5b9987b2375e60cff5030ed72092e932c0fd7c99e1MangoldtMobiusJa/Variant46d32f14f1eb265476b46a84704b3cd1c7522055bcc1170dea27c7feb1233d36.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateMertensResidual` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Matrix.Block` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.Symmetric` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [signedDilation](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/MangoldtMobiusJacobiNamespaced.lean/declarations/signeddilation.md) | 41 | `declaration-track:a0eb61d1746b0d4fa0719214765cdd81cc813324b90722c092246041422ef222` |
| 2 | `def` | [jointVector](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/MangoldtMobiusJacobiNamespaced.lean/declarations/jointvector.md) | 45 | `declaration-track:74a2bc39c12cd296ef085835fcf973c73c5d56ee528cca112e0b1cbf0b77c7cd` |
| 3 | `theorem` | [signedDilation_symmetric](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/MangoldtMobiusJacobiNamespaced.lean/declarations/signeddilation-symmetric.md) | 48 | `result-track:99e4764f8ecea7fe10db130dd4b953dcbfb8c9e59b97857f7c161f60ea5d62be` |
| 4 | `theorem` | [signedDilation_quadratic](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/MangoldtMobiusJacobiNamespaced.lean/declarations/signeddilation-quadratic.md) | 53 | `result-track:28c2be50053f98d1db7d31a84137d8ed70e14b20d125db950b11bfc5ba28112b` |
| 5 | `theorem` | [signedDilation_quadratic_sum](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/MangoldtMobiusJacobiNamespaced.lean/declarations/signeddilation-quadratic-sum.md) | 64 | `result-track:6d9fff7251104496d9900842963ea489ff76ecbb2f4e8097cad791b155ea2c26` |
| 6 | `def` | [pairKernel](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/MangoldtMobiusJacobiNamespaced.lean/declarations/pairkernel.md) | 80 | `declaration-track:3e9aede6134df042c4adb28519d9e6288afe2d6a35e17d22bf52f1892f17cf62` |
| 7 | `theorem` | [pairKernel_covariance](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/MangoldtMobiusJacobiNamespaced.lean/declarations/pairkernel-covariance.md) | 82 | `result-track:3c5c842c72b46ed9eb7674c5c68f3351c68a102a0eed4030d14f9f7a76bbed0d` |
| 8 | `theorem` | [finiteMangoldtMobius_covariance](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/MangoldtMobiusJacobiNamespaced.lean/declarations/finitemangoldtmobius-covariance.md) | 97 | `result-track:48e17c0d046d10076f7ccf04ba6ccf4bc3c59564a61c41480eed804bb70592d7` |
| 9 | `def` | [SourceAtom](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/MangoldtMobiusJacobiNamespaced.lean/declarations/sourceatom.md) | 111 | `declaration-track:5c9fd394f2097fcba4d612754a6b8ab806f185064ab7adc5414a4fb33828cec1` |
| 10 | `instance` | [sourceAtomFintype](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/MangoldtMobiusJacobiNamespaced.lean/declarations/sourceatomfintype.md) | 115 | `declaration-track:2272c54029433e083f842fc8cd943528aab923a2ded0e6beed103e539234a363` |
| 11 | `instance` | [sourceAtomDecidableEq](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/MangoldtMobiusJacobiNamespaced.lean/declarations/sourceatomdecidableeq.md) | 119 | `declaration-track:5d9c64c5d28a63d4a09804ea7685dfb63fe482c8e6e455153f040bd7c63bf2c6` |
| 12 | `def` | [sourceMobiusRow](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/MangoldtMobiusJacobiNamespaced.lean/declarations/sourcemobiusrow.md) | 123 | `declaration-track:392474eae3d8e2d02a15af36a033134db0ffe91ed654787ed62ee4400f278cb0` |
| 13 | `def` | [sourceLogRow](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/MangoldtMobiusJacobiNamespaced.lean/declarations/sourcelogrow.md) | 127 | `declaration-track:813c0741f573a1d602c353b77eac66d5abb9701e18cdf1d90b716ff0871c2156` |
| 14 | `def` | [sourceAtomWeight](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/MangoldtMobiusJacobiNamespaced.lean/declarations/sourceatomweight.md) | 130 | `declaration-track:fd1f5aa21e3708ddd2fd4d7c0bed4bb0dd7f38765022cf7c4be36161446934b8` |
| 15 | `def` | [sourceSignedOperator](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/MangoldtMobiusJacobiNamespaced.lean/declarations/sourcesignedoperator.md) | 134 | `declaration-track:bd2d593c0a75b8774d7c3cdb0ba9a2c4f01a238ccf2e9841ccc3f9d2b0bb890a` |
| 16 | `def` | [sourceJointVector](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/MangoldtMobiusJacobiNamespaced.lean/declarations/sourcejointvector.md) | 139 | `declaration-track:5d50af589461b5f625237f4a3f2245a8a3a6d59f4d86e6922ac4aa15b64b071b` |
| 17 | `def` | [sourceOperatorValue](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/MangoldtMobiusJacobiNamespaced.lean/declarations/sourceoperatorvalue.md) | 143 | `declaration-track:3fbc0094f4a6f5605b1d6b31281a0d6e3f806302863d4ea5b62154e7a0dd2024` |
| 18 | `theorem` | [sourceOperatorValue_eq_twice_mobius](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/MangoldtMobiusJacobiNamespaced.lean/declarations/sourceoperatorvalue-eq-twice-mobius.md) | 147 | `result-track:59dcba5c762307dd55bd9eb5c4edbdd2f25728521fadc62b8da351fa72cd1b04` |
| 19 | `theorem` | [sourceOperatorValue_eq_twice_residual](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/MangoldtMobiusJacobiNamespaced.lean/declarations/sourceoperatorvalue-eq-twice-residual.md) | 170 | `result-track:68fec251a523c977bf470e42ef89de652d280ea09a66d6b12608007ac5318c16` |
| 20 | `def` | [SignedOperatorTailUpperBound](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/MangoldtMobiusJacobiNamespaced.lean/declarations/signedoperatortailupperbound.md) | 176 | `declaration-track:0484ea5206c00c584680240b9ed460ccbf8324380d9499bb23939e808ed56df3` |
| 21 | `theorem` | [signedOperatorTail_iff_mertensResidualTail](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/MangoldtMobiusJacobiNamespaced.lean/declarations/signedoperatortail-iff-mertensresidualtail.md) | 181 | `result-track:c668e9650de913d76dac3ba13649d13de28d183b907b46730dd656b285025504` |
| 22 | `theorem` | [estimate_of_signedOperatorTail](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/MangoldtMobiusJacobiNamespaced.lean/declarations/estimate-of-signedoperatortail.md) | 197 | `result-track:4f32c157a2910ad9a07b087e3820a4063d64912ca14e12bf04da044961fec19d` |
| 23 | `theorem` | [cancellation_fixture](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/MangoldtMobiusJacobiNamespaced.lean/declarations/cancellation-fixture.md) | 204 | `result-track:fe3e19a300401c9ace88805bae50a497b2bb15d82923869ba973c88c8bc35cdf` |
| 24 | `theorem` | [absolute_fixture](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/MangoldtMobiusJacobiNamespaced.lean/declarations/absolute-fixture.md) | 211 | `result-track:3e9a97fa1bcff666de2849b58ad35ef959e19928f70602b8f5c4fb5c692df4b6` |
| 25 | `theorem` | [unbounded_representation_fixture](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/MangoldtMobiusJacobiNamespaced.lean/declarations/unbounded-representation-fixture.md) | 218 | `result-track:246d761fb308e913b5963923075d5458f98af24339dace97b36cc815bcf8ee2b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1482aa2a1d6e8a162e3c73da1bc1f79631b31f236226a8d99f0c8d0a3de160b8 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/C018801e863f92899f398a5b9987b2375e60cff5030ed72092e932c0fd7c99e1MangoldtMobiusJa/Variant46d32f14f1eb265476b46a84704b3cd1c7522055bcc1170dea27c7feb1233d36.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/C018801e863f92899f398a5b9987b2375e60cff5030ed72092e932c0fd7c99e1MangoldtMobiusJa/Variant46d32f14f1eb265476b46a84704b3cd1c7522055bcc1170dea27c7feb1233d36.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
