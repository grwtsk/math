# Verification target: Lie Normalizer Normalizer Namespaced Source Edition1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f1b67066f583934d52290c38a6e88e9c2970d536",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Normalizer/Variant1ec377a28f5086a996624b513fb4b283ea64c3a473efe7f0d7300e0d99c8bda4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieNormalizerNormalizerNamespacedSourceEdition1.lean/index.md) · [Full source](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieNormalizerNormalizerNamespacedSourceEdition1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f1b67066f583934d52290c38a6e88e9c2970d536`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Normalizer/Variant1ec377a28f5086a996624b513fb4b283ea64c3a473efe7f0d7300e0d99c8bda4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Normalizer/Variant1ec377a28f5086a996624b513fb4b283ea64c3a473efe7f0d7300e0d99c8bda4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Lie.Abelian` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Lie.IdealOperations` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Lie.Quotient` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [normalizer](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieNormalizerNormalizerNamespacedSourceEdition1.lean/declarations/normalizer.md) | 56 | `declaration-track:27a6b1febc0f61e1d7a59ef00b7abc680f2670472428d93fccaa0571b837ece0` |
| 2 | `theorem` | [mem_normalizer](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieNormalizerNormalizerNamespacedSourceEdition1.lean/declarations/mem-normalizer.md) | 64 | `result-track:6990c76d84374029a4132519622b59d99d1aae7ae3c23435352dbb8a562b94ca` |
| 3 | `theorem` | [le_normalizer](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieNormalizerNormalizerNamespacedSourceEdition1.lean/declarations/le-normalizer.md) | 68 | `result-track:40349104ce6dcb0c277d5668f44c0c9a89a425dea33ae5dff1b398b4bd503ac4` |
| 4 | `theorem` | [normalizer_inf](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieNormalizerNormalizerNamespacedSourceEdition1.lean/declarations/normalizer-inf.md) | 73 | `result-track:0af9bb0d547fe28aa22ad86568f9301ec97a8e483446fc9fe78fad828ab66c5d` |
| 5 | `theorem` | [normalizer_mono](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieNormalizerNormalizerNamespacedSourceEdition1.lean/declarations/normalizer-mono.md) | 77 | `result-track:a5d932edb151f318f3177edd05b3001e1ee765d9bba9bad2aac5f6e3d347f911` |
| 6 | `theorem` | [monotone_normalizer](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieNormalizerNormalizerNamespacedSourceEdition1.lean/declarations/monotone-normalizer.md) | 82 | `result-track:26b7bc1af2c288e1e6e09e0da22fbf70797ef62661caa3255e73c2f6d791d9f1` |
| 7 | `theorem` | [comap_normalizer](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieNormalizerNormalizerNamespacedSourceEdition1.lean/declarations/comap-normalizer.md) | 86 | `result-track:15a0294649da2db2fc9db8d6700e2da0ee56c79af49ea7ea0459ae355d36d35d` |
| 8 | `theorem` | [top_lie_le_iff_le_normalizer](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieNormalizerNormalizerNamespacedSourceEdition1.lean/declarations/top-lie-le-iff-le-normalizer.md) | 89 | `result-track:8c90f1bc0e9bb5ba84326b4221cf44cdcf1966b583660c5a1d880c89efcb4d51` |
| 9 | `theorem` | [gc_top_lie_normalizer](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieNormalizerNormalizerNamespacedSourceEdition1.lean/declarations/gc-top-lie-normalizer.md) | 92 | `result-track:e5ecb9b8feea7ed0202b6a673ee703f4d0b083db6f1da663fa81c817f79e2d47` |
| 10 | `theorem` | [normalizer_bot_eq_maxTrivSubmodule](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieNormalizerNormalizerNamespacedSourceEdition1.lean/declarations/normalizer-bot-eq-maxtrivsubmodule.md) | 97 | `result-track:e3f4c8e027a91c010b060481771018c2d88d1fa08f0fb2918daf0283d24a3843` |
| 11 | `def` | [idealizer](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieNormalizerNormalizerNamespacedSourceEdition1.lean/declarations/idealizer.md) | 104 | `declaration-track:076c7b8e351e696f2a5a3ce31dcc20e85f8adc8b42c0667f86e4ad3a2a2038dc` |
| 12 | `lemma` | [mem_idealizer](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieNormalizerNormalizerNamespacedSourceEdition1.lean/declarations/mem-idealizer.md) | 112 | `result-track:564edd6a6909a09cefe61163485c458fa65c667d29f1dc04d8178d1448ec449d` |
| 13 | `lemma` | [Lie Normalizer Normalizer Namespaced Source Edition1](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieNormalizerNormalizerNamespacedSourceEdition1.lean/declarations/idealizer-eq-normalizer.md) | 115 | `result-track:815e5df8447edb448a86aab0b8ebdf25155dd235c28554027d8d30ec2ba5de30` |
| 14 | `def` | [normalizer](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieNormalizerNormalizerNamespacedSourceEdition1.lean/declarations/normalizer-source-edition-2.md) | 127 | `declaration-track:f848e493774140fde870ad788cf33a2b5b61517c5ae957e5ccd424ff41ab8aee` |
| 15 | `theorem` | [mem_normalizer_iff'](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieNormalizerNormalizerNamespacedSourceEdition1.lean/declarations/mem-normalizer-iff-source-edition-2.md) | 133 | `result-track:c5549ddfac1c3a21ecefb6059f9e8c4a5140c5b8f93a9475590da2344d413656` |
| 16 | `theorem` | [mem_normalizer_iff](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieNormalizerNormalizerNamespacedSourceEdition1.lean/declarations/mem-normalizer-iff.md) | 136 | `result-track:c264b68c6a38fed92ada824fb12757a068aceff8e8f913b5b0af2088c90a6881` |
| 17 | `theorem` | [le_normalizer](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieNormalizerNormalizerNamespacedSourceEdition1.lean/declarations/le-normalizer-source-edition-2.md) | 141 | `result-track:9c98ff51b1f02fbbc4738691e381d5b5a266122c889717cc4028b5e16e3d399f` |
| 18 | `theorem` | [coe_normalizer_eq_normalizer](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieNormalizerNormalizerNamespacedSourceEdition1.lean/declarations/coe-normalizer-eq-normalizer.md) | 144 | `result-track:f39e35f27a2570fdb9f015c78cdf98213e527791b3272924d1e9a3b7a0e37f26` |
| 19 | `theorem` | [lie_mem_sup_of_mem_normalizer](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieNormalizerNormalizerNamespacedSourceEdition1.lean/declarations/lie-mem-sup-of-mem-normalizer.md) | 150 | `result-track:8891360eb6559b776a37d86e8201ab6289d1888b3d7e6f8112a69db6bf553b1a` |
| 20 | `theorem` | [ideal_in_normalizer](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieNormalizerNormalizerNamespacedSourceEdition1.lean/declarations/ideal-in-normalizer.md) | 164 | `result-track:b8676c5dafa29addfcbb52b3365e950aeebb1540e374176062aa722e14067dfc` |
| 21 | `theorem` | [exists_nested_lieIdeal_ofLe_normalizer](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieNormalizerNormalizerNamespacedSourceEdition1.lean/declarations/exists-nested-lieideal-ofle-normalizer.md) | 170 | `result-track:ad3b0aa5303f384d29fe7a76566ffa3f6f4a525bb369f43c6ab9b93001f7a404` |
| 22 | `theorem` | [normalizer_eq_self_iff](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieNormalizerNormalizerNamespacedSourceEdition1.lean/declarations/normalizer-eq-self-iff.md) | 177 | `result-track:e72182c14ead01b8dacfa7943aef5a9f4673a529cb1f7e5de1710fda84938c4f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f9e14c3f62587bb57276f4fd206968619ec702495d8c53b6fdae00a890f052d6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Normalizer/Variant1ec377a28f5086a996624b513fb4b283ea64c3a473efe7f0d7300e0d99c8bda4.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Normalizer/Variant1ec377a28f5086a996624b513fb4b283ea64c3a473efe7f0d7300e0d99c8bda4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
