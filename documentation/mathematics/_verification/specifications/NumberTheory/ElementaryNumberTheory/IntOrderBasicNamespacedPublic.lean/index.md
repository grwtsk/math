# Verification target: Int Order Basic Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "23797a0f1aa63d04fb5a54d5a91413963d34e3f0",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant0ff396ab970593006b81237da53488609ea990a6df557b2ea059df31bd133757.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/ElementaryNumberTheory/IntOrderBasicNamespacedPublic.lean/index.md) · [Full source](../../../../../NumberTheory/ElementaryNumberTheory/IntOrderBasicNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `23797a0f1aa63d04fb5a54d5a91413963d34e3f0`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant0ff396ab970593006b81237da53488609ea990a6df557b2ea059df31bd133757.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant0ff396ab970593006b81237da53488609ea990a6df557b2ea059df31bd133757.lean.json)

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
| 1 | `theorem` | [le.elim](../../../../../NumberTheory/ElementaryNumberTheory/IntOrderBasicNamespacedPublic.lean/declarations/le-elim.md) | 33 | `result-track:377a077c8e4e60cd26d0f2155e0eaea1eb52373215efabd31be04cf111758c83` |
| 2 | `theorem` | [lt.elim](../../../../../NumberTheory/ElementaryNumberTheory/IntOrderBasicNamespacedPublic.lean/declarations/lt-elim.md) | 38 | `result-track:da88076bc39792c38f4798026d228f1511a6d124e458c96d37e465ad0f6bde51` |
| 3 | `instance` | [instLinearOrder](../../../../../NumberTheory/ElementaryNumberTheory/IntOrderBasicNamespacedPublic.lean/declarations/instlinearorder.md) | 43 | `declaration-track:912399ac433e3b12bda67b2014bfb2eede5a436e0290cd9c0e545e35ace4ca6a` |
| 4 | `instance` | [(anonymous)](../../../../../NumberTheory/ElementaryNumberTheory/IntOrderBasicNamespacedPublic.lean/declarations/instance.md) | 54 | `declaration-track:14c64c96b7ae65ce691eaad6a86268ee73c0f3c76fc2a4da61199d16757c39d3` |
| 5 | `instance` | [(anonymous)](../../../../../NumberTheory/ElementaryNumberTheory/IntOrderBasicNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 55 | `declaration-track:65ea68b6c560a2af6cb32df4545b961fddd99bbc87eed33cec621d9e5e005b88` |
| 6 | `theorem` | [nonneg_or_nonpos_of_mul_nonneg](../../../../../NumberTheory/ElementaryNumberTheory/IntOrderBasicNamespacedPublic.lean/declarations/nonneg-or-nonpos-of-mul-nonneg.md) | 59 | `result-track:d0bb61fb957dec10b4cfa7c0fbe4cdd8041470ffb116be9718f0e7d8606a4330` |
| 7 | `theorem` | [mul_nonneg_of_nonneg_or_nonpos](../../../../../NumberTheory/ElementaryNumberTheory/IntOrderBasicNamespacedPublic.lean/declarations/mul-nonneg-of-nonneg-or-nonpos.md) | 62 | `result-track:ef111d44fb0a09901caaf298887a76bfb5e02bba6176d31579e07ac3f4fbbb74` |
| 8 | `theorem` | [mul_nonneg_iff](../../../../../NumberTheory/ElementaryNumberTheory/IntOrderBasicNamespacedPublic.lean/declarations/mul-nonneg-iff.md) | 66 | `result-track:03d4884168f4280fbfac27c3868119c1a1836ecb8c108288be18615a9d99423c` |
| 9 | `theorem` | [mul_pos_iff](../../../../../NumberTheory/ElementaryNumberTheory/IntOrderBasicNamespacedPublic.lean/declarations/mul-pos-iff.md) | 69 | `result-track:453d53f6be10ed81f2afc7fd7e53181613522c2b330429b5286c77c9beaf00ea` |
| 10 | `theorem` | [mul_nonpos_iff](../../../../../NumberTheory/ElementaryNumberTheory/IntOrderBasicNamespacedPublic.lean/declarations/mul-nonpos-iff.md) | 73 | `result-track:88217d315a6a02efa92b2a260e391afa69e56c24ea5ba65ccd8a039cc6bf5121` |
| 11 | `theorem` | [mul_neg_iff](../../../../../NumberTheory/ElementaryNumberTheory/IntOrderBasicNamespacedPublic.lean/declarations/mul-neg-iff.md) | 77 | `result-track:f7576b26d79231e4d0ce34a1e1ca2c29cd5033bab120fc6dcca4f3a743ed085e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3016b28e9a6f171d9200e8f5e8b14505ca36abb65eeef6a7b2b60c7949632b89 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant0ff396ab970593006b81237da53488609ea990a6df557b2ea059df31bd133757.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant0ff396ab970593006b81237da53488609ea990a6df557b2ea059df31bd133757.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
