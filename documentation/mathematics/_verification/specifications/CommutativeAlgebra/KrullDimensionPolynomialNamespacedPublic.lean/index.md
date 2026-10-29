# Verification target: Krull Dimension Polynomial Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "83b71751f940bd86792259edfeead2da9dd05814",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Polynomial/Variant489f9d84efd1ba2c2ce8a55a5a1b0d087eba0d536545fd827527c7c01322aa20.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/KrullDimensionPolynomialNamespacedPublic.lean/index.md) · [Full source](../../../../CommutativeAlgebra/KrullDimensionPolynomialNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `83b71751f940bd86792259edfeead2da9dd05814`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Polynomial/Variant489f9d84efd1ba2c2ce8a55a5a1b0d087eba0d536545fd827527c7c01322aa20.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Polynomial/Variant489f9d84efd1ba2c2ce8a55a5a1b0d087eba0d536545fd827527c7c01322aa20.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Polynomial.ringKrullDim_le](../../../../CommutativeAlgebra/KrullDimensionPolynomialNamespacedPublic.lean/declarations/polynomial-ringkrulldim-le.md) | 40 | `result-track:1d03c1debda5c1aaa986154503de387e7750f9c29aeb770d11975396d4623459` |
| 2 | `lemma` | [height_eq_height_add_one_of_isMaximal](../../../../CommutativeAlgebra/KrullDimensionPolynomialNamespacedPublic.lean/declarations/height-eq-height-add-one-of-ismaximal.md) | 63 | `result-track:8772387c58b59f337e7ec79465a8d4a1589f84fce57a95da6038383d11270111` |
| 3 | `lemma` | [height_map_C](../../../../CommutativeAlgebra/KrullDimensionPolynomialNamespacedPublic.lean/declarations/height-map-c.md) | 81 | `result-track:e686fcb2476c95a571f65b48f1961cc78ac3461271308ed3088a734194c185e2` |
| 4 | `lemma` | [height_eq_height_add_one](../../../../CommutativeAlgebra/KrullDimensionPolynomialNamespacedPublic.lean/declarations/height-eq-height-add-one.md) | 88 | `result-track:c5dc3c546f1b98eb3d551538cab5b40854bfaeaf7ba049f905f8d96c6a5c2c92` |
| 5 | `lemma` | [ringKrullDim_of_isNoetherianRing](../../../../CommutativeAlgebra/KrullDimensionPolynomialNamespacedPublic.lean/declarations/ringkrulldim-of-isnoetherianring.md) | 115 | `result-track:0ecee544419d70eaa7e6094a86cd02d06b5acb6da014233fb98d5cf4848bc9dd` |
| 6 | `lemma` | [MvPolynomial.ringKrullDim_of_isNoetherianRing_of_finite](../../../../CommutativeAlgebra/KrullDimensionPolynomialNamespacedPublic.lean/declarations/mvpolynomial-ringkrulldim-of-isnoetherianring-of-finite.md) | 128 | `result-track:456831797da8c7a2e5bd29e804fd8bf0814d447a6162bc42f8581eadc4e810a3` |
| 7 | `lemma` | [MvPolynomial.ringKrullDim_of_isNoetherianRing](../../../../CommutativeAlgebra/KrullDimensionPolynomialNamespacedPublic.lean/declarations/mvpolynomial-ringkrulldim-of-isnoetherianring.md) | 143 | `result-track:80a38bfd107aead94e4c203762ac7a9e37ddaa209fee1138243c4da904db437f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=004c4bd535dcadb693d31e5f47610b88eb1efe6ca9a5d7224e880c8687bc20f2 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/CommutativeAlgebra/Polynomial/Variant489f9d84efd1ba2c2ce8a55a5a1b0d087eba0d536545fd827527c7c01322aa20.lean","GRWTSK/_verification/specifications/Algebra/CommutativeAlgebra/Polynomial/Variant489f9d84efd1ba2c2ce8a55a5a1b0d087eba0d536545fd827527c7c01322aa20.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
