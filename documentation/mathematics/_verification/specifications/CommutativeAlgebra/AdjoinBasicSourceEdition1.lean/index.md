# Verification target: Adjoin Basic Source Edition1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4f6bb63a9900a3bd73a9505f959ac469b339aafc",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Basic/Variant7fb7691d5b1c05a6355cba99953d4ef9ff8907d6aa8b739d4e835f3a5246fea1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/AdjoinBasicSourceEdition1.lean/index.md) · [Full source](../../../../CommutativeAlgebra/AdjoinBasicSourceEdition1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4f6bb63a9900a3bd73a9505f959ac469b339aafc`.

Source path: `GRWTSK/Algebra/Basic/Variant7fb7691d5b1c05a6355cba99953d4ef9ff8907d6aa8b739d4e835f3a5246fea1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Basic/Variant7fb7691d5b1c05a6355cba99953d4ef9ff8907d6aa8b739d4e835f3a5246fea1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Algebra.Subalgebra.Prod` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Algebra.Subalgebra.Tower` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Basis.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Prod` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [adjoin_prod_le](../../../../CommutativeAlgebra/AdjoinBasicSourceEdition1.lean/declarations/adjoin-prod-le.md) | 43 | `result-track:169556d72e04bffa5a00ebb16ef55f976cda3844d339d8d1a21d685d7f43222e` |
| 2 | `theorem` | [adjoin_inl_union_inr_eq_prod](../../../../CommutativeAlgebra/AdjoinBasicSourceEdition1.lean/declarations/adjoin-inl-union-inr-eq-prod.md) | 47 | `result-track:46378b90bbc46a6493afc75957da5cca855a7e42d75c901b4124f0110a23f7a8` |
| 3 | `theorem` | [adjoin_algebraMap](../../../../CommutativeAlgebra/AdjoinBasicSourceEdition1.lean/declarations/adjoin-algebramap.md) | 68 | `result-track:6067b7960d7e3b70657986ea4018a148f2091f2c91a63e2e324bbcb8ead43b04` |
| 4 | `theorem` | [adjoin_algebraMap_image_union_eq_adjoin_adjoin](../../../../CommutativeAlgebra/AdjoinBasicSourceEdition1.lean/declarations/adjoin-algebramap-image-union-eq-adjoin-adjoin.md) | 72 | `result-track:e282906ccf62d438c9d46efefdc23c99a16964ac05efb7ddb7c7d6255183cead` |
| 5 | `theorem` | [adjoin_adjoin_of_tower](../../../../CommutativeAlgebra/AdjoinBasicSourceEdition1.lean/declarations/adjoin-adjoin-of-tower.md) | 84 | `result-track:43cc6eb7f6ed9753e2740cc5adb28aa7aa4c46b3b2c09634b96579f2ab129a80` |
| 6 | `theorem` | [Subalgebra.restrictScalars_adjoin](../../../../CommutativeAlgebra/AdjoinBasicSourceEdition1.lean/declarations/subalgebra-restrictscalars-adjoin.md) | 94 | `result-track:c175be29193d7574d96087eaad7ef33985c7e7413276cb70a04d82a3c590dd39` |
| 7 | `theorem` | [adjoin_top](../../../../CommutativeAlgebra/AdjoinBasicSourceEdition1.lean/declarations/adjoin-top.md) | 104 | `result-track:4451b475cf56a5fd518f1b894c4700bf1efbd4a4dda789551700c862d65eea5e` |
| 8 | `theorem` | [adjoin_union_eq_adjoin_adjoin](../../../../CommutativeAlgebra/AdjoinBasicSourceEdition1.lean/declarations/adjoin-union-eq-adjoin-adjoin.md) | 125 | `result-track:ae16abf848dede5210b0417642e1a713a296856677380ca2c3a9267e91a60aae` |
| 9 | `theorem` | [pow_smul_mem_of_smul_subset_of_mem_adjoin](../../../../CommutativeAlgebra/AdjoinBasicSourceEdition1.lean/declarations/pow-smul-mem-of-smul-subset-of-mem-adjoin.md) | 131 | `result-track:fb8bd4abcc313c5d7eb935a287ee4d177e5e313696d6280ddb17f70dfa4ae170` |
| 10 | `theorem` | [pow_smul_mem_adjoin_smul](../../../../CommutativeAlgebra/AdjoinBasicSourceEdition1.lean/declarations/pow-smul-mem-adjoin-smul.md) | 154 | `result-track:695cf76797a385bd2aa663c6e36c24e06273c726b304ab74a1ca17cfe1594db1` |
| 11 | `lemma` | [adjoin_nonUnitalSubalgebra_eq_span](../../../../CommutativeAlgebra/AdjoinBasicSourceEdition1.lean/declarations/adjoin-nonunitalsubalgebra-eq-span.md) | 158 | `result-track:7cca8605373ad888504b618f63a80e2d207cd3b3702b0891a0116ba8c52488f9` |
| 12 | `theorem` | [Subalgebra.adjoin_eq_span_basis](../../../../CommutativeAlgebra/AdjoinBasicSourceEdition1.lean/declarations/subalgebra-adjoin-eq-span-basis.md) | 177 | `result-track:dc812d8f67c2509ef7d7225943353cc19b75990b045f1fce56b6ac46469cf86f` |
| 13 | `theorem` | [Algebra.restrictScalars_adjoin](../../../../CommutativeAlgebra/AdjoinBasicSourceEdition1.lean/declarations/algebra-restrictscalars-adjoin.md) | 183 | `result-track:d786c83653876c861e3eeb2584e81f8a77dc5af2ec0bd62012a3aecf86fe338e` |
| 14 | `theorem` | [Algebra.restrictScalars_adjoin_of_algEquiv](../../../../CommutativeAlgebra/AdjoinBasicSourceEdition1.lean/declarations/algebra-restrictscalars-adjoin-of-algequiv.md) | 191 | `result-track:730046f0ac501a88216a852073869ad18e3fab677eea101c0599419e92d1b66c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5d99255bde1c241b6afc945d5860b23a6ff2c56baab89b34de38d71588a6beb3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Basic/Variant7fb7691d5b1c05a6355cba99953d4ef9ff8907d6aa8b739d4e835f3a5246fea1.lean","GRWTSK/_verification/specifications/Algebra/Basic/Variant7fb7691d5b1c05a6355cba99953d4ef9ff8907d6aa8b739d4e835f3a5246fea1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
