# Verification target: GRWTSK.NumberTheory.Moebius.FiniteResponseSum

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5e6c4b01e48f5cf6e779023aac9098fc0801127d",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Moebius/FiniteResponseSum.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/FiniteResponseSum.lean/index.md) · [Full source](../../../../MeasureAndIntegration/FiniteResponseSum.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5e6c4b01e48f5cf6e779023aac9098fc0801127d`.

Source path: `GRWTSK/NumberTheory/Moebius/FiniteResponseSum.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Moebius/FiniteResponseSum.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Moebius.PrimitiveRegularity`](../../../../GeneralTopology/PrimitiveRegularity.lean/index.md) — import line 5; pinned internal source present.
- `Mathlib.Analysis.SpecialFunctions.Integrals.Basic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [pickupAtomVelocity](../../../../MeasureAndIntegration/FiniteResponseSum.lean/declarations/pickupatomvelocity.md) | 27 | `declaration-track:2d3b3d90866e85666d9661fdbf4eeffdd9b2841f136b7f56f9098af11e9bcddd` |
| 2 | `theorem` | [pickup_log_le_iff_closed_cutoff](../../../../MeasureAndIntegration/FiniteResponseSum.lean/declarations/pickup-log-le-iff-closed-cutoff.md) | 30 | `result-track:0737e29a82d02ebdf65ee55832df8873527508e91e31c5db0cac5cbd3f4fba16` |
| 3 | `theorem` | [mertensPrefix_fixed_inventory](../../../../MeasureAndIntegration/FiniteResponseSum.lean/declarations/mertensprefix-fixed-inventory.md) | 36 | `result-track:eadb98d40719d0388d287178a56a33ae9c3e747f1e7d197263daa5004f6e3ab7` |
| 4 | `theorem` | [pickupVelocity_fixed_inventory](../../../../MeasureAndIntegration/FiniteResponseSum.lean/declarations/pickupvelocity-fixed-inventory.md) | 63 | `result-track:f5a8f52771b149df63bded7d3db3a18095cf19b7041c0b5474e75a4c34776897` |
| 5 | `theorem` | [pickupAtomVelocity_measurable](../../../../MeasureAndIntegration/FiniteResponseSum.lean/declarations/pickupatomvelocity-measurable.md) | 71 | `result-track:cfc712cb838dddb368780c0ecc75553f5994e83a2045185a7fd468dbedd1a980` |
| 6 | `theorem` | [pickupAtomVelocity_intervalIntegrable](../../../../MeasureAndIntegration/FiniteResponseSum.lean/declarations/pickupatomvelocity-intervalintegrable.md) | 76 | `result-track:8f93eea41b8764f4ac015b652f539c9a34d62149244d98085122cc130fe9454f` |
| 7 | `theorem` | [wholePickup_finite_atom_integrals](../../../../MeasureAndIntegration/FiniteResponseSum.lean/declarations/wholepickup-finite-atom-integrals.md) | 86 | `result-track:a6952bb828e6a7c71ace57b72a57f5f055078fe60cb00a78b8661afefd687615` |
| 8 | `theorem` | [pickup_negative_half_integral](../../../../MeasureAndIntegration/FiniteResponseSum.lean/declarations/pickup-negative-half-integral.md) | 106 | `result-track:2140c590877d761e460daa2496f7d1d1131a5923020e969f3de6248e7eed0b55` |
| 9 | `theorem` | [pickup_exp_negative_log_half](../../../../MeasureAndIntegration/FiniteResponseSum.lean/declarations/pickup-exp-negative-log-half.md) | 121 | `result-track:2e83122abe82ba25e62458dd6448df6bd05bfdf690bf7381738efa49a4a9b4bc` |
| 10 | `theorem` | [pickupAtomVelocity_integral](../../../../MeasureAndIntegration/FiniteResponseSum.lean/declarations/pickupatomvelocity-integral.md) | 133 | `result-track:3dedcdae96552ec288fbfbad8d8036a830a8af3267722efd9ae42ff2a652153c` |
| 11 | `theorem` | [wholePickup_closed_prefix](../../../../MeasureAndIntegration/FiniteResponseSum.lean/declarations/wholepickup-closed-prefix.md) | 159 | `result-track:f0473f4c7025fccd72f524ddbf66eb4680f705a94d86ca2957aa44cc8fd5a718` |
| 12 | `theorem` | [wholePickup_response_sum](../../../../MeasureAndIntegration/FiniteResponseSum.lean/declarations/wholepickup-response-sum.md) | 170 | `result-track:ab59e14c7d3d80656bfcd039b1294714021ec0c7aebe5674cce9cde50853487c` |
| 13 | `theorem` | [pickup_inverse_sqrt_eq_negative_half](../../../../MeasureAndIntegration/FiniteResponseSum.lean/declarations/pickup-inverse-sqrt-eq-negative-half.md) | 181 | `result-track:4c7da74ae2ff157e30bcc8cd816b3953a6370c4203fb0679f11416874a6ebb0c` |
| 14 | `theorem` | [wholePickup_closed_prefix_rpow](../../../../MeasureAndIntegration/FiniteResponseSum.lean/declarations/wholepickup-closed-prefix-rpow.md) | 186 | `result-track:ea728ed806bf66b46047a96f1fef8bb33b700220403660c774279c49e1903063` |
| 15 | `theorem` | [wholePickup_closed_prefix_flux](../../../../MeasureAndIntegration/FiniteResponseSum.lean/declarations/wholepickup-closed-prefix-flux.md) | 192 | `result-track:7d21a98d4a2457c885d482fba38ef2b315e59092534fb7ffbce4109409d51f61` |
| 16 | `theorem` | [pickupResponse_at_event](../../../../MeasureAndIntegration/FiniteResponseSum.lean/declarations/pickupresponse-at-event.md) | 200 | `result-track:21d3dc7a806a67292f3fe66c8bab860a59553f4436f56cf82c9e330d4f6d02e8` |
| 17 | `theorem` | [wholePickup_fixed_inventory](../../../../MeasureAndIntegration/FiniteResponseSum.lean/declarations/wholepickup-fixed-inventory.md) | 205 | `result-track:04204091e328deb361b41b0ccbd305d763c479401b4461c7d5f809dee01e2a95` |
| 18 | `theorem` | [pickupResponse_continuous](../../../../MeasureAndIntegration/FiniteResponseSum.lean/declarations/pickupresponse-continuous.md) | 223 | `result-track:65a397f5308c18fbb61b73aa1a46cd7eb70413f94d9ed951f18c06b6a2f7796c` |
| 19 | `theorem` | [pickupResponse_product_intervalIntegrable](../../../../MeasureAndIntegration/FiniteResponseSum.lean/declarations/pickupresponse-product-intervalintegrable.md) | 235 | `result-track:34ac0e8d8a8e7717f6fd6b8fc7d45e8a8af74454d12960d071c9804221c201f3` |
| 20 | `theorem` | [pickupEnergy_eq_full_gram](../../../../MeasureAndIntegration/FiniteResponseSum.lean/declarations/pickupenergy-eq-full-gram.md) | 241 | `result-track:4f6ea17da20644b6a8c057e2a124600182cc40d3fad95fb091ec002c90b65b80` |
| 21 | `theorem` | [pickupEnergy_eq_diagonal_add_cross](../../../../MeasureAndIntegration/FiniteResponseSum.lean/declarations/pickupenergy-eq-diagonal-add-cross.md) | 279 | `result-track:2efd3b1126cd87c22cf6acd9b7ae53d096fe7576839be3e1f582a6eba278e551` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=781c147affc3fd344d63db60205bb05fba74b64091496ab0fd7817fb4285e203 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Moebius/FiniteResponseSum.lean","GRWTSK/_verification/specifications/NumberTheory/Moebius/FiniteResponseSum.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
