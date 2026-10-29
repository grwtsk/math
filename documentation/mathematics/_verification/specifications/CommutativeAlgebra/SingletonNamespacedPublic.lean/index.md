# Verification target: Singleton Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f1caf93ba61a935f6263fa8efb791219926ddafc",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Singleton/Variant1c2e97113e923368782db2822bb5adab9e552cb437600d7efe1d0e0c4249b882.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/SingletonNamespacedPublic.lean/index.md) · [Full source](../../../../CommutativeAlgebra/SingletonNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f1caf93ba61a935f6263fa8efb791219926ddafc`.

Source path: `GRWTSK/Algebra/Singleton/Variant1c2e97113e923368782db2822bb5adab9e552cb437600d7efe1d0e0c4249b882.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Singleton/Variant1c2e97113e923368782db2822bb5adab9e552cb437600d7efe1d0e0c4249b882.lean.json)

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
| 1 | `def` | [RingHom.adjoinAlgebraMap](../../../../CommutativeAlgebra/SingletonNamespacedPublic.lean/declarations/ringhom-adjoinalgebramap.md) | 39 | `declaration-track:716aec0a6fb6489cc9bcfab7a3f488d5b9f3e7940eeb67bb7e182dae12381f7a` |
| 2 | `theorem` | [RingHom.adjoinAlgebraMap_apply](../../../../CommutativeAlgebra/SingletonNamespacedPublic.lean/declarations/ringhom-adjoinalgebramap-apply.md) | 47 | `result-track:0198c103d22fbaf0395fa8f7e88e2bb52257709a9fe13f1d8a7467fdc97ae6b1` |
| 3 | `theorem` | [RingHom.adjoinAlgebraMap_surjective](../../../../CommutativeAlgebra/SingletonNamespacedPublic.lean/declarations/ringhom-adjoinalgebramap-surjective.md) | 50 | `result-track:6e5681fdbb188f899e888d0e3c6bd3b96ab3febb45b079c981c6f9ca1721679f` |
| 4 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/SingletonNamespacedPublic.lean/declarations/instance.md) | 56 | `declaration-track:64e7f0d59e91924b9fa32d9c02c2a3f8624846d46393a7bdc382b898bb0924ad` |
| 5 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/SingletonNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 59 | `declaration-track:ad83ea631059b52c228b9145daddf92a6e36c8cb763bce84e7ad55598582c5d6` |
| 6 | `def` | [RingHom.adjoinAlgebraMapEquiv](../../../../CommutativeAlgebra/SingletonNamespacedPublic.lean/declarations/ringhom-adjoinalgebramapequiv.md) | 63 | `declaration-track:14ca8cc01e98151f3ae9b505e302d37347fed4be8df8464c7f22ca56deca58a8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9d7aef79ce8004841ba32185daac27fbb109eea1f24eab585a1f5d07d8c10e46 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Singleton/Variant1c2e97113e923368782db2822bb5adab9e552cb437600d7efe1d0e0c4249b882.lean","GRWTSK/_verification/specifications/Algebra/Singleton/Variant1c2e97113e923368782db2822bb5adab9e552cb437600d7efe1d0e0c4249b882.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
