# Verification target: Source Actual Even Product Sector Native02

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "90d7385fc947279b136d7c001f44b47a0617e7f1",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualEvenProductSectorNative02/Variant2aad8667098b5f5f422197eb2d0a949d7e5b1ecf2f84852eec2330b11a8a32af.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/SourceActualEvenProductSectorNative02.lean/index.md) · [Full source](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/SourceActualEvenProductSectorNative02.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `90d7385fc947279b136d7c001f44b47a0617e7f1`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualEvenProductSectorNative02/Variant2aad8667098b5f5f422197eb2d0a949d7e5b1ecf2f84852eec2330b11a8a32af.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualEvenProductSectorNative02/Variant2aad8667098b5f5f422197eb2d0a949d7e5b1ecf2f84852eec2330b11a8a32af.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourcePrimePowerPartition` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateWeightedMobiusPairing` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [actualEvenProductMoment](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/SourceActualEvenProductSectorNative02.lean/declarations/actualevenproductmoment.md) | 35 | `declaration-track:6049f848141a7fc648348b577660400c9d6826fc2bdceacde96cff256e221a48` |
| 2 | `def` | [actualOddProductMoment](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/SourceActualEvenProductSectorNative02.lean/declarations/actualoddproductmoment.md) | 40 | `declaration-track:54775747218b41428c33c7a20fd02d46ec3f24311286432c81cea5f9f54b9009` |
| 3 | `def` | [actualEvenMobiusProductMoment](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/SourceActualEvenProductSectorNative02.lean/declarations/actualevenmobiusproductmoment.md) | 45 | `declaration-track:e1987eff3bc073300108d274e3bcba9cf19e4d81a9919f079b8ad764e4999ef1` |
| 4 | `theorem` | [actualEvenMobiusProductMoment_eq](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/SourceActualEvenProductSectorNative02.lean/declarations/actualevenmobiusproductmoment-eq.md) | 50 | `result-track:2b5c33d0e4153bec897f5260d921345b04ac299980ff1d8377a6c6d9bafe1e97` |
| 5 | `theorem` | [mertensResidual_eq_even_add_odd](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/SourceActualEvenProductSectorNative02.lean/declarations/mertensresidual-eq-even-add-odd.md) | 61 | `result-track:d6459131f9c7d0547fe4ebf8fe5af9875ad51cf6348b03be61dc95c44bc76bc4` |
| 6 | `theorem` | [even_primePow](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/SourceActualEvenProductSectorNative02.lean/declarations/even-primepow.md) | 68 | `result-track:a05c4463347a9ae3f2b42150d176ab62b083059cbedd7772829cbd28fc9aa62c` |
| 7 | `def` | [actualEvenPowerInventory](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/SourceActualEvenProductSectorNative02.lean/declarations/actualevenpowerinventory.md) | 78 | `declaration-track:1ac320c0df09abdfc78d34b0fc7fe68a7ffde18d6deb2ae1667718d639417366` |
| 8 | `theorem` | [actualEvenProductMoment_eq_two_power_sum](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/SourceActualEvenProductSectorNative02.lean/declarations/actualevenproductmoment-eq-two-power-sum.md) | 83 | `result-track:d27011f180e6cec824aa18118861c91860a5e0816ba0cb148a8702183a0d7fbd` |
| 9 | `theorem` | [sum_geometric_Icc_one](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/SourceActualEvenProductSectorNative02.lean/declarations/sum-geometric-icc-one.md) | 119 | `result-track:42664924c66f2096830b8e52e6bda09687d5c9e776692d246c779b8523446719` |
| 10 | `theorem` | [two_ratio](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/SourceActualEvenProductSectorNative02.lean/declarations/two-ratio.md) | 152 | `result-track:fc38aea054b31e43e25ef9514107e39929db3516cb7d181b442bc33cf45b542d` |
| 11 | `theorem` | [actualEvenProductMoment_abs_le](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/SourceActualEvenProductSectorNative02.lean/declarations/actualevenproductmoment-abs-le.md) | 157 | `result-track:073c62cd08168da49b56a05ba46a1851e23d60a068a4ed27217e89a333ebc55f` |
| 12 | `def` | [actualUpperEvenProductMoment](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/SourceActualEvenProductSectorNative02.lean/declarations/actualupperevenproductmoment.md) | 197 | `declaration-track:dedaa0cb7df728b230806f6ef332ddf7de24d0f45a054d111051c808bddd7b9f` |
| 13 | `theorem` | [upper_even_primePow_unique](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/SourceActualEvenProductSectorNative02.lean/declarations/upper-even-primepow-unique.md) | 202 | `result-track:09c746b2ee8efdffa7e49c37a1f2942f5fe2beb30b6ca1241173acb6bf9ba802` |
| 14 | `theorem` | [actualUpperEvenProductMoment_abs_le](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/SourceActualEvenProductSectorNative02.lean/declarations/actualupperevenproductmoment-abs-le.md) | 238 | `result-track:0ebf188cd56567f87120726be63fc397081cbdfe78d4df77ba12c994199f3d54` |
| 15 | `theorem` | [actualUpperEvenProductMoment_tendsto_zero](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/SourceActualEvenProductSectorNative02.lean/declarations/actualupperevenproductmoment-tendsto-zero.md) | 316 | `result-track:dc40b36bfa55767514121ceb98f17468acf37bf04b42e7cd6fb30303ce43e793` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=31acd5d1aacb934ca91014e42615462584806b3dfe3112db289d7f2737ec1f24 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualEvenProductSectorNative02/Variant2aad8667098b5f5f422197eb2d0a949d7e5b1ecf2f84852eec2330b11a8a32af.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualEvenProductSectorNative02/Variant2aad8667098b5f5f422197eb2d0a949d7e5b1ecf2f84852eec2330b11a8a32af.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
