# Verification target: Finite Dimensional Defs Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "210ee4c275a7b115f2ebb11841335ca1dba011ff",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Defs/Variant044f77758b3463216ccd75b11c02f8388acddff517f7aae4206a1f204979b18a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensionalDefsNamespaced.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensionalDefsNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `210ee4c275a7b115f2ebb11841335ca1dba011ff`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Defs/Variant044f77758b3463216ccd75b11c02f8388acddff517f7aae4206a1f204979b18a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Defs/Variant044f77758b3463216ccd75b11c02f8388acddff517f7aae4206a1f204979b18a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Basis.VectorSpace` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Dimension.Free` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.SimpleRing.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [FiniteDimensional](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensionalDefsNamespaced.lean/declarations/finitedimensional-source-edition-2.md) | 78 | `declaration-track:bb3dfb4f4a0464bface6657bd0f79a85de9babd3ab567aba97be335fe5e78345` |
| 2 | `theorem` | [of_injective](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensionalDefsNamespaced.lean/declarations/of-injective.md) | 88 | `result-track:9af01fe481cb5495710e2ba894c1f12a3129bc14de8dbae0a09669f0a9f7822e` |
| 3 | `theorem` | [of_surjective](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensionalDefsNamespaced.lean/declarations/of-surjective.md) | 93 | `result-track:548af7ae6c844548878745f083ef06c0aa231b3ad721617bb3f9874c4d0b284d` |
| 4 | `instance` | [finiteDimensional_pi](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensionalDefsNamespaced.lean/declarations/finitedimensional-pi.md) | 99 | `declaration-track:033042e9a354fa1cc1e631a3012376e0381e9b92414fd434d412a9db73ba5f2b` |
| 5 | `instance` | [finiteDimensional_pi'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensionalDefsNamespaced.lean/declarations/finitedimensional-pi-source-edition-2.md) | 102 | `declaration-track:970e42602af18b36a3dbf4eed8c99617815321397070b1be3d5913bb3b7412d6` |
| 6 | `theorem` | [of_fintype_basis](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensionalDefsNamespaced.lean/declarations/of-fintype-basis.md) | 109 | `result-track:ca962ac68d283629d0fbd3de3fd4a6003407a74b6b58fe71005dfc8adfeeba27` |
| 7 | `def` | [fintypeBasisIndex](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensionalDefsNamespaced.lean/declarations/fintypebasisindex.md) | 113 | `declaration-track:46adf1001e9b94c01f78bcdb558002dccfa2d4f536bff582ddb3507c3019e1bf` |
| 8 | `instance` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensionalDefsNamespaced.lean/declarations/instance-source-edition-2.md) | 119 | `declaration-track:d9f0c932216836f4cd902027037c7bc988fcbaf9d35045d36c0b2c813a290bdc` |
| 9 | `theorem` | [of_finite_basis](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensionalDefsNamespaced.lean/declarations/of-finite-basis.md) | 124 | `result-track:8e6c2517f529c1d595dc743de4e6695443ac50380dceb96d5d90e92296a34792` |
| 10 | `instance` | [finiteDimensional_submodule](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensionalDefsNamespaced.lean/declarations/finitedimensional-submodule.md) | 133 | `declaration-track:7b992c88762f891ef8ad01c5f6718d503153328f87717fddd9b87054ad1b6571` |
| 11 | `instance` | [finiteDimensional_quotient](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensionalDefsNamespaced.lean/declarations/finitedimensional-quotient.md) | 138 | `declaration-track:7e49a19b6d4a2928f6a926fe93293e9fe3f18f0ed3bc865e461878331591a6d6` |
| 12 | `theorem` | [of_finrank_pos](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensionalDefsNamespaced.lean/declarations/of-finrank-pos.md) | 142 | `result-track:a9306f2c8e1585a592ea205e9104664da2f8aeda7845d20b40aeafca4583fefe` |
| 13 | `theorem` | [of_finrank_eq_succ](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensionalDefsNamespaced.lean/declarations/of-finrank-eq-succ.md) | 145 | `result-track:cb3df45c2b1f38e12e2245f0d40f7fc22eb091b3f7b245d2b5225e12dab41903` |
| 14 | `theorem` | [of_fact_finrank_eq_succ](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensionalDefsNamespaced.lean/declarations/of-fact-finrank-eq-succ.md) | 151 | `result-track:b383ea47c79dccb21c70b8c9cb9bc89d9b4b036b300add39648fac14ef7b16bb` |
| 15 | `theorem` | [finrank_eq_rank'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensionalDefsNamespaced.lean/declarations/finrank-eq-rank.md) | 164 | `result-track:1f9b13f253b542b1f061da1e34eb63736fdc34a8a4bd44722424d1561265c5cd` |
| 16 | `theorem` | [finrank_of_infinite_dimensional](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensionalDefsNamespaced.lean/declarations/finrank-of-infinite-dimensional.md) | 169 | `result-track:d132a447d0a5eda86985d2abc475cfdc97ec8df334f4fbed892b926caa47aefb` |
| 17 | `theorem` | [finiteDimensional_iff_of_rank_eq_nsmul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensionalDefsNamespaced.lean/declarations/finitedimensional-iff-of-rank-eq-nsmul.md) | 172 | `result-track:18dbc81866664437303c07f1d748fad2008a697223be6f84958e61eb07036e22` |
| 18 | `theorem` | [finrank_eq_card_basis'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensionalDefsNamespaced.lean/declarations/finrank-eq-card-basis.md) | 179 | `result-track:85a347db3d4baa28d853461fda055b8ff34c6fbb41f401d9c90d087704152187` |
| 19 | `instance` | [finiteDimensional_self](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensionalDefsNamespaced.lean/declarations/finitedimensional-self.md) | 192 | `declaration-track:d293c67edd635376ec1bb7985db01bdd2a57465a75d8613ed45f0e91030a3d94` |
| 20 | `theorem` | [span_of_finite](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensionalDefsNamespaced.lean/declarations/span-of-finite.md) | 195 | `result-track:b035f5acb03a49c6ee6a19e92bade85b6b4623c8e761bbeb7fb58c0e017b633c` |
| 21 | `instance` | [span_singleton](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensionalDefsNamespaced.lean/declarations/span-singleton.md) | 199 | `declaration-track:9f5f4377c02525225a1eccecc655f8ef367d0d019fae541e69804157d2057308` |
| 22 | `instance` | [span_finset](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensionalDefsNamespaced.lean/declarations/span-finset.md) | 203 | `declaration-track:7a6e0dc2503e5196dd460c991bdb874b78f6ec695c6a93d7746d2e1248e50ff6` |
| 23 | `instance` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensionalDefsNamespaced.lean/declarations/instance.md) | 207 | `declaration-track:065fa5dec63bfbba54e83fec767bcf7fd03cf01f5a489a03746eb0e4bb761a02` |
| 24 | `theorem` | [trans](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensionalDefsNamespaced.lean/declarations/trans.md) | 218 | `result-track:5cddd4266475f341699c3c4066e01d7890b70864267f308e14f7196a571d3d50` |
| 25 | `theorem` | [fg_iff_finiteDimensional](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensionalDefsNamespaced.lean/declarations/fg-iff-finitedimensional.md) | 232 | `result-track:48fff8f63b6e45ccdc1d07dbd5c2e20b92eb2dafe09e22bf8ba5ff1d077ae148` |
| 26 | `theorem` | [finiteDimensional](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensionalDefsNamespaced.lean/declarations/finitedimensional.md) | 245 | `result-track:a7433e3a5c14f77c5fa0d0602dc91d01efca2d076e7e43b1921dadad1bf4b1bb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2693b42aa89ddb6bfad8211ff3f3011590eb58d6db3db4b66b03e4f010510589 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Defs/Variant044f77758b3463216ccd75b11c02f8388acddff517f7aae4206a1f204979b18a.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Defs/Variant044f77758b3463216ccd75b11c02f8388acddff517f7aae4206a1f204979b18a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
