# Verification target: Field Theory Separable Degree Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c9f67fbf72c0f021151c0c5b0ddc504739ae6015",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/SeparableDegree/Variant5e6a40917492ef8cb7778ada885e40b08fdb395d59f08159fb2c3a9e536c056d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FieldTheoryAndPolynomials/FieldTheorySeparableDegreeNamespaced.lean/index.md) · [Full source](../../../../FieldTheoryAndPolynomials/FieldTheorySeparableDegreeNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c9f67fbf72c0f021151c0c5b0ddc504739ae6015`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/SeparableDegree/Variant5e6a40917492ef8cb7778ada885e40b08fdb395d59f08159fb2c3a9e536c056d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/SeparableDegree/Variant5e6a40917492ef8cb7778ada885e40b08fdb395d59f08159fb2c3a9e536c056d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Algebra.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.CharP.ExpChar` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.Separable` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsSeparableContraction](../../../../FieldTheoryAndPolynomials/FieldTheorySeparableDegreeNamespaced.lean/declarations/isseparablecontraction.md) | 59 | `declaration-track:a7e628b3fbf6e2bd11896a4db52f0ace4e95a90606886a3fddc2543e55eceac4` |
| 2 | `def` | [HasSeparableContraction](../../../../FieldTheoryAndPolynomials/FieldTheorySeparableDegreeNamespaced.lean/declarations/hasseparablecontraction.md) | 64 | `declaration-track:1c1382196a854ea6d3ee1bd5b1194a27295072c2f70d1b9ba438699c06fd4cf0` |
| 3 | `def` | [HasSeparableContraction.contraction](../../../../FieldTheoryAndPolynomials/FieldTheorySeparableDegreeNamespaced.lean/declarations/hasseparablecontraction-contraction.md) | 71 | `declaration-track:862a84a23d3c52a7fb058478d03fb20357b678677faeae204c989592d7d29987` |
| 4 | `def` | [HasSeparableContraction.degree](../../../../FieldTheoryAndPolynomials/FieldTheorySeparableDegreeNamespaced.lean/declarations/hasseparablecontraction-degree.md) | 76 | `declaration-track:237951ef1cd3b3dc78ee2527a226e7fdaaa766ae90c57e507679821971f6e4d4` |
| 5 | `theorem` | [IsSeparableContraction.dvd_degree'](../../../../FieldTheoryAndPolynomials/FieldTheorySeparableDegreeNamespaced.lean/declarations/isseparablecontraction-dvd-degree.md) | 81 | `result-track:9a74a19ded235388a2442e957a460ebaee86cea1afea7ae63f660601d8586899` |
| 6 | `theorem` | [HasSeparableContraction.dvd_degree'](../../../../FieldTheoryAndPolynomials/FieldTheorySeparableDegreeNamespaced.lean/declarations/hasseparablecontraction-dvd-degree.md) | 88 | `result-track:2f13b48398f3cf134d3c518136da6d90501de027ec8a9a083f255dbd4e43c2a4` |
| 7 | `theorem` | [HasSeparableContraction.dvd_degree](../../../../FieldTheoryAndPolynomials/FieldTheorySeparableDegreeNamespaced.lean/declarations/hasseparablecontraction-dvd-degree-source-edition-2.md) | 93 | `result-track:bdfa62901c76da982bcd225c392df328ae4d5b586be5b36acd425e9a9548be30` |
| 8 | `theorem` | [HasSeparableContraction.eq_degree](../../../../FieldTheoryAndPolynomials/FieldTheorySeparableDegreeNamespaced.lean/declarations/hasseparablecontraction-eq-degree.md) | 99 | `result-track:284a655028467f42691d1b0f7c5e923d546f561f922df599cbdd9e55862a1196` |
| 9 | `theorem` | [Irreducible.hasSeparableContraction](../../../../FieldTheoryAndPolynomials/FieldTheorySeparableDegreeNamespaced.lean/declarations/irreducible-hasseparablecontraction.md) | 115 | `result-track:b711c332a0682fb8f81269d1d66ca80037e9ea5ca62c11b58dd4a058af76b3f9` |
| 10 | `theorem` | [contraction_degree_eq_or_insep](../../../../FieldTheoryAndPolynomials/FieldTheorySeparableDegreeNamespaced.lean/declarations/contraction-degree-eq-or-insep.md) | 125 | `result-track:9b93569b477e3921d7c9f5b8a9dbd05f17f77fdffb85b0183c059b213c73c860` |
| 11 | `theorem` | [IsSeparableContraction.degree_eq](../../../../FieldTheoryAndPolynomials/FieldTheorySeparableDegreeNamespaced.lean/declarations/isseparablecontraction-degree-eq.md) | 139 | `result-track:d2e9188deafc4d6a69b99bdf2c0e47b3d3795c2c67d2414430bcb48979a9e6b5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2acc5798de01f424c8921e9e8e265fe4cf1da9278ee6560e27d5bf73862cf314 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/CommutativeAlgebra/SeparableDegree/Variant5e6a40917492ef8cb7778ada885e40b08fdb395d59f08159fb2c3a9e536c056d.lean","GRWTSK/_verification/specifications/Algebra/CommutativeAlgebra/SeparableDegree/Variant5e6a40917492ef8cb7778ada885e40b08fdb395d59f08159fb2c3a9e536c056d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
