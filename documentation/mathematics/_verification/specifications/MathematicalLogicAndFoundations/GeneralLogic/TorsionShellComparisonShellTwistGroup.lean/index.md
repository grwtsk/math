# Verification target: Torsion Shell Comparison Shell Twist Group

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "42e38b915adbc62711d80ec81a727693c8ddbf7c",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/TorsionShellComparison/Variantec1401243bc73c4f40020dca41680124b1d144c24dfe050f7e95bcc65ecdf7d8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/GeneralLogic/TorsionShellComparisonShellTwistGroup.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/GeneralLogic/TorsionShellComparisonShellTwistGroup.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `42e38b915adbc62711d80ec81a727693c8ddbf7c`.

Source path: `GRWTSK/Algebra/TorsionShellComparison/Variantec1401243bc73c4f40020dca41680124b1d144c24dfe050f7e95bcc65ecdf7d8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/TorsionShellComparison/Variantec1401243bc73c4f40020dca41680124b1d144c24dfe050f7e95bcc65ecdf7d8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.Arithmetic.Torsion` — import line 1; external provider; requires a separately pinned dependency.
- `Folder.Expansion.ShellTorsion` — import line 2; external provider; requires a separately pinned dependency.
- `Folder.Monodromy.EllipticTorsionAction` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [ShellTwistGroup](../../../../../MathematicalLogicAndFoundations/GeneralLogic/TorsionShellComparisonShellTwistGroup.lean/declarations/shelltwistgroup.md) | 22 | `declaration-track:f2f46a0e7a608b1090f91a79c8b66c43fed186ae32e1a1bfe6fa5096a8575954` |
| 2 | `structure` | [EllipticToShellTorsion](../../../../../MathematicalLogicAndFoundations/GeneralLogic/TorsionShellComparisonShellTwistGroup.lean/declarations/elliptictoshelltorsion.md) | 26 | `declaration-track:02d8531f163e7948d931a86ee92523a93d5cb3007474d67e12be437d63b3331f` |
| 3 | `def` | [UsesTorsionClass](../../../../../MathematicalLogicAndFoundations/GeneralLogic/TorsionShellComparisonShellTwistGroup.lean/declarations/usestorsionclass.md) | 40 | `declaration-track:fe9033174359c15bbe679974bfe6fa881812c904f30727437f3a532f206deee1` |
| 4 | `theorem` | [shell_twist_of_zero_is_identity](../../../../../MathematicalLogicAndFoundations/GeneralLogic/TorsionShellComparisonShellTwistGroup.lean/declarations/shell-twist-of-zero-is-identity.md) | 49 | `result-track:147959f736f3c5fea7d7a435ba327f00b911b3abe18c12ebe2e5c2633041b253` |
| 5 | `theorem` | [shell_twist_respects_add](../../../../../MathematicalLogicAndFoundations/GeneralLogic/TorsionShellComparisonShellTwistGroup.lean/declarations/shell-twist-respects-add.md) | 59 | `result-track:8e15a74a68f810a6299ceb1f195cca517832b76ab49e73f3751fccf3b45a4a42` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d6299fe3adafdb7d0642f45f570c314e77a7e1db8178b331ce035170b48f502d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/TorsionShellComparison/Variantec1401243bc73c4f40020dca41680124b1d144c24dfe050f7e95bcc65ecdf7d8.lean","GRWTSK/_verification/specifications/Algebra/TorsionShellComparison/Variantec1401243bc73c4f40020dca41680124b1d144c24dfe050f7e95bcc65ecdf7d8.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
