# Verification target: GRWTSK.NumberTheory.Moebius.ReciprocalPrefixVariationMertensEnergy

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "17f35e5a211dc1c8ea91ca1cc2872cedfdfe6ef8",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Moebius/ReciprocalPrefixVariationMertensEnergy.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ReciprocalPrefixVariationMertensEnergy.lean/index.md) · [Full source](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ReciprocalPrefixVariationMertensEnergy.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `17f35e5a211dc1c8ea91ca1cc2872cedfdfe6ef8`.

Source path: `GRWTSK/NumberTheory/Moebius/ReciprocalPrefixVariationMertensEnergy.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Moebius/ReciprocalPrefixVariationMertensEnergy.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Moebius.ReciprocalPrefixVariationRecurrence`](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ReciprocalPrefixVariationRecurrence.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mertensSquareEnergy](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ReciprocalPrefixVariationMertensEnergy.lean/declarations/mertenssquareenergy.md) | 34 | `declaration-track:406cec01463fc3690666473bc3ad68c3bbe4ca52367edbb0cbc85e7a396912af` |
| 2 | `theorem` | [reciprocalPrefixVariationSquare_succ_eq_mertensSquareIncrement](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ReciprocalPrefixVariationMertensEnergy.lean/declarations/reciprocalprefixvariationsquare-succ-eq-mertenssquareincrement.md) | 41 | `result-track:261e1ff5b9d574d3c93742309f472ab384d003dfe4d5773ba90d3a83dbd8fdad` |
| 3 | `theorem` | [reciprocalPrefixVariationSquare_eq_mertensSquareEnergy](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ReciprocalPrefixVariationMertensEnergy.lean/declarations/reciprocalprefixvariationsquare-eq-mertenssquareenergy.md) | 53 | `result-track:e0e1eeeeb5cd82ade69fc006d76fbe1c83658957281c0661fbc2b9dc1a5ef5e5` |
| 4 | `theorem` | [mertensSquareEnergy_nonneg](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ReciprocalPrefixVariationMertensEnergy.lean/declarations/mertenssquareenergy-nonneg.md) | 69 | `result-track:5cd7495c238d7cd411bdf0aba780f5bd7016d5c2a8da5db8d4eb00fdf186c864` |
| 5 | `theorem` | [pickupMertensPrefix_sq_le_mul_variation](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ReciprocalPrefixVariationMertensEnergy.lean/declarations/pickupmertensprefix-sq-le-mul-variation.md) | 74 | `result-track:e574831b8ad5b6497400fa7173b4104060d79759f817e502455ba63db56fa0c2` |
| 6 | `def` | [MertensSquareEnergyPowerSaving](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ReciprocalPrefixVariationMertensEnergy.lean/declarations/mertenssquareenergypowersaving.md) | 96 | `declaration-track:d51d9c6bfcad6bbb7c6da1e27d8d4a2bc8d55286e737e72a6a2637dbfb5dab3a` |
| 7 | `theorem` | [reciprocalVariationPowerSaving_iff_mertensSquareEnergyPowerSaving](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ReciprocalPrefixVariationMertensEnergy.lean/declarations/reciprocalvariationpowersaving-iff-mertenssquareenergypowersaving.md) | 101 | `result-track:2e94ea4639447b177deac9327b4346203489b86d1d304791fbb3648fac3384ab` |
| 8 | `theorem` | [criticalBoundary_of_mertensSquareEnergyPowerSaving](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ReciprocalPrefixVariationMertensEnergy.lean/declarations/criticalboundary-of-mertenssquareenergypowersaving.md) | 117 | `result-track:261d2ea884dce9670f002e8ad5c014d21c66d982691d02c9dbe3cfb596dfbb0f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9291c15ebe575f3aaf459bbaf8d7894e3e394d7f65c8d3146b939fb3b9115f96 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Moebius/ReciprocalPrefixVariationMertensEnergy.lean","GRWTSK/_verification/specifications/NumberTheory/Moebius/ReciprocalPrefixVariationMertensEnergy.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
