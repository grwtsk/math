# Verification target: Polynomial Derivation Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "aa2b842ec2f27434d52f83e1f8ae6d92e885abe6",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/ProofTheory/Derivation/Varianta04a5789ddb489c583a080a77eccd222cf1bf245f3b80d5d8ce2a4684acfb742.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialDerivationNamespaced.lean/index.md) · [Full source](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialDerivationNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `aa2b842ec2f27434d52f83e1f8ae6d92e885abe6`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/ProofTheory/Derivation/Varianta04a5789ddb489c583a080a77eccd222cf1bf245f3b80d5d8ce2a4684acfb742.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/ProofTheory/Derivation/Varianta04a5789ddb489c583a080a77eccd222cf1bf245f3b80d5d8ce2a4684acfb742.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Polynomial.Derivative` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Derivation.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Polynomial.AlgebraMap` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [derivative'](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialDerivationNamespaced.lean/declarations/derivative.md) | 37 | `declaration-track:a74e8aad71723c1276f3d397aebc779df9730972fa74b9ed61629700a723fc87` |
| 2 | `theorem` | [derivation_C](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialDerivationNamespaced.lean/declarations/derivation-c.md) | 47 | `result-track:957581456cb788489acb0b638c2ba6c976d9f5f82bf2cdcb26912ad421e9d15e` |
| 3 | `theorem` | [C_smul_derivation_apply](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialDerivationNamespaced.lean/declarations/c-smul-derivation-apply.md) | 51 | `result-track:d599104b69ed5d6eae638ab6f4202a8a572fa702c2d3b1a7f90a3649e3242e82` |
| 4 | `theorem` | [derivation_ext](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialDerivationNamespaced.lean/declarations/derivation-ext.md) | 57 | `result-track:0089e0cbfd67bbb22c826292e7b656c17208a85f0ec979e5a1a77935083ad7b3` |
| 5 | `def` | [mkDerivation](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialDerivationNamespaced.lean/declarations/mkderivation.md) | 66 | `declaration-track:f067a40a73d308d504cfa28f7ef21cd9a638125da3e233b977ffd8d80094954c` |
| 6 | `lemma` | [mkDerivation_apply](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialDerivationNamespaced.lean/declarations/mkderivation-apply.md) | 71 | `result-track:8af6445e1762cd30f8e8806364c5043d9a5b295ddfaebd6251f9e4098220420a` |
| 7 | `theorem` | [mkDerivation_X](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialDerivationNamespaced.lean/declarations/mkderivation-x.md) | 76 | `result-track:5c2a169b33428fe60501a278dc0e1bc80519af5eb27cf2dc4f511376ceea7308` |
| 8 | `lemma` | [mkDerivation_one_eq_derivative'](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialDerivationNamespaced.lean/declarations/mkderivation-one-eq-derivative.md) | 78 | `result-track:b0874204c5ac550fd14c052ea162e1c174c67da86a5cf1c3b57ad728a9e80b1b` |
| 9 | `lemma` | [mkDerivation_one_eq_derivative](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialDerivationNamespaced.lean/declarations/mkderivation-one-eq-derivative-source-edition-2.md) | 82 | `result-track:cf018f2e77ccca9e91d033a0ac421806645a76b5dd563c0cef0302cfb7907317` |
| 10 | `def` | [mkDerivationEquiv](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialDerivationNamespaced.lean/declarations/mkderivationequiv.md) | 87 | `declaration-track:6dda5c1afccb688c5ef946bd2424b78c48bb214d5b1f4bbaf5787fb7f800c639` |
| 11 | `lemma` | [mkDerivationEquiv_apply](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialDerivationNamespaced.lean/declarations/mkderivationequiv-apply.md) | 96 | `result-track:62544fe612142f919f2b70e26d503f8f1ad02b2e8f2ac5ded73186c9f9b57740` |
| 12 | `lemma` | [mkDerivationEquiv_symm_apply](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialDerivationNamespaced.lean/declarations/mkderivationequiv-symm-apply.md) | 100 | `result-track:0f766ababab74910a306fc2d93f1faa1cf4dffbe764b54f3bd19056a1a6d7755` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=64e0d4c26abb8124cd2b5e0143f96141719237d8cb61ec59e0e78ebe896ae987 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/ProofTheory/Derivation/Varianta04a5789ddb489c583a080a77eccd222cf1bf245f3b80d5d8ce2a4684acfb742.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/ProofTheory/Derivation/Varianta04a5789ddb489c583a080a77eccd222cf1bf245f3b80d5d8ce2a4684acfb742.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
