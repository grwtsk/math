# Verification target: Finsupp Antidiagonal Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b844166783355359797eaefb2d8b2e66f47a1dc5",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Antidiagonal/Variant60f54c15a2a9e1edfa767b372eaa7767c94642fb2bef4907da784dbc7782fcbe.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppAntidiagonalNamespacedPublic.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppAntidiagonalNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b844166783355359797eaefb2d8b2e66f47a1dc5`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Antidiagonal/Variant60f54c15a2a9e1edfa767b372eaa7767c94642fb2bef4907da784dbc7782fcbe.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Antidiagonal/Variant60f54c15a2a9e1edfa767b372eaa7767c94642fb2bef4907da784dbc7782fcbe.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finsupp.Order` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [antidiagonal'](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppAntidiagonalNamespacedPublic.lean/declarations/antidiagonal.md) | 42 | `declaration-track:644beaae959d6762d6b388a2501bca4db258adb00734e89e11e60e621c932fda` |
| 2 | `instance` | [instHasAntidiagonal](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppAntidiagonalNamespacedPublic.lean/declarations/insthasantidiagonal.md) | 48 | `declaration-track:3c7f6e7fbe19d8716d0260daa3c509edbdeb2f31bfa5b396ec21d2914d845ce5` |
| 3 | `theorem` | [antidiagonal_zero](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppAntidiagonalNamespacedPublic.lean/declarations/antidiagonal-zero.md) | 56 | `result-track:cfdbea0417f295a3637426f70c10078d40c11752d8db471a5486c708e2238aa3` |
| 4 | `theorem` | [prod_antidiagonal_swap](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppAntidiagonalNamespacedPublic.lean/declarations/prod-antidiagonal-swap.md) | 59 | `result-track:f52d2f6ccf38d485e71e48e74740d63bfefa1ce927a1dae5d66c1ca12ca9d985` |
| 5 | `theorem` | [antidiagonal_single](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppAntidiagonalNamespacedPublic.lean/declarations/antidiagonal-single.md) | 65 | `result-track:d3feaecab15c4ca7c97dfce8815c5ecb905b8ac644b639f100dfc3aafe59f2ff` |
| 6 | `theorem` | [image_prodMap_embDomain_antidiagonal](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppAntidiagonalNamespacedPublic.lean/declarations/image-prodmap-embdomain-antidiagonal.md) | 85 | `result-track:ae09240eb56eba1168eb754a2d4c0a1ad0a419130fffca5f7ab8987a76b7c0ae` |
| 7 | `theorem` | [image_sumElim_product_antidiagonal](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppAntidiagonalNamespacedPublic.lean/declarations/image-sumelim-product-antidiagonal.md) | 101 | `result-track:7e9cf8379e31452b0ffeda45c035e56fc781ba4f62782cf6414f5cbec69fa75f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f2895feb3f6545ffbeb8eaed74fef601b5648140296c1f75ce299573e9605a81 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Antidiagonal/Variant60f54c15a2a9e1edfa767b372eaa7767c94642fb2bef4907da784dbc7782fcbe.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/Antidiagonal/Variant60f54c15a2a9e1edfa767b372eaa7767c94642fb2bef4907da784dbc7782fcbe.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
