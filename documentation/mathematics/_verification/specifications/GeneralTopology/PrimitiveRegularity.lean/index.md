# Verification target: GRWTSK.NumberTheory.Moebius.PrimitiveRegularity

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c1c1c47c47de13b904fc4b469d210f57acbc132b",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Moebius/PrimitiveRegularity.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/PrimitiveRegularity.lean/index.md) · [Full source](../../../../GeneralTopology/PrimitiveRegularity.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c1c1c47c47de13b904fc4b469d210f57acbc132b`.

Source path: `GRWTSK/NumberTheory/Moebius/PrimitiveRegularity.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Moebius/PrimitiveRegularity.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Moebius.MertensPrimitive`](../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/MertensPrimitive.lean/index.md) — import line 5; pinned internal source present.
- `Mathlib.MeasureTheory.Function.Floor` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.AbsolutelyContinuous` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.DominatedConvergence` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.IntervalIntegral.LebesgueDifferentiationThm` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [moebiusReal_abs_le_one](../../../../GeneralTopology/PrimitiveRegularity.lean/declarations/moebiusreal-abs-le-one.md) | 31 | `result-track:c32ee1eef8f28428e11c5f42210b5aec9bc4d3d6db08b0bc64eafbb90c115c35` |
| 2 | `theorem` | [mertensPrefix_abs_le](../../../../GeneralTopology/PrimitiveRegularity.lean/declarations/mertensprefix-abs-le.md) | 36 | `result-track:5b416bf1a6acab0ad425f7d5a2e612998a389d76306c1c217b93db68dc4ef4b7` |
| 3 | `theorem` | [mertensPrefix_measurable](../../../../GeneralTopology/PrimitiveRegularity.lean/declarations/mertensprefix-measurable.md) | 45 | `result-track:78e4319f3f413021f6b6eff8e915909ea7af47ec86d3822beca6afbd35cbca79` |
| 4 | `theorem` | [pickupVelocity_measurable](../../../../GeneralTopology/PrimitiveRegularity.lean/declarations/pickupvelocity-measurable.md) | 50 | `result-track:650b74e2240bca16ff317907b24abc80751d7017eed1077291485c3377faa6eb` |
| 5 | `theorem` | [pickupVelocity_abs_le](../../../../GeneralTopology/PrimitiveRegularity.lean/declarations/pickupvelocity-abs-le.md) | 55 | `result-track:3dc8866de7609911df9f7d53387e15e2890c5c7d2f3ea9699917522fa7ffe5cf` |
| 6 | `theorem` | [pickupVelocity_intervalIntegrable](../../../../GeneralTopology/PrimitiveRegularity.lean/declarations/pickupvelocity-intervalintegrable.md) | 65 | `result-track:239eb06aa0f04e505ffa999ffa49599fe3988a1d83f73a35fa286cd88137cb9c` |
| 7 | `theorem` | [wholePickup_continuous](../../../../GeneralTopology/PrimitiveRegularity.lean/declarations/wholepickup-continuous.md) | 73 | `result-track:deaeb33870a85518b8ca9fde680577e84aadafe69a900e4456bd9ed5f5da1417` |
| 8 | `theorem` | [wholePickup_measurable](../../../../GeneralTopology/PrimitiveRegularity.lean/declarations/wholepickup-measurable.md) | 76 | `result-track:9ce1edfda400aaafb3021663dc5e2edcab4c5f6212534df8435cdffa301eed11` |
| 9 | `theorem` | [wholePickup_intervalIntegrable](../../../../GeneralTopology/PrimitiveRegularity.lean/declarations/wholepickup-intervalintegrable.md) | 78 | `result-track:6a22d2309b300204c7f051f97d583614f3955882ce42ffd1a31f720122c0ead6` |
| 10 | `theorem` | [wholePickup_sq_intervalIntegrable](../../../../GeneralTopology/PrimitiveRegularity.lean/declarations/wholepickup-sq-intervalintegrable.md) | 81 | `result-track:20eebfc5ed9e46140b9071aa9e540c9f2e069b0d0b26a763e2352bf91ec4f0c1` |
| 11 | `theorem` | [wholePickup_absolutelyContinuousOnInterval](../../../../GeneralTopology/PrimitiveRegularity.lean/declarations/wholepickup-absolutelycontinuousoninterval.md) | 86 | `result-track:15727ba9cfaa3b5d7a535e28767517faece16ee284b84ddc860b97bee824ef6e` |
| 12 | `theorem` | [wholePickup_ae_hasDerivAt](../../../../GeneralTopology/PrimitiveRegularity.lean/declarations/wholepickup-ae-hasderivat.md) | 92 | `result-track:b9b88828b8310cd57e560690b97052b0c709b265fa8a7a01146db0b6c2c167d8` |
| 13 | `theorem` | [wholePickup_zero](../../../../GeneralTopology/PrimitiveRegularity.lean/declarations/wholepickup-zero.md) | 98 | `result-track:12fa5fc98e9ab02f163515b41b141207b7c7641cde260eaaefab28edb63cef0a` |
| 14 | `theorem` | [pickupEnergy_continuous](../../../../GeneralTopology/PrimitiveRegularity.lean/declarations/pickupenergy-continuous.md) | 100 | `result-track:d74a209b7d46e1cdf1159372be53024988fee0d82239defd29d89bc62ba27718` |
| 15 | `theorem` | [pickupEnergy_zero](../../../../GeneralTopology/PrimitiveRegularity.lean/declarations/pickupenergy-zero.md) | 103 | `result-track:6de424f31f539b8bec8813682629d2643ebc131c523670c9d084336ec9d6049f` |
| 16 | `theorem` | [pickupEnergy_nonneg](../../../../GeneralTopology/PrimitiveRegularity.lean/declarations/pickupenergy-nonneg.md) | 105 | `result-track:062e733e4a71421cff77c5ba968089712ad2b2d0d1bfd75cf044f575c7377bae` |
| 17 | `theorem` | [pickupLocalEnergy_nonneg](../../../../GeneralTopology/PrimitiveRegularity.lean/declarations/pickuplocalenergy-nonneg.md) | 108 | `result-track:fc8ab3e402ae203121b60c1f314f710d8b0b7f3a9284f91013b4e38f2f71acc8` |
| 18 | `theorem` | [pickupLocalEnergy_le_energy](../../../../GeneralTopology/PrimitiveRegularity.lean/declarations/pickuplocalenergy-le-energy.md) | 113 | `result-track:31d6ed0749046bf749ffa59364c3e039bc9d3dc6e6533e5ef56e5e9f71dc349a` |
| 19 | `theorem` | [pickupEnergy_mono](../../../../GeneralTopology/PrimitiveRegularity.lean/declarations/pickupenergy-mono.md) | 120 | `result-track:edf1ea133247b0fd13db8fc8e55e9e3d960865e038bd111c987c9c962d3d4703` |
| 20 | `theorem` | [pickupLocalEnergy_eq_sub](../../../../GeneralTopology/PrimitiveRegularity.lean/declarations/pickuplocalenergy-eq-sub.md) | 127 | `result-track:9aaa75550ea51cfdfe8be52e0bc7485cbcfbf9601520af0c4577138064c3f472` |
| 21 | `theorem` | [pickupResponseGram_self_nonneg](../../../../GeneralTopology/PrimitiveRegularity.lean/declarations/pickupresponsegram-self-nonneg.md) | 136 | `result-track:9aff0369831c13a05ba67883af1733a4acf328356cccb9d917142318553bac00` |
| 22 | `theorem` | [pickupDiagonal_nonneg](../../../../GeneralTopology/PrimitiveRegularity.lean/declarations/pickupdiagonal-nonneg.md) | 142 | `result-track:6851e87b42b7d78ebcd1315e8cfa35b044352e9da77ce080d5063c9f2f7f0285` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ccbbbc6b6a1f4f8ce6a805c8b7c751135635f7bbc7e454c068f3457b8a902c62 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Moebius/PrimitiveRegularity.lean","GRWTSK/_verification/specifications/NumberTheory/Moebius/PrimitiveRegularity.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
