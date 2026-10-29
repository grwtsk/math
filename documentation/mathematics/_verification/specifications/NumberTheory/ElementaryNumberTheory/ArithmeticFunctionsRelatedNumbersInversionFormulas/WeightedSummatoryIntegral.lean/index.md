# Verification target: GRWTSK.NumberTheory.Moebius.WeightedSummatoryIntegral

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ca7fa70f797788aa2f0162c3c26e24f5f65b3906",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Moebius/WeightedSummatoryIntegral.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/WeightedSummatoryIntegral.lean/index.md) · [Full source](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/WeightedSummatoryIntegral.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ca7fa70f797788aa2f0162c3c26e24f5f65b3906`.

Source path: `GRWTSK/NumberTheory/Moebius/WeightedSummatoryIntegral.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Moebius/WeightedSummatoryIntegral.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.NumberTheory.ArithmeticFunction.Moebius` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.AbelSummation` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Pow.Deriv` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Linarith` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.LinearCombination` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ring` — import line 9; external provider; requires a separately pinned dependency.
- `Lean.Elab.Tactic.Omega` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [moebiusCoefficient](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/WeightedSummatoryIntegral.lean/declarations/moebiuscoefficient.md) | 33 | `declaration-track:69cce6fb870e8ba2e09ba19bdbe64406ce95daf975ea2b41cf368c0d7192f7a0` |
| 2 | `theorem` | [moebius_coefficient_zero](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/WeightedSummatoryIntegral.lean/declarations/moebius-coefficient-zero.md) | 36 | `result-track:7b2e73e98b26e7dee7b80d8b8a49e46edbca7cd5c97e97d18243817d23744710` |
| 3 | `theorem` | [moebius_coefficient_one](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/WeightedSummatoryIntegral.lean/declarations/moebius-coefficient-one.md) | 40 | `result-track:223af9f315e8897a5cc055c7fb63b271bbbdcfd7eac7c5df484a5df42aacacbd` |
| 4 | `def` | [mertens](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/WeightedSummatoryIntegral.lean/declarations/mertens.md) | 44 | `declaration-track:bba12dcfbe8f18a864b870854637f1b4f92b3636e5c40032fd4e54952966af99` |
| 5 | `def` | [pickup](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/WeightedSummatoryIntegral.lean/declarations/pickup.md) | 49 | `declaration-track:1611e539392851d42cba11b49e8aa7b27034fada013f780c01542eeacbcd67d3` |
| 6 | `def` | [finitePickupAt](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/WeightedSummatoryIntegral.lean/declarations/finitepickupat.md) | 54 | `declaration-track:0c84373f3c9d8c264fc3dbbb48293b70bbfb3d552a79370370c3742f0ce8dfd9` |
| 7 | `def` | [finitePickup](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/WeightedSummatoryIntegral.lean/declarations/finitepickup.md) | 58 | `declaration-track:f162c078dd9fdef389ef43245de20ebdf85d455d7dc347624525b96723d3dc1a` |
| 8 | `def` | [atomWeight](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/WeightedSummatoryIntegral.lean/declarations/atomweight.md) | 61 | `declaration-track:43576d46697fa161633cdc4ec57006004b45eb21c5d44a8314e2bf5a1d5e294d` |
| 9 | `theorem` | [mertens_zero](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/WeightedSummatoryIntegral.lean/declarations/mertens-zero.md) | 65 | `result-track:4e25f57e1136d87b71090e0532c8f94781fe473eebeee1e63122645b92ac34db` |
| 10 | `theorem` | [mertens_one](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/WeightedSummatoryIntegral.lean/declarations/mertens-one.md) | 68 | `result-track:8a37f18e9e60f0183bce2493fa5d08eccec63ea4a3b25496c8db9072be845376` |
| 11 | `theorem` | [pickup_zero](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/WeightedSummatoryIntegral.lean/declarations/pickup-zero.md) | 71 | `result-track:1098bfded3115c868adf636f5196eaaed8b86cb2c2be739a9e06f7ee4ee5cd5b` |
| 12 | `theorem` | [finite_pickup_at_one](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/WeightedSummatoryIntegral.lean/declarations/finite-pickup-at-one.md) | 74 | `result-track:84dd632d9b888e5279ad3bb0546630ccfaabb1684833397dfc30471515d49f9a` |
| 13 | `theorem` | [finite_pickup_zero](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/WeightedSummatoryIntegral.lean/declarations/finite-pickup-zero.md) | 77 | `result-track:0e4a077a4a19061f405763578d9f8cbdf083f8b17f1821969f300e56ddf47ec2` |
| 14 | `theorem` | [finite_pickup_prefix_flux](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/WeightedSummatoryIntegral.lean/declarations/finite-pickup-prefix-flux.md) | 80 | `result-track:d7f8387c7c0f4b99762c3289040db5fbf2ee0b91782399e7367890ed5884f834` |
| 15 | `theorem` | [upper_touching_atom_zero](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/WeightedSummatoryIntegral.lean/declarations/upper-touching-atom-zero.md) | 90 | `result-track:6b9d34fed1be93119befbef6e330027686cc4cf0ed4e40f428aeeb0b87f85028` |
| 16 | `theorem` | [atom_reset_difference](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/WeightedSummatoryIntegral.lean/declarations/atom-reset-difference.md) | 95 | `result-track:ac4dc4e8b8217003125f877dccf88edd8a890e175e094a9e57205ce7917c9e9a` |
| 17 | `theorem` | [lower_touching_atom_later_reading](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/WeightedSummatoryIntegral.lean/declarations/lower-touching-atom-later-reading.md) | 103 | `result-track:a8343b6410d3f406d75f3fdfac28c4a09204b74c0b49b3c8a27e3641deb7e1ba` |
| 18 | `theorem` | [closed_prefix_split](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/WeightedSummatoryIntegral.lean/declarations/closed-prefix-split.md) | 111 | `result-track:ca9de8ccc7048684ea32ed6604bcd0e117c65471f44f6dfd226a00b0bd7e5fb1` |
| 19 | `theorem` | [finite_pickup_reset](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/WeightedSummatoryIntegral.lean/declarations/finite-pickup-reset.md) | 133 | `result-track:4bd27b813a69aeeb5b6cd76bae991bb1062e5aa974d73b6072b0ce193e420c27` |
| 20 | `theorem` | [mem_closed_prefix_iff](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/WeightedSummatoryIntegral.lean/declarations/mem-closed-prefix-iff.md) | 157 | `result-track:2f0eff961a20f2ccaf1664b5423cbbdab281b627204abd61c730dc752b51d37b` |
| 21 | `theorem` | [mem_reset_remainder_iff](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/WeightedSummatoryIntegral.lean/declarations/mem-reset-remainder-iff.md) | 162 | `result-track:e68922252fba4ffbf97f556f6594aa82fda0dd24259f509de374a66b23fe618e` |
| 22 | `theorem` | [zero_prefix_eq_mertens](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/WeightedSummatoryIntegral.lean/declarations/zero-prefix-eq-mertens.md) | 169 | `result-track:e69de693092ab5c08b58512c670b77ea278b6f3c9da75743e00cfb1f772371fe` |
| 23 | `theorem` | [inverse_half_derivative](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/WeightedSummatoryIntegral.lean/declarations/inverse-half-derivative.md) | 178 | `result-track:9f7b31b9655872a4cf257de7edd5b7659e059414dc4f7b7d0840ad00f9599db5` |
| 24 | `theorem` | [material_integrand_integrable](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/WeightedSummatoryIntegral.lean/declarations/material-integrand-integrable.md) | 187 | `result-track:15c73315fcde6d6a26ab30c81e9cf8db8059d39a218cce7291728b39585bf767` |
| 25 | `theorem` | [material_integral_eq_finite](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/WeightedSummatoryIntegral.lean/declarations/material-integral-eq-finite.md) | 202 | `result-track:3ba737404641dd6dcae7bec4c6d86475d5eb3021fe76287dc264d6b735906004` |
| 26 | `def` | [FiniteIntegrationIdentity](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/WeightedSummatoryIntegral.lean/declarations/finiteintegrationidentity.md) | 253 | `declaration-track:48200597ee32bbe265b1097a311ee38eeb1555cbbfabf10826f3a71e7018739e` |
| 27 | `theorem` | [finite_integration_identity](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/WeightedSummatoryIntegral.lean/declarations/finite-integration-identity.md) | 258 | `result-track:6214ba94dc349261b5db7888966e9d1b489863d202f7439d8001fbc7ca19c27c` |
| 28 | `theorem` | [pickup_eq_interval_integral](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/WeightedSummatoryIntegral.lean/declarations/pickup-eq-interval-integral.md) | 264 | `result-track:43683686fb8586971ff0426554c80fc39d440520a16b4e310499fda820467350` |
| 29 | `theorem` | [exp_inverse_half](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/WeightedSummatoryIntegral.lean/declarations/exp-inverse-half.md) | 270 | `result-track:1788da0d11ad4f4c561e01edac5c65951845598a4f78cb55457990d83b4fc2e9` |
| 30 | `theorem` | [pickup_eq_closed_finite_sum](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/WeightedSummatoryIntegral.lean/declarations/pickup-eq-closed-finite-sum.md) | 277 | `result-track:f765b312eb55ded2a671d52009ca37233d61ef4c29a08a6a60f8be977143681f` |
| 31 | `theorem` | [square_inverse_half](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/WeightedSummatoryIntegral.lean/declarations/square-inverse-half.md) | 284 | `result-track:08a2d87f736f597f0078defa92dc751b9120782d8351501b6d4f394dec9c3181` |
| 32 | `theorem` | [pickup_original_reset](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/WeightedSummatoryIntegral.lean/declarations/pickup-original-reset.md) | 293 | `result-track:86d36a9858cf9f5931f66deeaed38d8454d643e58c8d76bb3fa03450ac245fd6` |
| 33 | `def` | [WholePickupPoly](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/WeightedSummatoryIntegral.lean/declarations/wholepickuppoly.md) | 315 | `declaration-track:241ccba376d40bfbc607cd72469afacfc6b8cd718b9e2ea7f80d1a67257bd35e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=be9bc68b65a0e2f44fe09ffa20c3efa46ab2d88d17c6d07db25270a02976a462 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Moebius/WeightedSummatoryIntegral.lean","GRWTSK/_verification/specifications/NumberTheory/Moebius/WeightedSummatoryIntegral.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
