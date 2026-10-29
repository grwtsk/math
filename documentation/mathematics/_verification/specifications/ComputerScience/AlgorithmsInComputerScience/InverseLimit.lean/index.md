# Verification target: Inverse Limit

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5f4ebbdb06cfcd5d34cde91ffe95e639a8464a7e",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M4b65726e656c2f496e76657273654c696d69742e6c65616e/Variant57c419b02c9008ae88c869bc0c7691404bbd836302e4ed7a0faac6f27d45feb0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/InverseLimit.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/InverseLimit.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5f4ebbdb06cfcd5d34cde91ffe95e639a8464a7e`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M4b65726e656c2f496e76657273654c696d69742e6c65616e/Variant57c419b02c9008ae88c869bc0c7691404bbd836302e4ed7a0faac6f27d45feb0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M4b65726e656c2f496e76657273654c696d69742e6c65616e/Variant57c419b02c9008ae88c869bc0c7691404bbd836302e4ed7a0faac6f27d45feb0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Think.Bit0.Bit0.Bit0.Bit0.Bit1.Bit1.Bit1.Bit0.Bit0.Bit0.M4b65726e656c2f4272696467652e6c65616e` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [InverseSystem](../../../../../ComputerScience/AlgorithmsInComputerScience/InverseLimit.lean/declarations/inversesystem.md) | 12 | `declaration-track:f215783e1172bf975af3c2b7afa19245814caf3d7b63f4661a7641af4ae23499` |
| 2 | `structure` | [LimitPoint](../../../../../ComputerScience/AlgorithmsInComputerScience/InverseLimit.lean/declarations/limitpoint.md) | 21 | `declaration-track:8d8c114e699f78c4dd35b66b0a55b332b4f404f52853106070502cf4bd37904c` |
| 3 | `structure` | [CompatibleBridge](../../../../../ComputerScience/AlgorithmsInComputerScience/InverseLimit.lean/declarations/compatiblebridge.md) | 25 | `declaration-track:c9a8bdf67e6f8f07514c31d1c266ff23a3c8ccf90eb11c02a296409ed036afc3` |
| 4 | `inductive` | [CompatibleBridgeObligation](../../../../../ComputerScience/AlgorithmsInComputerScience/InverseLimit.lean/declarations/compatiblebridgeobligation.md) | 38 | `declaration-track:1efa226a79bcb1c7531264684c4a5fa67e753aff4ab7a50fcb6c99e8c01d5a7a` |
| 5 | `def` | [compatibleBridgeObligations](../../../../../ComputerScience/AlgorithmsInComputerScience/InverseLimit.lean/declarations/compatiblebridgeobligations.md) | 46 | `declaration-track:2632b4087cf85bdbf31b2e32e5de4497a8cfbec8800f58aafed34288d2a33a36` |
| 6 | `theorem` | [compatibleBridgeObligations_count](../../../../../ComputerScience/AlgorithmsInComputerScience/InverseLimit.lean/declarations/compatiblebridgeobligations-count.md) | 54 | `result-track:a9fd2c14b13f66bfe774de25308cfc2b81f63fe152448e8593391ac9c73cead1` |
| 7 | `def` | [CompatibleBridgeObligation.residue](../../../../../ComputerScience/AlgorithmsInComputerScience/InverseLimit.lean/declarations/compatiblebridgeobligation-residue.md) | 58 | `declaration-track:e0512f100b19eb62b1fb3543b6ad34fb0a4bc0f540ac82394d2765830a5d940d` |
| 8 | `def` | [compatibleBridgeObligationResidues](../../../../../ComputerScience/AlgorithmsInComputerScience/InverseLimit.lean/declarations/compatiblebridgeobligationresidues.md) | 77 | `declaration-track:e47474428a3af93b23fc678f472b96264cbe851c13874f00165df4691733ed55` |
| 9 | `theorem` | [compatibleBridgeObligationResidues_count](../../../../../ComputerScience/AlgorithmsInComputerScience/InverseLimit.lean/declarations/compatiblebridgeobligationresidues-count.md) | 80 | `result-track:cc029eb55a77a753bb47932c7042d1b05d5634fd5f1a720df579e131e0952e7b` |
| 10 | `def` | [limitPhi](../../../../../ComputerScience/AlgorithmsInComputerScience/InverseLimit.lean/declarations/limitphi.md) | 84 | `declaration-track:d30edc406847ca9eaff273dd26fddaa7b384b8703f00189cd762703acb5964ab` |
| 11 | `def` | [limitSigma](../../../../../ComputerScience/AlgorithmsInComputerScience/InverseLimit.lean/declarations/limitsigma.md) | 95 | `declaration-track:5acc0ad07c759ad906f58e356c11010ad44d1bbc2c51d2436f8312ee1cf4862b` |
| 12 | `theorem` | [limitPhi_limitSigma_val](../../../../../ComputerScience/AlgorithmsInComputerScience/InverseLimit.lean/declarations/limitphi-limitsigma-val.md) | 106 | `result-track:0d3b2c23bb8a31762cb035b3305ab390f3f4582ff2fb4698b1b85b3aface15d9` |
| 13 | `theorem` | [limitSigma_limitPhi_val](../../../../../ComputerScience/AlgorithmsInComputerScience/InverseLimit.lean/declarations/limitsigma-limitphi-val.md) | 111 | `result-track:3d062956a4e29183d83e205f0b7bc3f427cf5ea40f71f69e933e06f5323184e6` |
| 14 | `theorem` | [limitPhi_compat](../../../../../ComputerScience/AlgorithmsInComputerScience/InverseLimit.lean/declarations/limitphi-compat.md) | 116 | `result-track:872e678e9e0df1e0c8a4977cf523d9297a01b271191e8ea225691c22f316d02c` |
| 15 | `theorem` | [limitSigma_compat](../../../../../ComputerScience/AlgorithmsInComputerScience/InverseLimit.lean/declarations/limitsigma-compat.md) | 121 | `result-track:2c0ceb97bcb7d081f8668e0673d55dea0311dbc8be69b7383c58c24407bbd882` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1b2f7fda9a0d017287c38315b684408be9150891be048ac1cc7578727f331239 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M4b65726e656c2f496e76657273654c696d69742e6c65616e/Variant57c419b02c9008ae88c869bc0c7691404bbd836302e4ed7a0faac6f27d45feb0.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M4b65726e656c2f496e76657273654c696d69742e6c65616e/Variant57c419b02c9008ae88c869bc0c7691404bbd836302e4ed7a0faac6f27d45feb0.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
