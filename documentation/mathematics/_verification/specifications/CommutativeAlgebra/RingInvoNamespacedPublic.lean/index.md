# Verification target: Ring Invo Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "543b3016c0fdc37dbcb12deccd335f628bd74bc2",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/RingInvo/Variant276b93a6c39b46dfe8340473596811c2cccde1bde3befce27991774fc64804d6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/RingInvoNamespacedPublic.lean/index.md) · [Full source](../../../../CommutativeAlgebra/RingInvoNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `543b3016c0fdc37dbcb12deccd335f628bd74bc2`.

Source path: `GRWTSK/Algebra/RingInvo/Variant276b93a6c39b46dfe8340473596811c2cccde1bde3befce27991774fc64804d6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/RingInvo/Variant276b93a6c39b46dfe8340473596811c2cccde1bde3befce27991774fc64804d6.lean.json)

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
| 1 | `structure` | [RingInvo](../../../../CommutativeAlgebra/RingInvoNamespacedPublic.lean/declarations/ringinvo.md) | 43 | `declaration-track:d74fd3477c4b575240c947101c3527488a13ff5ff4155521097337cdced6a2d9` |
| 2 | `class` | [RingInvoClass](../../../../CommutativeAlgebra/RingInvoNamespacedPublic.lean/declarations/ringinvoclass.md) | 52 | `declaration-track:c1550303a1fda55e487910a963cf1231f392fd07df4bb4cba98f670aab62f2dd` |
| 3 | `def` | [RingInvoClass.toRingInvo](../../../../CommutativeAlgebra/RingInvoNamespacedPublic.lean/declarations/ringinvoclass-toringinvo.md) | 61 | `declaration-track:effef431d8256423edacc2707d7d4c1765581413aed987392b552a5db4e26c73` |
| 4 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/RingInvoNamespacedPublic.lean/declarations/instance-source-edition-3.md) | 71 | `declaration-track:734017b0d6831d90283d9520f22f981fece50b7d597f93bc42d44623f5796421` |
| 5 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/RingInvoNamespacedPublic.lean/declarations/instance.md) | 75 | `declaration-track:2b818170e72c2eab4565accf92da9e0c192d7d060916c5943c76798149bc1098` |
| 6 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/RingInvoNamespacedPublic.lean/declarations/instance-source-edition-4.md) | 86 | `declaration-track:9fbb52caa49e2b39f23790c42b84957cd763e85305354f9c6445c9af624286bf` |
| 7 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/RingInvoNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 91 | `declaration-track:4b001194a6286fc1b86aa37b62a71e92a9f620c776d5b14c119a986a9e9e14e4` |
| 8 | `def` | [mk'](../../../../CommutativeAlgebra/RingInvoNamespacedPublic.lean/declarations/mk.md) | 94 | `declaration-track:a23429fb0bf168b4b97cbb4cc47422f56b86c7ffacd6f86f9e5dc552a384f389` |
| 9 | `theorem` | [involution](../../../../CommutativeAlgebra/RingInvoNamespacedPublic.lean/declarations/involution.md) | 102 | `result-track:716821613a2f65d62b8a61cfb3184710dbaafb23e79581140cda263a81d13751` |
| 10 | `theorem` | [coe_ringEquiv](../../../../CommutativeAlgebra/RingInvoNamespacedPublic.lean/declarations/coe-ringequiv.md) | 105 | `result-track:5a148942b3109f2b3b67b4e6ae13b09a64ab2ce0243ca4c3451063f57a5492e3` |
| 11 | `theorem` | [map_eq_zero_iff](../../../../CommutativeAlgebra/RingInvoNamespacedPublic.lean/declarations/map-eq-zero-iff.md) | 108 | `result-track:85758f9be0eadaaedd54bc22ad48d5c750825727ab9dd9b484fb087234f5a3cb` |
| 12 | `def` | [RingInvo.id](../../../../CommutativeAlgebra/RingInvoNamespacedPublic.lean/declarations/ringinvo-id.md) | 120 | `declaration-track:1242db74cf4698b6918d74fa81d375940e3c7b8e3b4bc30ece4edc88a0c11964` |
| 13 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/RingInvoNamespacedPublic.lean/declarations/instance-source-edition-5.md) | 123 | `declaration-track:d9ffc90899bbdf1040796eedf4e6e710b8a8d79bb93bc6c4f3ebf71e6e912d20` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5755500bfcfdd2605345514f46becb8a933475a9257d091c0265315ad3721d07 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/RingInvo/Variant276b93a6c39b46dfe8340473596811c2cccde1bde3befce27991774fc64804d6.lean","GRWTSK/_verification/specifications/Algebra/RingInvo/Variant276b93a6c39b46dfe8340473596811c2cccde1bde3befce27991774fc64804d6.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
