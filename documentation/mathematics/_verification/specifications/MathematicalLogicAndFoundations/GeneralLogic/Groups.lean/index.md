# Verification target: Groups

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5b5726074fc991a067701dca5e6c1f8be9027ebe",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Groups/Variant0efab56226b44877b7be2278ea261beb879488506e99d757091af1fe0d121679.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Groups.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Groups.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5b5726074fc991a067701dca5e6c1f8be9027ebe`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Groups/Variant0efab56226b44877b7be2278ea261beb879488506e99d757091af1fe0d121679.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Groups/Variant0efab56226b44877b7be2278ea261beb879488506e99d757091af1fe0d121679.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Think.SourceTree.Legacy.Compression.Rewrite` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [InvertibleRewrite](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Groups.lean/declarations/invertiblerewrite.md) | 14 | `declaration-track:0b009cd33417fb2adc007df9d551ae4bfd9be9e4466e03d11727e80768ebca17` |
| 2 | `def` | [SameOrbit](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Groups.lean/declarations/sameorbit.md) | 26 | `declaration-track:c580d54b344f9c6ffda68ff3178875af701557b05e61bf8c80fc9778a1a714d4` |
| 3 | `theorem` | [preserves_semantics_and_lookup_symm](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Groups.lean/declarations/preserves-semantics-and-lookup-symm.md) | 30 | `result-track:71ab7cd224f2f01872c5c482f9feddfbeba26d053466a8d818df8db21629a7a5` |
| 4 | `theorem` | [invertibleRewrite_preserves](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Groups.lean/declarations/invertiblerewrite-preserves.md) | 37 | `result-track:74a500d2e0c9c4512fd08f2a082818bb2abbe33209ed2c379bfb3b0ed22da422` |
| 5 | `theorem` | [invertibleRewrite_refl_preserves](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Groups.lean/declarations/invertiblerewrite-refl-preserves.md) | 49 | `result-track:1375cf8daee47a526e588b67eab00c76c553ad873747209fdb078e8b7c13177f` |
| 6 | `theorem` | [sameOrbit_refl](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Groups.lean/declarations/sameorbit-refl.md) | 54 | `result-track:55df4bf9e8a2b9ebd41451d74fba83d57ef71f598f249077230af702f471c177` |
| 7 | `theorem` | [sameOrbit_symm](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Groups.lean/declarations/sameorbit-symm.md) | 59 | `result-track:9f96477e9244d9c2d98059c622b6d8b1f9b7a7e33fa42205ab4b5cf928418907` |
| 8 | `theorem` | [sameOrbit_trans](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Groups.lean/declarations/sameorbit-trans.md) | 66 | `result-track:8b7e40a714459beebd8c9f41d75d24693d0a18d6dbacf26e83cbd47ebb22c32a` |
| 9 | `structure` | [FiniteAction](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Groups.lean/declarations/finiteaction.md) | 82 | `declaration-track:1d3a043cdae62e3ee98cdc58fc435b57f4c82b9d258d8b3cd11b661118393fe2` |
| 10 | `structure` | [LookupPreservingAction](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Groups.lean/declarations/lookuppreservingaction.md) | 96 | `declaration-track:ed3d07a1ade0e5ebb7eda429d65057f547c41de1c2ec1d5ec7e1f10097a38657` |
| 11 | `theorem` | [lookupPreservingAction_preserves_decode](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Groups.lean/declarations/lookuppreservingaction-preserves-decode.md) | 101 | `result-track:18f3df2f4f829cfe3934f3e213842a855b86b7fbb92e7b26cae5a8791db96deb` |
| 12 | `abbrev` | [CompressedAction](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Groups.lean/declarations/compressedaction.md) | 109 | `declaration-track:5f202a0469537301d586eb871f49606561791b63e9cb22d88408cc424c230675` |
| 13 | `inductive` | [RewriteMoveKind](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Groups.lean/declarations/rewritemovekind.md) | 112 | `declaration-track:61f13d00f28e7e4ff4d4126f07082eac25e9eea2f6112de4134d4ff1c2761d73` |
| 14 | `inductive` | [RewriteMoveClass](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Groups.lean/declarations/rewritemoveclass.md) | 127 | `declaration-track:3bcac59845df44deaa11972cd64a40bc2b81518301fda931674869836e971417` |
| 15 | `def` | [classifyMove](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Groups.lean/declarations/classifymove.md) | 133 | `declaration-track:b610f707c1a661702ab214504a29a7a71723863f069d717da5ab910f30e288c3` |
| 16 | `theorem` | [reducing_move_not_group_action](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Groups.lean/declarations/reducing-move-not-group-action.md) | 147 | `result-track:675d29cd64c873e7882083541177268e9fc9080e0b3b1e084c8feb0e27cd6ca7` |
| 17 | `theorem` | [invertible_move_classification](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Groups.lean/declarations/invertible-move-classification.md) | 153 | `result-track:848ef982d9cfbecf64feed2a3bcb32ed2158c0c613d7429d26e27c1eb613fd03` |
| 18 | `theorem` | [macroPlaceholder_without_route_is_residue](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Groups.lean/declarations/macroplaceholder-without-route-is-residue.md) | 161 | `result-track:714219b3c8a13a9605978cc0914b9526a901b9a68b1d5be53efe2e5a67de3eca` |
| 19 | `structure` | [OrbitNormalizationTarget](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Groups.lean/declarations/orbitnormalizationtarget.md) | 170 | `declaration-track:a07b3afa02d8cd9a8dabb87cbacfd09bc21dca9de75b0f15635bc7da6ac728aa` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=649edd02032f9f4cf1440dfae3615695653808dbba07fe4468ee12f08387c247 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Groups/Variant0efab56226b44877b7be2278ea261beb879488506e99d757091af1fe0d121679.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/Groups/Variant0efab56226b44877b7be2278ea261beb879488506e99d757091af1fe0d121679.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
