# Verification target: Conductor Three Prime Reindex Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "db8181eba682ff15d4baf598fbcb3c8815994841",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/ConductorThreePrimeReindex/Variantc6c8b2c04bb021e7616d231db7f4531b7641bdce1542f6970e7df8dd8b184c8d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/ConductorThreePrimeReindexNamespacedPublic.lean/index.md) · [Full source](../../../../GeneralTopology/ConductorThreePrimeReindexNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `db8181eba682ff15d4baf598fbcb3c8815994841`.

Source path: `GRWTSK/Topology/GeneralTopology/ConductorThreePrimeReindex/Variantc6c8b2c04bb021e7616d231db7f4531b7641bdce1542f6970e7df8dd8b184c8d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/ConductorThreePrimeReindex/Variantc6c8b2c04bb021e7616d231db7f4531b7641bdce1542f6970e7df8dd8b184c8d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [eligibleResidueSixPrime_iff_prime_and_three_lt](../../../../GeneralTopology/ConductorThreePrimeReindexNamespacedPublic.lean/declarations/eligibleresiduesixprime-iff-prime-and-three-lt.md) | 42 | `result-track:7a8b4422755fc24d07fd00181218db125c1a1cd216c8c7bff6d5779406ed1031` |
| 2 | `theorem` | [nth_eligibleResidueSixPrime_eq_nth_prime_add_two](../../../../GeneralTopology/ConductorThreePrimeReindexNamespacedPublic.lean/declarations/nth-eligibleresiduesixprime-eq-nth-prime-add-two.md) | 78 | `result-track:b285ba023aa4ca21053b7c2e02928d75c6f5219c9e45369e26dafa4cb24f7cb5` |
| 3 | `theorem` | [actualEligiblePrimeCutoff_eq_nthPrime](../../../../GeneralTopology/ConductorThreePrimeReindexNamespacedPublic.lean/declarations/actualeligibleprimecutoff-eq-nthprime.md) | 126 | `result-track:379584322e0c74591f28b5fb49bdd13ddf3e263692549b868cb9d2c26561a183` |
| 4 | `theorem` | [actualEligiblePrimeCutoff_isEligible](../../../../GeneralTopology/ConductorThreePrimeReindexNamespacedPublic.lean/declarations/actualeligibleprimecutoff-iseligible.md) | 135 | `result-track:323b869fd31ed80d69daf2dac087721bb1b9e9cbda97eb1a7768b06392ecc5f5` |
| 5 | `theorem` | [count_eligible_below_actualCutoff](../../../../GeneralTopology/ConductorThreePrimeReindexNamespacedPublic.lean/declarations/count-eligible-below-actualcutoff.md) | 141 | `result-track:c39329056e67cff42b844b966c259f7885bf6099d7f2d5af2bcfaa69499d8833` |
| 6 | `theorem` | [count_eligible_through_actualCutoff](../../../../GeneralTopology/ConductorThreePrimeReindexNamespacedPublic.lean/declarations/count-eligible-through-actualcutoff.md) | 147 | `result-track:d9c4b8c17f2891140f96d5364e8b873fa7fd8bdad435c23bf9d7b6ea63077267` |
| 7 | `theorem` | [actualEligiblePrimeCutoff_le_iff_count_succ](../../../../GeneralTopology/ConductorThreePrimeReindexNamespacedPublic.lean/declarations/actualeligibleprimecutoff-le-iff-count-succ.md) | 156 | `result-track:c83465bf20f24deb393000bf85482907026515f43f1c744608c9e1f7ff166a13` |
| 8 | `theorem` | [actualEligibleCount_eq_count](../../../../GeneralTopology/ConductorThreePrimeReindexNamespacedPublic.lean/declarations/actualeligiblecount-eq-count.md) | 178 | `result-track:1d9120d04a6eb1cd9c7898d2cb4c745e589d8fa8d934425d509dc63de2d06e68` |
| 9 | `theorem` | [actualResidueSixCounts_plateau](../../../../GeneralTopology/ConductorThreePrimeReindexNamespacedPublic.lean/declarations/actualresiduesixcounts-plateau.md) | 187 | `result-track:e18c8a2238579cf920b6220537fdb997867b102a3ab3d3670779bf4f6a59c5ea` |
| 10 | `theorem` | [countDifference_plateau](../../../../GeneralTopology/ConductorThreePrimeReindexNamespacedPublic.lean/declarations/countdifference-plateau.md) | 233 | `result-track:d498073e4e8308dd4cf4fd58eda5018d3f7b91165a233e6cfc528adc5c7c584b` |
| 11 | `theorem` | [conductorThreeIntegerValue_eq_one_iff_residueOne](../../../../GeneralTopology/ConductorThreePrimeReindexNamespacedPublic.lean/declarations/conductorthreeintegervalue-eq-one-iff-residueone.md) | 246 | `result-track:2a06c38a9934eeae90144cc191a60db0644049d99d80ac16267242af627c83e3` |
| 12 | `theorem` | [conductorThreeIntegerValue_eq_neg_one_iff_residueFive](../../../../GeneralTopology/ConductorThreePrimeReindexNamespacedPublic.lean/declarations/conductorthreeintegervalue-eq-neg-one-iff-residuefive.md) | 270 | `result-track:3ae9b5b4577028207d898ea19bbc208be6342dc058857bec55164f529bcc2152` |
| 13 | `theorem` | [primeCounting_nth_eq](../../../../GeneralTopology/ConductorThreePrimeReindexNamespacedPublic.lean/declarations/primecounting-nth-eq.md) | 294 | `result-track:584a1f27330702979b442d34b084bfc6663b57c13df2a59299d0522b98452df5` |
| 14 | `theorem` | [tendsto_nthPrime_nat](../../../../GeneralTopology/ConductorThreePrimeReindexNamespacedPublic.lean/declarations/tendsto-nthprime-nat.md) | 299 | `result-track:1e8fdf28323314da8f6c997a36b5e8066f756d693e38d96d2b3b48e87881dc5f` |
| 15 | `theorem` | [tendsto_nthPrime_real](../../../../GeneralTopology/ConductorThreePrimeReindexNamespacedPublic.lean/declarations/tendsto-nthprime-real.md) | 305 | `result-track:421b1d93df2faa37fd2053bee923fb23e49cb9063fb70dd14af297d6ee7edf91` |
| 16 | `theorem` | [eventually_nthPrime_lower_product](../../../../GeneralTopology/ConductorThreePrimeReindexNamespacedPublic.lean/declarations/eventually-nthprime-lower-product.md) | 309 | `result-track:b5f9779b132346ecdd623411693848a5ca35d8ed69ae32ea2017216aa4ee9807` |
| 17 | `theorem` | [eventually_primeCounting_lower](../../../../GeneralTopology/ConductorThreePrimeReindexNamespacedPublic.lean/declarations/eventually-primecounting-lower.md) | 337 | `result-track:0d9d71fdbffc7e63d37a939ebc9698c09399bf6640af32c8adb39cc6b90ccb80` |
| 18 | `def` | [primeUpperCandidate](../../../../GeneralTopology/ConductorThreePrimeReindexNamespacedPublic.lean/declarations/primeuppercandidate.md) | 364 | `declaration-track:2847f400f25228b1495aa9deee2d0cc2a9702f67dd39b2c959518281e8e6a77b` |
| 19 | `theorem` | [tendsto_primeUpperCandidate](../../../../GeneralTopology/ConductorThreePrimeReindexNamespacedPublic.lean/declarations/tendsto-primeuppercandidate.md) | 367 | `result-track:ee04a5c80e3b38668a103df5d7c5a6abebbaf227ee0cc682d9c316ff59ddfab4` |
| 20 | `theorem` | [eventually_nthPrime_upper_candidate](../../../../GeneralTopology/ConductorThreePrimeReindexNamespacedPublic.lean/declarations/eventually-nthprime-upper-candidate.md) | 382 | `result-track:6ac9808602e9f2f5a7d2f10b16ad59cf5881fce67f45d8781ce30dbf84886600` |
| 21 | `theorem` | [eventually_nthPrime_upper_product](../../../../GeneralTopology/ConductorThreePrimeReindexNamespacedPublic.lean/declarations/eventually-nthprime-upper-product.md) | 447 | `result-track:de755cf98eba75d06c7bae1d240e16e5443b6b0acacceb39977cd29c7ac13b0f` |
| 22 | `theorem` | [eventually_nthPrime_shifted_two_sided](../../../../GeneralTopology/ConductorThreePrimeReindexNamespacedPublic.lean/declarations/eventually-nthprime-shifted-two-sided.md) | 476 | `result-track:f2e4f1ff7fb3213e9acc015999ad52e83ba2a5654a685130da118a2970240da3` |
| 23 | `theorem` | [eventually_actualEligiblePrimeCutoff_two_sided](../../../../GeneralTopology/ConductorThreePrimeReindexNamespacedPublic.lean/declarations/eventually-actualeligibleprimecutoff-two-sided.md) | 499 | `result-track:2b8455cef070ad42cc760d4b255b854e70a5da4b34e77641132e1bd68b540736` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d06ff7d090d7d279e48292d03b1049799eaa996900f3ced5e762bfc1afb761d7 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/ConductorThreePrimeReindex/Variantc6c8b2c04bb021e7616d231db7f4531b7641bdce1542f6970e7df8dd8b184c8d.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/ConductorThreePrimeReindex/Variantc6c8b2c04bb021e7616d231db7f4531b7641bdce1542f6970e7df8dd8b184c8d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
