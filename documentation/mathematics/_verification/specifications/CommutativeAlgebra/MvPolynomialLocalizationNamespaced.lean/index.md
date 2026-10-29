# Verification target: Mv Polynomial Localization Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5629cf9f4cd5dc40b9c598888a4616a5fbfae624",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Localization/Variantbfe9778a76a59ada1a0cb7377620e6a0f5af41d617ed7b0c60d94084f4e79129.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/MvPolynomialLocalizationNamespaced.lean/index.md) · [Full source](../../../../CommutativeAlgebra/MvPolynomialLocalizationNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5629cf9f4cd5dc40b9c598888a4616a5fbfae624`.

Source path: `GRWTSK/Algebra/Localization/Variantbfe9778a76a59ada1a0cb7377620e6a0f5af41d617ed7b0c60d94084f4e79129.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Localization/Variantbfe9778a76a59ada1a0cb7377620e6a0f5af41d617ed7b0c60d94084f4e79129.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Module.LocalizedModule.IsLocalization` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.MvPolynomial.CommRing` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.Quotient.Operations` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Localization.Away.Basic` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Localization.BaseChange` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.TensorProduct.MvPolynomial` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [isLocalization](../../../../CommutativeAlgebra/MvPolynomialLocalizationNamespaced.lean/declarations/islocalization.md) | 49 | `declaration-track:c5a49be16524f392ede730ff8cccccadcfed86e1c8dede2d5a63a9fc77d59f0a` |
| 2 | `lemma` | [isLocalization_C_mk'](../../../../CommutativeAlgebra/MvPolynomialLocalizationNamespaced.lean/declarations/islocalization-c-mk.md) | 53 | `result-track:2973a69f7e58dd6cf9336b2e6e185ea167190fa7d9ec77ffdc41d47050c44a92` |
| 3 | `def` | [auxHom](../../../../CommutativeAlgebra/MvPolynomialLocalizationNamespaced.lean/declarations/auxhom.md) | 70 | `declaration-track:8da625811699263e98afe7e8a5512e0a84cf6dfb77ba2b9d6bb615befd89033b` |
| 4 | `lemma` | [auxHom_mk](../../../../CommutativeAlgebra/MvPolynomialLocalizationNamespaced.lean/declarations/auxhom-mk.md) | 83 | `result-track:a3d1355ca4de962f86495c4da32e7a4ea71fc045b8b830dcaa4768dc3ca73a65` |
| 5 | `def` | [auxInv](../../../../CommutativeAlgebra/MvPolynomialLocalizationNamespaced.lean/declarations/auxinv.md) | 88 | `declaration-track:3dcf4b6176112e943c07d9f38f68e4259343203a30492e9f0c38ca202688bebe` |
| 6 | `lemma` | [auxHom_auxInv](../../../../CommutativeAlgebra/MvPolynomialLocalizationNamespaced.lean/declarations/auxhom-auxinv.md) | 98 | `result-track:f7d3af15673967c2effdcda0d0a77383b8285b18dc6a9463504baae95ddf65f1` |
| 7 | `lemma` | [auxInv_auxHom](../../../../CommutativeAlgebra/MvPolynomialLocalizationNamespaced.lean/declarations/auxinv-auxhom.md) | 103 | `result-track:cd2b53f16813dd2e21e69cbcd74db824f347d759170a8679b7f69979ad3a72fa` |
| 8 | `def` | [mvPolynomialQuotientEquiv](../../../../CommutativeAlgebra/MvPolynomialLocalizationNamespaced.lean/declarations/mvpolynomialquotientequiv.md) | 117 | `declaration-track:51091fc93910e9d27fffb14ecd9f67c4f10de9dcc9fd5dbb6ade319bcb26aad8` |
| 9 | `lemma` | [mvPolynomialQuotientEquiv_apply](../../../../CommutativeAlgebra/MvPolynomialLocalizationNamespaced.lean/declarations/mvpolynomialquotientequiv-apply.md) | 130 | `result-track:5f9908ae610fb5101c39695bed83f69e548e0d546fdb1c2d63a471248f0a4c55` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c2f9b00e40f76a1832e9db73e12b24ccf13b0f6b2f285f79936133ee55b04896 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Localization/Variantbfe9778a76a59ada1a0cb7377620e6a0f5af41d617ed7b0c60d94084f4e79129.lean","GRWTSK/_verification/specifications/Algebra/Localization/Variantbfe9778a76a59ada1a0cb7377620e6a0f5af41d617ed7b0c60d94084f4e79129.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
