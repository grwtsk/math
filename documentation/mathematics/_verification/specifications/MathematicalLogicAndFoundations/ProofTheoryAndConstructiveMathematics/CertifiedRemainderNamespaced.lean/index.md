# Verification target: Certified Remainder Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4b113658d8ffaa8d374b198a55ebd780b7021c4a",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/ProofTheory/CertifiedRemainder/Variant179f3a39e6605b754f8c7b1ff281723d8f43ba8a1fc2c918ab2c0573891d7705.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/ProofTheoryAndConstructiveMathematics/CertifiedRemainderNamespaced.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/ProofTheoryAndConstructiveMathematics/CertifiedRemainderNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4b113658d8ffaa8d374b198a55ebd780b7021c4a`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/ProofTheory/CertifiedRemainder/Variant179f3a39e6605b754f8c7b1ff281723d8f43ba8a1fc2c918ab2c0573891d7705.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/ProofTheory/CertifiedRemainder/Variant179f3a39e6605b754f8c7b1ff281723d8f43ba8a1fc2c918ab2c0573891d7705.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.Projection.SnapshotAuthority` — import line 6; external provider; requires a separately pinned dependency.
- `Mathematics.ProofStrategy.MinimalCutset` — import line 7; external provider; requires a separately pinned dependency.
- `Mathematics.ProofStrategy.RouteClosure` — import line 8; external provider; requires a separately pinned dependency.
- `Mathematics.ProofStrategy.RouteFrontier` — import line 9; external provider; requires a separately pinned dependency.
- `Mathematics.ProofStrategy.WitnessDischarge` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [CertifiedRemainder](../../../../../MathematicalLogicAndFoundations/ProofTheoryAndConstructiveMathematics/CertifiedRemainderNamespaced.lean/declarations/certifiedremainder.md) | 31 | `declaration-track:9071eaf241ad297e5e514f59f2cfad0a96abb5edc84aca0ff1504822075efe32` |
| 2 | `def` | [targetShape](../../../../../MathematicalLogicAndFoundations/ProofTheoryAndConstructiveMathematics/CertifiedRemainderNamespaced.lean/declarations/targetshape.md) | 72 | `declaration-track:aad777703d431bd5ceda9ebd7fffe03820e3e768c65800e388cec08e978908b7` |
| 3 | `def` | [completedWitness?](../../../../../MathematicalLogicAndFoundations/ProofTheoryAndConstructiveMathematics/CertifiedRemainderNamespaced.lean/declarations/completedwitness.md) | 89 | `declaration-track:e30e0377c884e6c7134fe8283ef9f51dc6d2c18e5651e27bfce205f7d3c761a8` |
| 4 | `def` | [completedProof?](../../../../../MathematicalLogicAndFoundations/ProofTheoryAndConstructiveMathematics/CertifiedRemainderNamespaced.lean/declarations/completedproof.md) | 106 | `declaration-track:29e40ec9d21e23daf012694a65942b7e2ed0052b3a17166e99320bdd0a93edca` |
| 5 | `theorem` | [unresolved_not_discharged](../../../../../MathematicalLogicAndFoundations/ProofTheoryAndConstructiveMathematics/CertifiedRemainderNamespaced.lean/declarations/unresolved-not-discharged.md) | 125 | `result-track:84c3abcb4a8af1d9126c3caf8a794269674589f178fd3f881fa0dbce757ff264` |
| 6 | `theorem` | [target_mem_unresolved_iff_not_discharged](../../../../../MathematicalLogicAndFoundations/ProofTheoryAndConstructiveMathematics/CertifiedRemainderNamespaced.lean/declarations/target-mem-unresolved-iff-not-discharged.md) | 144 | `result-track:4e4c5553ac1cb37c7da14fe177d06a191414653887ed91d450e75586b928f4aa` |
| 7 | `theorem` | [target_accounted](../../../../../MathematicalLogicAndFoundations/ProofTheoryAndConstructiveMathematics/CertifiedRemainderNamespaced.lean/declarations/target-accounted.md) | 167 | `result-track:5cc5eb786f8bf78d33caf96ccb6e1ec589734ec37cfab0156999358f129a68ed` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e9464639b5f60b6ea0770c51a9bc4094fad26b71e121c2e4413f3823e6054114 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/ProofTheory/CertifiedRemainder/Variant179f3a39e6605b754f8c7b1ff281723d8f43ba8a1fc2c918ab2c0573891d7705.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/ProofTheory/CertifiedRemainder/Variant179f3a39e6605b754f8c7b1ff281723d8f43ba8a1fc2c918ab2c0573891d7705.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
