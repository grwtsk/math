# Verification target: Catalan Jacobi Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "eb6ee69d5a5270a414850f1fcd65ca9ea93f7dd0",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/CatalanJacobi/Variant6d9a76f2e61d51ce4ce5a67f9dcafc36efb8eaf76ace840b809f001b89e1ae90.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CatalanJacobiNamespaced.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CatalanJacobiNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `eb6ee69d5a5270a414850f1fcd65ca9ea93f7dd0`.

Source path: `GRWTSK/Algebra/LinearAlgebra/CatalanJacobi/Variant6d9a76f2e61d51ce4ce5a67f9dcafc36efb8eaf76ace840b809f001b89e1ae90.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/CatalanJacobi/Variant6d9a76f2e61d51ce4ce5a67f9dcafc36efb8eaf76ace840b809f001b89e1ae90.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Combinatorics.Enumerative.DyckWord` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Finsupp.Defs` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [consEmbedding](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CatalanJacobiNamespaced.lean/declarations/consembedding.md) | 39 | `declaration-track:c37babb96e25c6c483679fc30644f6128d8e8b583cdd27923be7ea879ab17846` |
| 2 | `lemma` | [consEmbedding_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CatalanJacobiNamespaced.lean/declarations/consembedding-apply.md) | 42 | `result-track:833448eba96b6d561479ee95a9ddf95732b1777393b2da6ae3fea9a3d594720e` |
| 3 | `def` | [paths](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CatalanJacobiNamespaced.lean/declarations/paths.md) | 46 | `declaration-track:cb85f57b3b3de8aa3727a1a43784bf8c3dfc6bed46f5580771305fcd6ced9a5b` |
| 4 | `def` | [Nonnegative](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CatalanJacobiNamespaced.lean/declarations/nonnegative.md) | 53 | `declaration-track:0b8fb646014d2500bcb73ec2d04ab5354231d2e4f018966bf65ef69e10b636d3` |
| 5 | `lemma` | [nonnegative_cons_U](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CatalanJacobiNamespaced.lean/declarations/nonnegative-cons-u.md) | 56 | `result-track:43435a55803864fc407e40d32529f89a022e9d95a524df57c1604cd263413df3` |
| 6 | `lemma` | [nonnegative_cons_D](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CatalanJacobiNamespaced.lean/declarations/nonnegative-cons-d.md) | 66 | `result-track:b3aa15f991ea1feba9647d7905340bf403ca9dca7c3673958495968e80eef5f7` |
| 7 | `lemma` | [not_nonnegative_cons_D_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CatalanJacobiNamespaced.lean/declarations/not-nonnegative-cons-d-zero.md) | 78 | `result-track:52ffea5e19517fc5a60290e1f32477b3db1d4e56213fe504db7fde6ac574b173` |
| 8 | `lemma` | [mem_paths](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CatalanJacobiNamespaced.lean/declarations/mem-paths.md) | 84 | `result-track:626f57dc4b4b4d0a68f15df0cbe5ddc0c6053b488c9f9b0de21bda63cc04d9fa` |
| 9 | `lemma` | [paths_union_disjoint](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CatalanJacobiNamespaced.lean/declarations/paths-union-disjoint.md) | 111 | `result-track:b4178d3e5c92fb7bf3e38cc94c933eafd35a84d66a22cc5e6d1d4787260484dc` |
| 10 | `lemma` | [card_paths_succ_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CatalanJacobiNamespaced.lean/declarations/card-paths-succ-zero.md) | 116 | `result-track:b781d33a5786132f8b767c40cd116786e9c1c38826e04fb97c670111dc0b7d6b` |
| 11 | `lemma` | [card_paths_succ_succ](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CatalanJacobiNamespaced.lean/declarations/card-paths-succ-succ.md) | 119 | `result-track:acd24f788e14f2a10d26b71ed5b598df72b070d3a24266e8d1927d545c374cfb` |
| 12 | `lemma` | [length_eq_counts](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CatalanJacobiNamespaced.lean/declarations/length-eq-counts.md) | 125 | `result-track:27e0205ec5a03e988d63dc509a7737ce5341112b59f020ca5f3a2ce37cabb7fd` |
| 13 | `def` | [returningPathsEquivDyck](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CatalanJacobiNamespaced.lean/declarations/returningpathsequivdyck.md) | 132 | `declaration-track:da9a1aa33c72abfef310eb0776e383daf849b92293cfb67e4ece6fbdc3809020` |
| 14 | `lemma` | [card_paths_even](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CatalanJacobiNamespaced.lean/declarations/card-paths-even.md) | 150 | `result-track:502ed2b4f5ae8ddae771a2f4d1aada32c69ec919c55ca39b8f3e4645a2f4f722` |
| 15 | `lemma` | [paths_odd_eq_empty](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CatalanJacobiNamespaced.lean/declarations/paths-odd-eq-empty.md) | 154 | `result-track:4c4a603f6fbc5d5504e08dc73e933414979bcbeffdaec4d8eb30b320dd4b0bbf` |
| 16 | `lemma` | [paths_eq_empty_of_length_lt_height](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CatalanJacobiNamespaced.lean/declarations/paths-eq-empty-of-length-lt-height.md) | 162 | `result-track:ea20059d790a509fd084172ec79daddffc95ed48db6008c383032b437e431ed0` |
| 17 | `def` | [Jfree](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CatalanJacobiNamespaced.lean/declarations/jfree.md) | 173 | `declaration-track:3ff2592c09a63f3cf854ef78517e74713014296d7933641e1b32d455aaa5489d` |
| 18 | `lemma` | [Jfree_apply_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CatalanJacobiNamespaced.lean/declarations/jfree-apply-zero.md) | 177 | `result-track:7bf2bda8cf86ae7b3bc1122bb54b8aac80e7f426e41e6c77011a1c320889fb9f` |
| 19 | `lemma` | [Jfree_apply_succ](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CatalanJacobiNamespaced.lean/declarations/jfree-apply-succ.md) | 181 | `result-track:8cf71c1a3a643e556a434b3dcabb90f1fb5e798b03c762a467f1cb88a21a33b6` |
| 20 | `def` | [basisVector](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CatalanJacobiNamespaced.lean/declarations/basisvector.md) | 186 | `declaration-track:b625d4a66033fd5fb0e064e1524d5e8efc4efd8e29805acc08a65e9ace35f0c9` |
| 21 | `lemma` | [Jfree_basis_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CatalanJacobiNamespaced.lean/declarations/jfree-basis-zero.md) | 188 | `result-track:73bcb199e919f6428decae23297b930a327b08573ee1e988236897221fc55941` |
| 22 | `lemma` | [Jfree_basis_succ](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CatalanJacobiNamespaced.lean/declarations/jfree-basis-succ.md) | 197 | `result-track:8ec2a9c72117f1a77133ce261e049d3867a1835ac655b31e57017c7a0dc142f5` |
| 23 | `def` | [cyclicCoefficient](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CatalanJacobiNamespaced.lean/declarations/cycliccoefficient.md) | 209 | `declaration-track:0e4064bfb327684285939349cddbdef230ad6471ffdec4ca1b77a2b3d107f5ed` |
| 24 | `lemma` | [power_basis_eq_card_paths](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CatalanJacobiNamespaced.lean/declarations/power-basis-eq-card-paths.md) | 212 | `result-track:5e095f14c98ed47766227584f16e874dd8496bccf5cce819c1afc0eb5a16e396` |
| 25 | `lemma` | [cyclicCoefficient_even](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CatalanJacobiNamespaced.lean/declarations/cycliccoefficient-even.md) | 224 | `result-track:95a8b6bfeebbfca93198d01309355827b83393cc833e430840430588cc7bf35c` |
| 26 | `lemma` | [cyclicCoefficient_odd](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CatalanJacobiNamespaced.lean/declarations/cycliccoefficient-odd.md) | 228 | `result-track:d382f4bc33bb4368da2d7c20bbc76343053f4295b710e879249eaa4efda67e3b` |
| 27 | `lemma` | [cyclicCoefficient_one](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CatalanJacobiNamespaced.lean/declarations/cycliccoefficient-one.md) | 232 | `result-track:f9166ecbebc75bbafe129b3950538f7e7ff7de274eef053e1572d446aef11ca0` |
| 28 | `lemma` | [power_basis_support_bound](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CatalanJacobiNamespaced.lean/declarations/power-basis-support-bound.md) | 235 | `result-track:b3019f78d3ad52c35a38c9172302ba3a8fd2146be515a13e489c049df3a88af5` |
| 29 | `def` | [pairing](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CatalanJacobiNamespaced.lean/declarations/pairing.md) | 242 | `declaration-track:af910468c5ed2ba0b7cfe49cbe43329dd4459eaf706801c9647cdde0903ea8cb` |
| 30 | `lemma` | [pairing_basis_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CatalanJacobiNamespaced.lean/declarations/pairing-basis-zero.md) | 244 | `result-track:6861be54f4dd91dad6f89349e84507084c691710f624480782de1a04b825a885` |
| 31 | `lemma` | [free_even_moment](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CatalanJacobiNamespaced.lean/declarations/free-even-moment.md) | 247 | `result-track:8e3681f310422cd7646b4829277535eca865bba2cc6c21359376cf425f339bcf` |
| 32 | `lemma` | [free_odd_moment](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CatalanJacobiNamespaced.lean/declarations/free-odd-moment.md) | 252 | `result-track:5fd500d68a76c2e206568eb002567e68780a5c86e055fa8870add4f6177b12da` |
| 33 | `lemma` | [cyclicCoefficient_even_normalization](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CatalanJacobiNamespaced.lean/declarations/cycliccoefficient-even-normalization.md) | 259 | `result-track:c9920ab6567a18f78215adb1c386c7040452b1cfc5cd58190aeced20c0c3103b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=648828d033044a9f626597f4d89adf6af3a29b682438035e33c241148cfb00c4 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/CatalanJacobi/Variant6d9a76f2e61d51ce4ce5a67f9dcafc36efb8eaf76ace840b809f001b89e1ae90.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/CatalanJacobi/Variant6d9a76f2e61d51ce4ce5a67f9dcafc36efb8eaf76ace840b809f001b89e1ae90.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
