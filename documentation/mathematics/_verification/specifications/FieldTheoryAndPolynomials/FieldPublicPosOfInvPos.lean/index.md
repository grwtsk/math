# Verification target: Field Public Pos Of Inv Pos

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "dba1a34cc18724d060f99ac1f1661e4594b887bc",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Field/Variant0cecbe11534d5b2e3eca87d11d4c114ca2bfc293257d2bfadb5c7bd8e5aedf95.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FieldTheoryAndPolynomials/FieldPublicPosOfInvPos.lean/index.md) · [Full source](../../../../FieldTheoryAndPolynomials/FieldPublicPosOfInvPos.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `dba1a34cc18724d060f99ac1f1661e4594b887bc`.

Source path: `GRWTSK/Algebra/Field/Variant0cecbe11534d5b2e3eca87d11d4c114ca2bfc293257d2bfadb5c7bd8e5aedf95.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Field/Variant0cecbe11534d5b2e3eca87d11d4c114ca2bfc293257d2bfadb5c7bd8e5aedf95.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Grind.Ordered.Order` — import line 11; external provider; requires a separately pinned dependency.
- `Init.RCases` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [pos_of_inv_pos](../../../../FieldTheoryAndPolynomials/FieldPublicPosOfInvPos.lean/declarations/pos-of-inv-pos.md) | 27 | `result-track:fa40382e912af288ba038e0bac2927989e75f37b8f4920c124bce795003d3920` |
| 2 | `theorem` | [inv_pos_iff](../../../../FieldTheoryAndPolynomials/FieldPublicPosOfInvPos.lean/declarations/inv-pos-iff.md) | 36 | `result-track:319177d7d0cba0de786c128f53a9a9ce9091374a70924dc435c9f0bbe12f9a3a` |
| 3 | `theorem` | [inv_neg_iff](../../../../FieldTheoryAndPolynomials/FieldPublicPosOfInvPos.lean/declarations/inv-neg-iff.md) | 43 | `result-track:4ab4d7926cce413d50c4ca3b79ab50208a35fd19d53d6086b427d3f370b8c3f4` |
| 4 | `theorem` | [inv_nonneg_iff](../../../../FieldTheoryAndPolynomials/FieldPublicPosOfInvPos.lean/declarations/inv-nonneg-iff.md) | 48 | `result-track:7a4199fb90846282446f0f5495e1e03553b0b0343413e0b9f1f38aa2fb40e26e` |
| 5 | `theorem` | [inv_nonpos_iff](../../../../FieldTheoryAndPolynomials/FieldPublicPosOfInvPos.lean/declarations/inv-nonpos-iff.md) | 51 | `result-track:241bfe6f559fa7e17e0a874f5a18928d5b3e189584ca90fa4ef44ed5223477c5` |
| 6 | `theorem` | [mul_le_of_le_mul_inv](../../../../FieldTheoryAndPolynomials/FieldPublicPosOfInvPos.lean/declarations/mul-le-of-le-mul-inv.md) | 56 | `result-track:c564a3f5b5c291db4eccfe187845d0d9c0b4c89a4390572736495505e851221d` |
| 7 | `theorem` | [le_mul_inv_of_mul_le](../../../../FieldTheoryAndPolynomials/FieldPublicPosOfInvPos.lean/declarations/le-mul-inv-of-mul-le.md) | 60 | `result-track:b4e112ca67a8611b15aa69b4c018651629c0f53a9943a581092cb010408027b1` |
| 8 | `theorem` | [le_mul_inv_iff_mul_le](../../../../FieldTheoryAndPolynomials/FieldPublicPosOfInvPos.lean/declarations/le-mul-inv-iff-mul-le.md) | 64 | `result-track:f4a7b77a51bab8d5e7de32083582ad7be320cebc4a9fb963679ddff57bfbf616` |
| 9 | `theorem` | [mul_inv_le_iff_le_mul](../../../../FieldTheoryAndPolynomials/FieldPublicPosOfInvPos.lean/declarations/mul-inv-le-iff-le-mul.md) | 67 | `result-track:ee45725cae822cadf4467c8cca118f10a5e7f7f205aa70229929139d7276c7f4` |
| 10 | `theorem` | [mul_lt_of_lt_mul_inv](../../../../FieldTheoryAndPolynomials/FieldPublicPosOfInvPos.lean/declarations/mul-lt-of-lt-mul-inv.md) | 71 | `result-track:d5042879fff000e370da2ea5e15282865275f77603e06fc7676736d1a686e69e` |
| 11 | `theorem` | [lt_mul_inv_of_mul_lt](../../../../FieldTheoryAndPolynomials/FieldPublicPosOfInvPos.lean/declarations/lt-mul-inv-of-mul-lt.md) | 75 | `result-track:e051ddf6a67984020009f68eeba8e2127dfeaeb65886ae7f386d401267b7bfb5` |
| 12 | `theorem` | [lt_mul_inv_iff_mul_lt](../../../../FieldTheoryAndPolynomials/FieldPublicPosOfInvPos.lean/declarations/lt-mul-inv-iff-mul-lt.md) | 79 | `result-track:6dbec28d49bccced0f50cfa2397776c7a3a6f0012a9cf2c4268f9b7d29d62a35` |
| 13 | `theorem` | [mul_inv_lt_iff_lt_mul](../../../../FieldTheoryAndPolynomials/FieldPublicPosOfInvPos.lean/declarations/mul-inv-lt-iff-lt-mul.md) | 82 | `result-track:bf2786118e30a4ffd9a6ab74eab2ada68dce9769ec405de64cc32c9a3da0f976` |
| 14 | `theorem` | [le_mul_of_le_mul_inv](../../../../FieldTheoryAndPolynomials/FieldPublicPosOfInvPos.lean/declarations/le-mul-of-le-mul-inv.md) | 85 | `result-track:55d1daad8f627e669e2773064d7fccdede4a8882aca962d61813f259926342de` |
| 15 | `theorem` | [mul_le_of_mul_inv_le](../../../../FieldTheoryAndPolynomials/FieldPublicPosOfInvPos.lean/declarations/mul-le-of-mul-inv-le.md) | 89 | `result-track:4a3eacd87dbc08e2dd1e76b8400180d71b04c3b41224ac09b9e608ed65df6108` |
| 16 | `theorem` | [mul_inv_le_of_mul_le](../../../../FieldTheoryAndPolynomials/FieldPublicPosOfInvPos.lean/declarations/mul-inv-le-of-mul-le.md) | 93 | `result-track:913d84a9cb45778589a3566d101a919db182bd9642b09bf54b7977c80e6720f6` |
| 17 | `theorem` | [le_mul_inv_of_le_mul](../../../../FieldTheoryAndPolynomials/FieldPublicPosOfInvPos.lean/declarations/le-mul-inv-of-le-mul.md) | 97 | `result-track:8cc436a7fb086f2c53f5bc719aa2012b130a1dd654821ed5a29de2e7da247071` |
| 18 | `theorem` | [le_mul_inv_iff_le_mul_of_neg](../../../../FieldTheoryAndPolynomials/FieldPublicPosOfInvPos.lean/declarations/le-mul-inv-iff-le-mul-of-neg.md) | 101 | `result-track:8a7b0bd22660be83dd5938ab8279077e9807fa88ab0b0f21a5441e7110815976` |
| 19 | `theorem` | [mul_inv_le_iff_mul_le_of_neg](../../../../FieldTheoryAndPolynomials/FieldPublicPosOfInvPos.lean/declarations/mul-inv-le-iff-mul-le-of-neg.md) | 104 | `result-track:acb77f4515a2b829aa1bb009df59e22e6b409861a8229183635c658da2ae6eee` |
| 20 | `theorem` | [lt_mul_of_lt_mul_inv](../../../../FieldTheoryAndPolynomials/FieldPublicPosOfInvPos.lean/declarations/lt-mul-of-lt-mul-inv.md) | 107 | `result-track:d97be56281ff982ad8cc3625b21fa601e6f01bcf8c2609485851cd4253fb22dd` |
| 21 | `theorem` | [mul_lt_of_mul_inv_lt](../../../../FieldTheoryAndPolynomials/FieldPublicPosOfInvPos.lean/declarations/mul-lt-of-mul-inv-lt.md) | 111 | `result-track:f0a5746608f46a35143feadcac683ccf0d17ad621bf66d55314eb113f4c2503c` |
| 22 | `theorem` | [mul_inv_lt_of_mul_lt](../../../../FieldTheoryAndPolynomials/FieldPublicPosOfInvPos.lean/declarations/mul-inv-lt-of-mul-lt.md) | 115 | `result-track:7e0b035b1e39b83fd6b24a137a00697419399bf42ca5a89613f2d3d9ccab6f4b` |
| 23 | `theorem` | [lt_mul_inv_of_lt_mul](../../../../FieldTheoryAndPolynomials/FieldPublicPosOfInvPos.lean/declarations/lt-mul-inv-of-lt-mul.md) | 119 | `result-track:b2859f206e1a314cc9a5f66908b8008cce2b02d437011dadf24e31d54ddd9704` |
| 24 | `theorem` | [lt_mul_inv_iff_lt_mul_of_neg](../../../../FieldTheoryAndPolynomials/FieldPublicPosOfInvPos.lean/declarations/lt-mul-inv-iff-lt-mul-of-neg.md) | 123 | `result-track:fe91fb4bb3587b4d2abb0bb99cc4efc252922a2f549e4bd2968c08d707896e18` |
| 25 | `theorem` | [mul_inv_lt_iff_mul_lt_of_neg](../../../../FieldTheoryAndPolynomials/FieldPublicPosOfInvPos.lean/declarations/mul-inv-lt-iff-mul-lt-of-neg.md) | 126 | `result-track:3c896247ae4ddf9b69dcc89235a7b7f0310276341a087441150770d0a4a8d5f5` |
| 26 | `theorem` | [mul_lt_mul_iff_of_pos_right](../../../../FieldTheoryAndPolynomials/FieldPublicPosOfInvPos.lean/declarations/mul-lt-mul-iff-of-pos-right.md) | 129 | `result-track:979f1f21a291ed7334778d76957921fcf04c59f1e146b19b9dba2a26b12b46c2` |
| 27 | `theorem` | [mul_lt_mul_iff_of_pos_left](../../../../FieldTheoryAndPolynomials/FieldPublicPosOfInvPos.lean/declarations/mul-lt-mul-iff-of-pos-left.md) | 137 | `result-track:3f67f41be906b813114442c25d14613904babd7faf1bf93ea6a9b743cc0e854d` |
| 28 | `theorem` | [mul_lt_mul_iff_of_neg_right](../../../../FieldTheoryAndPolynomials/FieldPublicPosOfInvPos.lean/declarations/mul-lt-mul-iff-of-neg-right.md) | 145 | `result-track:080724e43f4d3dc4a894a6880687199fe0910b9884d0a45daa49bf50327220a1` |
| 29 | `theorem` | [mul_lt_mul_iff_of_neg_left](../../../../FieldTheoryAndPolynomials/FieldPublicPosOfInvPos.lean/declarations/mul-lt-mul-iff-of-neg-left.md) | 153 | `result-track:cf32d8abbe01a3769a1d1627fae87c66d3e1ff11d31323e095b98668e1c6fe23` |
| 30 | `theorem` | [mul_le_mul_iff_of_pos_right](../../../../FieldTheoryAndPolynomials/FieldPublicPosOfInvPos.lean/declarations/mul-le-mul-iff-of-pos-right.md) | 161 | `result-track:de080ef82949e8232fcddfa774fd6f69956eaf5f3c34ca686f3f06f052f690c3` |
| 31 | `theorem` | [mul_le_mul_iff_of_pos_left](../../../../FieldTheoryAndPolynomials/FieldPublicPosOfInvPos.lean/declarations/mul-le-mul-iff-of-pos-left.md) | 169 | `result-track:f62658a07b87ee3fed8c3ca4187555855a8ad508db0f842fcf118f5bfb54d450` |
| 32 | `theorem` | [mul_le_mul_iff_of_neg_right](../../../../FieldTheoryAndPolynomials/FieldPublicPosOfInvPos.lean/declarations/mul-le-mul-iff-of-neg-right.md) | 177 | `result-track:17aeb1984d32f1f67f4c24f6c6bd8aba495e8aed9a78e1035acdab2ed411620e` |
| 33 | `theorem` | [mul_le_mul_iff_of_neg_left](../../../../FieldTheoryAndPolynomials/FieldPublicPosOfInvPos.lean/declarations/mul-le-mul-iff-of-neg-left.md) | 185 | `result-track:e506c3fa76ba4cd6181537424b10f72bfd6bb9f8c347cb734064c1ed2fc3a27a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b32a3f6b1113648a94b7173d7205aa67b330b9ee2fe28eaf8033456b21e13e7e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Field/Variant0cecbe11534d5b2e3eca87d11d4c114ca2bfc293257d2bfadb5c7bd8e5aedf95.lean","GRWTSK/_verification/specifications/Algebra/FieldTheory/Variant0cecbe11534d5b2e3eca87d11d4c114ca2bfc293257d2bfadb5c7bd8e5aedf95.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
