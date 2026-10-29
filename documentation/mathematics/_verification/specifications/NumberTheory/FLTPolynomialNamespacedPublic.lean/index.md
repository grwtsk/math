# Verification target: FLTPolynomial Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "afc4df8a8e7c9dd13ad44aaf76533baa245392de",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Polynomial/Variantea595137437e13cf1cf765eb8fec796349dfed3fc276e282f12788d429c872c1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../NumberTheory/FLTPolynomialNamespacedPublic.lean/index.md) · [Full source](../../../../NumberTheory/FLTPolynomialNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `afc4df8a8e7c9dd13ad44aaf76533baa245392de`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Polynomial/Variantea595137437e13cf1cf765eb8fec796349dfed3fc276e282f12788d429c872c1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Polynomial/Variantea595137437e13cf1cf765eb8fec796349dfed3fc276e282f12788d429c872c1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Polynomial.IsIntegral` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [Ne.isUnit_C](../../../../NumberTheory/FLTPolynomialNamespacedPublic.lean/declarations/ne-isunit-c.md) | 47 | `result-track:08b36f545e2482cd647ad21921e6a5c6c11718ee24a32332897426dfd2c0bcc3` |
| 2 | `lemma` | [rot_coprime](../../../../NumberTheory/FLTPolynomialNamespacedPublic.lean/declarations/rot-coprime.md) | 51 | `result-track:ab83db107b9adbe2fc7a612b60dadfb846181b8c47217868bd4812b17cbea279` |
| 3 | `lemma` | [ineq_pqr_contradiction](../../../../NumberTheory/FLTPolynomialNamespacedPublic.lean/declarations/ineq-pqr-contradiction.md) | 66 | `result-track:8d31471ea091607b8f90e932f17ed057b09b2ac9962eb4148cf9964bee12b112` |
| 4 | `theorem` | [Polynomial.flt_catalan_deriv](../../../../NumberTheory/FLTPolynomialNamespacedPublic.lean/declarations/polynomial-flt-catalan-deriv.md) | 81 | `result-track:e2b299a39ec2e34d27c13339cad2ea49f5cfc01fd53fdea5d179129e911f45d0` |
| 5 | `lemma` | [find_contract](../../../../NumberTheory/FLTPolynomialNamespacedPublic.lean/declarations/find-contract.md) | 139 | `result-track:04cc65e4c64060d8c51230e871f4225e3622a6420123ae279ccbf265f596685d` |
| 6 | `theorem` | [Polynomial.flt_catalan_aux](../../../../NumberTheory/FLTPolynomialNamespacedPublic.lean/declarations/polynomial-flt-catalan-aux.md) | 152 | `result-track:1cfc9852ac8f47141d0deb7f98fa999ef7d123e663c8c501be0c9fdd9566dd37` |
| 7 | `theorem` | [Polynomial.flt_catalan](../../../../NumberTheory/FLTPolynomialNamespacedPublic.lean/declarations/polynomial-flt-catalan.md) | 204 | `result-track:305ada6f49b1a5cd6e2a246b0eafa7e8ee137274d8452cd4efb6ebb8e0b4afb5` |
| 8 | `theorem` | [Polynomial.flt](../../../../NumberTheory/FLTPolynomialNamespacedPublic.lean/declarations/polynomial-flt.md) | 228 | `result-track:1d7e8f9c73bdbc8324d5a716310594ba3206bed570cb6084a3b907137ac6cb37` |
| 9 | `theorem` | [fermatLastTheoremWith'_polynomial](../../../../NumberTheory/FLTPolynomialNamespacedPublic.lean/declarations/fermatlasttheoremwith-polynomial.md) | 245 | `result-track:b889dfacd71bdc509e451f78e0eafe863965ec98f4e24f68f8645041e42afd38` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=537e812a383cf2f0bd22d6690e134782ae368562a3f3515974b6764ae4e29931 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/CommutativeAlgebra/Polynomial/Variantea595137437e13cf1cf765eb8fec796349dfed3fc276e282f12788d429c872c1.lean","GRWTSK/_verification/specifications/Algebra/CommutativeAlgebra/Polynomial/Variantea595137437e13cf1cf765eb8fec796349dfed3fc276e282f12788d429c872c1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
