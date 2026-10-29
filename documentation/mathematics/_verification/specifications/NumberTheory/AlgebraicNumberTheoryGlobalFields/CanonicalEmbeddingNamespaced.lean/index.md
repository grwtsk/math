# Verification target: Canonical Embedding Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "76a162aa7832c4f08ae63f2ad709555f64bfb528",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/CanonicalEmbedding/Variant8fe8617f43607a7d9f7c9a59f6b48137e02968626fa7fd56798b431d985ce0d2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/CanonicalEmbeddingNamespaced.lean/index.md) · [Full source](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/CanonicalEmbeddingNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `76a162aa7832c4f08ae63f2ad709555f64bfb528`.

Source path: `GRWTSK/NumberTheory/AlgebraicNumberTheory/CanonicalEmbedding/Variant8fe8617f43607a7d9f7c9a59f6b48137e02968626fa7fd56798b431d985ce0d2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AlgebraicNumberTheory/CanonicalEmbedding/Variant8fe8617f43607a7d9f7c9a59f6b48137e02968626fa7fd56798b431d985ce0d2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.NumberTheory.NumberField.Embeddings` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Discriminant` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Canonical Embedding Namespaced](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/CanonicalEmbeddingNamespaced.lean/declarations/root-grwtsk-numbertheory-algebraicnumbertheory-rootnumberfieldcanonicale.md) | 48 | `declaration-track:506d89258d4e05c0cddf76d5897fae1c88bf12f8a0f5fee7c981f3d3f8e9645b` |
| 2 | `theorem` | [Canonical Embedding Namespaced](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/CanonicalEmbeddingNamespaced.lean/declarations/root-grwtsk-numbertheory-algebraicnumbertheory-rootnumberfieldcanonicale-source-edition-2.md) | 50 | `result-track:dd7b1f5fd71d1a027ef585c32849c70364024747b822213c2dcad45de6cc1577` |
| 3 | `theorem` | [apply_at](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/CanonicalEmbeddingNamespaced.lean/declarations/apply-at.md) | 56 | `result-track:774447f85a1c1498a6a4893eb70c43fa2e7d9a310d059369a13eac2f91cf7eb9` |
| 4 | `theorem` | [conj_apply](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/CanonicalEmbeddingNamespaced.lean/declarations/conj-apply.md) | 62 | `result-track:b7623cedbe4544cecd24875b8c00b4243fd5809ccccb8df2976832ed1c69c49f` |
| 5 | `theorem` | [nnnorm_eq](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/CanonicalEmbeddingNamespaced.lean/declarations/nnnorm-eq.md) | 73 | `result-track:77ce6c575aa6ef529a1097234e7a62b40bb4fdecda943a6a8755dde006d85810` |
| 6 | `theorem` | [norm_le_iff](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/CanonicalEmbeddingNamespaced.lean/declarations/norm-le-iff.md) | 77 | `result-track:35293b7aa8ff1efc94a894306604d1bb0bb44b66109510fae9ee150f7631ad61` |
| 7 | `def` | [integerLattice](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/CanonicalEmbeddingNamespaced.lean/declarations/integerlattice.md) | 91 | `declaration-track:9ca41fae5d633fb8861c063abccd8bb24f0651be747d692bfbc5d6d0f8982647` |
| 8 | `theorem` | [integerLattice.inter_ball_finite](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/CanonicalEmbeddingNamespaced.lean/declarations/integerlattice-inter-ball-finite.md) | 94 | `result-track:31b3fc209cd9fdf1b9b41d993750cc13d3e4615a2ee68ce270f20221b170bb23` |
| 9 | `def` | [latticeBasis](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/CanonicalEmbeddingNamespaced.lean/declarations/latticebasis.md) | 111 | `declaration-track:6bd95db5fd6757c735c7353a73d5c4d44ecef35cf776e11b567c74bf29b18c10` |
| 10 | `theorem` | [latticeBasis_apply](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/CanonicalEmbeddingNamespaced.lean/declarations/latticebasis-apply.md) | 140 | `result-track:8379ceb167e9e1475bb6b68c1755d7f3ec5b7cb21468136aa56833668db3a236` |
| 11 | `theorem` | [mem_span_latticeBasis](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/CanonicalEmbeddingNamespaced.lean/declarations/mem-span-latticebasis.md) | 145 | `result-track:30d08b71dab3be9b3bd1227693e7d6927a301ee1684e096fe3315315338f7ec4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c216c045768f9eabdcff25356d59cec169368b5fc63f5f60677e2eaabee446af -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AlgebraicNumberTheory/CanonicalEmbedding/Variant8fe8617f43607a7d9f7c9a59f6b48137e02968626fa7fd56798b431d985ce0d2.lean","GRWTSK/_verification/specifications/NumberTheory/AlgebraicNumberTheory/CanonicalEmbedding/Variant8fe8617f43607a7d9f7c9a59f6b48137e02968626fa7fd56798b431d985ce0d2.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
