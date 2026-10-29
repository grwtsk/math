# Verification target: Characteristic Function Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "46b98c0c1a5399be4f5e3ad6343ca3deb08062e1",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/CharacteristicFunction/Variant1e4bc1640f39db670317c65aee4d22776275ebf27c04366a46e2aea9b4759454.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FunctionsOfAComplexVariable/CharacteristicFunctionNamespacedPublic.lean/index.md) · [Full source](../../../../FunctionsOfAComplexVariable/CharacteristicFunctionNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `46b98c0c1a5399be4f5e3ad6343ca3deb08062e1`.

Source path: `GRWTSK/Analysis/CharacteristicFunction/Variant1e4bc1640f39db670317c65aee4d22776275ebf27c04366a46e2aea9b4759454.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/CharacteristicFunction/Variant1e4bc1640f39db670317c65aee4d22776275ebf27c04366a46e2aea9b4759454.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [characteristic](../../../../FunctionsOfAComplexVariable/CharacteristicFunctionNamespacedPublic.lean/declarations/characteristic.md) | 61 | `declaration-track:146c5773244dd558709ae5924d6b591a9df97f7d877e31690e2c26caf872141c` |
| 2 | `theorem` | [characteristic_congr_codiscrete](../../../../FunctionsOfAComplexVariable/CharacteristicFunctionNamespacedPublic.lean/declarations/characteristic-congr-codiscrete.md) | 71 | `result-track:0211e644072acd5ac00ec5dc444df2ba6fb1b7661a9f088b135fce367f0955f4` |
| 3 | `lemma` | [characteristic_sub_characteristic_eq_proximity_sub_proximity](../../../../FunctionsOfAComplexVariable/CharacteristicFunctionNamespacedPublic.lean/declarations/characteristic-sub-characteristic-eq-proximity-sub-proximity.md) | 80 | `result-track:dcbbf6500a4e7314cbb256f80fe6c00145a5d2be1e661432c539d1e1432116c3` |
| 4 | `theorem` | [characteristic_even](../../../../FunctionsOfAComplexVariable/CharacteristicFunctionNamespacedPublic.lean/declarations/characteristic-even.md) | 87 | `result-track:8124ee784592713714a61b363cbe5b4b1ad360bc8694248b7e0071b3054baed1` |
| 5 | `theorem` | [characteristic_nonneg](../../../../FunctionsOfAComplexVariable/CharacteristicFunctionNamespacedPublic.lean/declarations/characteristic-nonneg.md) | 93 | `result-track:162fcdfd6a3e1630bf8e0b9f1bd229031f9b100c5bc3cb62dd2c4a7435ffe2e4` |
| 6 | `theorem` | [characteristic_eventually_nonneg](../../../../FunctionsOfAComplexVariable/CharacteristicFunctionNamespacedPublic.lean/declarations/characteristic-eventually-nonneg.md) | 100 | `result-track:b5f9329d6df8104b83388a5a796ad0cab8a51e0c7b984db4a8f716ccbccc5abe` |
| 7 | `theorem` | [characteristic_sum_top_le](../../../../FunctionsOfAComplexVariable/CharacteristicFunctionNamespacedPublic.lean/declarations/characteristic-sum-top-le.md) | 112 | `result-track:79839a017fe234f7fb91eec0e17d849f7d1a699fc5be74d75fb178d16ba8a2c1` |
| 8 | `theorem` | [characteristic_sum_top_eventuallyLE](../../../../FunctionsOfAComplexVariable/CharacteristicFunctionNamespacedPublic.lean/declarations/characteristic-sum-top-eventuallyle.md) | 130 | `result-track:e4b509be6ba2e9c9becb267ebf645d17e5ececb16582bb69d665edac97ab26a1` |
| 9 | `theorem` | [characteristic_add_top_le](../../../../FunctionsOfAComplexVariable/CharacteristicFunctionNamespacedPublic.lean/declarations/characteristic-add-top-le.md) | 142 | `result-track:94c1a1d5fb1b587386ac788fe2756cdeadde08408a690d94a69445320aaa1ee1` |
| 10 | `theorem` | [characteristic_add_top_eventuallyLE](../../../../FunctionsOfAComplexVariable/CharacteristicFunctionNamespacedPublic.lean/declarations/characteristic-add-top-eventuallyle.md) | 153 | `result-track:c795c1a1dd1e9edeb359271249dc5bbb275093d0627d662936839e737522dbce` |
| 11 | `theorem` | [characteristic_mul_zero_le](../../../../FunctionsOfAComplexVariable/CharacteristicFunctionNamespacedPublic.lean/declarations/characteristic-mul-zero-le.md) | 164 | `result-track:464fd191bbb9082f8967f570a1b28cd49fdf76985c3f99d8aa04e51af911d58e` |
| 12 | `theorem` | [characteristic_mul_zero_eventuallyLE](../../../../FunctionsOfAComplexVariable/CharacteristicFunctionNamespacedPublic.lean/declarations/characteristic-mul-zero-eventuallyle.md) | 177 | `result-track:1eb06dc492649a788ea9afd7a546978f4351c8b6c678b40a45e2ab876d44f60c` |
| 13 | `theorem` | [characteristic_mul_top_le](../../../../FunctionsOfAComplexVariable/CharacteristicFunctionNamespacedPublic.lean/declarations/characteristic-mul-top-le.md) | 188 | `result-track:4ed02e75f98b40f9c44ffb74381e4e3ff0d4980c7f2a4514d53d30a0e0351d58` |
| 14 | `theorem` | [characteristic_mul_top_eventuallyLE](../../../../FunctionsOfAComplexVariable/CharacteristicFunctionNamespacedPublic.lean/declarations/characteristic-mul-top-eventuallyle.md) | 201 | `result-track:30a5acf9399a8c6c867e95fa30b83bf9cdc16f8d6c10c7ffddbbb0dbe1a08231` |
| 15 | `theorem` | [characteristic_pow_zero](../../../../FunctionsOfAComplexVariable/CharacteristicFunctionNamespacedPublic.lean/declarations/characteristic-pow-zero.md) | 213 | `result-track:4776c8f4b336efb3b916aa6323faf2277cb21ce41476d84924c6db07fa4f430d` |
| 16 | `theorem` | [characteristic_pow_top](../../../../FunctionsOfAComplexVariable/CharacteristicFunctionNamespacedPublic.lean/declarations/characteristic-pow-top.md) | 222 | `result-track:278b4b464a26a0de9efd3a029fc5478ec1a1b19226a3fd57d75bef300b9bf78e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=fc04a90e916462758cd5668aa1b1a6f198cad3f08fa7fc7b0e863790cb44703d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/CharacteristicFunction/Variant1e4bc1640f39db670317c65aee4d22776275ebf27c04366a46e2aea9b4759454.lean","GRWTSK/_verification/specifications/Analysis/CharacteristicFunction/Variant1e4bc1640f39db670317c65aee4d22776275ebf27c04366a46e2aea9b4759454.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
