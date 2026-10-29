# Verification target: Isomorphisms Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c9f69830f98d0eebd5bc1222dca52af2edd92c57",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Isomorphisms/Variant199562319f6e28919611afc8580c35a20fda2067a29d6ab41c71366ee43c403b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/IsomorphismsNamespacedPublic.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/IsomorphismsNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c9f69830f98d0eebd5bc1222dca52af2edd92c57`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Isomorphisms/Variant199562319f6e28919611afc8580c35a20fda2067a29d6ab41c71366ee43c403b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Isomorphisms/Variant199562319f6e28919611afc8580c35a20fda2067a29d6ab41c71366ee43c403b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [quotKerEquivRange](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/IsomorphismsNamespacedPublic.lean/declarations/quotkerequivrange.md) | 47 | `declaration-track:f202b677d30ecd8090535c8b37e892a099b1792fcdd47258cbbf829a574707cc` |
| 2 | `def` | [quotKerEquivOfSurjective](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/IsomorphismsNamespacedPublic.lean/declarations/quotkerequivofsurjective.md) | 55 | `declaration-track:991a9ba3909c434d18e6e95bc2dcbd968883786dfda796330defd53209df5398` |
| 3 | `theorem` | [quotKerEquivRange_apply_mk](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/IsomorphismsNamespacedPublic.lean/declarations/quotkerequivrange-apply-mk.md) | 60 | `result-track:b6e61ee776adc7cc24f3997e16d357110ddf2fc2d255a715db37f28d4ef2c3e8` |
| 4 | `theorem` | [quotKerEquivOfSurjective_apply_mk](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/IsomorphismsNamespacedPublic.lean/declarations/quotkerequivofsurjective-apply-mk.md) | 65 | `result-track:92af0c102325551eaf19820c485e722be8974ca2cd9b57e57505815d196aab41` |
| 5 | `theorem` | [quotKerEquivRange_symm_apply_image](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/IsomorphismsNamespacedPublic.lean/declarations/quotkerequivrange-symm-apply-image.md) | 70 | `result-track:f01342d2f191eab9f983d20c62221b1684533a90f13efb983e1a6ef074334d4e` |
| 6 | `theorem` | [quotKerEquivOfSurjective_symm_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/IsomorphismsNamespacedPublic.lean/declarations/quotkerequivofsurjective-symm-apply.md) | 75 | `result-track:d64fd6ae3f23e32e6953ece4d288c3bbb33a2528481779bf818d0bfb81b393fd` |
| 7 | `abbrev` | [subToSupQuotient](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/IsomorphismsNamespacedPublic.lean/declarations/subtosupquotient.md) | 80 | `declaration-track:6763be12460de5972ec0e041c490ca6702b3dbc1a77301f2206cc9e36c7a5716` |
| 8 | `theorem` | [comap_leq_ker_subToSupQuotient](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/IsomorphismsNamespacedPublic.lean/declarations/comap-leq-ker-subtosupquotient.md) | 84 | `result-track:63a4f7b8485fa7d1c49d268e13e4f25526212242df78896230020105896b6809` |
| 9 | `def` | [quotientInfToSupQuotient](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/IsomorphismsNamespacedPublic.lean/declarations/quotientinftosupquotient.md) | 97 | `declaration-track:dd73d1ea3ac8de24a5f4f10b8b054374cb2378f5f4ecbb6479fd98ea6ad3fad7` |
| 10 | `theorem` | [quotientInfEquivSupQuotient_injective](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/IsomorphismsNamespacedPublic.lean/declarations/quotientinfequivsupquotient-injective.md) | 103 | `result-track:ce759673f1cec8f46f242b52fc6d58890df3cd893d8546d76d500073740f0c0f` |
| 11 | `theorem` | [quotientInfEquivSupQuotient_surjective](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/IsomorphismsNamespacedPublic.lean/declarations/quotientinfequivsupquotient-surjective.md) | 110 | `result-track:f1a538a688545d1a83f03b8b3fe4b7f925e37790b95af4e45c17c00ef551e027` |
| 12 | `def` | [quotientInfEquivSupQuotient](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/IsomorphismsNamespacedPublic.lean/declarations/quotientinfequivsupquotient.md) | 125 | `declaration-track:fe1e3900471189e5f57d2738468875654bc5ce82c1d4aa6e04b46cc40c21e106` |
| 13 | `theorem` | [coe_quotientInfToSupQuotient](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/IsomorphismsNamespacedPublic.lean/declarations/coe-quotientinftosupquotient.md) | 131 | `result-track:d1c17dfc79bd8175a42f8742720475744d275639884f965ee98e735f2b03168b` |
| 14 | `theorem` | [quotientInfEquivSupQuotient_apply_mk](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/IsomorphismsNamespacedPublic.lean/declarations/quotientinfequivsupquotient-apply-mk.md) | 135 | `result-track:266300124ae24aab55945d452f8d8820a8c339057d0a7592b37a9a0004910ae5` |
| 15 | `theorem` | [quotientInfEquivSupQuotient_symm_apply_left](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/IsomorphismsNamespacedPublic.lean/declarations/quotientinfequivsupquotient-symm-apply-left.md) | 141 | `result-track:5d4b7f49ff606d9ef2a8e07a749b47cf2024ddbb977655000ab2f2d18d3a3e6d` |
| 16 | `theorem` | [quotientInfEquivSupQuotient_symm_apply_eq_zero_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/IsomorphismsNamespacedPublic.lean/declarations/quotientinfequivsupquotient-symm-apply-eq-zero-iff.md) | 149 | `result-track:4e8429cd814e3950670df41e38ddb6fefac16321e91061613578f1bd2f141915` |
| 17 | `theorem` | [quotientInfEquivSupQuotient_symm_apply_right](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/IsomorphismsNamespacedPublic.lean/declarations/quotientinfequivsupquotient-symm-apply-right.md) | 153 | `result-track:484499e97a617782405dcf321b5e701686e3175ca1e49a4faab3b7b9cd131cf5` |
| 18 | `def` | [quotientQuotientEquivQuotientAux](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/IsomorphismsNamespacedPublic.lean/declarations/quotientquotientequivquotientaux.md) | 169 | `declaration-track:c7d46f2e630cba68fe6802c2d7f0ded579597869b8a34e0b0a5cc8174a9eca49` |
| 19 | `theorem` | [quotientQuotientEquivQuotientAux_mk](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/IsomorphismsNamespacedPublic.lean/declarations/quotientquotientequivquotientaux-mk.md) | 177 | `result-track:68ac5542252c750af67ac0a146f944406d0963859621db0842c8410af38def5d` |
| 20 | `theorem` | [quotientQuotientEquivQuotientAux_mk_mk](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/IsomorphismsNamespacedPublic.lean/declarations/quotientquotientequivquotientaux-mk-mk.md) | 183 | `result-track:d1aa52087f6dd02f367c2cadc04cab5e569a2ff00360f9a12a618f6fb6da1bdb` |
| 21 | `def` | [quotientQuotientEquivQuotient](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/IsomorphismsNamespacedPublic.lean/declarations/quotientquotientequivquotient.md) | 187 | `declaration-track:0f1f1f033a5dfdbd46280cc52dc63c4cc9f4bedaa4249496bffa34a5d75b8d41` |
| 22 | `def` | [quotientQuotientEquivQuotientSup](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/IsomorphismsNamespacedPublic.lean/declarations/quotientquotientequivquotientsup.md) | 199 | `declaration-track:68bc81143fe0783e08a6f0c331211be96c6f7a0e5c7a56a12691471c3d6e30bb` |
| 23 | `theorem` | [card_quotient_mul_card_quotient](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/IsomorphismsNamespacedPublic.lean/declarations/card-quotient-mul-card-quotient.md) | 204 | `result-track:68602ae9e16ed7c341d0cb32167d106b670596a3968db59080ee9d04f25c5b41` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1ecc0aa16943dcd5889b56f4eee138e2d4fd000ae6b43118ecd4b9444541554e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Isomorphisms/Variant199562319f6e28919611afc8580c35a20fda2067a29d6ab41c71366ee43c403b.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Isomorphisms/Variant199562319f6e28919611afc8580c35a20fda2067a29d6ab41c71366ee43c403b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
