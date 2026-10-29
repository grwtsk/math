# Verification target: Causal Quantizer Namespaced Edition2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ad8ac3c6aba5a0694aa36b66739ce0590406c43a",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CausalQuantizer/Variant5ac38d8825f9959f32cabccb8580e0118ac3963269b6f4023133f68a0e6eae15.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/CausalQuantizerNamespacedEdition2.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/CausalQuantizerNamespacedEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ad8ac3c6aba5a0694aa36b66739ce0590406c43a`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CausalQuantizer/Variant5ac38d8825f9959f32cabccb8580e0118ac3963269b6f4023133f68a0e6eae15.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CausalQuantizer/Variant5ac38d8825f9959f32cabccb8580e0118ac3963269b6f4023133f68a0e6eae15.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `DAF.Causal.QuantizerTower` — import line 6; external provider; requires a separately pinned dependency.
- `BitMatrix.Quantization.Core` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [quantizerIdentitySystem](../../../../../ComputerScience/AlgorithmsInComputerScience/CausalQuantizerNamespacedEdition2.lean/declarations/quantizeridentitysystem.md) | 29 | `declaration-track:90cfef3484f9578d4b49bd165226a3e06a8c6abe0991e987c091d1632f0b4d3c` |
| 2 | `theorem` | [quantizerIdentitySystem_run](../../../../../ComputerScience/AlgorithmsInComputerScience/CausalQuantizerNamespacedEdition2.lean/declarations/quantizeridentitysystem-run.md) | 38 | `result-track:02b8c51fdd211af3a817602589e6f5dc0119a830b79edf60b70cf779bac77241` |
| 3 | `theorem` | [causalEquivalent_identity_iff_indistinguishable](../../../../../ComputerScience/AlgorithmsInComputerScience/CausalQuantizerNamespacedEdition2.lean/declarations/causalequivalent-identity-iff-indistinguishable.md) | 51 | `result-track:8a389c94f2b461b46254f2aa7a2f3ed7cb3def59a530741472144f22f6a7b53f` |
| 4 | `def` | [identityCausalStateEquivEffectiveState](../../../../../ComputerScience/AlgorithmsInComputerScience/CausalQuantizerNamespacedEdition2.lean/declarations/identitycausalstateequiveffectivestate.md) | 67 | `declaration-track:0bb8c96301a58100a4e634fe22773796eaf33ab3932343b2994abc780460ffca` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=414c4d3adc564a5484f6ef3c2e93eff35da9d0083b6123b3b7852647ac598160 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CausalQuantizer/Variant5ac38d8825f9959f32cabccb8580e0118ac3963269b6f4023133f68a0e6eae15.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CausalQuantizer/Variant5ac38d8825f9959f32cabccb8580e0118ac3963269b6f4023133f68a0e6eae15.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
