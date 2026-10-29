# Verification target: Estimate Mertens Residual Edition1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5dfba304d010691f056b6810c07f87a999e2d555",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/EstimateMertensResidual/Variant3d9ab93d98e9bd1b4089cadc7121fde023547f1dcd44c30c2f5effd29ec8bd7a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/EstimateMertensResidualEdition1.lean/index.md) · [Full source](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/EstimateMertensResidualEdition1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5dfba304d010691f056b6810c07f87a999e2d555`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/EstimateMertensResidual/Variant3d9ab93d98e9bd1b4089cadc7121fde023547f1dcd44c30c2f5effd29ec8bd7a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/EstimateMertensResidual/Variant3d9ab93d98e9bd1b4089cadc7121fde023547f1dcd44c30c2f5effd29ec8bd7a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateMobiusIntegerTransport` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.CorrelationMoment` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [negativeSmoothMoment](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/EstimateMertensResidualEdition1.lean/declarations/negativesmoothmoment.md) | 32 | `declaration-track:ce17d5b57d93ee6fd8fcb69c7b32279c109e218f2d7eb6617436da2b603c89c7` |
| 2 | `def` | [initialPositiveMoment](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/EstimateMertensResidualEdition1.lean/declarations/initialpositivemoment.md) | 38 | `declaration-track:d04a37b740fef93f3503441268743ac97a860e268d656c2db86f0c4d4851a9da` |
| 3 | `theorem` | [negativeSmoothMoment_upper](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/EstimateMertensResidualEdition1.lean/declarations/negativesmoothmoment-upper.md) | 44 | `result-track:2cb3193e4dc42db8e8129cb16026408f1f9b253eef16c9362df76a12df0b7857` |
| 4 | `theorem` | [negativeSmoothMoment_lower](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/EstimateMertensResidualEdition1.lean/declarations/negativesmoothmoment-lower.md) | 88 | `result-track:f71c3996e1c3ddd8a48d2fadb21d2d7088b24c8c396e3a2b8e6c512aab314488` |
| 5 | `theorem` | [negativeSmoothMoment_abs_le](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/EstimateMertensResidualEdition1.lean/declarations/negativesmoothmoment-abs-le.md) | 96 | `result-track:5d5c07f03e9d85620fbd46bbe8daa0147f1c679242e7bbd6e890516b6ecbb110` |
| 6 | `theorem` | [initialPositiveMoment_upper](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/EstimateMertensResidualEdition1.lean/declarations/initialpositivemoment-upper.md) | 105 | `result-track:de7ad49245eebe582dd471a14a5a2d30a4605917e94d2a54044086d78726d035` |
| 7 | `theorem` | [initialPositiveMoment_lower](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/EstimateMertensResidualEdition1.lean/declarations/initialpositivemoment-lower.md) | 154 | `result-track:14dc939d7a004965c7e15da8da36bfb9aeae1b9bf0764650c8cd9cfe8202b9ea` |
| 8 | `theorem` | [initialPositiveMoment_abs_le](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/EstimateMertensResidualEdition1.lean/declarations/initialpositivemoment-abs-le.md) | 163 | `result-track:10f4dd078b00abca2bbdf9250f6789a92e298a94f6481b4edcc0d6051c0edf1b` |
| 9 | `theorem` | [smoothMoment_eq_neg_negative_sub_initial](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/EstimateMertensResidualEdition1.lean/declarations/smoothmoment-eq-neg-negative-sub-initial.md) | 174 | `result-track:8213feb16f5976296ed6bab9764bbe274347e8df59d0d0b88da81bc4504af39b` |
| 10 | `theorem` | [smoothMoment_abs_le](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/EstimateMertensResidualEdition1.lean/declarations/smoothmoment-abs-le.md) | 197 | `result-track:6d5784d08a984a6deabb12b2cfe1773a27c6b1de8f31cd57e8434062061ec8a3` |
| 11 | `def` | [mertensResidual](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/EstimateMertensResidualEdition1.lean/declarations/mertensresidual.md) | 223 | `declaration-track:02452f5520e192f1e7a6f2a7f07f33f608bd5393be14e41c1966d53e051b110e` |
| 12 | `theorem` | [mertensResidual_eq_closedPrimeMoment](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/EstimateMertensResidualEdition1.lean/declarations/mertensresidual-eq-closedprimemoment.md) | 230 | `result-track:d4e9436c45210a2ecdb0769eb98ef4f9c2340520194243b0500d7bf150d3b241` |
| 13 | `theorem` | [primeSmoothDefect_eq_mertensResidual_sub_smooth](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/EstimateMertensResidualEdition1.lean/declarations/primesmoothdefect-eq-mertensresidual-sub-smooth.md) | 240 | `result-track:0639fd93f3e2b2f6163ddaa45729324a4381d857eb03dae17f0462386a7e7799` |
| 14 | `def` | [MertensResidualTailUpperBound](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/EstimateMertensResidualEdition1.lean/declarations/mertensresidualtailupperbound.md) | 249 | `declaration-track:547515041319f6d7d4de8939641e80ba03617624894354c5aaadb75946e980bb` |
| 15 | `theorem` | [prime_smooth_tail_of_mertens_residual_tail](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/EstimateMertensResidualEdition1.lean/declarations/prime-smooth-tail-of-mertens-residual-tail.md) | 256 | `result-track:cfe7703277a91d23b8d846649116546f8e08d2798c944fb60553c6ee8e3c581a` |
| 16 | `theorem` | [mertens_residual_tail_of_prime_smooth_tail](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/EstimateMertensResidualEdition1.lean/declarations/mertens-residual-tail-of-prime-smooth-tail.md) | 272 | `result-track:d507bda1bfe0662e0fc62293685b7c05f6b1dce7125328575f89a31d20f2f757` |
| 17 | `theorem` | [prime_smooth_tail_iff_mertens_residual_tail](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/EstimateMertensResidualEdition1.lean/declarations/prime-smooth-tail-iff-mertens-residual-tail.md) | 289 | `result-track:73cb22ec743a5a13ab129659f65990fe56c8eeecbbf8dde60daf203492f64644` |
| 18 | `theorem` | [signed_pairing_tail_iff_mertens_residual_tail](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/EstimateMertensResidualEdition1.lean/declarations/signed-pairing-tail-iff-mertens-residual-tail.md) | 297 | `result-track:d5ccdea38013b93ec35b0ead47bca25248eb883dac812bcb439b64c2f1f55ea6` |
| 19 | `theorem` | [estimate_of_mertens_residual_tail](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/EstimateMertensResidualEdition1.lean/declarations/estimate-of-mertens-residual-tail.md) | 305 | `result-track:b47d5dd3bfaa301fe4b2a68f5c1d84594874127628df1ef7f9f619ed8ec376d9` |
| 20 | `def` | [MertensResidualCheckpoint](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/EstimateMertensResidualEdition1.lean/declarations/mertensresidualcheckpoint.md) | 312 | `declaration-track:8758eaaae6f2be0cd4639750207ce26817cc73b11e0377ad236bbd337d4924e6` |
| 21 | `theorem` | [mertens_residual_checkpoint](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/EstimateMertensResidualEdition1.lean/declarations/mertens-residual-checkpoint.md) | 322 | `result-track:71a1d3f596dab187cdbd9d337d2a25e20bd4ea6d9c228ad9edb2e62559a9d99c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=cac577d6d419bbf1a4499c0dbd301683fb5c614a88230aff4f1b608ada5739bc -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/EstimateMertensResidual/Variant3d9ab93d98e9bd1b4089cadc7121fde023547f1dcd44c30c2f5effd29ec8bd7a.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/EstimateMertensResidual/Variant3d9ab93d98e9bd1b4089cadc7121fde023547f1dcd44c30c2f5effd29ec8bd7a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
