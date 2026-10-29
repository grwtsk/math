# Verification target: Residue Namespaced Residue Channel

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c012ae1598e3c558ca268246a0a0284e1b962ddc",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Residue/Variant255b7ddf3610e0bfee83652fabe0cc4002e2183531cf5b37fb9db6a978062236.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/ResidueNamespacedResidueChannel.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/ResidueNamespacedResidueChannel.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c012ae1598e3c558ca268246a0a0284e1b962ddc`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Residue/Variant255b7ddf3610e0bfee83652fabe0cc4002e2183531cf5b37fb9db6a978062236.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Residue/Variant255b7ddf3610e0bfee83652fabe0cc4002e2183531cf5b37fb9db6a978062236.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.NeuralDiffusion.Prismatic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ResidueChannel](../../../../../ComputerScience/AlgorithmsInComputerScience/ResidueNamespacedResidueChannel.lean/declarations/residuechannel.md) | 28 | `declaration-track:6645f3738758c178bf7370a2c0a0add9d9c19a9f6f3a824092e56d35d0b1169c` |
| 2 | `def` | [residue](../../../../../ComputerScience/AlgorithmsInComputerScience/ResidueNamespacedResidueChannel.lean/declarations/residue.md) | 47 | `declaration-track:c1a353acada46971e385558a70335709063bd110cdc84767d6a12b99cbe48b7b` |
| 3 | `inductive` | [ResidueDecision](../../../../../ComputerScience/AlgorithmsInComputerScience/ResidueNamespacedResidueChannel.lean/declarations/residuedecision.md) | 56 | `declaration-track:3cb9d7bfd0936ee76b88a93b61c504d04555f0f94af1b59d58c104b7bb3ad3a0` |
| 4 | `def` | [activation](../../../../../ComputerScience/AlgorithmsInComputerScience/ResidueNamespacedResidueChannel.lean/declarations/activation.md) | 64 | `declaration-track:cdb7303c80463ea6d1890d0cee796d5a25d0bd04c98104b1723494401d4088a5` |
| 5 | `theorem` | [activation_eq_true_iff](../../../../../ComputerScience/AlgorithmsInComputerScience/ResidueNamespacedResidueChannel.lean/declarations/activation-eq-true-iff.md) | 69 | `result-track:d8c9a8bcdb06b315068efb336563291c5943829789561fd93037b48092112b81` |
| 6 | `theorem` | [activation_eq_false_iff](../../../../../ComputerScience/AlgorithmsInComputerScience/ResidueNamespacedResidueChannel.lean/declarations/activation-eq-false-iff.md) | 76 | `result-track:f55c2b22245740ddad09a1f4e08da3605bd8303298db197c644f41877a0c9413` |
| 7 | `inductive` | [ActivationAttempt](../../../../../ComputerScience/AlgorithmsInComputerScience/ResidueNamespacedResidueChannel.lean/declarations/activationattempt.md) | 85 | `declaration-track:81037b3de2dea88a4352c99c3d3ed49cde35a0819a44c69ab30a9cc51e09b489` |
| 8 | `def` | [attemptActivation](../../../../../ComputerScience/AlgorithmsInComputerScience/ResidueNamespacedResidueChannel.lean/declarations/attemptactivation.md) | 90 | `declaration-track:67820693768aa1c84edf8c4ad3579a1f76b46be08111a9ef3426cdbbd798a3a2` |
| 9 | `theorem` | [attemptActivation_none](../../../../../ComputerScience/AlgorithmsInComputerScience/ResidueNamespacedResidueChannel.lean/declarations/attemptactivation-none.md) | 99 | `result-track:6e9633ad039d89a76f554ccdd0628e919800a0dfa9f8b08c14199bd68ac72092` |
| 10 | `structure` | [BoundaryRequest](../../../../../ComputerScience/AlgorithmsInComputerScience/ResidueNamespacedResidueChannel.lean/declarations/boundaryrequest.md) | 106 | `declaration-track:42aa3c2ea2b09528e435935fd16e3524e82bcab2ade0e40b1ab3eab629c6669d` |
| 11 | `inductive` | [TotalStepResult](../../../../../ComputerScience/AlgorithmsInComputerScience/ResidueNamespacedResidueChannel.lean/declarations/totalstepresult.md) | 121 | `declaration-track:94046d1a38c8dc4deaaa6a36f497a80f4d75d7cabfe3ea78b77118a6affd57bc` |
| 12 | `def` | [totalStep](../../../../../ComputerScience/AlgorithmsInComputerScience/ResidueNamespacedResidueChannel.lean/declarations/totalstep.md) | 138 | `declaration-track:701227528c777cec2803eab2a26cc403a34b00f4212f20e09c9088885a953e9d` |
| 13 | `def` | [attemptTotalStep](../../../../../ComputerScience/AlgorithmsInComputerScience/ResidueNamespacedResidueChannel.lean/declarations/attempttotalstep.md) | 174 | `declaration-track:6c6f96753c7ca645bd4a3d994696d0a0cb1b32eb822c2ba2c19797fda09ef241` |
| 14 | `theorem` | [totalStep_boundary_has_nonzero_residue](../../../../../ComputerScience/AlgorithmsInComputerScience/ResidueNamespacedResidueChannel.lean/declarations/totalstep-boundary-has-nonzero-residue.md) | 207 | `result-track:52a205c2a9bf4a4d68837441ca6433e7f24ef65484278aa460b6377382bc1547` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=058629af6f5e4d286ac64d78a661b15b01a29914e32ded88bc3a0c61dbd36ea5 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Residue/Variant255b7ddf3610e0bfee83652fabe0cc4002e2183531cf5b37fb9db6a978062236.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Residue/Variant255b7ddf3610e0bfee83652fabe0cc4002e2183531cf5b37fb9db6a978062236.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
