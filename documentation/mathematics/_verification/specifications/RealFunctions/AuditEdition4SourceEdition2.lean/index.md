# Verification target: Audit Edition4 Source Edition2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f9080ed0817c38e0ce6083526cadb9a02e7faaf9",
  "lexical_observation_count": 39,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/Audit/Variant381cdb08b756b68c6423278401bfa4b2303cdcd4d231b625aa297fa3cbbad751.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../RealFunctions/AuditEdition4SourceEdition2.lean/index.md) · [Full source](../../../../RealFunctions/AuditEdition4SourceEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f9080ed0817c38e0ce6083526cadb9a02e7faaf9`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/Audit/Variant381cdb08b756b68c6423278401bfa4b2303cdcd4d231b625aa297fa3cbbad751.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/Audit/Variant381cdb08b756b68c6423278401bfa4b2303cdcd4d231b625aa297fa3cbbad751.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Field.ZMod` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.Padics.PadicNumbers` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FieldSimp` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NormNum` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ring` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [PlaneCode](../../../../RealFunctions/AuditEdition4SourceEdition2.lean/declarations/planecode.md) | 27 | `declaration-track:cf208a581ce179a2b2bc765a0210bec07933e1f2b7b179f2b1ac07c54467b27f` |
| 2 | `def` | [encode](../../../../RealFunctions/AuditEdition4SourceEdition2.lean/declarations/encode.md) | 34 | `declaration-track:d6e305f9066842b4de38d4688822c6422aefea3ff9bbefe298100c14e14acd76` |
| 3 | `def` | [interpret](../../../../RealFunctions/AuditEdition4SourceEdition2.lean/declarations/interpret.md) | 38 | `declaration-track:9e47795c665da8d4e130bc6a50138bb9edbb3973422c7ccccc3ff98b5130d084` |
| 4 | `def` | [Supported](../../../../RealFunctions/AuditEdition4SourceEdition2.lean/declarations/supported.md) | 42 | `declaration-track:29e1d8614c0428b2d4c181df4d720cffcad11d7504d83869b0e3de5eb1e6c609` |
| 5 | `def` | [coefficients](../../../../RealFunctions/AuditEdition4SourceEdition2.lean/declarations/coefficients.md) | 45 | `declaration-track:2e28fb32f835fedf210bf4ff9eddb7e596d4d325fc551a46095be79c25d5652c` |
| 6 | `def` | [operation](../../../../RealFunctions/AuditEdition4SourceEdition2.lean/declarations/operation.md) | 49 | `declaration-track:e0c209d5be3260aaabdf48830c37cb925a283509a49d7fe5a30300c424d9d116` |
| 7 | `def` | [move](../../../../RealFunctions/AuditEdition4SourceEdition2.lean/declarations/move.md) | 54 | `declaration-track:4625e8c871f74fe897f0a43b5764d4bfc7c4d6292ae8fad36d5c1a7875b89593` |
| 8 | `theorem` | [operation_eq_coefficients](../../../../RealFunctions/AuditEdition4SourceEdition2.lean/declarations/operation-eq-coefficients.md) | 61 | `result-track:a647bd60625a238db21054e492295761b57b8ea5e92ea1bb2e51eba45ff12fed` |
| 9 | `theorem` | [interpret_encode](../../../../RealFunctions/AuditEdition4SourceEdition2.lean/declarations/interpret-encode.md) | 70 | `result-track:7e1e68b5caf800c3b8d84bf107c087de02743e80452c6294cedb924abe24cd6e` |
| 10 | `theorem` | [interpret_move](../../../../RealFunctions/AuditEdition4SourceEdition2.lean/declarations/interpret-move.md) | 74 | `result-track:f5e7dda47fd4720b0f3f0e5ac1fdc5787ac5ad168de01905218b875498701862` |
| 11 | `theorem` | [interpret_move_encode](../../../../RealFunctions/AuditEdition4SourceEdition2.lean/declarations/interpret-move-encode.md) | 80 | `result-track:bef1b3d5c7b216e4c75349a0ce94e583f272a94bfe0922ea546b2910a113a860` |
| 12 | `def` | [quadratic](../../../../RealFunctions/AuditEdition4SourceEdition2.lean/declarations/quadratic.md) | 85 | `declaration-track:195ec1802e19e51c3a6e4e4e2137058dea48f6e071eb1ebfba629868032d5d2e` |
| 13 | `theorem` | [operation_quadratic](../../../../RealFunctions/AuditEdition4SourceEdition2.lean/declarations/operation-quadratic.md) | 88 | `result-track:230a83784b722124fc366726e59bc1690c891c70a1ccc18acad858b3624c86a1` |
| 14 | `theorem` | [move_quadratic](../../../../RealFunctions/AuditEdition4SourceEdition2.lean/declarations/move-quadratic.md) | 96 | `result-track:4ce1b16d4dc1f081133cc19b43108d68562b2dc5168ba0eaff6cd80d831b9610` |
| 15 | `def` | [reflection](../../../../RealFunctions/AuditEdition4SourceEdition2.lean/declarations/reflection.md) | 101 | `declaration-track:86264ec3a91c07bb08d01cb66e74b86b67fcdca9dccd97de631adcd9565f3df9` |
| 16 | `theorem` | [reflection_sq](../../../../RealFunctions/AuditEdition4SourceEdition2.lean/declarations/reflection-sq.md) | 105 | `result-track:03c48ff2776a5d1a0c320dda02e7f9b32c5b4e5396fc5d0f11f24b7e6639236b` |
| 17 | `theorem` | [reflection_reversal](../../../../RealFunctions/AuditEdition4SourceEdition2.lean/declarations/reflection-reversal.md) | 109 | `result-track:65055b1904fa2da5c2670d8f4730b7e03b86611bfd8d707b65f61873a08baebb` |
| 18 | `theorem` | [operation_inverse](../../../../RealFunctions/AuditEdition4SourceEdition2.lean/declarations/operation-inverse.md) | 115 | `result-track:3288c6012efdfc0a76e4dac05e4207ee1d8f9bed93ee5f20e3c4d0d3bc811403` |
| 19 | `def` | [phaseReflection](../../../../RealFunctions/AuditEdition4SourceEdition2.lean/declarations/phasereflection.md) | 122 | `declaration-track:10b9d888cc15636f94b13234f5f656918631c91925e050d0e2de52b3f35fb220` |
| 20 | `theorem` | [phaseReflection_sq](../../../../RealFunctions/AuditEdition4SourceEdition2.lean/declarations/phasereflection-sq.md) | 126 | `result-track:3b090a9d0f98b641f4792f3a41aeefc1e754e4288ab78b55ed4d9ed07d1fd364` |
| 21 | `theorem` | [coefficients_one](../../../../RealFunctions/AuditEdition4SourceEdition2.lean/declarations/coefficients-one.md) | 136 | `result-track:9d1d4e1138fc55075b3b6a37f171de673df8be13f23159f57905533659614520` |
| 22 | `theorem` | [operation_one](../../../../RealFunctions/AuditEdition4SourceEdition2.lean/declarations/operation-one.md) | 140 | `result-track:625e9750782f1f2dfa608e955c58e54fca47dcd55c42790ad9929ae0186a8f3a` |
| 23 | `def` | [IntegralAt](../../../../RealFunctions/AuditEdition4SourceEdition2.lean/declarations/integralat.md) | 154 | `declaration-track:03c6a6d3177676b4a869b0973b44bfe931ce77b28ca28430b56bfa01c4e3f30a` |
| 24 | `def` | [IntegralVector](../../../../RealFunctions/AuditEdition4SourceEdition2.lean/declarations/integralvector.md) | 158 | `declaration-track:7ff825e576e131eabc4a998b94e363bf0505e339ca1fc43b7f1595b3c3d16ed5` |
| 25 | `theorem` | [operation_integral](../../../../RealFunctions/AuditEdition4SourceEdition2.lean/declarations/operation-integral.md) | 161 | `result-track:6e132ca19153115f4ac43f827cc2aa19dd6e9a917c251ec4e95fe54715b2c33c` |
| 26 | `theorem` | [integralAt_iff_preserves_integral](../../../../RealFunctions/AuditEdition4SourceEdition2.lean/declarations/integralat-iff-preserves-integral.md) | 178 | `result-track:8081587f2a85e3cc47e995231de20ce01d6382a66aa4a480b483cd8150b78be2` |
| 27 | `instance` | [(anonymous)](../../../../RealFunctions/AuditEdition4SourceEdition2.lean/declarations/instance.md) | 192 | `declaration-track:367ae692a3668408303794d9dbc4c8cf03c7b3305f37815d19e4a891b1270c5f` |
| 28 | `instance` | [(anonymous)](../../../../RealFunctions/AuditEdition4SourceEdition2.lean/declarations/instance-source-edition-2.md) | 193 | `declaration-track:d33d0c0d0a88098edf1fa163c102223b80275fa12cab1731551466ac90e98d5d` |
| 29 | `theorem` | [coefficients_two_rat](../../../../RealFunctions/AuditEdition4SourceEdition2.lean/declarations/coefficients-two-rat.md) | 196 | `result-track:9b81bf01f48a1a380ee4298b90491fb3a69315f0fc6d8442976afda313544b2e` |
| 30 | `theorem` | [phase_two_supported_five](../../../../RealFunctions/AuditEdition4SourceEdition2.lean/declarations/phase-two-supported-five.md) | 201 | `result-track:d46720e0b9ecde3081b5fb9db20420c184937283f47dcc558f544f618fddc25d` |
| 31 | `theorem` | [coefficients_two_five_diagonal_norm](../../../../RealFunctions/AuditEdition4SourceEdition2.lean/declarations/coefficients-two-five-diagonal-norm.md) | 205 | `result-track:48abfb82b0eee5ee33ed0d3397cff34e37a62c8b1a524d6a8d1e614210195ee2` |
| 32 | `theorem` | [phase_two_five_not_integral](../../../../RealFunctions/AuditEdition4SourceEdition2.lean/declarations/phase-two-five-not-integral.md) | 216 | `result-track:a266dc078b600a9ad38974c67e9d57361e91884007126751aa69b2127144c814` |
| 33 | `theorem` | [phase_two_not_supported_mod_five](../../../../RealFunctions/AuditEdition4SourceEdition2.lean/declarations/phase-two-not-supported-mod-five.md) | 223 | `result-track:d2d3948d9680dcc3e1aea0345d9519275e09d1f0b4dfbe760825edaa0407bcdf` |
| 34 | `theorem` | [phase_one_not_supported_mod_two](../../../../RealFunctions/AuditEdition4SourceEdition2.lean/declarations/phase-one-not-supported-mod-two.md) | 228 | `result-track:1ae2ad8021549cdf677f629360de9dbeec8ddaf81dc7598431cf9d30dc79d08f` |
| 35 | `theorem` | [phase_one_supported_two](../../../../RealFunctions/AuditEdition4SourceEdition2.lean/declarations/phase-one-supported-two.md) | 233 | `result-track:8e71610be57c25e67bdb35307feee702cdae0b74e4d5c3a0038fbd55ba721ad5` |
| 36 | `theorem` | [phase_one_two_denominator_norm](../../../../RealFunctions/AuditEdition4SourceEdition2.lean/declarations/phase-one-two-denominator-norm.md) | 237 | `result-track:82a451520ff253660c18d8b675fa8cd12c1cae2df4e7c7166b4ab0896adcb6e7` |
| 37 | `theorem` | [phase_one_two_integral](../../../../RealFunctions/AuditEdition4SourceEdition2.lean/declarations/phase-one-two-integral.md) | 242 | `result-track:897e088a8b6b55c0bccf02b2fc7024d06cdc3ed0e3a5a18acf6c3dd86218010f` |
| 38 | `theorem` | [phase_two_five_basis_nonintegral](../../../../RealFunctions/AuditEdition4SourceEdition2.lean/declarations/phase-two-five-basis-nonintegral.md) | 249 | `result-track:9dcce5a15cdfee6bc235bbdf6c152ac7860c5d6559b90274d406e8d4f1ffd784` |
| 39 | `theorem` | [phase_one_two_preserves_integral](../../../../RealFunctions/AuditEdition4SourceEdition2.lean/declarations/phase-one-two-preserves-integral.md) | 255 | `result-track:ba69d838ade56f045c37ae3c5fc3bcb94440b7d398fcbd22171c2b8379aa6738` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c22cbba268af4e257956c1a9fb636849491f9ba7d19ec3a0ba7caebb6069872e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/Audit/Variant381cdb08b756b68c6423278401bfa4b2303cdcd4d231b625aa297fa3cbbad751.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/Audit/Variant381cdb08b756b68c6423278401bfa4b2303cdcd4d231b625aa297fa3cbbad751.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
