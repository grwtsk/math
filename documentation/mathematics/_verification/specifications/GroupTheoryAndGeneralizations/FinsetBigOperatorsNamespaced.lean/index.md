# Verification target: Finset Big Operators Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f843c0df429e1ab106c8aa888eaca397eacf3fd1",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/BigOperators/Variantb7eb490d714fc8abe28ce29f69398526f52b7bedbd83120d1cc7fc2c106d7308.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GroupTheoryAndGeneralizations/FinsetBigOperatorsNamespaced.lean/index.md) · [Full source](../../../../GroupTheoryAndGeneralizations/FinsetBigOperatorsNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f843c0df429e1ab106c8aa888eaca397eacf3fd1`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/BigOperators/Variantb7eb490d714fc8abe28ce29f69398526f52b7bedbd83120d1cc7fc2c106d7308.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/BigOperators/Variantb7eb490d714fc8abe28ce29f69398526f52b7bedbd83120d1cc7fc2c106d7308.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Group.Finset.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Pointwise.Finset.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [coe_prod](../../../../GroupTheoryAndGeneralizations/FinsetBigOperatorsNamespaced.lean/declarations/coe-prod.md) | 48 | `result-track:7e0a1c01d475639f6063c4cfdb31046b01fff8f827e07fe89d8c8e945a0489fa` |
| 2 | `lemma` | [prod_inv_index](../../../../GroupTheoryAndGeneralizations/FinsetBigOperatorsNamespaced.lean/declarations/prod-inv-index.md) | 55 | `result-track:ffeed0ec81a91a1238171c2095f5be6319bf125c79462c2e0165aba0853aab13` |
| 3 | `lemma` | [prod_neg_index](../../../../GroupTheoryAndGeneralizations/FinsetBigOperatorsNamespaced.lean/declarations/prod-neg-index.md) | 58 | `result-track:e04d001fed84da125ae174cdccbcb3250efd018cd1cbfc7d00a56a96138aa46f` |
| 4 | `lemma` | [sum_inv_index](../../../../GroupTheoryAndGeneralizations/FinsetBigOperatorsNamespaced.lean/declarations/sum-inv-index.md) | 67 | `result-track:b95dde7cdbb9e5f67f00bf5f853c10a062c50c313b254d0285a058cd2165b262` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8f56cc6e807b30c5d5a6dc2443521bbc4ca404a9ffb6f3c5a21869742ce1ec43 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/BigOperators/Variantb7eb490d714fc8abe28ce29f69398526f52b7bedbd83120d1cc7fc2c106d7308.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/BigOperators/Variantb7eb490d714fc8abe28ce29f69398526f52b7bedbd83120d1cc7fc2c106d7308.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
