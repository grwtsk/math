# Verification target: Stability Models

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

[Module and every result](../../../../GeneralTopology/StabilityModels.lean/index.md) · [Full source](../../../../GeneralTopology/StabilityModels.lean/source.md)

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

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [snapshot](../../../../GeneralTopology/StabilityModels.lean/declarations/snapshot.md) | 26 | `declaration-track:4ca69318159545e550fb36743be20e783fc7b842bfd89049863dfefe77d98c25` |
| 2 | `def` | [digest](../../../../GeneralTopology/StabilityModels.lean/declarations/digest.md) | 38 | `declaration-track:84c6cd7194642a21995fba69adad2b7678625505658de0510165d9f9becb3bdb` |
| 3 | `def` | [doublingOperator](../../../../GeneralTopology/StabilityModels.lean/declarations/doublingoperator.md) | 41 | `declaration-track:892c6481004c349f7455b6ba596b3bf7be462bb3990dc4488e2d9d5b8a7927d9` |
| 4 | `def` | [identityOperator](../../../../GeneralTopology/StabilityModels.lean/declarations/identityoperator.md) | 49 | `declaration-track:fd4d170d8f2ee865db1a5b0e62b251008cf5f7b122088f266370230c350ba349` |
| 5 | `def` | [halfOperator](../../../../GeneralTopology/StabilityModels.lean/declarations/halfoperator.md) | 57 | `declaration-track:b21f66907fcc542524c94778e5767d7854f457f333db22cdd6c8a6d1c048f737` |
| 6 | `def` | [doublingZero](../../../../GeneralTopology/StabilityModels.lean/declarations/doublingzero.md) | 65 | `declaration-track:38b441b95548001e9783b88afe1fcf0855cf74462a8111fbd340fef39d6c2e2b` |
| 7 | `def` | [identityPoint](../../../../GeneralTopology/StabilityModels.lean/declarations/identitypoint.md) | 73 | `declaration-track:262447aae1619bd400372d12a4b9a10691bb08dda95d18a5eade0f204c123b8e` |
| 8 | `def` | [halfZero](../../../../GeneralTopology/StabilityModels.lean/declarations/halfzero.md) | 81 | `declaration-track:772dbfc13a4c193c186b9d0a6e06f1a2fe31e8069bc683c95b568c52b6cd27b4` |
| 9 | `theorem` | [doubling_step_value](../../../../GeneralTopology/StabilityModels.lean/declarations/doubling-step-value.md) | 88 | `result-track:f31d7bb4380ae21f8fac662f3df5afcbc86d32c47e1f2edcf6de95ebb254c5c7` |
| 10 | `theorem` | [identity_step](../../../../GeneralTopology/StabilityModels.lean/declarations/identity-step.md) | 93 | `result-track:1bd5409ad2f570405bc40d77a0a0212ebb285bf6416460eb5c83485be6301998` |
| 11 | `theorem` | [half_step_value](../../../../GeneralTopology/StabilityModels.lean/declarations/half-step-value.md) | 99 | `result-track:529aa77b543f7772221a7d9f23e611e984475cbf9d1e5eaf0c7898f4b7aadbfb` |
| 12 | `theorem` | [doubling_iterate_value](../../../../GeneralTopology/StabilityModels.lean/declarations/doubling-iterate-value.md) | 105 | `result-track:ad56dd517ecadcd00c637012f676c738bb897122dffac75f9b6a7ff36e76d38d` |
| 13 | `theorem` | [doublingZero_not_lyapunovStable](../../../../GeneralTopology/StabilityModels.lean/declarations/doublingzero-not-lyapunovstable.md) | 119 | `result-track:5bd074b7cdc117d21603de977476028494796c034f3e78b23f44fd20782fdd14` |
| 14 | `theorem` | [identityPoint_lyapunovStable](../../../../GeneralTopology/StabilityModels.lean/declarations/identitypoint-lyapunovstable.md) | 157 | `result-track:a90a7370d1ffcffd50178f25743661923861dfa0521667a4cc1f29b3f06e569d` |
| 15 | `theorem` | [identityPoint_not_locallyAttractive](../../../../GeneralTopology/StabilityModels.lean/declarations/identitypoint-not-locallyattractive.md) | 168 | `result-track:72893b6592ca26dcc8ee5f4137785212000b261a78a98ba4c2f9f2506131fc52` |
| 16 | `theorem` | [half_step_contracting](../../../../GeneralTopology/StabilityModels.lean/declarations/half-step-contracting.md) | 203 | `result-track:42b79087b10dc4ff9030d0cf0d890e5b18796f841800533c993e841a80a71158` |
| 17 | `def` | [halfZero_lyapunovCertificate](../../../../GeneralTopology/StabilityModels.lean/declarations/halfzero-lyapunovcertificate.md) | 219 | `declaration-track:d6c063becec8a0deaf3c478e96feb78914b0ddef01dd3068c4086c599a8299d0` |
| 18 | `theorem` | [halfZero_asymptoticallyStable](../../../../GeneralTopology/StabilityModels.lean/declarations/halfzero-asymptoticallystable.md) | 260 | `result-track:3e0e6101d5ff3f05a1911cc88e1eb70beb1057306305ade7a891ab4996d09a81` |
| 19 | `def` | [lowResidualObservation](../../../../GeneralTopology/StabilityModels.lean/declarations/lowresidualobservation.md) | 269 | `declaration-track:92b739b2725cc4e0a8f31b31bbc1f98d923d3e6b5bec190761efff556c011c30` |
| 20 | `theorem` | [lowResidualObservation_not_fixed](../../../../GeneralTopology/StabilityModels.lean/declarations/lowresidualobservation-not-fixed.md) | 283 | `result-track:dbe4c84db3f6e9b7d617c2b411c1d2d5a0e95a82014c3a986ff021db42b25cd1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=bef1c829ca8b8adfcd93e44b4210fc0e3bc6808c3569043e0a6ce05a602ad1d9 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/StabilityModels/Variant386a635b4e119b18c1fb0e4c8c3755b722c852062ac3281fd7fc0fdba53da537.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/StabilityModels/Variant386a635b4e119b18c1fb0e4c8c3755b722c852062ac3281fd7fc0fdba53da537.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
