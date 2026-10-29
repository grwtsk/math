# Verification target: Simple Graph Prod Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c4dc2312460a47c6018df89c03c619e9a5a1b054",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Prod/Variantd848a28d90bfb3a797ad15e6f12f2b99213ae4ad16ad6159ed2564fd2bf5739c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../Combinatorics/GraphTheory/SimpleGraphProdNamespaced.lean/index.md) · [Full source](../../../../../Combinatorics/GraphTheory/SimpleGraphProdNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c4dc2312460a47c6018df89c03c619e9a5a1b054`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Prod/Variantd848a28d90bfb3a797ad15e6f12f2b99213ae4ad16ad6159ed2564fd2bf5739c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Prod/Variantd848a28d90bfb3a797ad15e6f12f2b99213ae4ad16ad6159ed2564fd2bf5739c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Combinatorics.SimpleGraph.Path` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Combinatorics.SimpleGraph.Metric` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [boxProd](../../../../../Combinatorics/GraphTheory/SimpleGraphProdNamespaced.lean/declarations/boxprod.md) | 46 | `declaration-track:d69fd4ee05baa83c7a63bb1ce2d8dbfdb85fd6506a1d4333fc7765e24827b922` |
| 2 | `theorem` | [boxProd_adj](../../../../../Combinatorics/GraphTheory/SimpleGraphProdNamespaced.lean/declarations/boxprod-adj.md) | 56 | `result-track:d904a82c553bd2faa52aac83fa19d2f0c528e3fe1be1635015ecd4b38e8dcd85` |
| 3 | `theorem` | [boxProd_adj_left](../../../../../Combinatorics/GraphTheory/SimpleGraphProdNamespaced.lean/declarations/boxprod-adj-left.md) | 60 | `result-track:b0870a1f3491593057a69aef6e4a1606870330200adf62a5f1a3ca9a1b426604` |
| 4 | `theorem` | [boxProd_adj_right](../../../../../Combinatorics/GraphTheory/SimpleGraphProdNamespaced.lean/declarations/boxprod-adj-right.md) | 64 | `result-track:66acf8b5400731ea46568513a5161cbc78893bdf1ab9dbd783c3c7c7502caed0` |
| 5 | `theorem` | [neighborSet_boxProd](../../../../../Combinatorics/GraphTheory/SimpleGraphProdNamespaced.lean/declarations/neighborset-boxprod.md) | 67 | `result-track:4ba85238ac52b04a2d5fd07d1b4b2033155c539ed9d67b58126ab80a457aee8d` |
| 6 | `def` | [boxProdComm](../../../../../Combinatorics/GraphTheory/SimpleGraphProdNamespaced.lean/declarations/boxprodcomm.md) | 79 | `declaration-track:e219c4a086a4c5260fe17395e1217b1eee11b48e42d3ab80d13d73cfeaf5df48` |
| 7 | `def` | [boxProdAssoc](../../../../../Combinatorics/GraphTheory/SimpleGraphProdNamespaced.lean/declarations/boxprodassoc.md) | 83 | `declaration-track:4a54371c61933d697c0ccf5e064a498bf82a042ae065243b4fb4d82a910af5cf` |
| 8 | `def` | [boxProdLeft](../../../../../Combinatorics/GraphTheory/SimpleGraphProdNamespaced.lean/declarations/boxprodleft.md) | 90 | `declaration-track:1bf9295ce81c2be1efa5fed5c10af0cda95b8e350a77ca83b8ecd5850699b60e` |
| 9 | `def` | [boxProdRight](../../../../../Combinatorics/GraphTheory/SimpleGraphProdNamespaced.lean/declarations/boxprodright.md) | 97 | `declaration-track:3420abc83f16e68ee0087d4d1b3946a3545b82987935f52a3983dd809579d8e5` |
| 10 | `def` | [boxProdLeft](../../../../../Combinatorics/GraphTheory/SimpleGraphProdNamespaced.lean/declarations/boxprodleft-source-edition-2.md) | 107 | `declaration-track:227913a91738a6e9ccce59d8a3c36cd1a5778e2aca0344b13aecbda3d4370d24` |
| 11 | `def` | [boxProdRight](../../../../../Combinatorics/GraphTheory/SimpleGraphProdNamespaced.lean/declarations/boxprodright-source-edition-2.md) | 113 | `declaration-track:a471f8d2d6dba8f5a2ebefceae1b5f44544d29c4d1e73bf89630f5d83b98cb4c` |
| 12 | `def` | [ofBoxProdLeft](../../../../../Combinatorics/GraphTheory/SimpleGraphProdNamespaced.lean/declarations/ofboxprodleft.md) | 119 | `declaration-track:ba16f39611c3d8907d069a2fbebb99bbfb59f514e6d16b4e7722db7cc4a6317b` |
| 13 | `def` | [ofBoxProdRight](../../../../../Combinatorics/GraphTheory/SimpleGraphProdNamespaced.lean/declarations/ofboxprodright.md) | 128 | `declaration-track:ab2b6871822266d0fe718c6b24e100bd5a6c349ced6565aca0fdc895d160126d` |
| 14 | `theorem` | [ofBoxProdLeft_boxProdLeft](../../../../../Combinatorics/GraphTheory/SimpleGraphProdNamespaced.lean/declarations/ofboxprodleft-boxprodleft.md) | 137 | `result-track:1a7ef8ce6beb94d53af00375e059c5b661af921cd2b8f6bd7bb1b03e72671d16` |
| 15 | `theorem` | [ofBoxProdRight_boxProdRight](../../../../../Combinatorics/GraphTheory/SimpleGraphProdNamespaced.lean/declarations/ofboxprodright-boxprodright.md) | 146 | `result-track:2ec20979d483b5bf5ef0fba982dea3cf6c30b008145a75e8b393b6d324569be9` |
| 16 | `lemma` | [length_boxProd](../../../../../Combinatorics/GraphTheory/SimpleGraphProdNamespaced.lean/declarations/length-boxprod.md) | 158 | `result-track:18d98ea8e214873c0e537d28ff62f13edcc14fa85cc7c6d15a67806404cee38c` |
| 17 | `theorem` | [Preconnected.boxProd](../../../../../Combinatorics/GraphTheory/SimpleGraphProdNamespaced.lean/declarations/preconnected-boxprod.md) | 178 | `result-track:ace10fa35684d3f19992ec98b80aca82574c49e1afea1f95cfb309f19825b151` |
| 18 | `theorem` | [Preconnected.ofBoxProdLeft](../../../../../Combinatorics/GraphTheory/SimpleGraphProdNamespaced.lean/declarations/preconnected-ofboxprodleft.md) | 185 | `result-track:d92f148dd808f6ca9d76bc99ccc1c1a6c3105fcca8d22b03b426c1ca0e6a62e6` |
| 19 | `theorem` | [Preconnected.ofBoxProdRight](../../../../../Combinatorics/GraphTheory/SimpleGraphProdNamespaced.lean/declarations/preconnected-ofboxprodright.md) | 192 | `result-track:a6c195cf9dd6f83d6b05b88f4e5d32cf03b14c93f79558641c80097c8b9d7fb8` |
| 20 | `theorem` | [Connected.boxProd](../../../../../Combinatorics/GraphTheory/SimpleGraphProdNamespaced.lean/declarations/connected-boxprod-source-edition-2.md) | 199 | `result-track:e675bb5caf8ab044070af0dcd95b936dca7b1fff6fd2485389ede733c1378bd7` |
| 21 | `theorem` | [Connected.ofBoxProdLeft](../../../../../Combinatorics/GraphTheory/SimpleGraphProdNamespaced.lean/declarations/connected-ofboxprodleft.md) | 204 | `result-track:4c13a67c2ac6c43bca5875192f0d6aa3c06f07f5d2bca01396084f28f34a2deb` |
| 22 | `theorem` | [Connected.ofBoxProdRight](../../../../../Combinatorics/GraphTheory/SimpleGraphProdNamespaced.lean/declarations/connected-ofboxprodright.md) | 209 | `result-track:c1664df75be87abb3f7e5f2b4f2e6dbddd0da622608c08cd5b6c210c754ea47b` |
| 23 | `theorem` | [connected_boxProd](../../../../../Combinatorics/GraphTheory/SimpleGraphProdNamespaced.lean/declarations/connected-boxprod.md) | 215 | `result-track:15c719afc1bd49a49186cd92299ce809ad3b8b9364368e71921d2d71870736f4` |
| 24 | `instance` | [boxProdFintypeNeighborSet](../../../../../Combinatorics/GraphTheory/SimpleGraphProdNamespaced.lean/declarations/boxprodfintypeneighborset.md) | 220 | `declaration-track:3f0ef159de7f637dd8cb71bc6fb4fd7fbf4a067694dc6d02b0dc3b73e1fd4bde` |
| 25 | `theorem` | [neighborFinset_boxProd](../../../../../Combinatorics/GraphTheory/SimpleGraphProdNamespaced.lean/declarations/neighborfinset-boxprod.md) | 231 | `result-track:0a4f9d160f844a7fcb44a575bff33d8b170a75255fe7818d5e231070aee68346` |
| 26 | `theorem` | [degree_boxProd](../../../../../Combinatorics/GraphTheory/SimpleGraphProdNamespaced.lean/declarations/degree-boxprod.md) | 243 | `result-track:dbfe249f2366bd07102cfc93e3a4f9d997f2baef6878fc00c258e7d4734e7fd8` |
| 27 | `lemma` | [reachable_boxProd](../../../../../Combinatorics/GraphTheory/SimpleGraphProdNamespaced.lean/declarations/reachable-boxprod.md) | 251 | `result-track:b1caa7f4c788a68359ebd0c423344cba8b7d623d5e86c85edd057a3ce91246d6` |
| 28 | `lemma` | [edist_boxProd](../../../../../Combinatorics/GraphTheory/SimpleGraphProdNamespaced.lean/declarations/edist-boxprod.md) | 263 | `result-track:a36fa04b0c12ed608c090994fcbc0ceb164751385f49e9b3ac31d66facf22b32` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0f7cfd33a5dfa530b62936a983952d047a92fd7fcbf6056ef54607ca1ab1f922 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Prod/Variantd848a28d90bfb3a797ad15e6f12f2b99213ae4ad16ad6159ed2564fd2bf5739c.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/Prod/Variantd848a28d90bfb3a797ad15e6f12f2b99213ae4ad16ad6159ed2564fd2bf5739c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
