# Verification target: GRWTSK.Topology.GeneralTopology.PowerTowerBoundary.Variant89803b2f951a99086eaf6d594dd4a31cea8f1ad1bd096960492d812f2badafac

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0a79c685f4bdce23a69572173aad8428e2187022",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/PowerTowerBoundary/Variant89803b2f951a99086eaf6d594dd4a31cea8f1ad1bd096960492d812f2badafac.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/PowerTowerBoundary/Variant89803b2f951a99086eaf6d594dd4a31cea8f1ad1bd096960492d812f2badafac.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/PowerTowerBoundary/Variant89803b2f951a99086eaf6d594dd4a31cea8f1ad1bd096960492d812f2badafac.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0a79c685f4bdce23a69572173aad8428e2187022`.

Source path: `GRWTSK/Topology/GeneralTopology/PowerTowerBoundary/Variant89803b2f951a99086eaf6d594dd4a31cea8f1ad1bd096960492d812f2badafac.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/PowerTowerBoundary/Variant89803b2f951a99086eaf6d594dd4a31cea8f1ad1bd096960492d812f2badafac.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Complex.Exponential` — import line 1; external provider; requires a separately pinned dependency.
- `Mathematics.MobiusOntology.PerturbedBoundary` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [PowerTowerDynamics](../../../../../mathematics/Topology/GeneralTopology/PowerTowerBoundary/Variant89803b2f951a99086eaf6d594dd4a31cea8f1ad1bd096960492d812f2badafac.lean/declarations/powertowerdynamics--bf9be0cf97d5aded7a8050ae.md) | 17 | `declaration-track:bf9be0cf97d5aded7a8050aec5578320689a1cff59a78dd96c54eed3d7ea62ff` |
| 2 | `def` | [PowerTowerDynamics.derivativeFactor](../../../../../mathematics/Topology/GeneralTopology/PowerTowerBoundary/Variant89803b2f951a99086eaf6d594dd4a31cea8f1ad1bd096960492d812f2badafac.lean/declarations/powertowerdynamics-derivativefactor--86b4ad5cf6456ce8bd6b1268.md) | 42 | `declaration-track:86b4ad5cf6456ce8bd6b1268613358f66f227397f3e1039c5d7600c040bcbb1e` |
| 3 | `def` | [PowerTowerDynamics.derivativeMagnitudeAt](../../../../../mathematics/Topology/GeneralTopology/PowerTowerBoundary/Variant89803b2f951a99086eaf6d594dd4a31cea8f1ad1bd096960492d812f2badafac.lean/declarations/powertowerdynamics-derivativemagnitudeat--def83a0f81f158f9cea8b09d.md) | 46 | `declaration-track:def83a0f81f158f9cea8b09d021b7f9b0167418b884825ecec98963d17e9cc17` |
| 4 | `def` | [PowerTowerDynamics.verificationResidual](../../../../../mathematics/Topology/GeneralTopology/PowerTowerBoundary/Variant89803b2f951a99086eaf6d594dd4a31cea8f1ad1bd096960492d812f2badafac.lean/declarations/powertowerdynamics-verificationresidual--387a8ca81b2cc9dc4e76e01a.md) | 51 | `declaration-track:387a8ca81b2cc9dc4e76e01a5b69574eae03d8361e2b7b778bd7697f828d8223` |
| 5 | `theorem` | [PowerTowerDynamics.exact_verificationResidual_eq_zero](../../../../../mathematics/Topology/GeneralTopology/PowerTowerBoundary/Variant89803b2f951a99086eaf6d594dd4a31cea8f1ad1bd096960492d812f2badafac.lean/declarations/powertowerdynamics-exact-verificationresidual-eq-zero--9f378c279901d9208e9b9c10.md) | 56 | `result-track:9f378c279901d9208e9b9c10f0e2055bc104a65b15133e290e6ce8cf02ebc5e2` |
| 6 | `def` | [PowerTowerDynamics.verificationLeftInverse](../../../../../mathematics/Topology/GeneralTopology/PowerTowerBoundary/Variant89803b2f951a99086eaf6d594dd4a31cea8f1ad1bd096960492d812f2badafac.lean/declarations/powertowerdynamics-verificationleftinverse--f16554bd9d1e78f748a1fb4b.md) | 65 | `declaration-track:f16554bd9d1e78f748a1fb4b1a8654de6db6fcc2085d657e094365a49aaee8b9` |
| 7 | `theorem` | [PowerTowerDynamics.step_injectiveOn](../../../../../mathematics/Topology/GeneralTopology/PowerTowerBoundary/Variant89803b2f951a99086eaf6d594dd4a31cea8f1ad1bd096960492d812f2badafac.lean/declarations/powertowerdynamics-step-injectiveon--0081058aa76736a8dc667c75.md) | 78 | `result-track:0081058aa76736a8dc667c75b41d543bec0229decf586f73fc37ea08e7b40aac` |
| 8 | `inductive` | [PowerTowerBasinGeometry](../../../../../mathematics/Topology/GeneralTopology/PowerTowerBoundary/Variant89803b2f951a99086eaf6d594dd4a31cea8f1ad1bd096960492d812f2badafac.lean/declarations/powertowerbasingeometry--56e77b4f056155dd56c67ec7.md) | 83 | `declaration-track:56e77b4f056155dd56c67ec7460a86273286ad8026255695991de4611a605fd8` |
| 9 | `structure` | [PowerTowerDerivativeToLipschitzBridge](../../../../../mathematics/Topology/GeneralTopology/PowerTowerBoundary/Variant89803b2f951a99086eaf6d594dd4a31cea8f1ad1bd096960492d812f2badafac.lean/declarations/powertowerderivativetolipschitzbridge--a0cd95a0493c56ce482b0870.md) | 94 | `declaration-track:a0cd95a0493c56ce482b087052adf74f742208ccdcaa5203110a2f4f8e7f5c19` |
| 10 | `structure` | [PowerTowerBoundaryCertificate](../../../../../mathematics/Topology/GeneralTopology/PowerTowerBoundary/Variant89803b2f951a99086eaf6d594dd4a31cea8f1ad1bd096960492d812f2badafac.lean/declarations/powertowerboundarycertificate--7b386432d653ff34b94ac363.md) | 113 | `declaration-track:7b386432d653ff34b94ac36392a35920a7115ed7aae169aab3bd1e58c9c2dbdd` |
| 11 | `structure` | [PowerTowerImplementationCertificate](../../../../../mathematics/Topology/GeneralTopology/PowerTowerBoundary/Variant89803b2f951a99086eaf6d594dd4a31cea8f1ad1bd096960492d812f2badafac.lean/declarations/powertowerimplementationcertificate--400774c26c9b11638de30c66.md) | 133 | `declaration-track:400774c26c9b11638de30c6643eb9dd0c0bf288ce61f93d1ffe0a829a01d5c39` |
| 12 | `def` | [PowerTowerImplementationCertificate.toPerturbedBoundary](../../../../../mathematics/Topology/GeneralTopology/PowerTowerBoundary/Variant89803b2f951a99086eaf6d594dd4a31cea8f1ad1bd096960492d812f2badafac.lean/declarations/powertowerimplementationcertificate-toperturbedboundary--8b07c2ffa8cfc9d6e60802c0.md) | 161 | `declaration-track:8b07c2ffa8cfc9d6e60802c0c5b4dc2e0f2e566599413bd4029644b1537c56f6` |
| 13 | `structure` | [PowerTowerResidualLedgerEntry](../../../../../mathematics/Topology/GeneralTopology/PowerTowerBoundary/Variant89803b2f951a99086eaf6d594dd4a31cea8f1ad1bd096960492d812f2badafac.lean/declarations/powertowerresidualledgerentry--4a8135d4cef90890abe9ce55.md) | 175 | `declaration-track:4a8135d4cef90890abe9ce553eba3dadfc99a0fe2852c2bf40cc0870ad96f8bf` |
| 14 | `def` | [PowerTowerImplementationCertificate.residualLedgerEntry](../../../../../mathematics/Topology/GeneralTopology/PowerTowerBoundary/Variant89803b2f951a99086eaf6d594dd4a31cea8f1ad1bd096960492d812f2badafac.lean/declarations/powertowerimplementationcertificate-residualledgerentry--9f0aa9a404c5e1a375443d2f.md) | 179 | `declaration-track:9f0aa9a404c5e1a375443d2fc1fae261d32bf3402ee8f7a8eec89cd487f64fcc` |
| 15 | `def` | [finitePowerTower](../../../../../mathematics/Topology/GeneralTopology/PowerTowerBoundary/Variant89803b2f951a99086eaf6d594dd4a31cea8f1ad1bd096960492d812f2badafac.lean/declarations/finitepowertower--52e889c6f119dbc6f479f4a9.md) | 193 | `declaration-track:52e889c6f119dbc6f479f4a9a672139b107c73c6d3adf6555e9931dbdaccd1a4` |
| 16 | `theorem` | [finitePowerTower_eq_scheduleIteration](../../../../../mathematics/Topology/GeneralTopology/PowerTowerBoundary/Variant89803b2f951a99086eaf6d594dd4a31cea8f1ad1bd096960492d812f2badafac.lean/declarations/finitepowertower-eq-scheduleiteration--1ad0bd481b68285a16785e6a.md) | 201 | `result-track:1ad0bd481b68285a16785e6afe5128df56b2bdea114653a0411a89342c1d0b13` |
| 17 | `theorem` | [powerTower_tendsto_boundary](../../../../../mathematics/Topology/GeneralTopology/PowerTowerBoundary/Variant89803b2f951a99086eaf6d594dd4a31cea8f1ad1bd096960492d812f2badafac.lean/declarations/powertower-tendsto-boundary--68b8c8aaf954691bc7dc9085.md) | 217 | `result-track:68b8c8aaf954691bc7dc90855357ceccbc58bd96fe1355f5ccc1b56dabc81165` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
