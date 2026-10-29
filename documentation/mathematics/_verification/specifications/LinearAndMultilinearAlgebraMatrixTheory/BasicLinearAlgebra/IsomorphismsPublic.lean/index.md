# Verification target: Isomorphisms Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "842f0ca7aeffd55210345de77c6911af22c68d03",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Isomorphisms/Variant9b09cba140051ca8b9aa93f6cf22a85c3d9fd4d1c108939c6a6e0b44a0192d73.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/IsomorphismsPublic.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/IsomorphismsPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `842f0ca7aeffd55210345de77c6911af22c68d03`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Isomorphisms/Variant9b09cba140051ca8b9aa93f6cf22a85c3d9fd4d1c108939c6a6e0b44a0192d73.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Isomorphisms/Variant9b09cba140051ca8b9aa93f6cf22a85c3d9fd4d1c108939c6a6e0b44a0192d73.lean.json)

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
| 1 | `def` | [quotKerEquivRange](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/IsomorphismsPublic.lean/declarations/quotkerequivrange.md) | 39 | `declaration-track:215ff2860cf57116cb7ed3e961a5c72e3823f780edfbcd55e6b625a81c6ae465` |
| 2 | `def` | [quotKerEquivOfSurjective](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/IsomorphismsPublic.lean/declarations/quotkerequivofsurjective.md) | 47 | `declaration-track:8d9a8d172f510040ca88aad872f17ca6a20c217a4ab87eeda9090c9dd3cc4b40` |
| 3 | `theorem` | [quotKerEquivRange_apply_mk](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/IsomorphismsPublic.lean/declarations/quotkerequivrange-apply-mk.md) | 52 | `result-track:ca5c22e174481c73ab0f9af4718959c5c19b63274abe796d9e91d3ac8a715912` |
| 4 | `theorem` | [quotKerEquivOfSurjective_apply_mk](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/IsomorphismsPublic.lean/declarations/quotkerequivofsurjective-apply-mk.md) | 57 | `result-track:72c5d2ad72876d4f19136eb07b1ffbb6976d07f984164380559ca85ae7d2a920` |
| 5 | `theorem` | [quotKerEquivRange_symm_apply_image](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/IsomorphismsPublic.lean/declarations/quotkerequivrange-symm-apply-image.md) | 62 | `result-track:3c79c5922939a85f72a1398bed2d8342248f3ae5553901a9f9d58442cc61ef40` |
| 6 | `theorem` | [quotKerEquivOfSurjective_symm_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/IsomorphismsPublic.lean/declarations/quotkerequivofsurjective-symm-apply.md) | 67 | `result-track:ed992425e2491ac9efd93ac3c99f7b236f895a89878d2bdb32525822d3a979e2` |
| 7 | `abbrev` | [subToSupQuotient](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/IsomorphismsPublic.lean/declarations/subtosupquotient.md) | 72 | `declaration-track:6e3ca45bb60e49cab7216c6569d2565642c5c5b0afca799eb52ae3e32b297ea4` |
| 8 | `theorem` | [comap_leq_ker_subToSupQuotient](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/IsomorphismsPublic.lean/declarations/comap-leq-ker-subtosupquotient.md) | 76 | `result-track:0722fa1c59d1e3891290a8f0e843d6f9b47d1e560111b96a3120b5c257a03bc9` |
| 9 | `def` | [quotientInfToSupQuotient](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/IsomorphismsPublic.lean/declarations/quotientinftosupquotient.md) | 89 | `declaration-track:27e3667ce153308bc45db834b1dff5d00d698b2ccc4f6326f662ad0d7d3d5f60` |
| 10 | `theorem` | [quotientInfEquivSupQuotient_injective](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/IsomorphismsPublic.lean/declarations/quotientinfequivsupquotient-injective.md) | 95 | `result-track:44c0a23f8a412c7b2c416487d5870af2cc8640052442d5ed939471a5044df271` |
| 11 | `theorem` | [quotientInfEquivSupQuotient_surjective](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/IsomorphismsPublic.lean/declarations/quotientinfequivsupquotient-surjective.md) | 102 | `result-track:668a51b29ed8ac8221db44c90eb8ed739ca3cfd7143710315028fe990a40f460` |
| 12 | `def` | [quotientInfEquivSupQuotient](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/IsomorphismsPublic.lean/declarations/quotientinfequivsupquotient.md) | 117 | `declaration-track:937f14f2a8034f70d2a18106168b17c37b1f4412f8ecb2d76e3c5720e6d7c95f` |
| 13 | `theorem` | [coe_quotientInfToSupQuotient](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/IsomorphismsPublic.lean/declarations/coe-quotientinftosupquotient.md) | 123 | `result-track:d82690c1d1b2a355df33bc638b77f51622b1dc1a3ffc87bbe901814bab5422b9` |
| 14 | `theorem` | [quotientInfEquivSupQuotient_apply_mk](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/IsomorphismsPublic.lean/declarations/quotientinfequivsupquotient-apply-mk.md) | 127 | `result-track:d1cbd2c29a979a6c345d5e9d7a722dc15aeac5a6a62f4c0f42d25643b5b127ef` |
| 15 | `theorem` | [quotientInfEquivSupQuotient_symm_apply_left](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/IsomorphismsPublic.lean/declarations/quotientinfequivsupquotient-symm-apply-left.md) | 133 | `result-track:3aa681d0e3bfae70474fb7e26808a12fb0b6fcbcce6b56d4332d08b37647dd34` |
| 16 | `theorem` | [quotientInfEquivSupQuotient_symm_apply_eq_zero_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/IsomorphismsPublic.lean/declarations/quotientinfequivsupquotient-symm-apply-eq-zero-iff.md) | 141 | `result-track:756dbee734e968772fdd91c8f4d5a6f563374390998c855f0dade8b0597a3b62` |
| 17 | `theorem` | [quotientInfEquivSupQuotient_symm_apply_right](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/IsomorphismsPublic.lean/declarations/quotientinfequivsupquotient-symm-apply-right.md) | 145 | `result-track:55b347c3ce9da4db5624df532aa6f1acb6ce758eefcc1ee09668e4c1d4b226f9` |
| 18 | `def` | [quotientQuotientEquivQuotientAux](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/IsomorphismsPublic.lean/declarations/quotientquotientequivquotientaux.md) | 161 | `declaration-track:194278c75ee63dd4f7d213191f2919bc848d315f741eedd07661a3272ac2d543` |
| 19 | `theorem` | [quotientQuotientEquivQuotientAux_mk](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/IsomorphismsPublic.lean/declarations/quotientquotientequivquotientaux-mk.md) | 169 | `result-track:e244a00d2f0f8efcab8c86e65de10091c222d31125101879f106c95077e4a75b` |
| 20 | `theorem` | [quotientQuotientEquivQuotientAux_mk_mk](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/IsomorphismsPublic.lean/declarations/quotientquotientequivquotientaux-mk-mk.md) | 175 | `result-track:dd4114f0e8d5d40c415955f6d4ca5dea7f6506acc564292243a4964ea3d030c0` |
| 21 | `def` | [quotientQuotientEquivQuotient](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/IsomorphismsPublic.lean/declarations/quotientquotientequivquotient.md) | 179 | `declaration-track:be8d1ccab25ff549641f2e46d7a2d7d38aa06340640b5fc9905e9c5ac06422ed` |
| 22 | `def` | [quotientQuotientEquivQuotientSup](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/IsomorphismsPublic.lean/declarations/quotientquotientequivquotientsup.md) | 191 | `declaration-track:508e5681b60e58489cc5223709b2bb76290fd7703181a4f393471e8ff23cabd7` |
| 23 | `theorem` | [card_quotient_mul_card_quotient](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/IsomorphismsPublic.lean/declarations/card-quotient-mul-card-quotient.md) | 196 | `result-track:8fb6298c8eefa8621d8d8d2e87385d3a6df39f4524ef053078719f5154733369` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b4e5bd6ef156b248f87546c484c5ccabd7d7fb8ddafd9f115e07329b286d86f1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Isomorphisms/Variant9b09cba140051ca8b9aa93f6cf22a85c3d9fd4d1c108939c6a6e0b44a0192d73.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Isomorphisms/Variant9b09cba140051ca8b9aa93f6cf22a85c3d9fd4d1c108939c6a6e0b44a0192d73.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
