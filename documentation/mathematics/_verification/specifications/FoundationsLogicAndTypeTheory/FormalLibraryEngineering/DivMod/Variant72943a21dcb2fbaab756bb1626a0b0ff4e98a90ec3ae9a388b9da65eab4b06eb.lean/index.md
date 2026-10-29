# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DivMod.Variant72943a21dcb2fbaab756bb1626a0b0ff4e98a90ec3ae9a388b9da65eab4b06eb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8d0b6b00bb7ab87a307413f8d1f1f4df639660c2",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DivMod/Variant72943a21dcb2fbaab756bb1626a0b0ff4e98a90ec3ae9a388b9da65eab4b06eb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DivMod/Variant72943a21dcb2fbaab756bb1626a0b0ff4e98a90ec3ae9a388b9da65eab4b06eb.lean/index.md) · [Full source](../../../../../../FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DivMod/Variant72943a21dcb2fbaab756bb1626a0b0ff4e98a90ec3ae9a388b9da65eab4b06eb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8d0b6b00bb7ab87a307413f8d1f1f4df639660c2`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DivMod/Variant72943a21dcb2fbaab756bb1626a0b0ff4e98a90ec3ae9a388b9da65eab4b06eb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DivMod/Variant72943a21dcb2fbaab756bb1626a0b0ff4e98a90ec3ae9a388b9da65eab4b06eb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic.NormNum.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NormNum.Ineq` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [isInt_ediv_zero](../../../../../../FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DivMod/Variant72943a21dcb2fbaab756bb1626a0b0ff4e98a90ec3ae9a388b9da65eab4b06eb.lean/declarations/isint-ediv-zero--ebb88dfd38216a5092017960.md) | 23 | `result-track:ebb88dfd38216a509201796093cd4d60fdc6ba74ac18d3fea2771402200a21ba` |
| 2 | `lemma` | [isInt_ediv](../../../../../../FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DivMod/Variant72943a21dcb2fbaab756bb1626a0b0ff4e98a90ec3ae9a388b9da65eab4b06eb.lean/declarations/isint-ediv--391d418c4efe2b4bf0e24bd4.md) | 26 | `result-track:391d418c4efe2b4bf0e24bd4ea0000834584100f56c19b69628f7b6f31019416` |
| 3 | `lemma` | [isInt_ediv_neg](../../../../../../FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DivMod/Variant72943a21dcb2fbaab756bb1626a0b0ff4e98a90ec3ae9a388b9da65eab4b06eb.lean/declarations/isint-ediv-neg--192fa7f4bfe1fd92df043689.md) | 35 | `result-track:192fa7f4bfe1fd92df0436896002018a8bf2ca08245822f8e4e863ca597c428b` |
| 4 | `lemma` | [isNat_neg_of_isNegNat](../../../../../../FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DivMod/Variant72943a21dcb2fbaab756bb1626a0b0ff4e98a90ec3ae9a388b9da65eab4b06eb.lean/declarations/isnat-neg-of-isnegnat--96ab560f4eb4439093d7506e.md) | 38 | `result-track:96ab560f4eb4439093d7506e4c8b561ada96165920285474167c4bb4ed2536bc` |
| 5 | `def` | [evalIntDiv](../../../../../../FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DivMod/Variant72943a21dcb2fbaab756bb1626a0b0ff4e98a90ec3ae9a388b9da65eab4b06eb.lean/declarations/evalintdiv--da1590e0fa23274dfe607b7d.md) | 45 | `declaration-track:da1590e0fa23274dfe607b7d9d819cc5684299e31dfa1d1eacd42b8d7d54eb80` |
| 6 | `lemma` | [isInt_emod_zero](../../../../../../FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DivMod/Variant72943a21dcb2fbaab756bb1626a0b0ff4e98a90ec3ae9a388b9da65eab4b06eb.lean/declarations/isint-emod-zero--390154f87122e1c5891ed043.md) | 86 | `result-track:390154f87122e1c5891ed0437ef94bf9425632abbb781b75f6bbe4b40e90d70f` |
| 7 | `lemma` | [isInt_emod](../../../../../../FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DivMod/Variant72943a21dcb2fbaab756bb1626a0b0ff4e98a90ec3ae9a388b9da65eab4b06eb.lean/declarations/isint-emod--115f231f1a29dbc641ed6c71.md) | 89 | `result-track:115f231f1a29dbc641ed6c719c23b6fbe40179528efb5346964708f50b4162c9` |
| 8 | `lemma` | [isInt_emod_neg](../../../../../../FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DivMod/Variant72943a21dcb2fbaab756bb1626a0b0ff4e98a90ec3ae9a388b9da65eab4b06eb.lean/declarations/isint-emod-neg--5a3fe38a494660555e399c6f.md) | 97 | `result-track:5a3fe38a494660555e399c6f1c9f89fe7860a6f16340d823691b39144c82501d` |
| 9 | `def` | [evalIntMod](../../../../../../FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DivMod/Variant72943a21dcb2fbaab756bb1626a0b0ff4e98a90ec3ae9a388b9da65eab4b06eb.lean/declarations/evalintmod--02cf013d60186474218c0172.md) | 104 | `declaration-track:02cf013d60186474218c01721128cb828daa0a43a3972b7137e47052fecfc3ee` |
| 10 | `theorem` | [isInt_dvd_true](../../../../../../FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DivMod/Variant72943a21dcb2fbaab756bb1626a0b0ff4e98a90ec3ae9a388b9da65eab4b06eb.lean/declarations/isint-dvd-true--b0141ae6940bf232b4d13b37.md) | 147 | `result-track:b0141ae6940bf232b4d13b373f70ab553ceb302da4633a1b0a8ed4b0c995ed2f` |
| 11 | `theorem` | [isInt_dvd_false](../../../../../../FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DivMod/Variant72943a21dcb2fbaab756bb1626a0b0ff4e98a90ec3ae9a388b9da65eab4b06eb.lean/declarations/isint-dvd-false--d3b9fc8ea2071175fbecd52e.md) | 151 | `result-track:d3b9fc8ea2071175fbecd52e1d59a9f06364c688bb29b2b8ecd98f722b592de7` |
| 12 | `def` | [evalIntDvd](../../../../../../FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DivMod/Variant72943a21dcb2fbaab756bb1626a0b0ff4e98a90ec3ae9a388b9da65eab4b06eb.lean/declarations/evalintdvd--67e6ff41e9c502570ee47cab.md) | 158 | `declaration-track:67e6ff41e9c502570ee47cabc85085f68f73c73bea29d6324fd98dcb54a05091` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4b505ac6a302c63be30bbfa5aa33c094e668bab8b25c4a871962c0e214d6b3cd -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DivMod/Variant72943a21dcb2fbaab756bb1626a0b0ff4e98a90ec3ae9a388b9da65eab4b06eb.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DivMod/Variant72943a21dcb2fbaab756bb1626a0b0ff4e98a90ec3ae9a388b9da65eab4b06eb.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
