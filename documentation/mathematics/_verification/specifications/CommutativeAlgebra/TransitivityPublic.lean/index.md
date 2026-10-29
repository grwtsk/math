# Verification target: Transitivity Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "24644d89d6d10a9f43fa0557b32b8e7d5a1aa26f",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Transitivity/Variant46b2a44d9c96ee4b387ba636bdb68a6356f0a7c8aeeade176da5181a27d39be2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/TransitivityPublic.lean/index.md) · [Full source](../../../../CommutativeAlgebra/TransitivityPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `24644d89d6d10a9f43fa0557b32b8e7d5a1aa26f`.

Source path: `GRWTSK/Algebra/Transitivity/Variant46b2a44d9c96ee4b387ba636bdb68a6356f0a7c8aeeade176da5181a27d39be2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Transitivity/Variant46b2a44d9c96ee4b387ba636bdb68a6356f0a7c8aeeade176da5181a27d39be2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [auxMat](../../../../CommutativeAlgebra/TransitivityPublic.lean/declarations/auxmat.md) | 41 | `declaration-track:e94d150bdd30a41eb03a0bedd59171161b4e439cc9ff7e13754b7c4228e3502e` |
| 2 | `lemma` | [auxMat_blockTriangular](../../../../CommutativeAlgebra/TransitivityPublic.lean/declarations/auxmat-blocktriangular.md) | 50 | `result-track:c8125225fb1a4effedeb73cf8aee302f7adf96751d25fb91987129744fb24d98` |
| 3 | `lemma` | [auxMat_toSquareBlock_ne](../../../../CommutativeAlgebra/TransitivityPublic.lean/declarations/auxmat-tosquareblock-ne.md) | 56 | `result-track:cb118e712fcf586810099492247d91d08938b5a44edef3f3c6aafef672e11245` |
| 4 | `lemma` | [auxMat_toSquareBlock_eq](../../../../CommutativeAlgebra/TransitivityPublic.lean/declarations/auxmat-tosquareblock-eq.md) | 61 | `result-track:ac4671caf85565b6f6873b98286035308538ff6a9d9c09617c7eafbf5aaf7970` |
| 5 | `lemma` | [mul_auxMat_blockTriangular](../../../../CommutativeAlgebra/TransitivityPublic.lean/declarations/mul-auxmat-blocktriangular.md) | 70 | `result-track:8e8cc390d60409ec22d9e19837c24bc3bf5184ba144c6734b45cded4e7e168c3` |
| 6 | `lemma` | [mul_auxMat_corner](../../../../CommutativeAlgebra/TransitivityPublic.lean/declarations/mul-auxmat-corner.md) | 80 | `result-track:edf5ca91410be8add0f54f42b0bfad63601aa0ce6a04bcbbd2310f749b956534` |
| 7 | `lemma` | [mul_auxMat_toSquareBlock_eq](../../../../CommutativeAlgebra/TransitivityPublic.lean/declarations/mul-auxmat-tosquareblock-eq.md) | 82 | `result-track:73169b10360fed51766d1652505d4e7336ae4e88260d567f45f02a7bb84f1f53` |
| 8 | `lemma` | [det_mul_corner_pow](../../../../CommutativeAlgebra/TransitivityPublic.lean/declarations/det-mul-corner-pow.md) | 92 | `result-track:712a471cf7732917bbbf77b4b3592349246d768bb2480baeca4a5688ad314d52` |
| 9 | `def` | [cornerAddX](../../../../CommutativeAlgebra/TransitivityPublic.lean/declarations/corneraddx.md) | 106 | `declaration-track:c9e8bc41ae4d4a51d092d8b377f540934131cacbf9c87d920697ed518ccfd295` |
| 10 | `lemma` | [polyToMatrix_cornerAddX](../../../../CommutativeAlgebra/TransitivityPublic.lean/declarations/polytomatrix-corneraddx.md) | 112 | `result-track:ab06a9d4722ed5c1fb456ce1e124e35c7cf82f18d70b5bf9eae74d9d0814a37f` |
| 11 | `lemma` | [eval_zero_det_det](../../../../CommutativeAlgebra/TransitivityPublic.lean/declarations/eval-zero-det-det.md) | 117 | `result-track:edc33a37fae22b2ab958214a3fb7daf46f5127b88b62d92789bff99d132752a6` |
| 12 | `lemma` | [eval_zero_comp_det](../../../../CommutativeAlgebra/TransitivityPublic.lean/declarations/eval-zero-comp-det.md) | 122 | `result-track:c48d0427126ede658c5da5beff800067cb757a4a3c3a8fc16cb9f03bfc4a29f3` |
| 13 | `theorem` | [comp_det_mul_pow](../../../../CommutativeAlgebra/TransitivityPublic.lean/declarations/comp-det-mul-pow.md) | 132 | `result-track:cec02c2cd3fe56635c539431db27b522e9abd65aa980f0bda107b1c7f903148a` |
| 14 | `lemma` | [det_det_aux](../../../../CommutativeAlgebra/TransitivityPublic.lean/declarations/det-det-aux.md) | 150 | `result-track:6496a8b0de6279a7ba1e40e83207019610a2a662ec73e17a5b9eb7a364bb9b39` |
| 15 | `theorem` | [Matrix.det_det](../../../../CommutativeAlgebra/TransitivityPublic.lean/declarations/matrix-det-det.md) | 165 | `result-track:39c44c5da48451b19534bcde1fdfe220a9c0c0212a4817153841c532f7dde72c` |
| 16 | `theorem` | [LinearMap.det_restrictScalars](../../../../CommutativeAlgebra/TransitivityPublic.lean/declarations/linearmap-det-restrictscalars.md) | 185 | `result-track:4609cbb02da2475cd3b8b3ab44d4921ccf005a4a4849d3cb98a97ff812e32336` |
| 17 | `theorem` | [Algebra.norm_norm](../../../../CommutativeAlgebra/TransitivityPublic.lean/declarations/algebra-norm-norm.md) | 207 | `result-track:473f3e9b36dff2568dbbc702e2c53610dfabec4f18adaf8c443c2ab860023cb5` |
| 18 | `theorem` | [isIntegral_norm](../../../../CommutativeAlgebra/TransitivityPublic.lean/declarations/isintegral-norm.md) | 218 | `result-track:50bfa8434d745823cf0b48031cfb9104144043dcb2ff258ec0fc16124a2ee759` |
| 19 | `theorem` | [norm_eq_norm_adjoin](../../../../CommutativeAlgebra/TransitivityPublic.lean/declarations/norm-eq-norm-adjoin.md) | 234 | `result-track:5ae658df2a45103b1dca698f78c428fe0c7de32851a7139f79f46820a4e0ba6d` |
| 20 | `theorem` | [norm_eq_prod_roots](../../../../CommutativeAlgebra/TransitivityPublic.lean/declarations/norm-eq-prod-roots.md) | 258 | `result-track:d0e2cc5446d24d7024b6ceebe4c7861974916d891eda080bdb64c92b19840f10` |
| 21 | `theorem` | [norm_eq_prod_embeddings](../../../../CommutativeAlgebra/TransitivityPublic.lean/declarations/norm-eq-prod-embeddings.md) | 268 | `result-track:6e680d3ad7bdf6229ddfe3eb43bcd35968d59f54900bcf6d20f14315035007b1` |
| 22 | `theorem` | [norm_eq_prod_automorphisms](../../../../CommutativeAlgebra/TransitivityPublic.lean/declarations/norm-eq-prod-automorphisms.md) | 277 | `result-track:dd8bcbcd725e907a6a9959468e8efe1a505d7440f01b0ae87fd88b12e3e6cca8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a64bb7a161cfcb76c487b0dd4ff6d07d0a7489cd9b17515a8b270552a08751a2 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Transitivity/Variant46b2a44d9c96ee4b387ba636bdb68a6356f0a7c8aeeade176da5181a27d39be2.lean","GRWTSK/_verification/specifications/Algebra/Transitivity/Variant46b2a44d9c96ee4b387ba636bdb68a6356f0a7c8aeeade176da5181a27d39be2.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
