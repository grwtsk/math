# Verification target: String Order Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b0fc2081be614301f4b51af8a86ca50935f80f3d",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/StringOrder/Variant2e22bb7e34d5f0134bc40e91eafc9746b9dee4a478424b281fd6a81a917d4f25.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/StringOrderNamespacedPublic.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/StringOrderNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b0fc2081be614301f4b51af8a86ca50935f80f3d`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/StringOrder/Variant2e22bb7e34d5f0134bc40e91eafc9746b9dee4a478424b281fd6a81a917d4f25.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/StringOrder/Variant2e22bb7e34d5f0134bc40e91eafc9746b9dee4a478424b281fd6a81a917d4f25.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.List.Lex` — import line 16; external provider; requires a separately pinned dependency.
- `Init.Data.Char.Lemmas` — import line 17; external provider; requires a separately pinned dependency.
- `Init.Data.Char.Order` — import line 18; external provider; requires a separately pinned dependency.
- `Init.Data.Order.Factories` — import line 19; external provider; requires a separately pinned dependency.
- `Init.Data.Order.Lemmas` — import line 20; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [not_le](../../../../../ComputerScience/AlgorithmsInComputerScience/StringOrderNamespacedPublic.lean/declarations/not-le.md) | 31 | `result-track:dd9be8c192a1570dd4502bf138543b6d58e2728e0b2e51c1bd4971b7bc155be3` |
| 2 | `theorem` | [not_lt](../../../../../ComputerScience/AlgorithmsInComputerScience/StringOrderNamespacedPublic.lean/declarations/not-lt.md) | 32 | `result-track:c3fb0468169267804e12e3c96689b43b7a4535508ec860d4fe579b51bc83f6d8` |
| 3 | `theorem` | [le_refl](../../../../../ComputerScience/AlgorithmsInComputerScience/StringOrderNamespacedPublic.lean/declarations/le-refl.md) | 33 | `result-track:c71ad9a3314ba79a12b7b873bc006aab8cd7b20e4c44c29cdc5c2fa20739a007` |
| 4 | `theorem` | [lt_irrefl](../../../../../ComputerScience/AlgorithmsInComputerScience/StringOrderNamespacedPublic.lean/declarations/lt-irrefl.md) | 34 | `result-track:d8045caee533ec80f61e03803f7ac44a0af2803f073101cb6cc4869f57242eaf` |
| 5 | `theorem` | [le_trans](../../../../../ComputerScience/AlgorithmsInComputerScience/StringOrderNamespacedPublic.lean/declarations/le-trans.md) | 38 | `result-track:006906757b321a8f618fa47969e55a3b20c88ed50fe532c6607d0507c94f05c8` |
| 6 | `theorem` | [lt_trans](../../../../../ComputerScience/AlgorithmsInComputerScience/StringOrderNamespacedPublic.lean/declarations/lt-trans.md) | 39 | `result-track:05b5c9c67450716f621f4ef9b1a77c311a9bb1b5be5c31bfa205d400fdf07ad1` |
| 7 | `theorem` | [le_total](../../../../../ComputerScience/AlgorithmsInComputerScience/StringOrderNamespacedPublic.lean/declarations/le-total.md) | 40 | `result-track:11ad565c92b9b6c51ecdf3b2e23f75617e3439cdf3cb0c196bcf01d8401717e1` |
| 8 | `theorem` | [le_antisymm](../../../../../ComputerScience/AlgorithmsInComputerScience/StringOrderNamespacedPublic.lean/declarations/le-antisymm.md) | 41 | `result-track:0fc1750e8d6e5037c63e75ffa9f344455c1145dcfdba57066e6d16901e42a78c` |
| 9 | `theorem` | [lt_asymm](../../../../../ComputerScience/AlgorithmsInComputerScience/StringOrderNamespacedPublic.lean/declarations/lt-asymm.md) | 42 | `result-track:a1b0246bcffd0dc3aff08261a6795581aee1c6006df81b3c27d99d5c99013a36` |
| 10 | `theorem` | [ne_of_lt](../../../../../ComputerScience/AlgorithmsInComputerScience/StringOrderNamespacedPublic.lean/declarations/ne-of-lt.md) | 43 | `result-track:c04d7591ba3256dcff01ae8d6228ac6c227ded1547001e38f705935df8b36536` |
| 11 | `instance` | [instIsLinearOrder](../../../../../ComputerScience/AlgorithmsInComputerScience/StringOrderNamespacedPublic.lean/declarations/instislinearorder.md) | 47 | `declaration-track:a71ce6ec94775be1107baa5386181bc5edd70d4da6a09a92e2018a2a3bd5e93a` |
| 12 | `instance` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/StringOrderNamespacedPublic.lean/declarations/instance.md) | 53 | `declaration-track:490f6f639de72402f9d0063768bccb3e21810b80c3019bbbe056554eb62280fd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=bbe181e0f4221529f080b7cadbd98b2b6b0e691008b5d7cfea5fb6480dbbb6b8 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/StringOrder/Variant2e22bb7e34d5f0134bc40e91eafc9746b9dee4a478424b281fd6a81a917d4f25.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/StringOrder/Variant2e22bb7e34d5f0134bc40e91eafc9746b9dee4a478424b281fd6a81a917d4f25.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
