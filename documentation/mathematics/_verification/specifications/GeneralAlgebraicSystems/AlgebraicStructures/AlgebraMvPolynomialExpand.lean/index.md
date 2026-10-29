# Verification target: Algebra Mv Polynomial Expand

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1252dd9b13b66a3657adcdd62a6ef2954db2466f",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Expand/Variant508460a689d28d19b640bf023ebf7049d750cc5c125873284a1c595126f8f545.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialExpand.lean/index.md) · [Full source](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialExpand.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1252dd9b13b66a3657adcdd62a6ef2954db2466f`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Expand/Variant508460a689d28d19b640bf023ebf7049d750cc5c125873284a1c595126f8f545.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Expand/Variant508460a689d28d19b640bf023ebf7049d750cc5c125873284a1c595126f8f545.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.MvPolynomial.Monad` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [expand](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialExpand.lean/declarations/expand.md) | 28 | `declaration-track:fd0ee3749615cc27b41e20b51aa29ce51c1348c5f27902efcca7afb16d73192e` |
| 2 | `theorem` | [expand_C](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialExpand.lean/declarations/expand-c.md) | 32 | `result-track:7d34151d1eb334e8c56d90b229ae30a8ccf6875e4a1277785747d9547f9af74b` |
| 3 | `theorem` | [expand_X](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialExpand.lean/declarations/expand-x.md) | 36 | `result-track:9312ae00d71da426b6b0f84818f2d961bbc1eb0ae785b0582bb809be6fe9b3d8` |
| 4 | `theorem` | [expand_monomial](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialExpand.lean/declarations/expand-monomial.md) | 40 | `result-track:d89ab602ecb8b930d1fed9ec591a2c6e15bbbe75ec0e5326ddd8c93233ab2215` |
| 5 | `theorem` | [expand_one_apply](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialExpand.lean/declarations/expand-one-apply.md) | 44 | `result-track:d81bfd400eba76ac4cd48bdaa962639d36eb27ee5c74cd50454f8bec23e1b7fc` |
| 6 | `theorem` | [expand_one](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialExpand.lean/declarations/expand-one.md) | 49 | `result-track:5be8f786fb07f71f3f201fcea722bcfcaf4f431882d6bc21ff65fdab57723386` |
| 7 | `theorem` | [expand_comp_bind₁](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialExpand.lean/declarations/expand-comp-bind.md) | 53 | `result-track:07ed6ac6ced90bb7ac1330817c33f53c5aeac6cf082b68213c1a6ba2a9ca152e` |
| 8 | `theorem` | [expand_bind₁](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialExpand.lean/declarations/expand-bind.md) | 59 | `result-track:83558b80000e7d6d77cb58a136f56f844b842d43af16ae964ac36f98a3d031ac` |
| 9 | `theorem` | [map_expand](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialExpand.lean/declarations/map-expand.md) | 64 | `result-track:e066cec12875716ca33299a95cca5aa48252fcc316e109154ebf19e4614c85b1` |
| 10 | `theorem` | [rename_expand](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialExpand.lean/declarations/rename-expand.md) | 68 | `result-track:ded1d21e164bcd18a95c642d80e7d0dadf2fb7fead43f379d68b2dcb37eea7f4` |
| 11 | `theorem` | [rename_comp_expand](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialExpand.lean/declarations/rename-comp-expand.md) | 73 | `result-track:34d7218ef57204db2d5c252e2388aa7bf293e2947a0da438da7661c81da0177b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5085211e7bc7066f2be2e237a7dd26a3a9ebf6d0c24cf31a76baba5baae5514f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/CommutativeAlgebra/Expand/Variant508460a689d28d19b640bf023ebf7049d750cc5c125873284a1c595126f8f545.lean","GRWTSK/_verification/specifications/Algebra/CommutativeAlgebra/Expand/Variant508460a689d28d19b640bf023ebf7049d750cc5c125873284a1c595126f8f545.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
