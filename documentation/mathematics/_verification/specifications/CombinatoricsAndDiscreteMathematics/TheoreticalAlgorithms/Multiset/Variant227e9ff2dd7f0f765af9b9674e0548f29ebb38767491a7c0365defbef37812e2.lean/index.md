# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Multiset.Variant227e9ff2dd7f0f765af9b9674e0548f29ebb38767491a7c0365defbef37812e2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c4dae7bc32f08c45aa839d55c18938aac4430736",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Multiset/Variant227e9ff2dd7f0f765af9b9674e0548f29ebb38767491a7c0365defbef37812e2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Multiset/Variant227e9ff2dd7f0f765af9b9674e0548f29ebb38767491a7c0365defbef37812e2.lean/index.md) · [Full source](../../../../../../CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Multiset/Variant227e9ff2dd7f0f765af9b9674e0548f29ebb38767491a7c0365defbef37812e2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c4dae7bc32f08c45aa839d55c18938aac4430736`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Multiset/Variant227e9ff2dd7f0f765af9b9674e0548f29ebb38767491a7c0365defbef37812e2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Multiset/Variant227e9ff2dd7f0f765af9b9674e0548f29ebb38767491a7c0365defbef37812e2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Group.Multiset.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.BigOperators.GroupWithZero.List` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [prod_nonneg](../../../../../../CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Multiset/Variant227e9ff2dd7f0f765af9b9674e0548f29ebb38767491a7c0365defbef37812e2.lean/declarations/prod-nonneg--89581bb2aed00c1b8eb5a79c.md) | 20 | `result-track:89581bb2aed00c1b8eb5a79cdd6e54edb5d61c28f8ff9a5cf7baaae94be02cb7` |
| 2 | `lemma` | [one_le_prod](../../../../../../CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Multiset/Variant227e9ff2dd7f0f765af9b9674e0548f29ebb38767491a7c0365defbef37812e2.lean/declarations/one-le-prod--d75506278ef743c9d90ab1d9.md) | 25 | `result-track:d75506278ef743c9d90ab1d92adc12ed716d54130572110b50ebd3d8287ce618` |
| 3 | `theorem` | [prod_map_le_prod_map₀](../../../../../../CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Multiset/Variant227e9ff2dd7f0f765af9b9674e0548f29ebb38767491a7c0365defbef37812e2.lean/declarations/prod-map-le-prod-map--9760c70a874f94ad92d370e9.md) | 30 | `result-track:9760c70a874f94ad92d370e9c0c76a957ab274662a63ad47d19027d14ee8ae2f` |
| 4 | `theorem` | [prod_map_le_pow_card](../../../../../../CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Multiset/Variant227e9ff2dd7f0f765af9b9674e0548f29ebb38767491a7c0365defbef37812e2.lean/declarations/prod-map-le-pow-card--ccc6eb540bda218f76fcfc26.md) | 37 | `result-track:ccc6eb540bda218f76fcfc26acfdce9be675f3a384f898ac796e23bc2ad8cf11` |
| 5 | `lemma` | [prod_pos](../../../../../../CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Multiset/Variant227e9ff2dd7f0f765af9b9674e0548f29ebb38767491a7c0365defbef37812e2.lean/declarations/prod-pos--0e1e778263d75b7d5723cee1.md) | 46 | `result-track:0e1e778263d75b7d5723cee1ad5e38de252488e9ae46b4d46b46991af6c6c55f` |
| 6 | `theorem` | [prod_map_lt_prod_map](../../../../../../CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Multiset/Variant227e9ff2dd7f0f765af9b9674e0548f29ebb38767491a7c0365defbef37812e2.lean/declarations/prod-map-lt-prod-map--8dbb27ff54016c9d894b3264.md) | 51 | `result-track:8dbb27ff54016c9d894b326456e99b55c0162dd3ecd5dfe6e7f4549bf629c309` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=263d6a7f4b092b78acd2c05f7630933088e4bd9b78711ec9c812c3d5b908b597 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Multiset/Variant227e9ff2dd7f0f765af9b9674e0548f29ebb38767491a7c0365defbef37812e2.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Multiset/Variant227e9ff2dd7f0f765af9b9674e0548f29ebb38767491a7c0365defbef37812e2.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
