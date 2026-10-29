# Verification target: Data Polynomial Unit Trinomial Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "62ac26e3a0cac00219fa085b743e9f8498ead893",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/UnitTrinomial/Variant9b5302b121fcb7b3b6af36496449b693c9881fc4acc81dec4c454b8f48332b73.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialUnitTrinomialNamespaced.lean/index.md) · [Full source](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialUnitTrinomialNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `62ac26e3a0cac00219fa085b743e9f8498ead893`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/UnitTrinomial/Variant9b5302b121fcb7b3b6af36496449b693c9881fc4acc81dec4c454b8f48332b73.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/UnitTrinomial/Variant9b5302b121fcb7b3b6af36496449b693c9881fc4acc81dec4c454b8f48332b73.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Complex.Polynomial` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Polynomial.Mirror` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [trinomial](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialUnitTrinomialNamespaced.lean/declarations/trinomial.md) | 47 | `declaration-track:1cf23e73975b486476bd6de1b264553871e30e37c254df09c3b47e7afae0d7ea` |
| 2 | `theorem` | [trinomial_def](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialUnitTrinomialNamespaced.lean/declarations/trinomial-def.md) | 51 | `result-track:c67ef258ad7de94fab49a4c26fbba23a616b5b144bebfc7b63c7b53b330a50e7` |
| 3 | `theorem` | [trinomial_leading_coeff'](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialUnitTrinomialNamespaced.lean/declarations/trinomial-leading-coeff.md) | 57 | `result-track:d15aebc1a1a7c4b79afe1b235aac70c85e631a545aaa13d14bdeee2a140a9a85` |
| 4 | `theorem` | [trinomial_middle_coeff](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialUnitTrinomialNamespaced.lean/declarations/trinomial-middle-coeff.md) | 63 | `result-track:5f6b3735eef4b7fdd7c12d79afeaa644dd7dcf66fc0f3572aa1c83623163369a` |
| 5 | `theorem` | [trinomial_trailing_coeff'](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialUnitTrinomialNamespaced.lean/declarations/trinomial-trailing-coeff.md) | 69 | `result-track:0d89c79a9352c926013b78d9d298fc25d7a7f5fecdf91b2769eadb2755300ffa` |
| 6 | `theorem` | [trinomial_natDegree](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialUnitTrinomialNamespaced.lean/declarations/trinomial-natdegree.md) | 75 | `result-track:1ca7367f616ed5c79e585ff3e7887fda1d4acb5812b05488047fffd844ef961b` |
| 7 | `theorem` | [trinomial_natTrailingDegree](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialUnitTrinomialNamespaced.lean/declarations/trinomial-nattrailingdegree.md) | 89 | `result-track:55d0e635769902486ed839f6117c0336defaa5318652c56e0babcc1398e25ae1` |
| 8 | `theorem` | [trinomial_leadingCoeff](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialUnitTrinomialNamespaced.lean/declarations/trinomial-leadingcoeff.md) | 103 | `result-track:11db8236dbf91267c5406646f93487543c96162c8ab923617a4defec5b65648f` |
| 9 | `theorem` | [trinomial_trailingCoeff](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialUnitTrinomialNamespaced.lean/declarations/trinomial-trailingcoeff.md) | 108 | `result-track:57a190287f2399e4e607844d2541164b19d641bf325c248d2f2aef2be1926092` |
| 10 | `theorem` | [trinomial_monic](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialUnitTrinomialNamespaced.lean/declarations/trinomial-monic.md) | 113 | `result-track:76891bb0c1d6c29a973e224f1dc6f62a6ba8c946267e810825eb0400ab20ce81` |
| 11 | `theorem` | [trinomial_mirror](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialUnitTrinomialNamespaced.lean/declarations/trinomial-mirror.md) | 118 | `result-track:6e1ebbb5f7bcac7947a148d7ea6fa199a6aacb2a84f3bfcedc2f810a4e9e1d65` |
| 12 | `theorem` | [trinomial_support](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialUnitTrinomialNamespaced.lean/declarations/trinomial-support.md) | 128 | `result-track:38723745eed450430be304fac10532dff3c32a41fe13f92b065880f5e9785969` |
| 13 | `def` | [IsUnitTrinomial](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialUnitTrinomialNamespaced.lean/declarations/isunittrinomial.md) | 138 | `declaration-track:2d69deddbf2e744886863d4dc7ce5b8a98ce852a7d61930a9bf2f516bda37b39` |
| 14 | `theorem` | [not_isUnit](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialUnitTrinomialNamespaced.lean/declarations/not-isunit.md) | 146 | `result-track:ea35826919adebee70ca9e4dbafd4091ab6a2bffeefe5c8ae764e8f5f9d98423` |
| 15 | `theorem` | [card_support_eq_three](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialUnitTrinomialNamespaced.lean/declarations/card-support-eq-three.md) | 154 | `result-track:6f2d8243920ef1782faab133ecca3e55970f0608a0a09925286911bf58117cf5` |
| 16 | `theorem` | [ne_zero](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialUnitTrinomialNamespaced.lean/declarations/ne-zero.md) | 159 | `result-track:fe417fc11cb0ed6a38cfe54ea4f3cf4c4a1c60fbd731f81f9becf77293d332bc` |
| 17 | `theorem` | [coeff_isUnit](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialUnitTrinomialNamespaced.lean/declarations/coeff-isunit.md) | 164 | `result-track:39b390dbbdab6c0de96a7fc973a330a1a519a5b74e1a4c0f794aaf8ff7971cb6` |
| 18 | `theorem` | [leadingCoeff_isUnit](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialUnitTrinomialNamespaced.lean/declarations/leadingcoeff-isunit.md) | 175 | `result-track:4aefdd6993e4f2a1da6993c1030ca687ad29cb60fd5ab36b5d966364e9d961e5` |
| 19 | `theorem` | [trailingCoeff_isUnit](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialUnitTrinomialNamespaced.lean/declarations/trailingcoeff-isunit.md) | 179 | `result-track:56b7d78fa3faf5cd521ba5a9a66967be4d5f47406234e74646fca1cdfeb50087` |
| 20 | `theorem` | [isUnitTrinomial_iff](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialUnitTrinomialNamespaced.lean/declarations/isunittrinomial-iff-source-edition-3.md) | 185 | `result-track:f5d73fa8d949154d7aeca5a71e30e1978849e12a3bb411b6e256731dc3e40fec` |
| 21 | `theorem` | [isUnitTrinomial_iff'](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialUnitTrinomialNamespaced.lean/declarations/isunittrinomial-iff-source-edition-2.md) | 201 | `result-track:23411b45c177500aaf47cc8dc7099c428102f68d6945f7545c7bfd481c989ae2` |
| 22 | `theorem` | [isUnitTrinomial_iff''](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialUnitTrinomialNamespaced.lean/declarations/isunittrinomial-iff.md) | 222 | `result-track:0e98bb0f28d3e9d7900dad2408de536ddb89522830000a3e5c5fcbfb9cc689b3` |
| 23 | `theorem` | [irreducible_aux1](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialUnitTrinomialNamespaced.lean/declarations/irreducible-aux1.md) | 229 | `result-track:ec6dd37e83562a42d93c0134505b99d2d200c0d6e3f2b8a74528d3e3721cb089` |
| 24 | `theorem` | [irreducible_aux2](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialUnitTrinomialNamespaced.lean/declarations/irreducible-aux2.md) | 264 | `result-track:b75baf43d543e8d9dd2b903dc18f1d3336768191d4306c867058b009e45cb222` |
| 25 | `theorem` | [irreducible_aux3](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialUnitTrinomialNamespaced.lean/declarations/irreducible-aux3.md) | 289 | `result-track:9725cc6623fe45aa4b2bf765e58cdc2452767283cecec3dec4d29d067afc8b47` |
| 26 | `theorem` | [irreducible_of_coprime](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialUnitTrinomialNamespaced.lean/declarations/irreducible-of-coprime-source-edition-2.md) | 318 | `result-track:c964bba59425ddafebf2e57be95f8eb3cc7690514b2a867b9e18e5cd4a027d5a` |
| 27 | `theorem` | [irreducible_of_isCoprime](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialUnitTrinomialNamespaced.lean/declarations/irreducible-of-iscoprime.md) | 354 | `result-track:c1ee79ebba02ed9b616e9fbeb5e0ba86b6cb1a6778df1f0cac28a1fe3142176d` |
| 28 | `theorem` | [irreducible_of_coprime'](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialUnitTrinomialNamespaced.lean/declarations/irreducible-of-coprime.md) | 360 | `result-track:08a5b23492798e38b4c4ceb008559dc29803aa1c501a92a7c2daf8e729ec0a96` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=490e0e0cfba2fb7bbe22b8ee452787e952e2584f464428781504a89b7a297c61 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/CommutativeAlgebra/UnitTrinomial/Variant9b5302b121fcb7b3b6af36496449b693c9881fc4acc81dec4c454b8f48332b73.lean","GRWTSK/_verification/specifications/Algebra/CommutativeAlgebra/UnitTrinomial/Variant9b5302b121fcb7b3b6af36496449b693c9881fc4acc81dec4c454b8f48332b73.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
