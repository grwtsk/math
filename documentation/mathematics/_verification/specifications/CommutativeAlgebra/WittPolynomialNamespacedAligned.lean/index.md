# Verification target: Witt Polynomial Namespaced Aligned

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "eb0da6ba43c25907957da2f1a3e9fe06adc371db",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/WittPolynomial/Variant874358cd3546234426d278095b47d6d38f3f09a1b764883b361e48e746a59dcc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/WittPolynomialNamespacedAligned.lean/index.md) · [Full source](../../../../CommutativeAlgebra/WittPolynomialNamespacedAligned.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `eb0da6ba43c25907957da2f1a3e9fe06adc371db`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/WittPolynomial/Variant874358cd3546234426d278095b47d6d38f3f09a1b764883b361e48e746a59dcc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/WittPolynomial/Variant874358cd3546234426d278095b47d6d38f3f09a1b764883b361e48e746a59dcc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.CharP.Invertible` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.BigOperators` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.MvPolynomial.Variables` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Data.MvPolynomial.CommRing` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Data.MvPolynomial.Expand` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Data.ZMod.Basic` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [wittPolynomial](../../../../CommutativeAlgebra/WittPolynomialNamespacedAligned.lean/declarations/wittpolynomial.md) | 88 | `declaration-track:11c456c0efcd474d59832efdccfdcf8bd4e4faa9a8a00a0231aad18c93f5c44a` |
| 2 | `theorem` | [wittPolynomial_eq_sum_C_mul_X_pow](../../../../CommutativeAlgebra/WittPolynomialNamespacedAligned.lean/declarations/wittpolynomial-eq-sum-c-mul-x-pow.md) | 92 | `result-track:87c5f698e4ced32f10c09f2a9a3fb59fa3f23363d6a2de3497568a4bd62f8f3a` |
| 3 | `theorem` | [map_wittPolynomial](../../../../CommutativeAlgebra/WittPolynomialNamespacedAligned.lean/declarations/map-wittpolynomial.md) | 127 | `result-track:b1d01fea7ca264b941ece66cec33ae7630773489b6513adb9eb50f74ee2fecc8` |
| 4 | `theorem` | [constantCoeff_wittPolynomial](../../../../CommutativeAlgebra/WittPolynomialNamespacedAligned.lean/declarations/constantcoeff-wittpolynomial.md) | 136 | `result-track:db62a35ecdaf1db40d6fede971fd83a39f971ef188cf3ff6404fcf41149e0437` |
| 5 | `theorem` | [wittPolynomial_zero](../../../../CommutativeAlgebra/WittPolynomialNamespacedAligned.lean/declarations/wittpolynomial-zero.md) | 147 | `result-track:4cc7a6ce74e04a7d1a5af9f699c2a148ca8711258da27fcc9fb470616a84fe92` |
| 6 | `theorem` | [wittPolynomial_one](../../../../CommutativeAlgebra/WittPolynomialNamespacedAligned.lean/declarations/wittpolynomial-one.md) | 152 | `result-track:6b153f426df6c483ff3aa13ed21a9e8517973e76daa57e446fde9ee0205a4a93` |
| 7 | `theorem` | [aeval_wittPolynomial](../../../../CommutativeAlgebra/WittPolynomialNamespacedAligned.lean/declarations/aeval-wittpolynomial.md) | 157 | `result-track:f5524a601a643a12f76e7950425781837c6736d408651fe6d398bfbae74a41a0` |
| 8 | `theorem` | [wittPolynomial_zmod_self](../../../../CommutativeAlgebra/WittPolynomialNamespacedAligned.lean/declarations/wittpolynomial-zmod-self.md) | 166 | `result-track:2c3a6be2fcfd61f2ec66984453f96aab35431bcfb5a2e231cdf384e143b32e7a` |
| 9 | `theorem` | [wittPolynomial_vars](../../../../CommutativeAlgebra/WittPolynomialNamespacedAligned.lean/declarations/wittpolynomial-vars.md) | 182 | `result-track:72800e3157c8f3ca1935bea2fc2bb2a621ee8fffbe7f3b6ac6929baf8812da03` |
| 10 | `theorem` | [wittPolynomial_vars_subset](../../../../CommutativeAlgebra/WittPolynomialNamespacedAligned.lean/declarations/wittpolynomial-vars-subset.md) | 196 | `result-track:227661576e77259396e42f3e3f6ff5c570faab054a67ee2997c9e98553f125f6` |
| 11 | `def` | [xInTermsOfW](../../../../CommutativeAlgebra/WittPolynomialNamespacedAligned.lean/declarations/xintermsofw.md) | 217 | `declaration-track:384f75a1415ed62c8212a42a858ed5bde4f12c0a89ddfbf2cc23eb80b64bf48e` |
| 12 | `theorem` | [xInTermsOfW_eq](../../../../CommutativeAlgebra/WittPolynomialNamespacedAligned.lean/declarations/xintermsofw-eq.md) | 224 | `result-track:3f877f2f606b92dfe6bb46cfc02842a4c84f2ed103685b2da3db6306bb6a0b33` |
| 13 | `theorem` | [constantCoeff_xInTermsOfW](../../../../CommutativeAlgebra/WittPolynomialNamespacedAligned.lean/declarations/constantcoeff-xintermsofw.md) | 232 | `result-track:3263946805970fbc2e5035cfd4f25f4a31a6bb9ffb257c403276ca5e0d9c8abf` |
| 14 | `theorem` | [xInTermsOfW_zero](../../../../CommutativeAlgebra/WittPolynomialNamespacedAligned.lean/declarations/xintermsofw-zero.md) | 253 | `result-track:0a7383c8f55def6b53b965dbbfa63770778dd03051915d3c0d6d2956a96293d9` |
| 15 | `theorem` | [xInTermsOfW_vars_aux](../../../../CommutativeAlgebra/WittPolynomialNamespacedAligned.lean/declarations/xintermsofw-vars-aux.md) | 262 | `result-track:a753a8178f151f1d32636f4f76007795cb7e6166e73a1698c7ab8bfc8f886cbc` |
| 16 | `theorem` | [xInTermsOfW_vars_subset](../../../../CommutativeAlgebra/WittPolynomialNamespacedAligned.lean/declarations/xintermsofw-vars-subset.md) | 292 | `result-track:1923d21826bd542b1823350f68a7ce65140e32361d4ca273c44d2fd42a5ffafa` |
| 17 | `theorem` | [xInTermsOfW_aux](../../../../CommutativeAlgebra/WittPolynomialNamespacedAligned.lean/declarations/xintermsofw-aux.md) | 299 | `result-track:684b40720add924d0fdc13fde3430309ecf46a5d58fd1467880e94bd5cf6d69b` |
| 18 | `theorem` | [bind₁_xInTermsOfW_wittPolynomial](../../../../CommutativeAlgebra/WittPolynomialNamespacedAligned.lean/declarations/bind-xintermsofw-wittpolynomial.md) | 308 | `result-track:1db00eefe5ec090a99d44ff4e49b3850bc3ac09e361cdedb4670a05048637482` |
| 19 | `theorem` | [bind₁_wittPolynomial_xInTermsOfW](../../../../CommutativeAlgebra/WittPolynomialNamespacedAligned.lean/declarations/bind-wittpolynomial-xintermsofw.md) | 319 | `result-track:f0f88bb0295fde4ab370a701eb74a161a67731d4cfa4d461c03d7e06e2b7927f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1440f57af2be8c31548655878383aa84a59dede4a48be981b7e7027bf68324f5 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/CommutativeAlgebra/WittPolynomial/Variant874358cd3546234426d278095b47d6d38f3f09a1b764883b361e48e746a59dcc.lean","GRWTSK/_verification/specifications/Algebra/CommutativeAlgebra/WittPolynomial/Variant874358cd3546234426d278095b47d6d38f3f09a1b764883b361e48e746a59dcc.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
