# Verification target: Pole Frontier Invariance Results

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "060fc00795daa6a861d13a2e8cb22bd32ca85548",
  "lexical_observation_count": 40,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PoleFrontierInvariance/Variantd31b9cc4552a3a932f8181015b1e1026b744ce759bf7afa403975b29028293c9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/PoleFrontierInvarianceResults.lean/index.md) · [Full source](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/PoleFrontierInvarianceResults.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `060fc00795daa6a861d13a2e8cb22bd32ca85548`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PoleFrontierInvariance/Variantd31b9cc4552a3a932f8181015b1e1026b744ce759bf7afa403975b29028293c9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PoleFrontierInvariance/Variantd31b9cc4552a3a932f8181015b1e1026b744ce759bf7afa403975b29028293c9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.MathematicalTooling.UniformTailEquivalence` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.PoleGreenGauge` — import line 2; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.PoleAbelTransform` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [sourceDiscrepancyValue](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/PoleFrontierInvarianceResults.lean/declarations/sourcediscrepancyvalue.md) | 33 | `declaration-track:00153ce7fce87b4e65e53fa920b05bbc3ea035fde9a3e578c40d5b443a3f97ba` |
| 2 | `def` | [unnormalizedPoleValue](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/PoleFrontierInvarianceResults.lean/declarations/unnormalizedpolevalue.md) | 38 | `declaration-track:d62535acf937d5329c58fae9e712877287555266f9de271b714075613411cbec` |
| 3 | `def` | [normalizedPoleValue](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/PoleFrontierInvarianceResults.lean/declarations/normalizedpolevalue.md) | 45 | `declaration-track:33a52b3d50686e095f9cd1a52915fcfd242e8ae659d42658672b9c5105ec6e97` |
| 4 | `def` | [greenResidualValue](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/PoleFrontierInvarianceResults.lean/declarations/greenresidualvalue.md) | 49 | `declaration-track:44e4de11997f2ac93d8386ea748744f22a4c5e5e95cadb696c856f252600b9e6` |
| 5 | `def` | [doublePoleValue](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/PoleFrontierInvarianceResults.lean/declarations/doublepolevalue.md) | 54 | `declaration-track:0f90831dfec36fef22dc55936d615c34e47df3943898ceeb9c7522706e80685a` |
| 6 | `def` | [gaugedGreenValue](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/PoleFrontierInvarianceResults.lean/declarations/gaugedgreenvalue.md) | 59 | `declaration-track:78ba7385f01c5d2eb5cde1dfa54deeb01c204f28ab1a2c83f2fd731ba4c30d50` |
| 7 | `def` | [sourceAbelValue](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/PoleFrontierInvarianceResults.lean/declarations/sourceabelvalue.md) | 64 | `declaration-track:3949f9880b5a81386a5358080451643830f688c36347f130595e54f24687174c` |
| 8 | `theorem` | [pole_operator_twice_base_eq_scaled_source](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/PoleFrontierInvarianceResults.lean/declarations/pole-operator-twice-base-eq-scaled-source.md) | 69 | `result-track:b02fba8e7f4018393973fbcf02f3657b802ffc5ac05e84da1323b78b3018fd90` |
| 9 | `theorem` | [double_pole_value_eq_green_residual](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/PoleFrontierInvarianceResults.lean/declarations/double-pole-value-eq-green-residual.md) | 84 | `result-track:684a842e3e72c172dd0ef3c74eb6ecf463fd43ac8c9c1cc79e6b172c7627e43d` |
| 10 | `theorem` | [source_discrepancy_value_eq_bundled](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/PoleFrontierInvarianceResults.lean/declarations/source-discrepancy-value-eq-bundled.md) | 93 | `result-track:b6dc635c34916dbf06f3b723ef8db2ebae3c6dd85775357716c25c0c2e670d6a` |
| 11 | `theorem` | [source_green_operator_integrable](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/PoleFrontierInvarianceResults.lean/declarations/source-green-operator-integrable.md) | 98 | `result-track:8490c4a561caa144453737a324a838af86909804f2c652d18ff573a475bf862e` |
| 12 | `theorem` | [source_double_pole_integrable](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/PoleFrontierInvarianceResults.lean/declarations/source-double-pole-integrable.md) | 106 | `result-track:5c4d692b0f1b2f2b714a630dc2cadea4a913e8d462393a66c08bfdab0fc99a77` |
| 13 | `theorem` | [green_residual_value_eq_discrepancy](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/PoleFrontierInvarianceResults.lean/declarations/green-residual-value-eq-discrepancy.md) | 114 | `result-track:a398c4f29948096e40e95643a7c40c63366bd9663bf89b79f48acb40d7fa11b7` |
| 14 | `theorem` | [source_discrepancy_eq_double_pole_pairing](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/PoleFrontierInvarianceResults.lean/declarations/source-discrepancy-eq-double-pole-pairing.md) | 122 | `result-track:3cb604fa481793a78a2b2d95f2c307a673d49e79b4048c0d6654e58f44a1b8f5` |
| 15 | `theorem` | [gauged_green_value_eq_discrepancy](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/PoleFrontierInvarianceResults.lean/declarations/gauged-green-value-eq-discrepancy.md) | 127 | `result-track:f5c3b9bcb50391cc412e16a0b62803101f16f469c7297dcc75d31573201dbb4d` |
| 16 | `theorem` | [source_abel_value_eq_discrepancy](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/PoleFrontierInvarianceResults.lean/declarations/source-abel-value-eq-discrepancy.md) | 136 | `result-track:c1c8a3e622a9ca72fe59c5fa1090597458adca8546628bc9958d184f9c7f2b1c` |
| 17 | `theorem` | [normalized_pole_value_eq_discrepancy](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/PoleFrontierInvarianceResults.lean/declarations/normalized-pole-value-eq-discrepancy.md) | 142 | `result-track:87a3ce82b4bef31c0706d6dc5d0fb0e55892aa3aecdeeae97c5120173f82c448` |
| 18 | `theorem` | [lower_power_tail_iff_prime_square_compensation](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/PoleFrontierInvarianceResults.lean/declarations/lower-power-tail-iff-prime-square-compensation.md) | 155 | `result-track:2c4c1353dbaa73f007d4f1eaeb6982988e453457386110ac5403e53b006813a9` |
| 19 | `def` | [discrepancyTailAdapter](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/PoleFrontierInvarianceResults.lean/declarations/discrepancytailadapter.md) | 172 | `declaration-track:7174b038eb0666726da83e7697f3af6331e5886cc543f2c3bb353b3c12256784` |
| 20 | `def` | [poleTailAdapter](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/PoleFrontierInvarianceResults.lean/declarations/poletailadapter.md) | 190 | `declaration-track:f1b234e2485df57511374bea4f6fd0b122da40acfda48a837953c9af2dc5e75b` |
| 21 | `theorem` | [discrepancy_tail_iff_prime_square_compensation](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/PoleFrontierInvarianceResults.lean/declarations/discrepancy-tail-iff-prime-square-compensation.md) | 195 | `result-track:d8e9d8c08333ac5aaad1fe05ffec629be55d2cb29f469849fd695d50b0f2208b` |
| 22 | `theorem` | [uniform_frontier_invariance](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/PoleFrontierInvarianceResults.lean/declarations/uniform-frontier-invariance.md) | 201 | `result-track:ed29f03c4e6fa42655fc5e8474678cd53c384829b31b6ef7fb22c7a98f27c51c` |
| 23 | `theorem` | [normalized_pole_tail_iff_prime_square_compensation](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/PoleFrontierInvarianceResults.lean/declarations/normalized-pole-tail-iff-prime-square-compensation.md) | 208 | `result-track:66dd84a8e1027e489026c1245a87b97e7c847843271fd92b967427be2db3107e` |
| 24 | `def` | [greenTailAdapter](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/PoleFrontierInvarianceResults.lean/declarations/greentailadapter.md) | 213 | `declaration-track:72ba88bfb32dc2c28b8bfddfb30b0183818b6f5c6ae70a50db29a376dfa7311c` |
| 25 | `theorem` | [green_tail_iff_prime_square_compensation](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/PoleFrontierInvarianceResults.lean/declarations/green-tail-iff-prime-square-compensation.md) | 218 | `result-track:5bfab5ac585fb11a6f5ab57867add9525a85ad30f9a57db6353c31984463cad2` |
| 26 | `theorem` | [double_pole_tail_iff_prime_square_compensation](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/PoleFrontierInvarianceResults.lean/declarations/double-pole-tail-iff-prime-square-compensation.md) | 223 | `result-track:1ca495bb331b480a161ecf9ca38e3257efcf3f4b2a23092c2cd58a568d8e8c04` |
| 27 | `theorem` | [gauged_green_tail_iff_prime_square_compensation](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/PoleFrontierInvarianceResults.lean/declarations/gauged-green-tail-iff-prime-square-compensation.md) | 229 | `result-track:e23d54ecddb74aeb53085a034bd695352739755b82731101b6aa5356c81d2c71` |
| 28 | `def` | [abelTailAdapter](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/PoleFrontierInvarianceResults.lean/declarations/abeltailadapter.md) | 237 | `declaration-track:4a77816d844677b862575974b91928e2b5ad15d5f63b141688d13731c6edab46` |
| 29 | `theorem` | [second_abel_tail_iff_prime_square_compensation](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/PoleFrontierInvarianceResults.lean/declarations/second-abel-tail-iff-prime-square-compensation.md) | 242 | `result-track:fec56ff4d086e92e6ca882c7ea1607c1a4e7dcef765c3db7b9e05cbf7da9cdd9` |
| 30 | `theorem` | [certified_frontier_iff_mertens_residual](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/PoleFrontierInvarianceResults.lean/declarations/certified-frontier-iff-mertens-residual.md) | 247 | `result-track:347eb463f4c26674fe51bb9eac589fde54102322bbd9cdad4594695b49a0febe` |
| 31 | `theorem` | [certified_frontier_iff_signed_pairing](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/PoleFrontierInvarianceResults.lean/declarations/certified-frontier-iff-signed-pairing.md) | 255 | `result-track:a0b358ed5eadae71f1293bb01b7e44312423ac198cd4e73daa92f26eb9846e43` |
| 32 | `theorem` | [uniform_frontier_invariance_variable_normalization](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/PoleFrontierInvarianceResults.lean/declarations/uniform-frontier-invariance-variable-normalization.md) | 262 | `result-track:5a38ab8177cbf28408a21eeb36898d71bc5dedfd7fe14fe4a1be4a094d537122` |
| 33 | `theorem` | [source_normalization_uniform_bounds](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/PoleFrontierInvarianceResults.lean/declarations/source-normalization-uniform-bounds.md) | 271 | `result-track:0ac4ac460dbf0a93f5612fbc0f31aede8c71b0ecba93761601db24ed2210aa3a` |
| 34 | `theorem` | [unnormalized_pole_value_eq_scaled_discrepancy](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/PoleFrontierInvarianceResults.lean/declarations/unnormalized-pole-value-eq-scaled-discrepancy.md) | 285 | `result-track:caa1014c62a9a582d7484480e33949071fe34a2882bcefe922c295205f910628` |
| 35 | `theorem` | [unnormalized_pole_tail_iff_prime_square_compensation](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/PoleFrontierInvarianceResults.lean/declarations/unnormalized-pole-tail-iff-prime-square-compensation.md) | 293 | `result-track:7bdfbd62d729fe1052b40a91c68af792de1f873cc847f141373e931925dbece3` |
| 36 | `theorem` | [estimate_of_certified_frontier](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/PoleFrontierInvarianceResults.lean/declarations/estimate-of-certified-frontier.md) | 304 | `result-track:645dfc0f990d6b156b9ff3f036cd53fcaa37891a6092bdf80ca7251f8d27470c` |
| 37 | `theorem` | [riemann_hypothesis_of_certified_frontier](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/PoleFrontierInvarianceResults.lean/declarations/riemann-hypothesis-of-certified-frontier.md) | 310 | `result-track:cfaca8e0ccf816bb708f293100ca168ce40aa58b20ec56de9550ca328baa19bd` |
| 38 | `theorem` | [identity_function_not_uniformly_bounded](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/PoleFrontierInvarianceResults.lean/declarations/identity-function-not-uniformly-bounded.md) | 316 | `result-track:2eebc4d2e48bf327df8df62bf4c0f3f2eb6337282486cfe7396faf8a0eb6d112` |
| 39 | `theorem` | [vanishing_normalization_changes_tail](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/PoleFrontierInvarianceResults.lean/declarations/vanishing-normalization-changes-tail.md) | 324 | `result-track:a8286a5dcecde92830ef77210cee260c2bf4c773e96f054909324718f23f41a9` |
| 40 | `theorem` | [pointwise_error_changes_tail](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/PoleFrontierInvarianceResults.lean/declarations/pointwise-error-changes-tail.md) | 333 | `result-track:28877d05e358c18306c5d7b9cb1c79ebf689e8cca260f6041113acc45f7ec116` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=937600df7b9d40a5c279414ee0050fac6ed5705f0616d35755cea1f97904294c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PoleFrontierInvariance/Variantd31b9cc4552a3a932f8181015b1e1026b744ce759bf7afa403975b29028293c9.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PoleFrontierInvariance/Variantd31b9cc4552a3a932f8181015b1e1026b744ce759bf7afa403975b29028293c9.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
