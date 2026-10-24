# Verification target: GRWTSK.Topology.GeneralTopology.StabilityModels.Variant386a635b4e119b18c1fb0e4c8c3755b722c852062ac3281fd7fc0fdba53da537

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6a3874ad4ee8e3b2ab501b398030b231948c6e61",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/StabilityModels/Variant386a635b4e119b18c1fb0e4c8c3755b722c852062ac3281fd7fc0fdba53da537.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/StabilityModels/Variant386a635b4e119b18c1fb0e4c8c3755b722c852062ac3281fd7fc0fdba53da537.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/StabilityModels/Variant386a635b4e119b18c1fb0e4c8c3755b722c852062ac3281fd7fc0fdba53da537.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6a3874ad4ee8e3b2ab501b398030b231948c6e61`.

Source path: `GRWTSK/Topology/GeneralTopology/StabilityModels/Variant386a635b4e119b18c1fb0e4c8c3755b722c852062ac3281fd7fc0fdba53da537.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/StabilityModels/Variant386a635b4e119b18c1fb0e4c8c3755b722c852062ac3281fd7fc0fdba53da537.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.Operational.Contraction` — import line 1; external provider; requires a separately pinned dependency.
- `Mathematics.Operational.Lyapunov` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecificLimits.Normed` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [snapshot](../../../../../mathematics/Topology/GeneralTopology/StabilityModels/Variant386a635b4e119b18c1fb0e4c8c3755b722c852062ac3281fd7fc0fdba53da537.lean/declarations/snapshot--4ca69318159545e550fb3674.md) | 26 | `declaration-track:4ca69318159545e550fb36743be20e783fc7b842bfd89049863dfefe77d98c25` |
| 2 | `def` | [digest](../../../../../mathematics/Topology/GeneralTopology/StabilityModels/Variant386a635b4e119b18c1fb0e4c8c3755b722c852062ac3281fd7fc0fdba53da537.lean/declarations/digest--84c6cd7194642a21995fba69.md) | 38 | `declaration-track:84c6cd7194642a21995fba69adad2b7678625505658de0510165d9f9becb3bdb` |
| 3 | `def` | [doublingOperator](../../../../../mathematics/Topology/GeneralTopology/StabilityModels/Variant386a635b4e119b18c1fb0e4c8c3755b722c852062ac3281fd7fc0fdba53da537.lean/declarations/doublingoperator--892c6481004c349f7455b6ba.md) | 41 | `declaration-track:892c6481004c349f7455b6ba596b3bf7be462bb3990dc4488e2d9d5b8a7927d9` |
| 4 | `def` | [identityOperator](../../../../../mathematics/Topology/GeneralTopology/StabilityModels/Variant386a635b4e119b18c1fb0e4c8c3755b722c852062ac3281fd7fc0fdba53da537.lean/declarations/identityoperator--fd4d170d8f2ee865db1a5b0e.md) | 49 | `declaration-track:fd4d170d8f2ee865db1a5b0e62b251008cf5f7b122088f266370230c350ba349` |
| 5 | `def` | [halfOperator](../../../../../mathematics/Topology/GeneralTopology/StabilityModels/Variant386a635b4e119b18c1fb0e4c8c3755b722c852062ac3281fd7fc0fdba53da537.lean/declarations/halfoperator--b21f66907fcc542524c94778.md) | 57 | `declaration-track:b21f66907fcc542524c94778e5767d7854f457f333db22cdd6c8a6d1c048f737` |
| 6 | `def` | [doublingZero](../../../../../mathematics/Topology/GeneralTopology/StabilityModels/Variant386a635b4e119b18c1fb0e4c8c3755b722c852062ac3281fd7fc0fdba53da537.lean/declarations/doublingzero--38b441b95548001e9783b88a.md) | 65 | `declaration-track:38b441b95548001e9783b88afe1fcf0855cf74462a8111fbd340fef39d6c2e2b` |
| 7 | `def` | [identityPoint](../../../../../mathematics/Topology/GeneralTopology/StabilityModels/Variant386a635b4e119b18c1fb0e4c8c3755b722c852062ac3281fd7fc0fdba53da537.lean/declarations/identitypoint--262447aae1619bd400372d12.md) | 73 | `declaration-track:262447aae1619bd400372d12a4b9a10691bb08dda95d18a5eade0f204c123b8e` |
| 8 | `def` | [halfZero](../../../../../mathematics/Topology/GeneralTopology/StabilityModels/Variant386a635b4e119b18c1fb0e4c8c3755b722c852062ac3281fd7fc0fdba53da537.lean/declarations/halfzero--772dbfc13a4c193c186b9d0a.md) | 81 | `declaration-track:772dbfc13a4c193c186b9d0a6e06f1a2fe31e8069bc683c95b568c52b6cd27b4` |
| 9 | `theorem` | [doubling_step_value](../../../../../mathematics/Topology/GeneralTopology/StabilityModels/Variant386a635b4e119b18c1fb0e4c8c3755b722c852062ac3281fd7fc0fdba53da537.lean/declarations/doubling-step-value--f31d7bb4380ae21f8fac662f.md) | 88 | `result-track:f31d7bb4380ae21f8fac662f3df5afcbc86d32c47e1f2edcf6de95ebb254c5c7` |
| 10 | `theorem` | [identity_step](../../../../../mathematics/Topology/GeneralTopology/StabilityModels/Variant386a635b4e119b18c1fb0e4c8c3755b722c852062ac3281fd7fc0fdba53da537.lean/declarations/identity-step--1bd5409ad2f570405bc40d77.md) | 93 | `result-track:1bd5409ad2f570405bc40d77a0a0212ebb285bf6416460eb5c83485be6301998` |
| 11 | `theorem` | [half_step_value](../../../../../mathematics/Topology/GeneralTopology/StabilityModels/Variant386a635b4e119b18c1fb0e4c8c3755b722c852062ac3281fd7fc0fdba53da537.lean/declarations/half-step-value--529aa77b543f7772221a7d9f.md) | 99 | `result-track:529aa77b543f7772221a7d9f23e611e984475cbf9d1e5eaf0c7898f4b7aadbfb` |
| 12 | `theorem` | [doubling_iterate_value](../../../../../mathematics/Topology/GeneralTopology/StabilityModels/Variant386a635b4e119b18c1fb0e4c8c3755b722c852062ac3281fd7fc0fdba53da537.lean/declarations/doubling-iterate-value--ad56dd517ecadcd00c637012.md) | 105 | `result-track:ad56dd517ecadcd00c637012f676c738bb897122dffac75f9b6a7ff36e76d38d` |
| 13 | `theorem` | [doublingZero_not_lyapunovStable](../../../../../mathematics/Topology/GeneralTopology/StabilityModels/Variant386a635b4e119b18c1fb0e4c8c3755b722c852062ac3281fd7fc0fdba53da537.lean/declarations/doublingzero-not-lyapunovstable--5bd074b7cdc117d21603de97.md) | 119 | `result-track:5bd074b7cdc117d21603de977476028494796c034f3e78b23f44fd20782fdd14` |
| 14 | `theorem` | [identityPoint_lyapunovStable](../../../../../mathematics/Topology/GeneralTopology/StabilityModels/Variant386a635b4e119b18c1fb0e4c8c3755b722c852062ac3281fd7fc0fdba53da537.lean/declarations/identitypoint-lyapunovstable--a90a7370d1ffcffd50178f25.md) | 157 | `result-track:a90a7370d1ffcffd50178f25743661923861dfa0521667a4cc1f29b3f06e569d` |
| 15 | `theorem` | [identityPoint_not_locallyAttractive](../../../../../mathematics/Topology/GeneralTopology/StabilityModels/Variant386a635b4e119b18c1fb0e4c8c3755b722c852062ac3281fd7fc0fdba53da537.lean/declarations/identitypoint-not-locallyattractive--72893b6592ca26dcc8ee5f41.md) | 168 | `result-track:72893b6592ca26dcc8ee5f4137785212000b261a78a98ba4c2f9f2506131fc52` |
| 16 | `theorem` | [half_step_contracting](../../../../../mathematics/Topology/GeneralTopology/StabilityModels/Variant386a635b4e119b18c1fb0e4c8c3755b722c852062ac3281fd7fc0fdba53da537.lean/declarations/half-step-contracting--42b79087b10dc4ff9030d0cf.md) | 203 | `result-track:42b79087b10dc4ff9030d0cf0d890e5b18796f841800533c993e841a80a71158` |
| 17 | `def` | [halfZero_lyapunovCertificate](../../../../../mathematics/Topology/GeneralTopology/StabilityModels/Variant386a635b4e119b18c1fb0e4c8c3755b722c852062ac3281fd7fc0fdba53da537.lean/declarations/halfzero-lyapunovcertificate--d6c063becec8a0deaf3c478e.md) | 219 | `declaration-track:d6c063becec8a0deaf3c478e96feb78914b0ddef01dd3068c4086c599a8299d0` |
| 18 | `theorem` | [halfZero_asymptoticallyStable](../../../../../mathematics/Topology/GeneralTopology/StabilityModels/Variant386a635b4e119b18c1fb0e4c8c3755b722c852062ac3281fd7fc0fdba53da537.lean/declarations/halfzero-asymptoticallystable--3e0e6101d5ff3f05a1911cc8.md) | 260 | `result-track:3e0e6101d5ff3f05a1911cc88e1eb70beb1057306305ade7a891ab4996d09a81` |
| 19 | `def` | [lowResidualObservation](../../../../../mathematics/Topology/GeneralTopology/StabilityModels/Variant386a635b4e119b18c1fb0e4c8c3755b722c852062ac3281fd7fc0fdba53da537.lean/declarations/lowresidualobservation--92b739b2725cc4e0a8f31b31.md) | 269 | `declaration-track:92b739b2725cc4e0a8f31b31bbc1f98d923d3e6b5bec190761efff556c011c30` |
| 20 | `theorem` | [lowResidualObservation_not_fixed](../../../../../mathematics/Topology/GeneralTopology/StabilityModels/Variant386a635b4e119b18c1fb0e4c8c3755b722c852062ac3281fd7fc0fdba53da537.lean/declarations/lowresidualobservation-not-fixed--dbe4c84db3f6e9b7d617c2b4.md) | 283 | `result-track:dbe4c84db3f6e9b7d617c2b411c1d2d5a0e95a82014c3a986ff021db42b25cd1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
