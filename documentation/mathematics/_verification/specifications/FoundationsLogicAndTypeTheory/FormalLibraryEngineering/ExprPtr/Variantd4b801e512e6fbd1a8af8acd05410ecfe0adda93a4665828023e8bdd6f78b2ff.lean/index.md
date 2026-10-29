# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ExprPtr.Variantd4b801e512e6fbd1a8af8acd05410ecfe0adda93a4665828023e8bdd6f78b2ff

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d612d2ab59ea64784c310932d3d8dd0c8417a0a3",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExprPtr/Variantd4b801e512e6fbd1a8af8acd05410ecfe0adda93a4665828023e8bdd6f78b2ff.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExprPtr/Variantd4b801e512e6fbd1a8af8acd05410ecfe0adda93a4665828023e8bdd6f78b2ff.lean/index.md) · [Full source](../../../../../../FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExprPtr/Variantd4b801e512e6fbd1a8af8acd05410ecfe0adda93a4665828023e8bdd6f78b2ff.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d612d2ab59ea64784c310932d3d8dd0c8417a0a3`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExprPtr/Variantd4b801e512e6fbd1a8af8acd05410ecfe0adda93a4665828023e8bdd6f78b2ff.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExprPtr/Variantd4b801e512e6fbd1a8af8acd05410ecfe0adda93a4665828023e8bdd6f78b2ff.lean.json)

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
| 1 | `def` | [isSameExpr](../../../../../../FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExprPtr/Variantd4b801e512e6fbd1a8af8acd05410ecfe0adda93a4665828023e8bdd6f78b2ff.lean/declarations/issameexpr--281c2bace7709db1fe1d7acb.md) | 20 | `declaration-track:281c2bace7709db1fe1d7acb0906dc108a0dc9176cb17481f3540815bd04aac0` |
| 2 | `structure` | [ExprPtr](../../../../../../FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExprPtr/Variantd4b801e512e6fbd1a8af8acd05410ecfe0adda93a4665828023e8bdd6f78b2ff.lean/declarations/exprptr--cd905e5d814653b51ea59fad.md) | 30 | `declaration-track:cd905e5d814653b51ea59fad5ce0d3eb833f9e3c0ab309b3bc12c71534896371` |
| 3 | `abbrev` | [hashPtrExpr](../../../../../../FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExprPtr/Variantd4b801e512e6fbd1a8af8acd05410ecfe0adda93a4665828023e8bdd6f78b2ff.lean/declarations/hashptrexpr--35961b8daa5ee257418ab4e3.md) | 33 | `declaration-track:35961b8daa5ee257418ab4e3b8911bfa394d27653d22c8e3c22422f0e27447b0` |
| 4 | `instance` | [(anonymous)](../../../../../../FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExprPtr/Variantd4b801e512e6fbd1a8af8acd05410ecfe0adda93a4665828023e8bdd6f78b2ff.lean/declarations/instance--a4d4971f06beb622ffeba8ba.md) | 36 | `declaration-track:a4d4971f06beb622ffeba8bab39031cbe3be022a378ed6e1f6d35ae879fe665b` |
| 5 | `instance` | [(anonymous)](../../../../../../FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExprPtr/Variantd4b801e512e6fbd1a8af8acd05410ecfe0adda93a4665828023e8bdd6f78b2ff.lean/declarations/instance--89b7d8089e597c010028c7dd.md) | 39 | `declaration-track:89b7d8089e597c010028c7dd3bd6b1a9024f8166e20f222eea49989ec08560c3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9086d4402b03f8e1285e436d23a6c66532622af80c52d83bcc38eaa0b4c255b0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExprPtr/Variantd4b801e512e6fbd1a8af8acd05410ecfe0adda93a4665828023e8bdd6f78b2ff.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExprPtr/Variantd4b801e512e6fbd1a8af8acd05410ecfe0adda93a4665828023e8bdd6f78b2ff.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
