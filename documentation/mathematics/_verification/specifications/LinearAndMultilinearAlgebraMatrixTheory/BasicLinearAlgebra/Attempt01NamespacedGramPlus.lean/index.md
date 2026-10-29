# Verification target: Attempt01 Namespaced Gram Plus

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6f8fd2a35e02920a698c8d28c350b166586ecb58",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Attempt01/Variant822a03ee670be880c74ddd4cbd3b429d02e892994fb919f5f36a734fbe77fc2d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Attempt01NamespacedGramPlus.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Attempt01NamespacedGramPlus.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6f8fd2a35e02920a698c8d28c350b166586ecb58`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Attempt01/Variant822a03ee670be880c74ddd4cbd3b429d02e892994fb919f5f36a734fbe77fc2d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Attempt01/Variant822a03ee670be880c74ddd4cbd3b429d02e892994fb919f5f36a734fbe77fc2d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Matrix.Order` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.Determinant.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [gramPlus](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Attempt01NamespacedGramPlus.lean/declarations/gramplus.md) | 20 | `declaration-track:0469c4ca2546efcc0b265c550e5187c4c6ab090b5112a5d1a536d4fd97e9dc77` |
| 2 | `def` | [gramMinus](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Attempt01NamespacedGramPlus.lean/declarations/gramminus.md) | 22 | `declaration-track:4759d920e251b311165e396d9a4dabe4fc7673341b2c8952e475199823164cf1` |
| 3 | `def` | [pairwiseProfile](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Attempt01NamespacedGramPlus.lean/declarations/pairwiseprofile.md) | 24 | `declaration-track:6a227513563256ee8323670fae179c027203b58f718cea7eca6e0eae0d74fd1f` |
| 4 | `def` | [tripleCycle](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Attempt01NamespacedGramPlus.lean/declarations/triplecycle.md) | 26 | `declaration-track:00b7385b57055bc526864075cca62a61222a72b3d7267746ff96de2ec64a6d23` |
| 5 | `theorem` | [gramPlus_hermitian](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Attempt01NamespacedGramPlus.lean/declarations/gramplus-hermitian.md) | 28 | `result-track:192a9b555c5f7d7ae219ece875d6404d858b27db7bb9ffc2349e7339a97e2b5e` |
| 6 | `theorem` | [gramMinus_hermitian](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Attempt01NamespacedGramPlus.lean/declarations/gramminus-hermitian.md) | 31 | `result-track:16c296450f79883f426ee18048d5d0d321370efa7aec3ed74b42f815643c11e9` |
| 7 | `theorem` | [gramPlus_energy](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Attempt01NamespacedGramPlus.lean/declarations/gramplus-energy.md) | 35 | `result-track:22977da6a19de00df39e71b0ef63d1618d97871c37ee9cf12b4f9f6c2eadd805` |
| 8 | `theorem` | [gramMinus_energy](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Attempt01NamespacedGramPlus.lean/declarations/gramminus-energy.md) | 41 | `result-track:981d2d1c76255fefea41519e391c8bf6700425816b5aba95f766b13ac90f6c0c` |
| 9 | `theorem` | [sum_sq_pos](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Attempt01NamespacedGramPlus.lean/declarations/sum-sq-pos.md) | 48 | `result-track:f9cd5fd0ffb763ac2622b0392ede635ee3b1ac63dfaae98f90beb87c3aad7cbe` |
| 10 | `theorem` | [gramPlus_posDef](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Attempt01NamespacedGramPlus.lean/declarations/gramplus-posdef.md) | 60 | `result-track:43de0dc13d8cc60a38abf7fd4958661b84c0d92f13268ba136508d1d71389703` |
| 11 | `theorem` | [gramMinus_posDef](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Attempt01NamespacedGramPlus.lean/declarations/gramminus-posdef.md) | 65 | `result-track:4057e972d2465aa5a576c2bf46e7109a786c82cbfa50803c6e79f6be3f5754a6` |
| 12 | `theorem` | [positive_gram_factor](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Attempt01NamespacedGramPlus.lean/declarations/positive-gram-factor.md) | 71 | `result-track:bc8dc2ef98e809f51138496ecd77195a9b5f9e6c82727ead19c5aa19afa8088b` |
| 13 | `theorem` | [gramPlus_realizable](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Attempt01NamespacedGramPlus.lean/declarations/gramplus-realizable.md) | 77 | `result-track:da46d9874fe8c93de693a1687782b8d62ee54fc5e8f35ec77d04a94474601b43` |
| 14 | `theorem` | [gramMinus_realizable](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Attempt01NamespacedGramPlus.lean/declarations/gramminus-realizable.md) | 79 | `result-track:4ecd66a62d72162bcde55b723c4f093fdb7ab0e9d7e0d8986af55a01355947fa` |
| 15 | `theorem` | [diagonals_equal](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Attempt01NamespacedGramPlus.lean/declarations/diagonals-equal.md) | 82 | `result-track:a37e087cf16d20efa3937deb5234dc0358bb913f121f70e91c179dc4008dd89b` |
| 16 | `theorem` | [pairwise_equal](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Attempt01NamespacedGramPlus.lean/declarations/pairwise-equal.md) | 85 | `result-track:4af61ad76c8a4b56de5a8196df8be1c13bd4fe2ef07e68ebce2eeb61186b17e5` |
| 17 | `theorem` | [triple_plus](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Attempt01NamespacedGramPlus.lean/declarations/triple-plus.md) | 88 | `result-track:1b23c94fecd12178e2c170b53630392ed2863df8c7c32c009d083a4321635f49` |
| 18 | `theorem` | [triple_minus](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Attempt01NamespacedGramPlus.lean/declarations/triple-minus.md) | 90 | `result-track:b73bc9c2b6a38eb253ee52f0f4df0a25fbba0e0dff2c8aa09a99e1dc6da66956` |
| 19 | `theorem` | [triple_distinct](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Attempt01NamespacedGramPlus.lean/declarations/triple-distinct.md) | 92 | `result-track:ce1af6e11a94eca0971d15b29196121bdfce9a661ba2d23940305ab7b0878eba` |
| 20 | `theorem` | [det_plus](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Attempt01NamespacedGramPlus.lean/declarations/det-plus.md) | 96 | `result-track:ef2168059a70ade10ce326268efb0387eb3f485ccd3c3bb49dfaa23f74e7443e` |
| 21 | `theorem` | [det_minus](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Attempt01NamespacedGramPlus.lean/declarations/det-minus.md) | 98 | `result-track:4d79a4f434f27fef277dedc3c8be7248aa7b670c8590f1af26d9ae973072f748` |
| 22 | `theorem` | [det_distinct](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Attempt01NamespacedGramPlus.lean/declarations/det-distinct.md) | 100 | `result-track:f1635bb893af22aa091cebcc9c79d9b76d3aded60a3e6365978155994144217d` |
| 23 | `theorem` | [no_pairwise_triple_decoder](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Attempt01NamespacedGramPlus.lean/declarations/no-pairwise-triple-decoder.md) | 104 | `result-track:231610ff5cc64e5be6fbdf29eb032f5089b63056234e8b69488d4e3554b93eba` |
| 24 | `theorem` | [no_pairwise_determinant_decoder](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Attempt01NamespacedGramPlus.lean/declarations/no-pairwise-determinant-decoder.md) | 113 | `result-track:fb39c5ceafc4c23c2047c78c64eb9537d1745c186946053b37f0a4740b921eeb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e06158128775e64002e4ea926095680b26ccb5679cd2d9955fe722a73647323b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Attempt01/Variant822a03ee670be880c74ddd4cbd3b429d02e892994fb919f5f36a734fbe77fc2d.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Attempt01/Variant822a03ee670be880c74ddd4cbd3b429d02e892994fb919f5f36a734fbe77fc2d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
