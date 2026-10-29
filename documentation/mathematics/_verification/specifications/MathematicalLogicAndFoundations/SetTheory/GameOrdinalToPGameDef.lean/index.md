# Verification target: Game Ordinal To PGame Def

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3a62915e2b3612957793bfe24876b619a4d9bf95",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variant0c58cbafef2e2a22b7be8c8dc4943756d1e541836eec708c05b2ed5b53bd6819.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/SetTheory/GameOrdinalToPGameDef.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/SetTheory/GameOrdinalToPGameDef.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3a62915e2b3612957793bfe24876b619a4d9bf95`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variant0c58cbafef2e2a22b7be8c8dc4943756d1e541836eec708c05b2ed5b53bd6819.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variant0c58cbafef2e2a22b7be8c8dc4943756d1e541836eec708c05b2ed5b53bd6819.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.SetTheory.Game.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.SetTheory.Ordinal.NaturalOps` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [toPGame](../../../../../MathematicalLogicAndFoundations/SetTheory/GameOrdinalToPGameDef.lean/declarations/topgame.md) | 35 | `declaration-track:8bf94bc89f4cd47b904ee687c3557c1346b343e7bfbb0b7ed7a9253eb028adcb` |
| 2 | `theorem` | [toPGame_def](../../../../../MathematicalLogicAndFoundations/SetTheory/GameOrdinalToPGameDef.lean/declarations/topgame-def.md) | 46 | `result-track:2f9e913f3d46c961712a771a403df9bed51b7a0c6dca64c17b9a229f58c4e554` |
| 3 | `theorem` | [toPGame_leftMoves](../../../../../MathematicalLogicAndFoundations/SetTheory/GameOrdinalToPGameDef.lean/declarations/topgame-leftmoves.md) | 53 | `result-track:cf0acdb9108cbf979880490b92505dbc3ff712da76baecbe27e821e3a9db9736` |
| 4 | `theorem` | [toPGame_rightMoves](../../../../../MathematicalLogicAndFoundations/SetTheory/GameOrdinalToPGameDef.lean/declarations/topgame-rightmoves.md) | 58 | `result-track:7cd84dba55e825f879d6dbba5ce9d1e252dfcf2b2fd7f7806b2e1c01bb4b74a4` |
| 5 | `instance` | [isEmpty_zero_toPGame_leftMoves](../../../../../MathematicalLogicAndFoundations/SetTheory/GameOrdinalToPGameDef.lean/declarations/isempty-zero-topgame-leftmoves.md) | 62 | `declaration-track:edd6874538d381a171077c49403ded08d4fb8220fa04939e813e6a54fe969e7b` |
| 6 | `instance` | [isEmpty_toPGame_rightMoves](../../../../../MathematicalLogicAndFoundations/SetTheory/GameOrdinalToPGameDef.lean/declarations/isempty-topgame-rightmoves.md) | 66 | `declaration-track:3ee2b19b3675b305c66602f1460f96ba306ebbf1006ac519be97933493e66f41` |
| 7 | `def` | [toLeftMovesToPGame](../../../../../MathematicalLogicAndFoundations/SetTheory/GameOrdinalToPGameDef.lean/declarations/toleftmovestopgame.md) | 72 | `declaration-track:bc06930e1866ec2d24ca3a9db26ec70bbe2d99b39becb49536fb17b8dcb159cf` |
| 8 | `theorem` | [toLeftMovesToPGame_symm_lt](../../../../../MathematicalLogicAndFoundations/SetTheory/GameOrdinalToPGameDef.lean/declarations/toleftmovestopgame-symm-lt.md) | 77 | `result-track:763ea188d55cffdb10f83df873143730d4adef3357e216152425a0c20f58a028` |
| 9 | `theorem` | [toPGame_moveLeft_hEq](../../../../../MathematicalLogicAndFoundations/SetTheory/GameOrdinalToPGameDef.lean/declarations/topgame-moveleft-heq.md) | 83 | `result-track:bcf411883f61d78ec796013f6d064a6484cebddeaeb9b04dfbea6d886ea73cfc` |
| 10 | `theorem` | [toPGame_moveLeft'](../../../../../MathematicalLogicAndFoundations/SetTheory/GameOrdinalToPGameDef.lean/declarations/topgame-moveleft.md) | 91 | `result-track:ad3323a248213f2a3953feef07797347171581f36ea46bec0056d62205fc7a81` |
| 11 | `theorem` | [toPGame_moveLeft](../../../../../MathematicalLogicAndFoundations/SetTheory/GameOrdinalToPGameDef.lean/declarations/topgame-moveleft-source-edition-2.md) | 96 | `result-track:e0889e367b3e8129288e5c9307e0d24cc348118e9495a70ab8b95cf0930cef33` |
| 12 | `def` | [zeroToPgameRelabelling](../../../../../MathematicalLogicAndFoundations/SetTheory/GameOrdinalToPGameDef.lean/declarations/zerotopgamerelabelling.md) | 101 | `declaration-track:ca31bd9f13a0fe36cbe23bcbaec67cf7606dddbb55919e2cc78ed541386bf62c` |
| 13 | `instance` | [uniqueOneToPgameLeftMoves](../../../../../MathematicalLogicAndFoundations/SetTheory/GameOrdinalToPGameDef.lean/declarations/uniqueonetopgameleftmoves.md) | 105 | `declaration-track:2c70fa7e3c023f1c1b98700cfa6c9d6d319504d475d212c7a85a30cdfd4c299c` |
| 14 | `theorem` | [one_toPGame_leftMoves_default_eq](../../../../../MathematicalLogicAndFoundations/SetTheory/GameOrdinalToPGameDef.lean/declarations/one-topgame-leftmoves-default-eq.md) | 110 | `result-track:2f00bef2d2654070db71829c4c25362973d130199a0a470e77ac049b3fc62f51` |
| 15 | `theorem` | [to_leftMoves_one_toPGame_symm](../../../../../MathematicalLogicAndFoundations/SetTheory/GameOrdinalToPGameDef.lean/declarations/to-leftmoves-one-topgame-symm.md) | 116 | `result-track:04204c5328b351ba19af2d197826f66856371131141915829d0c552ed754f9dd` |
| 16 | `theorem` | [one_toPGame_moveLeft](../../../../../MathematicalLogicAndFoundations/SetTheory/GameOrdinalToPGameDef.lean/declarations/one-topgame-moveleft.md) | 121 | `result-track:5117bd053e807cbf042743ae5313ce77c6c04df05aca19b3f3c9ae9244f6d61c` |
| 17 | `def` | [oneToPGameRelabelling](../../../../../MathematicalLogicAndFoundations/SetTheory/GameOrdinalToPGameDef.lean/declarations/onetopgamerelabelling.md) | 125 | `declaration-track:8e0cc58c338f9409737a265738acb2e3373bf41fd87a2d82442db67a286857a9` |
| 18 | `theorem` | [toPGame_lf](../../../../../MathematicalLogicAndFoundations/SetTheory/GameOrdinalToPGameDef.lean/declarations/topgame-lf.md) | 130 | `result-track:92e370931f5dfbf7436c1581a0512aa3c9dced1570791493fbf8c64e46e9f52b` |
| 19 | `theorem` | [toPGame_le](../../../../../MathematicalLogicAndFoundations/SetTheory/GameOrdinalToPGameDef.lean/declarations/topgame-le.md) | 134 | `result-track:401bb510aa9a5164fb017ae917fd49a63596926e13151071398ac49d84839125` |
| 20 | `theorem` | [toPGame_lt](../../../../../MathematicalLogicAndFoundations/SetTheory/GameOrdinalToPGameDef.lean/declarations/topgame-lt.md) | 140 | `result-track:906510ba55593af9aa78272eab18f3b64e4c818047210403c123d90360e738ea` |
| 21 | `theorem` | [toPGame_nonneg](../../../../../MathematicalLogicAndFoundations/SetTheory/GameOrdinalToPGameDef.lean/declarations/topgame-nonneg.md) | 144 | `result-track:c3069c0ff72b9da59b06feda4be05333bf8d1e3c29e9730f02c82ac0b24d3479` |
| 22 | `theorem` | [toPGame_lf_iff](../../../../../MathematicalLogicAndFoundations/SetTheory/GameOrdinalToPGameDef.lean/declarations/topgame-lf-iff.md) | 149 | `result-track:ef56ea03b6b142731e0fae0d1bd34ca29953d7a765f162a5c0137ca991abc8a9` |
| 23 | `theorem` | [toPGame_le_iff](../../../../../MathematicalLogicAndFoundations/SetTheory/GameOrdinalToPGameDef.lean/declarations/topgame-le-iff.md) | 154 | `result-track:8a0a1a19e2a40a10a3d05e30972f6cc04acb1b961ef4e1570c31f2062d36074c` |
| 24 | `theorem` | [toPGame_lt_iff](../../../../../MathematicalLogicAndFoundations/SetTheory/GameOrdinalToPGameDef.lean/declarations/topgame-lt-iff.md) | 159 | `result-track:5d0cf196b9b86ae0c761b941a1626077fbc2a56d3d0b5f62e3d8f6219b5f6e9f` |
| 25 | `theorem` | [toPGame_equiv_iff](../../../../../MathematicalLogicAndFoundations/SetTheory/GameOrdinalToPGameDef.lean/declarations/topgame-equiv-iff.md) | 164 | `result-track:8a9967fd855da13d7927b3cbd7dba92a6f225a71bfaffc654eaa2bb38aab2e95` |
| 26 | `theorem` | [toPGame_injective](../../../../../MathematicalLogicAndFoundations/SetTheory/GameOrdinalToPGameDef.lean/declarations/topgame-injective.md) | 170 | `result-track:5ad0cadfa9bdff455984083caebbf4382d2558660ae1fb827d54e17eb0f85d54` |
| 27 | `theorem` | [toPGame_eq_iff](../../../../../MathematicalLogicAndFoundations/SetTheory/GameOrdinalToPGameDef.lean/declarations/topgame-eq-iff.md) | 175 | `result-track:1038885a29d77b78ff5167682e4f579a07bb0cdc435355b756b1da95be71089d` |
| 28 | `def` | [toPGameEmbedding](../../../../../MathematicalLogicAndFoundations/SetTheory/GameOrdinalToPGameDef.lean/declarations/topgameembedding.md) | 181 | `declaration-track:5ac39fff2ae810df6bd98bfdbb643c19d492fd24fded58079e9cbe6aaa103c06` |
| 29 | `theorem` | [toPGame_add](../../../../../MathematicalLogicAndFoundations/SetTheory/GameOrdinalToPGameDef.lean/declarations/topgame-add.md) | 188 | `result-track:c12e7190040f1f0943721cc814804eb77254d881d68e8a1397fd3020faa482f5` |
| 30 | `theorem` | [toPGame_add_mk'](../../../../../MathematicalLogicAndFoundations/SetTheory/GameOrdinalToPGameDef.lean/declarations/topgame-add-mk.md) | 211 | `result-track:97e0d4837f4d9bedf2b9aa72353b4bff0d9bb0a48b548e57870d719a6c189215` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=481064315e6d74daf559a5e744f6b686716b0136844c51fa3281689ecb1c7d48 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variant0c58cbafef2e2a22b7be8c8dc4943756d1e541836eec708c05b2ed5b53bd6819.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variant0c58cbafef2e2a22b7be8c8dc4943756d1e541836eec708c05b2ed5b53bd6819.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
