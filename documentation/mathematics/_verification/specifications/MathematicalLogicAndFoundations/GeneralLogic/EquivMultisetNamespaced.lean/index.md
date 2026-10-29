# Verification target: Equiv Multiset Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "00ef6f5522fde72efbe8160975c64b17ab6bfc0c",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Multiset/Variant655fdcd1b2486c7574c46f620cfa16af51e3ecacb4eacebadef54ebce9a6f3f0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivMultisetNamespaced.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivMultisetNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `00ef6f5522fde72efbe8160975c64b17ab6bfc0c`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Multiset/Variant655fdcd1b2486c7574c46f620cfa16af51e3ecacb4eacebadef54ebce9a6f3f0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Multiset/Variant655fdcd1b2486c7574c46f620cfa16af51e3ecacb4eacebadef54ebce9a6f3f0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.List.Chain` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Multiset.Sort` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Equiv.List` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [enle](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivMultisetNamespaced.lean/declarations/enle.md) | 30 | `declaration-track:63954cff7c8b727e3b96c80bdb408f678f0db3ed069057aef8823d5ac958440b` |
| 2 | `theorem` | [enle.isLinearOrder](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivMultisetNamespaced.lean/declarations/enle-islinearorder.md) | 33 | `result-track:6e20d609241d9a3869e04d491503aa4537ee7a20176f60c04c830940c52038a3` |
| 3 | `def` | [decidable_enle](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivMultisetNamespaced.lean/declarations/decidable-enle.md) | 36 | `declaration-track:3cb86b676a3bcf9bf77e850364a9a8113721a643e4ebff4a940bbfd96fc9ea23` |
| 4 | `def` | [encodeMultiset](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivMultisetNamespaced.lean/declarations/encodemultiset.md) | 43 | `declaration-track:9461b4ad41fca3f0de80ac1c1f702421ed4c58210298bc63acb0efd95ece84b8` |
| 5 | `def` | [decodeMultiset](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivMultisetNamespaced.lean/declarations/decodemultiset.md) | 47 | `declaration-track:c3e41fbbead61fa4a2f0a3ad553c74b0715dfc1a742569ae1fc90d92ee1d6b17` |
| 6 | `instance` | [Equiv Multiset Namespaced](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivMultisetNamespaced.lean/declarations/root-grwtsk-combinatoricsanddiscretemathematics-theoreticalalgorithms-en.md) | 51 | `declaration-track:1e96c669cd6db8ec130c6c06579e82a3c4e4d51f80efa470aed349f93b7c2b09` |
| 7 | `def` | [lower](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivMultisetNamespaced.lean/declarations/lower.md) | 63 | `declaration-track:61708b784f0b2f5fc70cc38667e046ad69955dabd80418be1a46ff30348c7324` |
| 8 | `def` | [raise](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivMultisetNamespaced.lean/declarations/raise.md) | 69 | `declaration-track:2dc869bee39687bd5fa99910efb5469c60f9d39ce4de4b7d2e56c589ede8249f` |
| 9 | `theorem` | [lower_raise](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivMultisetNamespaced.lean/declarations/lower-raise.md) | 73 | `result-track:a5a976efb87a9584830ce9efa13afc04ecf799cbc07b19a1f9c1af0763828b83` |
| 10 | `theorem` | [raise_lower](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivMultisetNamespaced.lean/declarations/raise-lower.md) | 77 | `result-track:8eaba655eb20ede4bfe872f735fa0e19899e5d3ad8d737b23f54423fc84aa6c6` |
| 11 | `theorem` | [raise_chain](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivMultisetNamespaced.lean/declarations/raise-chain.md) | 83 | `result-track:f5ae8895e938ca8d5ed03c3d353aeffc90f81499661481c2507001a04b2f6b9e` |
| 12 | `theorem` | [raise_sorted](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivMultisetNamespaced.lean/declarations/raise-sorted.md) | 88 | `result-track:74f3a8ef327ef3c67230c5dff1b34163f3f6836b06cf2cb56a141a333bd24a0f` |
| 13 | `instance` | [multiset](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivMultisetNamespaced.lean/declarations/multiset.md) | 94 | `declaration-track:abc710a645b93d00d3b8490fc8c0f9cc3eb883c6f722ea87591620347e11a8d8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f437e3a6f594b646d75162aea510af9409195ed34a3d50927ac20c1e57604b26 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Multiset/Variant655fdcd1b2486c7574c46f620cfa16af51e3ecacb4eacebadef54ebce9a6f3f0.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Multiset/Variant655fdcd1b2486c7574c46f620cfa16af51e3ecacb4eacebadef54ebce9a6f3f0.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
