# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.BigOperators.Variant98ae9a84df7cdc376f74a340ec9d5b9e730879ededae557c85ee10dcbec7afae

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8c704d9ac1c2fcc766e0c4b9a795bce60f0c28a1",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/BigOperators/Variant98ae9a84df7cdc376f74a340ec9d5b9e730879ededae557c85ee10dcbec7afae.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CombinatoricsAndDiscreteMathematics/BigOperators/Variant98ae9a84df7cdc376f74a340ec9d5b9e730879ededae557c85ee10dcbec7afae.lean/index.md) · [Full source](../../../../../CombinatoricsAndDiscreteMathematics/BigOperators/Variant98ae9a84df7cdc376f74a340ec9d5b9e730879ededae557c85ee10dcbec7afae.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8c704d9ac1c2fcc766e0c4b9a795bce60f0c28a1`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/BigOperators/Variant98ae9a84df7cdc376f74a340ec9d5b9e730879ededae557c85ee10dcbec7afae.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/BigOperators/Variant98ae9a84df7cdc376f74a340ec9d5b9e730879ededae557c85ee10dcbec7afae.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Group.Finset.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Pointwise.Finset.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [coe_prod](../../../../../CombinatoricsAndDiscreteMathematics/BigOperators/Variant98ae9a84df7cdc376f74a340ec9d5b9e730879ededae557c85ee10dcbec7afae.lean/declarations/coe-prod--d7f25b34a2d05db4b68c8447.md) | 40 | `result-track:d7f25b34a2d05db4b68c8447f07d01186beb0ed2c1adb3a5b113d1545f40c8bb` |
| 2 | `lemma` | [prod_inv_index](../../../../../CombinatoricsAndDiscreteMathematics/BigOperators/Variant98ae9a84df7cdc376f74a340ec9d5b9e730879ededae557c85ee10dcbec7afae.lean/declarations/prod-inv-index--cbe2f36abe8d9dac5640faf2.md) | 47 | `result-track:cbe2f36abe8d9dac5640faf2e8e51321ba38e4b4c34ce40329b3592eed0fee92` |
| 3 | `lemma` | [prod_neg_index](../../../../../CombinatoricsAndDiscreteMathematics/BigOperators/Variant98ae9a84df7cdc376f74a340ec9d5b9e730879ededae557c85ee10dcbec7afae.lean/declarations/prod-neg-index--5938b3003d379f5bd128320c.md) | 50 | `result-track:5938b3003d379f5bd128320c39e0d137ad50b3bea5eadedcf3330bd5afe530f4` |
| 4 | `lemma` | [sum_inv_index](../../../../../CombinatoricsAndDiscreteMathematics/BigOperators/Variant98ae9a84df7cdc376f74a340ec9d5b9e730879ededae557c85ee10dcbec7afae.lean/declarations/sum-inv-index--eb6474308532815a7f0a77be.md) | 59 | `result-track:eb6474308532815a7f0a77beda5d437572e1c87d2f9a6fdf4f6167fcdd222092` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7199a5f9f2304e99d50c0b82a064a14c47d41e3ea392ee74df8fa2dc721707ce -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/BigOperators/Variant98ae9a84df7cdc376f74a340ec9d5b9e730879ededae557c85ee10dcbec7afae.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/BigOperators/Variant98ae9a84df7cdc376f74a340ec9d5b9e730879ededae557c85ee10dcbec7afae.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
