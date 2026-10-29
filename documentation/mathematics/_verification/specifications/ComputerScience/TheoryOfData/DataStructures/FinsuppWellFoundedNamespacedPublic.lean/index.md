# Verification target: Finsupp Well Founded Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d90916df19b65cb1a5006343f1fb865009f44855",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WellFounded/Variant9ad9989778e97b3172347d90680ea271498e8db5331f32c6611597451f0a60cd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppWellFoundedNamespacedPublic.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppWellFoundedNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d90916df19b65cb1a5006343f1fb865009f44855`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WellFounded/Variant9ad9989778e97b3172347d90680ea271498e8db5331f32c6611597451f0a60cd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WellFounded/Variant9ad9989778e97b3172347d90680ea271498e8db5331f32c6611597451f0a60cd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Lex.acc](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppWellFoundedNamespacedPublic.lean/declarations/lex-acc.md) | 46 | `result-track:234d8fc12bb9635bd410a84b8f5e7ef98254d13fa12b6692979b96d8ecdd846d` |
| 2 | `theorem` | [Lex.wellFounded](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppWellFoundedNamespacedPublic.lean/declarations/lex-wellfounded.md) | 54 | `result-track:3630a2b7eda31c37c053d137ca5effaf3745a9132cf53f3253b4e35500b1221a` |
| 3 | `theorem` | [Lex.wellFounded'](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppWellFoundedNamespacedPublic.lean/declarations/lex-wellfounded-source-edition-2.md) | 58 | `result-track:b5fef6ab19511d9af95c13cf0fe0d1ec8faddc1755960d44c1f992cbe13de9ee` |
| 4 | `instance` | [Lex.wellFoundedLT](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppWellFoundedNamespacedPublic.lean/declarations/lex-wellfoundedlt.md) | 63 | `declaration-track:1755ae1ac06b8a8cd7d373c020a3d0d4eb2d3c9cf0135d48b062bd221169c0fe` |
| 5 | `instance` | [Colex.wellFoundedLT](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppWellFoundedNamespacedPublic.lean/declarations/colex-wellfoundedlt.md) | 68 | `declaration-track:1f90001cd3e664762757743ad974574c2e802c7ac2710c5d540e12eac9503e80` |
| 6 | `theorem` | [Lex.wellFounded_of_finite](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppWellFoundedNamespacedPublic.lean/declarations/lex-wellfounded-of-finite.md) | 75 | `result-track:f5fa220057a4ac27248094381a6dfc280949bc45793eea4dff14e08412398c5f` |
| 7 | `theorem` | [Lex.wellFoundedLT_of_finite](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppWellFoundedNamespacedPublic.lean/declarations/lex-wellfoundedlt-of-finite.md) | 79 | `result-track:72e89773aa791d50e62b17da529df9c4194e5d3b7c4b645005bb642694da3ccf` |
| 8 | `theorem` | [Colex.wellFoundedLT_of_finite](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppWellFoundedNamespacedPublic.lean/declarations/colex-wellfoundedlt-of-finite.md) | 83 | `result-track:7825693ec54e8633288848e32c142942cd7e111d78664ec17623a0f1c45e160c` |
| 9 | `theorem` | [wellFoundedLT](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppWellFoundedNamespacedPublic.lean/declarations/wellfoundedlt-source-edition-2.md) | 87 | `result-track:17fe9c5c32564577fe45088b13c1c9b42381fe3cf422c2ad56ea5f3c5c7265dc` |
| 10 | `instance` | [wellFoundedLT'](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppWellFoundedNamespacedPublic.lean/declarations/wellfoundedlt.md) | 91 | `declaration-track:08fe979df2becd4dc872ff9445f8935a7367edf75cfa1ad77bf2ccb562bcc4e8` |
| 11 | `instance` | [wellFoundedLT_of_finite](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppWellFoundedNamespacedPublic.lean/declarations/wellfoundedlt-of-finite.md) | 96 | `declaration-track:20b399811b71a1d875a98835f430c52aa5d76924e9ccfd60bd5f4b24d98125e4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2fc5bbd7dcb8f6734c023c373375d26158f3c3a2d01c95f1a7941ae2b29f2c6d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WellFounded/Variant9ad9989778e97b3172347d90680ea271498e8db5331f32c6611597451f0a60cd.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WellFounded/Variant9ad9989778e97b3172347d90680ea271498e8db5331f32c6611597451f0a60cd.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
