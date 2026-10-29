# Verification target: Mathlib

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3aa5395a92b97ee8420d79fa414bf1d0d9cd522d",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Mathlib/Varianta35fd750943a47bede7ad0791ef574d2da364c2b39634929fbd0b31dfb15de61.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Mathlib.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Mathlib.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3aa5395a92b97ee8420d79fa414bf1d0d9cd522d`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Mathlib/Varianta35fd750943a47bede7ad0791ef574d2da364c2b39634929fbd0b31dfb15de61.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Mathlib/Varianta35fd750943a47bede7ad0791ef574d2da364c2b39634929fbd0b31dfb15de61.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Monad.Kleisli` — import line 1; external provider; requires a separately pinned dependency.
- `Think.Logic.Mathlib.FiveLayer` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [WisdomMonadBoundary](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Mathlib.lean/declarations/wisdommonadboundary.md) | 10 | `declaration-track:251200658bc9369536187d6f4f4d801688c13d741af833dd9839b8278c39568c` |
| 2 | `def` | [WisdomMonadBoundary.accepted](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Mathlib.lean/declarations/wisdommonadboundary-accepted.md) | 20 | `declaration-track:d7f874ad12851c12186da79d27f616776a3eb1bd928839606be0519fb6ed16d1` |
| 3 | `def` | [WisdomMonadBoundary.has_target_monad](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Mathlib.lean/declarations/wisdommonadboundary-has-target-monad.md) | 26 | `declaration-track:f90c5238ecacd7a78a0708ec31088e31f20e3a8a84215f9536a82e84d5254522` |
| 4 | `abbrev` | [KleisliChoice](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Mathlib.lean/declarations/kleislichoice.md) | 34 | `declaration-track:4aff8f4ae489b208a15413d49a8fd876937b66aaa567dd4958f75a371d273be9` |
| 5 | `def` | [KleisliChoice.underlying](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Mathlib.lean/declarations/kleislichoice-underlying.md) | 41 | `declaration-track:f799187711345c9b50795805171687e8f7e9d9da96b7caa77537fb70ffdfdd10` |
| 6 | `def` | [KleisliChoice.compose](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Mathlib.lean/declarations/kleislichoice-compose.md) | 50 | `declaration-track:6c86d10075810aa81f786c5afcd88a672c726dc8bf7f1087d8d71f332d77b82b` |
| 7 | `theorem` | [KleisliChoice.assoc](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Mathlib.lean/declarations/kleislichoice-assoc.md) | 61 | `result-track:2780e379b658522feccf7e3ab7088b9584f1ecce37b520b42f5279f154b429e7` |
| 8 | `theorem` | [KleisliChoice.compose_assoc](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Mathlib.lean/declarations/kleislichoice-compose-assoc.md) | 73 | `result-track:f992a06d41480bf89541c00d9615eb48f42f03ff405a35c889997868dd197113` |
| 9 | `abbrev` | [WisdomKleisli](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Mathlib.lean/declarations/wisdomkleisli.md) | 86 | `declaration-track:70e1f2b884355857762911619cd9a9a88abca8fb13a72894d19f7ddd3e23600d` |
| 10 | `theorem` | [WisdomMonadBoundary.not_claim_bearing_if_accepted](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Mathlib.lean/declarations/wisdommonadboundary-not-claim-bearing-if-accepted.md) | 92 | `result-track:ef1d140eb7911f99922e4e754ee5d3b9dc018d931e516aeaf59111d93a851316` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=684b3c5c0eae3f775ffb455ea0831e1f677d643a2727af85935348c8a481f8bf -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Mathlib/Varianta35fd750943a47bede7ad0791ef574d2da364c2b39634929fbd0b31dfb15de61.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Mathlib/Varianta35fd750943a47bede7ad0791ef574d2da364c2b39634929fbd0b31dfb15de61.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
