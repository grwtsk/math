# Verification target: Recognition

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "288dc471090a308935ce5125329869d4f1b0769c",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Recognition/Variantbb6869645b3dc35809f6e89fe6e16a329e08f18de466aba2192725647ea2ddf9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/Recognition.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/Recognition.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `288dc471090a308935ce5125329869d4f1b0769c`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Recognition/Variantbb6869645b3dc35809f6e89fe6e16a329e08f18de466aba2192725647ea2ddf9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Recognition/Variantbb6869645b3dc35809f6e89fe6e16a329e08f18de466aba2192725647ea2ddf9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.Authority.Evidence` — import line 1; external provider; requires a separately pinned dependency.
- `Mathematics.Capability.Principal` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [HumanRecognitionReceipt](../../../../../ComputerScience/AlgorithmsInComputerScience/Recognition.lean/declarations/humanrecognitionreceipt.md) | 16 | `declaration-track:5db8e7c2110e92cafd24a7040c9dcedee1ee99a2a4629d40eaabc86c8daac457` |
| 2 | `def` | [HumanRecognitionReceipt.impliesTrust](../../../../../ComputerScience/AlgorithmsInComputerScience/Recognition.lean/declarations/humanrecognitionreceipt-impliestrust.md) | 25 | `declaration-track:7371d6798983ffc2423e3ea6bc8a4222fc01cf77b90702800c87143300ae4f52` |
| 3 | `def` | [HumanRecognitionReceipt.evidenceKind](../../../../../ComputerScience/AlgorithmsInComputerScience/Recognition.lean/declarations/humanrecognitionreceipt-evidencekind.md) | 29 | `declaration-track:fa2ced95b15fbd6aa3ab95dc9dc271d0bd3d0598c4170e25dd2cdeaef9ef5638` |
| 4 | `theorem` | [trust_not_implied_by_recognition](../../../../../ComputerScience/AlgorithmsInComputerScience/Recognition.lean/declarations/trust-not-implied-by-recognition.md) | 34 | `result-track:14d2b28e02b7f7ef44db1f0d5619a434212e56d44a746d23e7d2ea4a9812fd4e` |
| 5 | `theorem` | [recognition_has_no_theorem_authority](../../../../../ComputerScience/AlgorithmsInComputerScience/Recognition.lean/declarations/recognition-has-no-theorem-authority.md) | 39 | `result-track:7fc742190a02f98cbfb6976f5eda421baedbae1391032d662ee3185370197fee` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=152488c5c0eb9fceb819d50a06265c0777ff28e1a42d10f947f67ac8036210ec -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Recognition/Variantbb6869645b3dc35809f6e89fe6e16a329e08f18de466aba2192725647ea2ddf9.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Recognition/Variantbb6869645b3dc35809f6e89fe6e16a329e08f18de466aba2192725647ea2ddf9.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
