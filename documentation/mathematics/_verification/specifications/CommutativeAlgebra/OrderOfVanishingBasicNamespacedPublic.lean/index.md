# Verification target: Order Of Vanishing Basic Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ec6bc9b0fb7ccfc7c048d6fa7f7260d8164a7559",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Basic/Variant611c93c4cb845e030f7fb9837de83021c4252c5081573d003617b05e908ae329.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/OrderOfVanishingBasicNamespacedPublic.lean/index.md) · [Full source](../../../../CommutativeAlgebra/OrderOfVanishingBasicNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ec6bc9b0fb7ccfc7c048d6fa7f7260d8164a7559`.

Source path: `GRWTSK/Algebra/Basic/Variant611c93c4cb845e030f7fb9837de83021c4252c5081573d003617b05e908ae329.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Basic/Variant611c93c4cb845e030f7fb9837de83021c4252c5081573d003617b05e908ae329.lean.json)

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
| 1 | `def` | [ord](../../../../CommutativeAlgebra/OrderOfVanishingBasicNamespacedPublic.lean/declarations/ord.md) | 44 | `declaration-track:badd1fe5ce743782d827c0d1b21bdd0b11178170490f67c87cffd1f4f90dd83b` |
| 2 | `lemma` | [ord_one](../../../../CommutativeAlgebra/OrderOfVanishingBasicNamespacedPublic.lean/declarations/ord-one.md) | 47 | `result-track:ab13741bc910de567bc182b9e49693d0f4555c03c8ae781abd9109645f2c2848` |
| 3 | `def` | [Ideal.mulQuot](../../../../CommutativeAlgebra/OrderOfVanishingBasicNamespacedPublic.lean/declarations/ideal-mulquot.md) | 58 | `declaration-track:2547645951899ecadc450497848d3b4768895add4e76a5ca121d3cc7630d4d8b` |
| 4 | `lemma` | [Ideal.mulQuot_injective](../../../../CommutativeAlgebra/OrderOfVanishingBasicNamespacedPublic.lean/declarations/ideal-mulquot-injective.md) | 66 | `result-track:b707d6688f64cdd92cb65f1ccbbf22c18e49a2968cb4458c3a9d425b91e54244` |
| 5 | `def` | [Ideal.quotOfMul](../../../../CommutativeAlgebra/OrderOfVanishingBasicNamespacedPublic.lean/declarations/ideal-quotofmul.md) | 81 | `declaration-track:4f87c291eb979338fae40914e4e6ef4da17c2184d639d919f57c383482834e6d` |
| 6 | `lemma` | [Ideal.quotOfMul_surjective](../../../../CommutativeAlgebra/OrderOfVanishingBasicNamespacedPublic.lean/declarations/ideal-quotofmul-surjective.md) | 88 | `result-track:463a6b95943894ad867ab129fba253cab0e38bba765376f8d331fe07e5bc3235` |
| 7 | `lemma` | [Ideal.exact_mulQuot_quotOfMul](../../../../CommutativeAlgebra/OrderOfVanishingBasicNamespacedPublic.lean/declarations/ideal-exact-mulquot-quotofmul.md) | 99 | `result-track:ec9ff9b09a04aeaafc10aeb952d6b187e2629449b4d1096a970b71e9735796fa` |
| 8 | `theorem` | [ord_mul](../../../../CommutativeAlgebra/OrderOfVanishingBasicNamespacedPublic.lean/declarations/ord-mul.md) | 115 | `result-track:32f670c34838ca8bcb726705e179af17650c244b7549126ebe95453c3cabac29` |
| 9 | `lemma` | [ord_mul'](../../../../CommutativeAlgebra/OrderOfVanishingBasicNamespacedPublic.lean/declarations/ord-mul-source-edition-2.md) | 133 | `result-track:3affac8feea5f9d8eedb755e67fa879b9804770187ccf70f9c82edfc4d13c29e` |
| 10 | `lemma` | [ord_zero](../../../../CommutativeAlgebra/OrderOfVanishingBasicNamespacedPublic.lean/declarations/ord-zero.md) | 141 | `result-track:9be1c7f5215fd6614e38c4a992a5a6ff142844ee6ebcca43dd1168841e5f612d` |
| 11 | `theorem` | [ord_pow](../../../../CommutativeAlgebra/OrderOfVanishingBasicNamespacedPublic.lean/declarations/ord-pow.md) | 152 | `result-track:99659e6c9cb3472905468c97104a70b0592d6564b6fefc88792e4c08ff5d232d` |
| 12 | `lemma` | [ord_mul_of_isUnit_left](../../../../CommutativeAlgebra/OrderOfVanishingBasicNamespacedPublic.lean/declarations/ord-mul-of-isunit-left.md) | 160 | `result-track:9edd7eefcd437772b8fac6fdaebe31a92296081f2f42f491fdcef48c5a4cff37` |
| 13 | `lemma` | [ord_mul_of_isUnit_right](../../../../CommutativeAlgebra/OrderOfVanishingBasicNamespacedPublic.lean/declarations/ord-mul-of-isunit-right.md) | 164 | `result-track:82173f1d7a144354cf49af62176b8ad84afbcbd565e5cc730ded54a7e68f96ab` |
| 14 | `lemma` | [ord_eq_of_associated](../../../../CommutativeAlgebra/OrderOfVanishingBasicNamespacedPublic.lean/declarations/ord-eq-of-associated.md) | 167 | `result-track:ae0320de377f8d778eee50b7a574b2d7613b25c09d4e7eae43f18d28f116052c` |
| 15 | `lemma` | [ord_neg](../../../../CommutativeAlgebra/OrderOfVanishingBasicNamespacedPublic.lean/declarations/ord-neg.md) | 172 | `result-track:6ee87932ce064c40bc55c2dbf082132016fb64a6d2e0cc792a488c23a9a06163` |
| 16 | `lemma` | [ord_smul_of_isUnit](../../../../CommutativeAlgebra/OrderOfVanishingBasicNamespacedPublic.lean/declarations/ord-smul-of-isunit.md) | 180 | `result-track:3a08ca73e7e77d4528192ccdb2217c636c213eac5585f1c0e17e313c52e0fa50` |
| 17 | `lemma` | [ord_le_ord_mul](../../../../CommutativeAlgebra/OrderOfVanishingBasicNamespacedPublic.lean/declarations/ord-le-ord-mul.md) | 189 | `result-track:f64db5e046f38b7ceae421b7a4b3695abe6b6464c224bc786bd77b0a8b6ef30d` |
| 18 | `lemma` | [ord_le_ord_of_dvd](../../../../CommutativeAlgebra/OrderOfVanishingBasicNamespacedPublic.lean/declarations/ord-le-ord-of-dvd.md) | 197 | `result-track:709a4477364e6a13f26caf32f77803ce4e64ff700132494f18dd5aeb9c7bc2f4` |
| 19 | `lemma` | [ord_le_smul](../../../../CommutativeAlgebra/OrderOfVanishingBasicNamespacedPublic.lean/declarations/ord-le-smul.md) | 207 | `result-track:60593c058197bf987521de56c700e24cdc28ef8436809ac910d5ed8bf5348a80` |
| 20 | `lemma` | [ord_of_isUnit](../../../../CommutativeAlgebra/OrderOfVanishingBasicNamespacedPublic.lean/declarations/ord-of-isunit.md) | 214 | `result-track:10994b8932d1149ff84893ef658a3486887481a8070290e5ad91112d6747d939` |
| 21 | `theorem` | [ord_of_irreducible](../../../../CommutativeAlgebra/OrderOfVanishingBasicNamespacedPublic.lean/declarations/ord-of-irreducible.md) | 224 | `result-track:c10fbe832e95a409a85d46023f5ccbe14216c0bb5bd8852cdd1b33023760eab7` |
| 22 | `def` | [ordMonoidWithZeroHom](../../../../CommutativeAlgebra/OrderOfVanishingBasicNamespacedPublic.lean/declarations/ordmonoidwithzerohom.md) | 247 | `declaration-track:9932cf9e64d60d6ca7d957a3589c1419a6369b442cedc0e26791e6abf0c1eeb0` |
| 23 | `lemma` | [ordMonoidWithZeroHom_eq_zero_iff](../../../../CommutativeAlgebra/OrderOfVanishingBasicNamespacedPublic.lean/declarations/ordmonoidwithzerohom-eq-zero-iff.md) | 266 | `result-track:1c20e52239b28be4c2740aad1cd0d30130959a94818457839cb52aea96992dbe` |
| 24 | `theorem` | [ordMonoidWithZeroHom_eq_ord](../../../../CommutativeAlgebra/OrderOfVanishingBasicNamespacedPublic.lean/declarations/ordmonoidwithzerohom-eq-ord.md) | 279 | `result-track:c23576fac9df6e92b183505fc3bb09f6928217cc06b36221127c5ebd98a215a3` |
| 25 | `lemma` | [ordMonoidWithZeroHom_eq_coe](../../../../CommutativeAlgebra/OrderOfVanishingBasicNamespacedPublic.lean/declarations/ordmonoidwithzerohom-eq-coe.md) | 283 | `result-track:a7107ea2bf7b057af02b463ca04b33963d17b2b67e5e9f4fe7201394d78f863c` |
| 26 | `theorem` | [ordMonoidWithZeroHom_eq_zero](../../../../CommutativeAlgebra/OrderOfVanishingBasicNamespacedPublic.lean/declarations/ordmonoidwithzerohom-eq-zero.md) | 293 | `result-track:9088dc25c11647cc00165108ba327e90c329cf8540c9ae4e390e9cea85706e02` |
| 27 | `theorem` | [Order Of Vanishing Basic Namespaced Public](../../../../CommutativeAlgebra/OrderOfVanishingBasicNamespacedPublic.lean/declarations/isfinitelength-quotient-span-singleton.md) | 300 | `result-track:63e8f789a922ad8312343170d9f4a52cd7c235155fa5f9663f63355f92b8a0d1` |
| 28 | `lemma` | [ord_ne_top](../../../../CommutativeAlgebra/OrderOfVanishingBasicNamespacedPublic.lean/declarations/ord-ne-top.md) | 315 | `result-track:e9045a04e0c48129b2e98ef941c171fd4f4553b3cd1eb20dd5343d28e1f7f17b` |
| 29 | `lemma` | [ord_lt_top](../../../../CommutativeAlgebra/OrderOfVanishingBasicNamespacedPublic.lean/declarations/ord-lt-top.md) | 319 | `result-track:c925c2227fa186dbbc108f77792823b7046b115b864041cf6ba3757a1bcd7520` |
| 30 | `lemma` | [ordMonoidWithZeroHom_isUnit](../../../../CommutativeAlgebra/OrderOfVanishingBasicNamespacedPublic.lean/declarations/ordmonoidwithzerohom-isunit.md) | 323 | `result-track:c04910a44b8182a9d3dc479fae52e4bf7dbf7940ab65f2178bf8e88d76526a66` |
| 31 | `def` | [ordFrac](../../../../CommutativeAlgebra/OrderOfVanishingBasicNamespacedPublic.lean/declarations/ordfrac.md) | 332 | `declaration-track:a9a2e56cc71943491caa3797faa47e377d995283c977a79fad0366e8cc049851` |
| 32 | `lemma` | [ordFrac_eq_ord](../../../../CommutativeAlgebra/OrderOfVanishingBasicNamespacedPublic.lean/declarations/ordfrac-eq-ord.md) | 336 | `result-track:b4219025ae868198b8fe576d4c92eff8e895b8a8d5b860a96b859edf6c246abf` |
| 33 | `lemma` | [ordFrac_eq_div](../../../../CommutativeAlgebra/OrderOfVanishingBasicNamespacedPublic.lean/declarations/ordfrac-eq-div.md) | 342 | `result-track:73ca6243014988c4bc653ac7326dc5da4a5638d4a4b298871a630f99c094b4ba` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3ee6c0755703005697fb9523cfa0bc5c61cde94335feaa1e78cb307d40382f1b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Basic/Variant611c93c4cb845e030f7fb9837de83021c4252c5081573d003617b05e908ae329.lean","GRWTSK/_verification/specifications/Algebra/Basic/Variant611c93c4cb845e030f7fb9837de83021c4252c5081573d003617b05e908ae329.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
