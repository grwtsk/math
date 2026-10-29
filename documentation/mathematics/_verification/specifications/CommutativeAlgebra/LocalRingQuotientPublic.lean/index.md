# Verification target: Local Ring Quotient Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "23b8ee29422f726d36e1f58c8556f7b357453c03",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Quotient/Variantdd22433eabcf220ec75aa5ef1e83749d56b379799a0485da2cda910de6ff2384.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/LocalRingQuotientPublic.lean/index.md) · [Full source](../../../../CommutativeAlgebra/LocalRingQuotientPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `23b8ee29422f726d36e1f58c8556f7b357453c03`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Quotient/Variantdd22433eabcf220ec75aa5ef1e83749d56b379799a0485da2cda910de6ff2384.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Quotient/Variantdd22433eabcf220ec75aa5ef1e83749d56b379799a0485da2cda910de6ff2384.lean.json)

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
| 1 | `theorem` | [quotient_span_eq_top_iff_span_eq_top](../../../../CommutativeAlgebra/LocalRingQuotientPublic.lean/declarations/quotient-span-eq-top-iff-span-eq-top.md) | 36 | `result-track:c066cb2a9b9880058a2a126b3262bf5f02d738371480403651dcbd7c1522d617` |
| 2 | `theorem` | [finrank_quotient_map](../../../../CommutativeAlgebra/LocalRingQuotientPublic.lean/declarations/finrank-quotient-map.md) | 65 | `result-track:850c379f3f90154d550314963b729a53ad090fee966f4c2b6552cb2076c92bab` |
| 3 | `def` | [basisQuotient](../../../../CommutativeAlgebra/LocalRingQuotientPublic.lean/declarations/basisquotient.md) | 84 | `declaration-track:3fe709b3c24f4e65e161f9bded7b29e60d8cfe034ddd21164109807e70d067fb` |
| 4 | `lemma` | [basisQuotient_apply](../../../../CommutativeAlgebra/LocalRingQuotientPublic.lean/declarations/basisquotient-apply.md) | 91 | `result-track:0544cf39abffc640fbddbb7ec3c2641969debc607427df5deb6ce987c2c91a02` |
| 5 | `lemma` | [basisQuotient_repr](../../../../CommutativeAlgebra/LocalRingQuotientPublic.lean/declarations/basisquotient-repr.md) | 96 | `result-track:2bd1effd200eeb509a7937dbf30b9f07bff6244b332667a338d16721e43b2d90` |
| 6 | `lemma` | [exists_maximalIdeal_pow_le_of_isArtinianRing_quotient](../../../../CommutativeAlgebra/LocalRingQuotientPublic.lean/declarations/exists-maximalideal-pow-le-of-isartinianring-quotient.md) | 110 | `result-track:803c873c038d9b929064306552935377a9c089c5e344fb92627699b98c8e265f` |
| 7 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/LocalRingQuotientPublic.lean/declarations/instance.md) | 126 | `declaration-track:71f932e4d657b963d6e74a95d85c61951cff2c5cae347606c889e0d3bf8911ea` |
| 8 | `lemma` | [finite_quotient_iff](../../../../CommutativeAlgebra/LocalRingQuotientPublic.lean/declarations/finite-quotient-iff.md) | 131 | `result-track:ef7b2787699b1a0ebd5c8a0d06f9628c9f1e68a7a116b8ad3550506848d481f1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6166dc1e641abe95f57674450ba303111b84a861d111c21f30f7b72e5dd63c1d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Quotient/Variantdd22433eabcf220ec75aa5ef1e83749d56b379799a0485da2cda910de6ff2384.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Quotient/Variantdd22433eabcf220ec75aa5ef1e83749d56b379799a0485da2cda910de6ff2384.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
