# Verification target: Minimize

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "703fd57fa27516013d5a02a478d14757b2663f42",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Minimize/Variant6bfb6e396cdf9b482a804acfde844a4989c174715937063f06fc39e07f0436d5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Minimize.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Minimize.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `703fd57fa27516013d5a02a478d14757b2663f42`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Minimize/Variant6bfb6e396cdf9b482a804acfde844a4989c174715937063f06fc39e07f0436d5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Minimize/Variant6bfb6e396cdf9b482a804acfde844a4989c174715937063f06fc39e07f0436d5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Boolean.Tree.SOP` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [containsLiteral](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Minimize.lean/declarations/containsliteral.md) | 10 | `declaration-track:7ee0e047bf80c76ad163b7c4c34f3db522231a91d3207d96d8059f6c3b782f13` |
| 2 | `def` | [subsumes](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Minimize.lean/declarations/subsumes.md) | 24 | `declaration-track:219fcaabfd8ac0b9c65f3fe9ea1e03ee3ea1bfc25bad3d56fcfa7e0468ece878` |
| 3 | `theorem` | [eval_literal_of_containsLiteral](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Minimize.lean/declarations/eval-literal-of-containsliteral.md) | 30 | `result-track:09468c8d10da472bc71cb6b5197d630ba53b916ea9d131c7dde93f0e7567f386` |
| 4 | `theorem` | [eval_true_of_subsumes](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Minimize.lean/declarations/eval-true-of-subsumes.md) | 59 | `result-track:3fdceff4f082f9dd55250014d3f3c70b4c19e268eec4423779a4d803e354807b` |
| 5 | `theorem` | [eval_right_false_of_subsumes_left_false](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Minimize.lean/declarations/eval-right-false-of-subsumes-left-false.md) | 91 | `result-track:57efef3a8e05cceac216146258965f4335e884af40a5eba0139ba9ad17787be4` |
| 6 | `theorem` | [eval_or_right_of_subsumes](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Minimize.lean/declarations/eval-or-right-of-subsumes.md) | 106 | `result-track:da0b1f763dd2993edae27e9cd70cf1d744305f8bf0efc5dc97612aaf13f07a3f` |
| 7 | `def` | [hasSubsumingTerm](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Minimize.lean/declarations/hassubsumingterm.md) | 125 | `declaration-track:67299f7ebfc1bd0c5a839e1675350d4495c060a11d758389c2f10c0c59b66ff6` |
| 8 | `def` | [removeSubsumedBy](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Minimize.lean/declarations/removesubsumedby.md) | 134 | `declaration-track:024a7c00a3756219200fa089345657fa094581d388adb1e6cede78b72a9bd80d` |
| 9 | `def` | [minimize](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Minimize.lean/declarations/minimize.md) | 149 | `declaration-track:b2fd59257576c11c9210e8d04a029a3979ca49ecaeff5d0576e8ac3140ed3dd6` |
| 10 | `theorem` | [eval_true_of_hasSubsumingTerm](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Minimize.lean/declarations/eval-true-of-hassubsumingterm.md) | 159 | `result-track:184d3ccfbe6c88ba9c8d0f13bdd2441af83752fbe8bcb31f6c9c9563b3ec96c8` |
| 11 | `theorem` | [eval_removeSubsumedBy_or](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Minimize.lean/declarations/eval-removesubsumedby-or.md) | 183 | `result-track:f29e35a874edc4377826a453b3e82d053055ecdf27b6ffaa4a6476ebb052f746` |
| 12 | `theorem` | [eval_minimize](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Minimize.lean/declarations/eval-minimize.md) | 223 | `result-track:3d6c3eae3c3d97d8ce381476baa2ca311159d4aa19e071b947a2ce28381b71e4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=82f3a73cb164fc9515aaad804aa8d4eee36154954bd9c747edf4bef7fcc27147 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Minimize/Variant6bfb6e396cdf9b482a804acfde844a4989c174715937063f06fc39e07f0436d5.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Minimize/Variant6bfb6e396cdf9b482a804acfde844a4989c174715937063f06fc39e07f0436d5.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
