# Verification target: Estimate Prime Smooth Defect

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1afdd7198567c47861beb8d24280bf0390803058",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/EstimatePrimeSmoothDefect/Variant2950c86becabe5a1e6b9d6de0a49982ec2ab89cb7b569ffc8641f9bfc950c6e7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/EstimatePrimeSmoothDefect.lean/index.md) · [Full source](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/EstimatePrimeSmoothDefect.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1afdd7198567c47861beb8d24280bf0390803058`.

Source path: `GRWTSK/Analysis/MeasureTheory/EstimatePrimeSmoothDefect/Variant2950c86becabe5a1e6b9d6de0a49982ec2ab89cb7b569ffc8641f9bfc950c6e7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/EstimatePrimeSmoothDefect/Variant2950c86becabe5a1e6b9d6de0a49982ec2ab89cb7b569ffc8641f9bfc950c6e7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateTailReduction` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.PrimePowerDescent` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [closedPrimeMoment](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/EstimatePrimeSmoothDefect.lean/declarations/closedprimemoment.md) | 36 | `declaration-track:da205a5f52e8635138c5db81551931b80a78a331a45435e7030772d0bee4e0ce` |
| 2 | `def` | [smoothMoment](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/EstimatePrimeSmoothDefect.lean/declarations/smoothmoment.md) | 44 | `declaration-track:435652f13c9c876854888fbdb2ccb8739cbe21b020c3d12a16da81b66972f06f` |
| 3 | `def` | [endpointMoment](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/EstimatePrimeSmoothDefect.lean/declarations/endpointmoment.md) | 50 | `declaration-track:ef0d52de685fdf2e46eac42f16e0412a03fac1ea42f8a0bf996de502ec5af4b9` |
| 4 | `def` | [primeSmoothDefect](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/EstimatePrimeSmoothDefect.lean/declarations/primesmoothdefect.md) | 56 | `declaration-track:06b5d559af9ff839fb44623d614a2e9bbd2359710d28b8a0b3e0c4aadbb2d82f` |
| 5 | `theorem` | [primePowerContribution_eq_closedPrimeMoment](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/EstimatePrimeSmoothDefect.lean/declarations/primepowercontribution-eq-closedprimemoment.md) | 61 | `result-track:5eba5ffbca42ace3115ca84bad64f724d17fc605db1b257bb2e2626cdb9c5706` |
| 6 | `theorem` | [signedPairing_eq_endpoint_sub_defect](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/EstimatePrimeSmoothDefect.lean/declarations/signedpairing-eq-endpoint-sub-defect.md) | 73 | `result-track:09ff8a455de13eb5402bc78ac9b08157e049f077c893be4706ad12f76c443f40` |
| 7 | `theorem` | [endpointMoment_abs_le](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/EstimatePrimeSmoothDefect.lean/declarations/endpointmoment-abs-le.md) | 87 | `result-track:9dcf0b6a2655bca69d064d761ae7494a0674469b4a329cacd8edd9ffdbdf9ba6` |
| 8 | `theorem` | [endpointMoment_lower](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/EstimatePrimeSmoothDefect.lean/declarations/endpointmoment-lower.md) | 97 | `result-track:05796c67ab905dcd51baf89573e8b72ae28e1e27617b8a76bd94bc3fc40f70b3` |
| 9 | `theorem` | [endpointMoment_upper](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/EstimatePrimeSmoothDefect.lean/declarations/endpointmoment-upper.md) | 102 | `result-track:19c638a84fbf85430cfe81c515788e3ac2fc6e11bc6be917d6558ea0c39d8147` |
| 10 | `def` | [PrimeSmoothDefectTailUpperBound](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/EstimatePrimeSmoothDefect.lean/declarations/primesmoothdefecttailupperbound.md) | 108 | `declaration-track:be3d56305726b5880f6b57000b91768319a1e1c9bebe2925e4bcce19e4d87fc0` |
| 11 | `theorem` | [signed_pairing_tail_of_defect_tail](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/EstimatePrimeSmoothDefect.lean/declarations/signed-pairing-tail-of-defect-tail.md) | 116 | `result-track:bb5ecd4676f8f5f64f286d58b28cee4d1d99cec8dfd0363b12fda6e73a164b3f` |
| 12 | `theorem` | [defect_tail_of_signed_pairing_tail](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/EstimatePrimeSmoothDefect.lean/declarations/defect-tail-of-signed-pairing-tail.md) | 130 | `result-track:a8958fff47c075fe9e74cc235b39b3b9795858f502a54c6a02abcd7a2b869278` |
| 13 | `theorem` | [signed_pairing_tail_iff_prime_smooth_defect_tail](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/EstimatePrimeSmoothDefect.lean/declarations/signed-pairing-tail-iff-prime-smooth-defect-tail.md) | 144 | `result-track:97eb9c92aebfb5df5bb4efa77cf4bb89953a9eb3093286c6ac2a4ea6d4e393b1` |
| 14 | `theorem` | [estimate_of_prime_smooth_defect_tail](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/EstimatePrimeSmoothDefect.lean/declarations/estimate-of-prime-smooth-defect-tail.md) | 151 | `result-track:ad0196ad5cd469a9a77baa47fdce5ebaa14dde7d78da61fddecf2517cdd22e19` |
| 15 | `def` | [PrimeSmoothDefectCheckpoint](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/EstimatePrimeSmoothDefect.lean/declarations/primesmoothdefectcheckpoint.md) | 158 | `declaration-track:a43eeda849096a4ff27ca1f52387f972dde5b120a93359ec5a54be41d258e184` |
| 16 | `theorem` | [prime_smooth_defect_checkpoint](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/EstimatePrimeSmoothDefect.lean/declarations/prime-smooth-defect-checkpoint.md) | 168 | `result-track:5d0c5a6ed35c1d46b603fc542f6224fcfc9faa91dcaf6f56819a78f366305aa2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=bf077083370e9734cb405aed4dd73c47e9465c3065f306011214054af03aed66 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/MeasureTheory/EstimatePrimeSmoothDefect/Variant2950c86becabe5a1e6b9d6de0a49982ec2ab89cb7b569ffc8641f9bfc950c6e7.lean","GRWTSK/_verification/specifications/Analysis/MeasureTheory/EstimatePrimeSmoothDefect/Variant2950c86becabe5a1e6b9d6de0a49982ec2ab89cb7b569ffc8641f9bfc950c6e7.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
