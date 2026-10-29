# Verification target: Data Polynomial Hasse Deriv Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "02290cc27be24a51a384a41e62339e1f538e9292",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/HasseDeriv/Variant12846972ac2be4d2237e14bb3e2ddc73bc4658a25ca64bbd8b6676c53e9047a6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialHasseDerivNamespaced.lean/index.md) · [Full source](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialHasseDerivNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `02290cc27be24a51a384a41e62339e1f538e9292`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/HasseDeriv/Variant12846972ac2be4d2237e14bb3e2ddc73bc4658a25ca64bbd8b6676c53e9047a6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/HasseDeriv/Variant12846972ac2be4d2237e14bb3e2ddc73bc4658a25ca64bbd8b6676c53e9047a6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Polynomial.BigOperators` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Choose.Cast` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Choose.Vandermonde` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Polynomial.Derivative` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FieldSimp` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [hasseDeriv](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialHasseDerivNamespaced.lean/declarations/hassederiv.md) | 66 | `declaration-track:df9f8acae37afe9f9b5e578f6caab0a43c86d3197e7fbfbca39fa18c769136b4` |
| 2 | `theorem` | [hasseDeriv_apply](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialHasseDerivNamespaced.lean/declarations/hassederiv-apply.md) | 70 | `result-track:23dd2875cfa2289a24984492c23685054c6078cf7105502d23161d9be7253105` |
| 3 | `theorem` | [hasseDeriv_coeff](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialHasseDerivNamespaced.lean/declarations/hassederiv-coeff.md) | 77 | `result-track:e99cfad78f8421209658596d1eb9af473239c56af0e55c7d47aa97435275bb5d` |
| 4 | `theorem` | [hasseDeriv_zero'](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialHasseDerivNamespaced.lean/declarations/hassederiv-zero.md) | 93 | `result-track:6ec743ab5c06f57f96189a83665546461583488d7ce2f3583b2b8e501997d920` |
| 5 | `theorem` | [hasseDeriv_zero](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialHasseDerivNamespaced.lean/declarations/hassederiv-zero-source-edition-2.md) | 99 | `result-track:ec80086321305947c780606ab19b9456178eb8afa5b811f1ca754e0b28a83e19` |
| 6 | `theorem` | [hasseDeriv_eq_zero_of_lt_natDegree](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialHasseDerivNamespaced.lean/declarations/hassederiv-eq-zero-of-lt-natdegree.md) | 103 | `result-track:63925804790175a88b5a4a3997457ca77950acbf418a8d4594a48ccc4be9b44f` |
| 7 | `theorem` | [hasseDeriv_one'](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialHasseDerivNamespaced.lean/declarations/hassederiv-one.md) | 110 | `result-track:216e504f9565404092f851fc44996e5cc7c2a83c8f5740475930a7095968e241` |
| 8 | `theorem` | [hasseDeriv_one](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialHasseDerivNamespaced.lean/declarations/hassederiv-one-source-edition-2.md) | 116 | `result-track:2ebb9e125e63d16121603cb804d5fc51f4e424a661e2e21b82d7b71cce6db947` |
| 9 | `theorem` | [hasseDeriv_monomial](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialHasseDerivNamespaced.lean/declarations/hassederiv-monomial.md) | 121 | `result-track:5bc4e1a4f1433303ff6f66e3447f6d630b22f1b40f2c1dd71ad504b4f48bb75a` |
| 10 | `theorem` | [hasseDeriv_C](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialHasseDerivNamespaced.lean/declarations/hassederiv-c.md) | 137 | `result-track:609afad0821dddaf1c6b8f4d6d0a2df0b11c655a3eacaca2f29535298522657a` |
| 11 | `theorem` | [hasseDeriv_apply_one](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialHasseDerivNamespaced.lean/declarations/hassederiv-apply-one.md) | 143 | `result-track:311adc45bb6ba8268c679eb7aa5b0ff2f0e3230c2b9c9c2fc28c0a1603baadc3` |
| 12 | `theorem` | [hasseDeriv_X](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialHasseDerivNamespaced.lean/declarations/hassederiv-x.md) | 147 | `result-track:9bd8556ce318215d93f5daaa44bbbfdf235ac0bc8ecd790deb4d414d2aa28295` |
| 13 | `theorem` | [factorial_smul_hasseDeriv](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialHasseDerivNamespaced.lean/declarations/factorial-smul-hassederiv.md) | 153 | `result-track:a45abe76f9a021e6ab119daaabbd37f6bda463eca87f9977c2e50ba9b5df35bf` |
| 14 | `theorem` | [hasseDeriv_comp](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialHasseDerivNamespaced.lean/declarations/hassederiv-comp.md) | 174 | `result-track:b8e9c55acfb04d4e59be621751c5c3d4e505c0a0fe453b51e97ba56e1f41f5c1` |
| 15 | `theorem` | [natDegree_hasseDeriv_le](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialHasseDerivNamespaced.lean/declarations/natdegree-hassederiv-le.md) | 202 | `result-track:0a8dbcf931d0c0f895a9e79b0eb49eab1b68e8c6f45d41e5d00ded4218a7d355` |
| 16 | `theorem` | [natDegree_hasseDeriv](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialHasseDerivNamespaced.lean/declarations/natdegree-hassederiv.md) | 220 | `result-track:e3d8333de2b56068571b18d75b08d05aefebeedbcc0d5030c6391db895806a6e` |
| 17 | `theorem` | [hasseDeriv_mul](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialHasseDerivNamespaced.lean/declarations/hassederiv-mul.md) | 238 | `result-track:27359dafc1e6255afbb0758a32d360561b432b081e5bb87ac82b1bf74df869d2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6754dd940a4a7712dc3118a4aadd82e58519655d05bcf16b8c2fd8e74e4fd8fe -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/CommutativeAlgebra/HasseDeriv/Variant12846972ac2be4d2237e14bb3e2ddc73bc4658a25ca64bbd8b6676c53e9047a6.lean","GRWTSK/_verification/specifications/Algebra/CommutativeAlgebra/HasseDeriv/Variant12846972ac2be4d2237e14bb3e2ddc73bc4658a25ca64bbd8b6676c53e9047a6.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
