# Verification target: Groups Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "821e9409ba1c41b831b3c6cad3c78fccc38a3402",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Groups/Variantca0599deb5a151ce700d049d0835d35d3cef41225c06d2168536750f2cc68a5e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/GeneralLogic/GroupsNamespaced.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/GeneralLogic/GroupsNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `821e9409ba1c41b831b3c6cad3c78fccc38a3402`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Groups/Variantca0599deb5a151ce700d049d0835d35d3cef41225c06d2168536750f2cc68a5e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Groups/Variantca0599deb5a151ce700d049d0835d35d3cef41225c06d2168536750f2cc68a5e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Think.SourceTree.Legacy.Compression.Rewrite` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [InvertibleRewrite](../../../../../MathematicalLogicAndFoundations/GeneralLogic/GroupsNamespaced.lean/declarations/invertiblerewrite.md) | 22 | `declaration-track:8a7f627789ce77578d5785c9413145c24a3654f6d1b823535d8f6e88ced256e1` |
| 2 | `def` | [SameOrbit](../../../../../MathematicalLogicAndFoundations/GeneralLogic/GroupsNamespaced.lean/declarations/sameorbit.md) | 34 | `declaration-track:36db2bb0ab1ce2b97a23317b11c33931814a898435f902d79510d58c31e60c1b` |
| 3 | `theorem` | [preserves_semantics_and_lookup_symm](../../../../../MathematicalLogicAndFoundations/GeneralLogic/GroupsNamespaced.lean/declarations/preserves-semantics-and-lookup-symm.md) | 38 | `result-track:20991dcfdb2af2f7635d77d972c2cf8e92aca01db03766039a0d0353d46029ca` |
| 4 | `theorem` | [invertibleRewrite_preserves](../../../../../MathematicalLogicAndFoundations/GeneralLogic/GroupsNamespaced.lean/declarations/invertiblerewrite-preserves.md) | 45 | `result-track:c47cb14d4013b22d133b5fe2da99d38b8940164db36d0d660e6d30a211347d56` |
| 5 | `theorem` | [invertibleRewrite_refl_preserves](../../../../../MathematicalLogicAndFoundations/GeneralLogic/GroupsNamespaced.lean/declarations/invertiblerewrite-refl-preserves.md) | 57 | `result-track:b314e9fcfff6e4d87d6ddb19a43619989d05d52f36426040ac1c33891b6c5f7e` |
| 6 | `theorem` | [sameOrbit_refl](../../../../../MathematicalLogicAndFoundations/GeneralLogic/GroupsNamespaced.lean/declarations/sameorbit-refl.md) | 62 | `result-track:cc8e234be7c7550c2f9354be948cf59bd1dd698a48af2740a1e24c270349f0f4` |
| 7 | `theorem` | [sameOrbit_symm](../../../../../MathematicalLogicAndFoundations/GeneralLogic/GroupsNamespaced.lean/declarations/sameorbit-symm.md) | 67 | `result-track:bbbc4f2987a3434a751d62020461bedb6a272480b3ea818fb83854b3a8707418` |
| 8 | `theorem` | [sameOrbit_trans](../../../../../MathematicalLogicAndFoundations/GeneralLogic/GroupsNamespaced.lean/declarations/sameorbit-trans.md) | 74 | `result-track:0bb6cc764266936fb0dbd1bae2838592d7ad93fc73911f16eda805a77fadfa8e` |
| 9 | `structure` | [FiniteAction](../../../../../MathematicalLogicAndFoundations/GeneralLogic/GroupsNamespaced.lean/declarations/finiteaction.md) | 90 | `declaration-track:113d57f490488194ac9d4fd64e95aebc332acc053ceea92dfb3006ceed152d18` |
| 10 | `structure` | [LookupPreservingAction](../../../../../MathematicalLogicAndFoundations/GeneralLogic/GroupsNamespaced.lean/declarations/lookuppreservingaction.md) | 104 | `declaration-track:115a09d721dcde91a64d600680cea732413d772efc639cc0300af433ffe97a06` |
| 11 | `theorem` | [lookupPreservingAction_preserves_decode](../../../../../MathematicalLogicAndFoundations/GeneralLogic/GroupsNamespaced.lean/declarations/lookuppreservingaction-preserves-decode.md) | 109 | `result-track:497c5811e67fe32ed8869dd3b68d47edc9411eb2068cd307b79e886929201dc1` |
| 12 | `abbrev` | [CompressedAction](../../../../../MathematicalLogicAndFoundations/GeneralLogic/GroupsNamespaced.lean/declarations/compressedaction.md) | 117 | `declaration-track:58050b73f60f1128d0cffaf832688c4185500b69f41be5c5d8ece3626fce7664` |
| 13 | `inductive` | [RewriteMoveKind](../../../../../MathematicalLogicAndFoundations/GeneralLogic/GroupsNamespaced.lean/declarations/rewritemovekind.md) | 120 | `declaration-track:12facc6d5e4f91ca0d00ce78819ed5ac54672b39c80057e69c48befa46e1209a` |
| 14 | `inductive` | [RewriteMoveClass](../../../../../MathematicalLogicAndFoundations/GeneralLogic/GroupsNamespaced.lean/declarations/rewritemoveclass.md) | 135 | `declaration-track:36f309e533703d7837543ab735be897333651ae99f1480c3a163e2c2dcd87028` |
| 15 | `def` | [classifyMove](../../../../../MathematicalLogicAndFoundations/GeneralLogic/GroupsNamespaced.lean/declarations/classifymove.md) | 141 | `declaration-track:59154ce916c56be487facb60efea0f375df0a545702c6fc82b0d12575da97909` |
| 16 | `theorem` | [reducing_move_not_group_action](../../../../../MathematicalLogicAndFoundations/GeneralLogic/GroupsNamespaced.lean/declarations/reducing-move-not-group-action.md) | 155 | `result-track:bb4465c667598b800497ac656a88d0d41e53da017ae8eead8f7cd646b5e98f98` |
| 17 | `theorem` | [invertible_move_classification](../../../../../MathematicalLogicAndFoundations/GeneralLogic/GroupsNamespaced.lean/declarations/invertible-move-classification.md) | 161 | `result-track:17a373549489fa6f7c0a409d6695615413f9bf5ff63c327b9a22c77b547317ec` |
| 18 | `theorem` | [macroPlaceholder_without_route_is_residue](../../../../../MathematicalLogicAndFoundations/GeneralLogic/GroupsNamespaced.lean/declarations/macroplaceholder-without-route-is-residue.md) | 169 | `result-track:dd5e72955d7f756de62be0d268c9d2c3e2f55221bd0038c77760990cc153dbe2` |
| 19 | `structure` | [OrbitNormalizationTarget](../../../../../MathematicalLogicAndFoundations/GeneralLogic/GroupsNamespaced.lean/declarations/orbitnormalizationtarget.md) | 178 | `declaration-track:46e6b1db6118d08c4b4013a25956c16760536ec814c7543c90cb212832fcf117` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7a78cb01108e7ec105e0e4647a88139dcf900595225da6cb02dd7fce7c3c9e22 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Groups/Variantca0599deb5a151ce700d049d0835d35d3cef41225c06d2168536750f2cc68a5e.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/Groups/Variantca0599deb5a151ce700d049d0835d35d3cef41225c06d2168536750f2cc68a5e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
