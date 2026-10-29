# Verification target: Derivation Reflective Recovery Observation

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c4c0d31ec5603f78bf8568262ea2dfe990964e4b",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/ProofTheory/Derivation/Variantff825d890c69e156409ca0b18722fe7fc88c6c66600a230421dae34e6960e88f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/GeneralLogic/DerivationReflectiveRecoveryObservation.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/GeneralLogic/DerivationReflectiveRecoveryObservation.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c4c0d31ec5603f78bf8568262ea2dfe990964e4b`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/ProofTheory/Derivation/Variantff825d890c69e156409ca0b18722fe7fc88c6c66600a230421dae34e6960e88f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/ProofTheory/Derivation/Variantff825d890c69e156409ca0b18722fe7fc88c6c66600a230421dae34e6960e88f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FCRS.Transport.Graph` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [TransportDerivationIdentity](../../../../../MathematicalLogicAndFoundations/GeneralLogic/DerivationReflectiveRecoveryObservation.lean/declarations/transportderivationidentity.md) | 15 | `declaration-track:effb7a6dc23500c24f104e5defc98f3d2185f9d730de903d8836525f9fce7feb` |
| 2 | `def` | [ofSupplied](../../../../../MathematicalLogicAndFoundations/GeneralLogic/DerivationReflectiveRecoveryObservation.lean/declarations/ofsupplied.md) | 48 | `declaration-track:249b9b98434ea82bb596a9906b2fb81e66b952d2d0f9b6c9544eaf0b8b3eef9c` |
| 3 | `structure` | [TransportDerivation](../../../../../MathematicalLogicAndFoundations/GeneralLogic/DerivationReflectiveRecoveryObservation.lean/declarations/transportderivation.md) | 115 | `declaration-track:6a3a3aff1fb511e1161a92b4a6721ead6f016eb88564e9f12658ed0656a55db9` |
| 4 | `structure` | [ReflectiveRecoveryProvenance](../../../../../MathematicalLogicAndFoundations/GeneralLogic/DerivationReflectiveRecoveryObservation.lean/declarations/reflectiverecoveryprovenance.md) | 196 | `declaration-track:556c87f2cdf3313b041037d52bc8a993e85628f2c6bc408f678030ce06658bef` |
| 5 | `structure` | [ReflectiveRecoveryObservation](../../../../../MathematicalLogicAndFoundations/GeneralLogic/DerivationReflectiveRecoveryObservation.lean/declarations/reflectiverecoveryobservation.md) | 244 | `declaration-track:498865da8f03a5eb4194ba26e331c5a8e66f9a1f69ef3f9dbc330068473d1011` |
| 6 | `def` | [observedWitness](../../../../../MathematicalLogicAndFoundations/GeneralLogic/DerivationReflectiveRecoveryObservation.lean/declarations/observedwitness.md) | 259 | `declaration-track:99e0f5a62d762086276c00aec65a938c129bd0f2cbd42ab23be361f0a7eb5ed9` |
| 7 | `def` | [ofDerivation](../../../../../MathematicalLogicAndFoundations/GeneralLogic/DerivationReflectiveRecoveryObservation.lean/declarations/ofderivation.md) | 275 | `declaration-track:8e2ac23a884453b6c43b3c6ae3cb725ca7c50ff31352d03bdd225d42994aab64` |
| 8 | `structure` | [TransportDerivationRetains](../../../../../MathematicalLogicAndFoundations/GeneralLogic/DerivationReflectiveRecoveryObservation.lean/declarations/transportderivationretains.md) | 325 | `declaration-track:ab440bb5f6085d33da0d79581a69761a4c2918760af0fe2a7cbae89f2333c990` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e13c03ef0dc56813ffb8e7a633b6fe35f00899baf059f0d547bf5f551891e0a8 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/ProofTheory/Derivation/Variantff825d890c69e156409ca0b18722fe7fc88c6c66600a230421dae34e6960e88f.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/ProofTheory/Derivation/Variantff825d890c69e156409ca0b18722fe7fc88c6c66600a230421dae34e6960e88f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
