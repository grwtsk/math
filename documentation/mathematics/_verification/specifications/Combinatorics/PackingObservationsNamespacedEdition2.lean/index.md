# Verification target: Packing Observations Namespaced Edition2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8951a5a0ae8990bc7a8ad2cf9f96ac8525e8df8f",
  "lexical_observation_count": 41,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/PackingObservations/Variant0e188c967a3e2bc6ae01d9b91aed45550bc96eb74423ef49c31f09bb5299fdeb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../Combinatorics/PackingObservationsNamespacedEdition2.lean/index.md) · [Full source](../../../../Combinatorics/PackingObservationsNamespacedEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8951a5a0ae8990bc7a8ad2cf9f96ac8525e8df8f`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/PackingObservations/Variant0e188c967a3e2bc6ae01d9b91aed45550bc96eb74423ef49c31f09bb5299fdeb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/PackingObservations/Variant0e188c967a3e2bc6ae01d9b91aed45550bc96eb74423ef49c31f09bb5299fdeb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.NumberTheory.Padics.PadicVal.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Prime.Defs` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Powerset` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Factorization.Basic` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Log.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `FormalResearch.SUCAS.FactorState` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [cappedValuation](../../../../Combinatorics/PackingObservationsNamespacedEdition2.lean/declarations/cappedvaluation.md) | 30 | `declaration-track:d5a6d0dd57c869fe94acb52ab1ca7cc39f0a19b9a5106f41e931d3c6cab1713b` |
| 2 | `theorem` | [cappedValuation_le](../../../../Combinatorics/PackingObservationsNamespacedEdition2.lean/declarations/cappedvaluation-le.md) | 34 | `result-track:edea839956f69dda580b9c88305a30e199943be0f6a26aeb24260c835886bdcf` |
| 3 | `theorem` | [cappedValuation_zero](../../../../Combinatorics/PackingObservationsNamespacedEdition2.lean/declarations/cappedvaluation-zero.md) | 41 | `result-track:d955b8e4ede3eafd1a83607cc8d5f5dc886bdb5aa61a2c095367dd156c92ffdc` |
| 4 | `theorem` | [cappedValuation_projection](../../../../Combinatorics/PackingObservationsNamespacedEdition2.lean/declarations/cappedvaluation-projection.md) | 45 | `result-track:64c9ca7d48c977da57152c4642735fe4f8cc3ff53723fb7981ed43fc9b4e03a7` |
| 5 | `theorem` | [cappedValuation_power_dvd](../../../../Combinatorics/PackingObservationsNamespacedEdition2.lean/declarations/cappedvaluation-power-dvd.md) | 54 | `result-track:70c6031f5e318393b17d964af9832353f08dc9bfd5c0a44c06a7178b2fa9eb71` |
| 6 | `theorem` | [cappedValuation_eq_of_profile](../../../../Combinatorics/PackingObservationsNamespacedEdition2.lean/declarations/cappedvaluation-eq-of-profile.md) | 66 | `result-track:8c33681f1ec3661da3935d0c6e27d86e52bc706dab476752ea1f3bc68a42de51` |
| 7 | `theorem` | [cappedValuation_eq_of_fin_profile](../../../../Combinatorics/PackingObservationsNamespacedEdition2.lean/declarations/cappedvaluation-eq-of-fin-profile.md) | 77 | `result-track:c8169a7e1c6d37a8f8d0537d1d3fb46db357a565764f814aa867605913dafd40` |
| 8 | `def` | [signature](../../../../Combinatorics/PackingObservationsNamespacedEdition2.lean/declarations/signature.md) | 87 | `declaration-track:6b4c0ce8e0cd97969ca1f431ea60ac64dd680134c2922ebd6a69d56741acb530` |
| 9 | `def` | [ObservationalEquivalence](../../../../Combinatorics/PackingObservationsNamespacedEdition2.lean/declarations/observationalequivalence.md) | 95 | `declaration-track:52c25cd71b4a8230b5ddd20bbfa2094c6d9e4084b7a704042a9fee05008e35ab` |
| 10 | `theorem` | [signature_eq_iff](../../../../Combinatorics/PackingObservationsNamespacedEdition2.lean/declarations/signature-eq-iff.md) | 99 | `result-track:e7235efec8dbe290616de49f10c4a41b64fe1f65d58619d4e05965dd459aecec` |
| 11 | `theorem` | [support_partition_refinement](../../../../Combinatorics/PackingObservationsNamespacedEdition2.lean/declarations/support-partition-refinement.md) | 120 | `result-track:9ec0bff7ede2bea348ff37971a0d5112dde94c640e309cb07e1744d8380e83bc` |
| 12 | `theorem` | [depth_partition_refinement](../../../../Combinatorics/PackingObservationsNamespacedEdition2.lean/declarations/depth-partition-refinement.md) | 128 | `result-track:2e183ca19c73b5fd5dae44a4fb52250ce5d40ef7ffb9e22bc4f0b67d0904b740` |
| 13 | `theorem` | [signature_partition_refinement](../../../../Combinatorics/PackingObservationsNamespacedEdition2.lean/declarations/signature-partition-refinement.md) | 137 | `result-track:b554a09e96634f2a893066b82794302787e0839243cbacc6e80d1ba5f4b051ad` |
| 14 | `structure` | [Packing](../../../../Combinatorics/PackingObservationsNamespacedEdition2.lean/declarations/packing.md) | 144 | `declaration-track:7b7d3acd079eba0813fcf80d6a97a67f30c41199de5d2b55e168712ed22e645c` |
| 15 | `def` | [Packing.survivorSet](../../../../Combinatorics/PackingObservationsNamespacedEdition2.lean/declarations/packing-survivorset.md) | 161 | `declaration-track:3c5b97c32fe3ac9510f0dcc67a2673f0ec85304974a1470048f64185218185c9` |
| 16 | `theorem` | [Packing.mem_survivor_iff](../../../../Combinatorics/PackingObservationsNamespacedEdition2.lean/declarations/packing-mem-survivor-iff.md) | 166 | `result-track:fa5e126df4020142691ab76fa02322a979d1a51ab2847b14dfe1360931063f58` |
| 17 | `theorem` | [Packing.exclusion_witness](../../../../Combinatorics/PackingObservationsNamespacedEdition2.lean/declarations/packing-exclusion-witness.md) | 186 | `result-track:1fb0721156d901fb31d53db0679638ebeffd5a32fa1a482aacaf09f993e9d1a8` |
| 18 | `theorem` | [Packing.relative_minimality](../../../../Combinatorics/PackingObservationsNamespacedEdition2.lean/declarations/packing-relative-minimality.md) | 196 | `result-track:b4479b4f14e6fd5cec5ddd7be475b5b578f3f1d7b7411d788c5ba995a0931dad` |
| 19 | `structure` | [RawPacking](../../../../Combinatorics/PackingObservationsNamespacedEdition2.lean/declarations/rawpacking.md) | 207 | `declaration-track:e8edd99488f3c6a073671181d8fcb9a4f495989b2015ca0e1c80272f850906e1` |
| 20 | `def` | [RawPacking.Survives](../../../../Combinatorics/PackingObservationsNamespacedEdition2.lean/declarations/rawpacking-survives.md) | 216 | `declaration-track:2f82508dcefa7b51fc9efc64ecd8e4a64701542342100264ce28212ce4cf9829` |
| 21 | `structure` | [ProperPacking](../../../../Combinatorics/PackingObservationsNamespacedEdition2.lean/declarations/properpacking.md) | 220 | `declaration-track:b60f39730cd8d8af146303ad728cfb1eac5e0ed83eb43d3de9ecf516d28c9186` |
| 22 | `def` | [ProperPacking.InRange](../../../../Combinatorics/PackingObservationsNamespacedEdition2.lean/declarations/properpacking-inrange.md) | 231 | `declaration-track:f9a7773536190813e311ea000479adfb4a5499005290b6e226a2e09c085a4bda` |
| 23 | `def` | [ProperPacking.Survives](../../../../Combinatorics/PackingObservationsNamespacedEdition2.lean/declarations/properpacking-survives.md) | 236 | `declaration-track:65693995687cfd0c6a0feff6ae7efcdc57abd82dd9ad46f7105b6518b0291c02` |
| 24 | `theorem` | [raw_excludes_visible_prime](../../../../Combinatorics/PackingObservationsNamespacedEdition2.lean/declarations/raw-excludes-visible-prime.md) | 241 | `result-track:57129cc4bd1289482cfe144af98803d47e7f9bbc7d080296bf1451c43914fc86` |
| 25 | `theorem` | [proper_preserves_primes](../../../../Combinatorics/PackingObservationsNamespacedEdition2.lean/declarations/proper-preserves-primes.md) | 249 | `result-track:8fe1aa5c1771636e8230cc9071eac77a491414bbb5e148afb6f7312aa55ba4bc` |
| 26 | `theorem` | [raw_support_monotone](../../../../Combinatorics/PackingObservationsNamespacedEdition2.lean/declarations/raw-support-monotone.md) | 257 | `result-track:2a3c08f337cbeb521e43660524f470dd27670f35791778cf7a15e5bfc5672814` |
| 27 | `theorem` | [zero_not_nondivisible](../../../../Combinatorics/PackingObservationsNamespacedEdition2.lean/declarations/zero-not-nondivisible.md) | 264 | `result-track:d08fa26ec23ec42789ede0a59e7908fd8b7964374e13ae42dd9c88dbf8381e41` |
| 28 | `theorem` | [shallow_observation_collision](../../../../Combinatorics/PackingObservationsNamespacedEdition2.lean/declarations/shallow-observation-collision.md) | 268 | `result-track:f4df3e59d1b75b717aaa62bfcaea06bbd91b8de26db13892f42753551dc40694` |
| 29 | `theorem` | [deeper_observation_separation](../../../../Combinatorics/PackingObservationsNamespacedEdition2.lean/declarations/deeper-observation-separation.md) | 276 | `result-track:987921cc9b32ea7000c86e3de5acc81fa8ed5fa0397ae393ad68bfcfb9c644d6` |
| 30 | `theorem` | [prime_power_period_count](../../../../Combinatorics/PackingObservationsNamespacedEdition2.lean/declarations/prime-power-period-count.md) | 285 | `result-track:340591d7e784ecf104342135ec0890bae8245dd598db2905007290c09236af31` |
| 31 | `theorem` | [next_power_period_count](../../../../Combinatorics/PackingObservationsNamespacedEdition2.lean/declarations/next-power-period-count.md) | 291 | `result-track:e3cf9765172270f59499b94ad91bbb62b4545018a7f057989e6448761e504523` |
| 32 | `theorem` | [exact_valuation_shell](../../../../Combinatorics/PackingObservationsNamespacedEdition2.lean/declarations/exact-valuation-shell.md) | 297 | `result-track:67c5ad2d8e532f4f2d6486e709948c449a6703b363f507a65725a01bed19f9ab` |
| 33 | `theorem` | [exact_valuation_period_count](../../../../Combinatorics/PackingObservationsNamespacedEdition2.lean/declarations/exact-valuation-period-count.md) | 304 | `result-track:3ecf5700060654a3c9d174fc3fda5e5dd6937fcacfba26c082c79f583bc9df97` |
| 34 | `theorem` | [prime_power_period_frequency](../../../../Combinatorics/PackingObservationsNamespacedEdition2.lean/declarations/prime-power-period-frequency.md) | 328 | `result-track:aae890b19208c92fcd691edade1b804f3a877517e73d5896ef3d38c983527953` |
| 35 | `theorem` | [exact_valuation_period_frequency](../../../../Combinatorics/PackingObservationsNamespacedEdition2.lean/declarations/exact-valuation-period-frequency.md) | 338 | `result-track:9d9136aa56d24322762d021d01a3975af0ad0c1a8b6a3bb317b9bb6ce66ea163` |
| 36 | `theorem` | [logarithmic_divisibility_scale](../../../../Combinatorics/PackingObservationsNamespacedEdition2.lean/declarations/logarithmic-divisibility-scale.md) | 350 | `result-track:721d5fb8fba301d4e7e917cfee1003f389ac922e8d191fad98703fae09a3f11f` |
| 37 | `theorem` | [bounded_proper_classification](../../../../Combinatorics/PackingObservationsNamespacedEdition2.lean/declarations/bounded-proper-classification.md) | 357 | `result-track:28e4f8b5028ee922db21989ae8279e9873a918381ef9343e1cb9b3b1b0f8ab01` |
| 38 | `theorem` | [raw_survival_implies_prime_components](../../../../Combinatorics/PackingObservationsNamespacedEdition2.lean/declarations/raw-survival-implies-prime-components.md) | 375 | `result-track:97a20e7d1d3d4943f9d57750bdfbf4f54d5ce54b9704eb693782af7bdf828f47` |
| 39 | `theorem` | [proper_preserves_two_three](../../../../Combinatorics/PackingObservationsNamespacedEdition2.lean/declarations/proper-preserves-two-three.md) | 390 | `result-track:0d747cca9b7ed01405c3cd9a61c2b907444c5620a80c667c219bfa246b60b23f` |
| 40 | `theorem` | [proper_preserves_translated_prime_components](../../../../Combinatorics/PackingObservationsNamespacedEdition2.lean/declarations/proper-preserves-translated-prime-components.md) | 411 | `result-track:3982efb0b5d01a392dd1d1036070015c660bce450253f5593edadd5bad737ee1` |
| 41 | `theorem` | [zero_depth_keeps_composite](../../../../Combinatorics/PackingObservationsNamespacedEdition2.lean/declarations/zero-depth-keeps-composite.md) | 420 | `result-track:0f17f42b32dc956e692a70fb270ba93e37a3d865bfb234894ccb4b13fb6bae5a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f7c0f1b6ddde40b71b7fcb0179a70719238dffcda79b84c53db3411fb09866e1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/PackingObservations/Variant0e188c967a3e2bc6ae01d9b91aed45550bc96eb74423ef49c31f09bb5299fdeb.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/PackingObservations/Variant0e188c967a3e2bc6ae01d9b91aed45550bc96eb74423ef49c31f09bb5299fdeb.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
