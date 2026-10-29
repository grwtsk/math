# Verification target: Grammar Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8b12a11694df8e5730c3caf27d4d96ec72796c5c",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Grammar/Variant32b22256f8f24493cc9bf15b280eff1c166ce7eb7a9b99c1828250581d41473f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../Combinatorics/GrammarNamespaced.lean/index.md) · [Full source](../../../../Combinatorics/GrammarNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8b12a11694df8e5730c3caf27d4d96ec72796c5c`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Grammar/Variant32b22256f8f24493cc9bf15b280eff1c166ce7eb7a9b99c1828250581d41473f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Grammar/Variant32b22256f8f24493cc9bf15b280eff1c166ce7eb7a9b99c1828250581d41473f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.Boolean.NAND` — import line 6; external provider; requires a separately pinned dependency.
- `Folder.Catalan.Tree` — import line 7; external provider; requires a separately pinned dependency.
- `Folder.Spectral.Expansion` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [BinaryGrammar](../../../../Combinatorics/GrammarNamespaced.lean/declarations/binarygrammar.md) | 29 | `declaration-track:c4a3a6841c9c83df93803e9303cd607ef8ef3d17d2a9aa2ba2af554d3bbee9bc` |
| 2 | `def` | [eval](../../../../Combinatorics/GrammarNamespaced.lean/declarations/eval.md) | 35 | `declaration-track:96706c38425ff9b4ad32184464b01128ec7c0fa69c4e49aea5552988c5b45d39` |
| 3 | `theorem` | [eval_leaf](../../../../Combinatorics/GrammarNamespaced.lean/declarations/eval-leaf.md) | 40 | `result-track:c580821aaa04249263a89b05f15f6d74cc845376539db96b8c8ef418270c393f` |
| 4 | `theorem` | [eval_node](../../../../Combinatorics/GrammarNamespaced.lean/declarations/eval-node.md) | 45 | `result-track:20c654576728ec941e62973451958009eff0f6b0b72ca447b4530e6a9b18e224` |
| 5 | `def` | [nandGrammar](../../../../Combinatorics/GrammarNamespaced.lean/declarations/nandgrammar.md) | 52 | `declaration-track:24fef20ab772312dd61ff7b7ea05011d843ef3c64c6c3af118c774d0580cb11e` |
| 6 | `structure` | [SpectralShellExpansionSignature](../../../../Combinatorics/GrammarNamespaced.lean/declarations/spectralshellexpansionsignature.md) | 56 | `declaration-track:2fe58a2cc9c678a9d483d180dba93a81cb079bb19aa91da8f6cd547cef2d4a1d` |
| 7 | `def` | [SpectralShellExpansionSignature.toGrammar](../../../../Combinatorics/GrammarNamespaced.lean/declarations/spectralshellexpansionsignature-togrammar.md) | 61 | `declaration-track:61e584dce90a5a77e07389fe414c0cf435f581baf8753d21b2197ce152287ec8` |
| 8 | `structure` | [EMLSignature](../../../../Combinatorics/GrammarNamespaced.lean/declarations/emlsignature.md) | 67 | `declaration-track:516f01e80cf77717f8e190a6ca2f363a03ad82161c2cadaee2eba06f13040ada` |
| 9 | `def` | [EMLSignature.toGrammar](../../../../Combinatorics/GrammarNamespaced.lean/declarations/emlsignature-togrammar.md) | 72 | `declaration-track:de39eb9b94b97889da1f84301341a02cc4dc81b49bc93c70db18a66a02ca0d7c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=02f04ba389ad250c5dd2df0ffd4422deddf98adb4634d5fe0c024904dfb2ca1d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Grammar/Variant32b22256f8f24493cc9bf15b280eff1c166ce7eb7a9b99c1828250581d41473f.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Grammar/Variant32b22256f8f24493cc9bf15b280eff1c166ce7eb7a9b99c1828250581d41473f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
