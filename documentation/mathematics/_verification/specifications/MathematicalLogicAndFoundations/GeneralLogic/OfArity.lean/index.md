# Verification target: Of Arity

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c94299823f3a8ecdf3625fa247c71f6f5df194d5",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/OfArity/Variantb016d8caf9c5e720cdc170ed8eb208477ae5cbc9609c6d049e057e34b474f698.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/GeneralLogic/OfArity.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/GeneralLogic/OfArity.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c94299823f3a8ecdf3625fa247c71f6f5df194d5`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/OfArity/Variantb016d8caf9c5e720cdc170ed8eb208477ae5cbc9609c6d049e057e34b474f698.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/OfArity/Variantb016d8caf9c5e720cdc170ed8eb208477ae5cbc9609c6d049e057e34b474f698.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Logic.Function.FromTypes` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [OfArity](../../../../../MathematicalLogicAndFoundations/GeneralLogic/OfArity.lean/declarations/ofarity.md) | 28 | `declaration-track:36ba611f0588c9fe8eb1067121f8c28737f8f12495644216a9b45ed671811246` |
| 2 | `theorem` | [ofArity_zero](../../../../../MathematicalLogicAndFoundations/GeneralLogic/OfArity.lean/declarations/ofarity-zero.md) | 31 | `result-track:7af3d6f09369edc3350207277f88251a35b5c59163f16fe2cd7a089c735b1bf8` |
| 3 | `theorem` | [ofArity_succ](../../../../../MathematicalLogicAndFoundations/GeneralLogic/OfArity.lean/declarations/ofarity-succ.md) | 34 | `result-track:800e86ce06dd2ee87a5edbe12b1419e4168b39337a94a215497aba382b9a2afd` |
| 4 | `def` | [const](../../../../../MathematicalLogicAndFoundations/GeneralLogic/OfArity.lean/declarations/const.md) | 40 | `declaration-track:9bc704891ec411d49bb62e51870f5c95ec737490cc28e01ce7ae46fa99adb159` |
| 5 | `theorem` | [const_zero](../../../../../MathematicalLogicAndFoundations/GeneralLogic/OfArity.lean/declarations/const-zero.md) | 44 | `result-track:4ab9f6eac01ad36321dbc6a0dc9f1d552ba7ff121746b2bb2089184bc9198fed` |
| 6 | `theorem` | [const_succ](../../../../../MathematicalLogicAndFoundations/GeneralLogic/OfArity.lean/declarations/const-succ.md) | 48 | `result-track:b6750fdee1e319c40ce1b6a578a01672f58df2add56c0f7d32cf7b00d40f1bf8` |
| 7 | `theorem` | [const_succ_apply](../../../../../MathematicalLogicAndFoundations/GeneralLogic/OfArity.lean/declarations/const-succ-apply.md) | 52 | `result-track:915be15c77b78fcdae3ac98afd8d31e113a57f89c0a1ff99700abdfde37a1c98` |
| 8 | `instance` | [inhabited](../../../../../MathematicalLogicAndFoundations/GeneralLogic/OfArity.lean/declarations/inhabited.md) | 55 | `declaration-track:66baea4c4e9da3c5d830172199a170a4250bc6b298f718e1ccfb29ec644840f6` |
| 9 | `lemma` | [fromTypes_fin_const](../../../../../MathematicalLogicAndFoundations/GeneralLogic/OfArity.lean/declarations/fromtypes-fin-const.md) | 62 | `result-track:ab761c9550d3d3d73976bf870b2a1478568db94f7304cc44294fd35c6c344e3d` |
| 10 | `def` | [fromTypes_fin_const_equiv](../../../../../MathematicalLogicAndFoundations/GeneralLogic/OfArity.lean/declarations/fromtypes-fin-const-equiv.md) | 67 | `declaration-track:41ee54bdb5a14ab063237a4fae6945b67831270cf14f708d524cd6aca714bcee` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=82c8a722d9738a8ae2564d1409bc55d964703daf88ab41218bbc9e3605e409dc -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/OfArity/Variantb016d8caf9c5e720cdc170ed8eb208477ae5cbc9609c6d049e057e34b474f698.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/OfArity/Variantb016d8caf9c5e720cdc170ed8eb208477ae5cbc9609c6d049e057e34b474f698.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
