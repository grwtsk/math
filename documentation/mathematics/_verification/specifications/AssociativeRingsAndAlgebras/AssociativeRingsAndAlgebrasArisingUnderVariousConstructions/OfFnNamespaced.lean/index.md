# Verification target: Of Fn Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4ce189d0eec016c7d765c36b153c2c499c63b6a2",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/OfFn/Variant66005f3b9cb825c140f1096dc74221c0ec861e9201ac7e1cd3b17ee3ecf95e61.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/OfFnNamespaced.lean/index.md) · [Full source](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/OfFnNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4ce189d0eec016c7d765c36b153c2c499c63b6a2`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/OfFn/Variant66005f3b9cb825c140f1096dc74221c0ec861e9201ac7e1cd3b17ee3ecf95e61.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/OfFn/Variant66005f3b9cb825c140f1096dc74221c0ec861e9201ac7e1cd3b17ee3ecf95e61.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Fin` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Polynomial.Degree.Lemmas` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.List.ToFinsupp` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Pi` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [toFn](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/OfFnNamespaced.lean/declarations/tofn.md) | 38 | `declaration-track:4ad951d93d7ca6fde3fdbd0fe7e18911da7a1b33fa53999f413abb6e986a90c8` |
| 2 | `theorem` | [toFn_zero](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/OfFnNamespaced.lean/declarations/tofn-zero.md) | 40 | `result-track:f652689cc82a3bc156abc1ab2505b784c4ce2701ff425fe6021d80235e48dee5` |
| 3 | `def` | [ofFn](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/OfFnNamespaced.lean/declarations/offn.md) | 48 | `declaration-track:2a95fa3ce2bcfe1da1d1ce1f8bd48979a7b6c56e7e183b02a113b77fc4e9e76b` |
| 4 | `theorem` | [ofFn_zero](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/OfFnNamespaced.lean/declarations/offn-zero-source-edition-2.md) | 61 | `result-track:6334f6268affe0b9dc52183892c1baeac7fb1c6a3c3626cd4606bd4e6e6e0f51` |
| 5 | `theorem` | [ofFn_zero'](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/OfFnNamespaced.lean/declarations/offn-zero.md) | 64 | `result-track:610dab27aa1550b1318750df6c72cd57411d8ca60ffebd0d8c8be38e701e37a6` |
| 6 | `lemma` | [ne_zero_of_ofFn_ne_zero](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/OfFnNamespaced.lean/declarations/ne-zero-of-offn-ne-zero.md) | 66 | `result-track:87c571e893add37696b13fb937b8e3e8bd2ef8d7da408bc8cecf90cec094a65b` |
| 7 | `theorem` | [ofFn_coeff_eq_val_of_lt](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/OfFnNamespaced.lean/declarations/offn-coeff-eq-val-of-lt.md) | 73 | `result-track:12b31e81c3c1864265a69a466956feac661eba30234a7650fbed5b76af9d32bd` |
| 8 | `theorem` | [ofFn_coeff_eq_zero_of_ge](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/OfFnNamespaced.lean/declarations/offn-coeff-eq-zero-of-ge.md) | 79 | `result-track:2e124a66cc492e3a5576ddd0ef5e831a2ffaf0df5fcea0ef82ba1c1b15e0ff9c` |
| 9 | `theorem` | [ofFn_natDegree_lt](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/OfFnNamespaced.lean/declarations/offn-natdegree-lt.md) | 83 | `result-track:4b647cc572762fd677b97c87d4173b13159b999a4cfc6228b0ccca39e115ee86` |
| 10 | `theorem` | [ofFn_degree_lt](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/OfFnNamespaced.lean/declarations/offn-degree-lt.md) | 88 | `result-track:f9bbabdf611b40625a982cc1582c45746b7c456777f1edb06a56de69a8612d6f` |
| 11 | `theorem` | [ofFn_eq_sum_monomial](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/OfFnNamespaced.lean/declarations/offn-eq-sum-monomial.md) | 95 | `result-track:912046d2897b8af259ba67bcf39de1d51342550460c35a39b20c74d982bbd477` |
| 12 | `theorem` | [toFn_comp_ofFn_eq_id](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/OfFnNamespaced.lean/declarations/tofn-comp-offn-eq-id.md) | 103 | `result-track:a2e76ca034b7b0a9bc41974b156557cb3835375edca6e766200e73b14f449395` |
| 13 | `theorem` | [injective_ofFn](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/OfFnNamespaced.lean/declarations/injective-offn.md) | 106 | `result-track:4520bd38983acafd83c676f655eb51db64bf131a3ec1e98dd3b867338545736a` |
| 14 | `theorem` | [surjective_toFn](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/OfFnNamespaced.lean/declarations/surjective-tofn.md) | 110 | `result-track:3fda08aecd320ed3655872426270078191bba481edd08e48b15be3391d9636f8` |
| 15 | `theorem` | [ofFn_comp_toFn_eq_id_of_natDegree_lt](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/OfFnNamespaced.lean/declarations/offn-comp-tofn-eq-id-of-natdegree-lt.md) | 114 | `result-track:cf157cfb2834a9a9d53ca3e3fddf57aaa24766979b54031975e6182b5574452f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=896937af987f45c752a01d9c5b5629f15f0c6e8bddca3d8bfdc6b68972fa05de -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/CommutativeAlgebra/OfFn/Variant66005f3b9cb825c140f1096dc74221c0ec861e9201ac7e1cd3b17ee3ecf95e61.lean","GRWTSK/_verification/specifications/Algebra/CommutativeAlgebra/OfFn/Variant66005f3b9cb825c140f1096dc74221c0ec861e9201ac7e1cd3b17ee3ecf95e61.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
