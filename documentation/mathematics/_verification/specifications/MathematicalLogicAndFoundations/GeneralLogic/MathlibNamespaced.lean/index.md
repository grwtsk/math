# Verification target: Mathlib Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "091dc728a8c35c24e68aa25842f929192b134874",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Mathlib/Variant6eb9299d96b4533f74dc39e788038892048b35e025b4ab1194a12f06a8474623.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/GeneralLogic/MathlibNamespaced.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/GeneralLogic/MathlibNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `091dc728a8c35c24e68aa25842f929192b134874`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Mathlib/Variant6eb9299d96b4533f74dc39e788038892048b35e025b4ab1194a12f06a8474623.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Mathlib/Variant6eb9299d96b4533f74dc39e788038892048b35e025b4ab1194a12f06a8474623.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Monad.Kleisli` — import line 6; external provider; requires a separately pinned dependency.
- `Think.Logic.Mathlib.FiveLayer` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [WisdomMonadBoundary](../../../../../MathematicalLogicAndFoundations/GeneralLogic/MathlibNamespaced.lean/declarations/wisdommonadboundary.md) | 18 | `declaration-track:da8ad02a13c4eee5d7a95b8700524985c3cb55df6a66462e78e263417f92c57c` |
| 2 | `def` | [WisdomMonadBoundary.accepted](../../../../../MathematicalLogicAndFoundations/GeneralLogic/MathlibNamespaced.lean/declarations/wisdommonadboundary-accepted.md) | 28 | `declaration-track:53880776d811301293351b8ee3e39764cf2b5279ea5d6f58dc44a25ac5406919` |
| 3 | `def` | [WisdomMonadBoundary.has_target_monad](../../../../../MathematicalLogicAndFoundations/GeneralLogic/MathlibNamespaced.lean/declarations/wisdommonadboundary-has-target-monad.md) | 34 | `declaration-track:0090fba94f6da931b53687248929e0fc388a4f719179d06103f04bd5da40bb0d` |
| 4 | `abbrev` | [KleisliChoice](../../../../../MathematicalLogicAndFoundations/GeneralLogic/MathlibNamespaced.lean/declarations/kleislichoice.md) | 42 | `declaration-track:7f19943c0c9fc0def3665019c1f877bb7b62e43f71c5ce6a8a8cfaaf59c57241` |
| 5 | `def` | [KleisliChoice.underlying](../../../../../MathematicalLogicAndFoundations/GeneralLogic/MathlibNamespaced.lean/declarations/kleislichoice-underlying.md) | 49 | `declaration-track:030c963e79317ae6e0c7d926c942f9a715ad7d3ef82b562ff3b57c954264cd21` |
| 6 | `def` | [KleisliChoice.compose](../../../../../MathematicalLogicAndFoundations/GeneralLogic/MathlibNamespaced.lean/declarations/kleislichoice-compose.md) | 58 | `declaration-track:79b4e8c4da22f7df5ce616ca7441953b400392dcd762191fd33ce9d16eabff56` |
| 7 | `theorem` | [KleisliChoice.assoc](../../../../../MathematicalLogicAndFoundations/GeneralLogic/MathlibNamespaced.lean/declarations/kleislichoice-assoc.md) | 69 | `result-track:05f727ab2c925c1dd844ce0ba5803c4abf0b855858069969187d675d7e8d8460` |
| 8 | `theorem` | [KleisliChoice.compose_assoc](../../../../../MathematicalLogicAndFoundations/GeneralLogic/MathlibNamespaced.lean/declarations/kleislichoice-compose-assoc.md) | 81 | `result-track:db02e2b23b966a3d7e9bd166922ebfcf0784bf7b30c43ceeb5b61107ce2fac3a` |
| 9 | `abbrev` | [WisdomKleisli](../../../../../MathematicalLogicAndFoundations/GeneralLogic/MathlibNamespaced.lean/declarations/wisdomkleisli.md) | 94 | `declaration-track:1eeff15a49dbef59620592d9527a3cdd25b53763f08f27706bd0e647c63d358b` |
| 10 | `theorem` | [WisdomMonadBoundary.not_claim_bearing_if_accepted](../../../../../MathematicalLogicAndFoundations/GeneralLogic/MathlibNamespaced.lean/declarations/wisdommonadboundary-not-claim-bearing-if-accepted.md) | 100 | `result-track:94059f73cb279563dedb96935e6706c79982791a5161445ad2b3107856e1402f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=dab892c67161723667164443e2e9a549b0346dc26050613ec93bfeb89d142b24 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Mathlib/Variant6eb9299d96b4533f74dc39e788038892048b35e025b4ab1194a12f06a8474623.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Mathlib/Variant6eb9299d96b4533f74dc39e788038892048b35e025b4ab1194a12f06a8474623.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
