# Verification target: Is Principal Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "29fd870dbb2e3ccae6de78f8173f498db6a7375e",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/IsPrincipal/Variant1c91fe8b959c67936f115eb1c00884156a3e559447b1e576080ab759a1fe735c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IsPrincipalNamespacedPublic.lean/index.md) · [Full source](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IsPrincipalNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `29fd870dbb2e3ccae6de78f8173f498db6a7375e`.

Source path: `GRWTSK/Algebra/IsPrincipal/Variant1c91fe8b959c67936f115eb1c00884156a3e559447b1e576080ab759a1fe735c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/IsPrincipal/Variant1c91fe8b959c67936f115eb1c00884156a3e559447b1e576080ab759a1fe735c.lean.json)

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
| 1 | `def` | [isPrincipalSubmonoid](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IsPrincipalNamespacedPublic.lean/declarations/isprincipalsubmonoid.md) | 49 | `declaration-track:af163811063f6f37cee8fda7269c58c7cf4a9d34802a2fbc8beaecd67e369148` |
| 2 | `theorem` | [mem_isPrincipalSubmonoid_iff](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IsPrincipalNamespacedPublic.lean/declarations/mem-isprincipalsubmonoid-iff.md) | 56 | `result-track:14d54a0e9d24139aff56a880090608132d482d8f9214d331d53d47e5aaf2f435` |
| 3 | `theorem` | [span_singleton_mem_isPrincipalSubmonoid](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IsPrincipalNamespacedPublic.lean/declarations/span-singleton-mem-isprincipalsubmonoid.md) | 59 | `result-track:d556222ea17b309e9f1a2f296360768aeaf022f7ba0dbb1762b2a45c02c4316f` |
| 4 | `def` | [isPrincipalNonZeroDivisorsSubmonoid](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IsPrincipalNamespacedPublic.lean/declarations/isprincipalnonzerodivisorssubmonoid.md) | 64 | `declaration-track:7e6325329947120fdc94b48a3c4cc544733d4bbc8da476590bd4382c58fea4d5` |
| 5 | `def` | [associatesEquivIsPrincipal](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IsPrincipalNamespacedPublic.lean/declarations/associatesequivisprincipal.md) | 77 | `declaration-track:edd10e84134ba9468ebc0ec40d813d3a9a01a7ba804233924825bd709e4b0d27` |
| 6 | `theorem` | [associatesEquivIsPrincipal_apply](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IsPrincipalNamespacedPublic.lean/declarations/associatesequivisprincipal-apply.md) | 87 | `result-track:06bbe5e8ebb7c18c14ff3bf72de493b066c2d37577d90e8ac078a5a1a4dd38d2` |
| 7 | `theorem` | [associatesEquivIsPrincipal_symm_apply](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IsPrincipalNamespacedPublic.lean/declarations/associatesequivisprincipal-symm-apply.md) | 91 | `result-track:fd2e0f1b694a2f4c4025935f37f3df2eb10a63823c51c6e5006dc59c70b53c00` |
| 8 | `theorem` | [associatesEquivIsPrincipal_mul](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IsPrincipalNamespacedPublic.lean/declarations/associatesequivisprincipal-mul.md) | 94 | `result-track:f64d973fb91e3dc4f75f086ef6a804aaf2e09457986b5f397a5f92c947275fb6` |
| 9 | `theorem` | [associatesEquivIsPrincipal_map_zero](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IsPrincipalNamespacedPublic.lean/declarations/associatesequivisprincipal-map-zero.md) | 101 | `result-track:3dba2e6b3924f44db12338f8b674f69bb3521762bea32f8a609a4349360b0ecf` |
| 10 | `theorem` | [associatesEquivIsPrincipal_map_one](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IsPrincipalNamespacedPublic.lean/declarations/associatesequivisprincipal-map-one.md) | 106 | `result-track:f3c21e19885a398eadf140b66b3399494a788543e33fd30a602e7a9f431154cf` |
| 11 | `def` | [associatesMulEquivIsPrincipal](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IsPrincipalNamespacedPublic.lean/declarations/associatesmulequivisprincipal.md) | 113 | `declaration-track:1b48eb0cf6cbaf6b5d68f9dd258dd6a854e7194b6153420fe7b3849578ca8c8b` |
| 12 | `def` | [associatesNonZeroDivisorsEquivIsPrincipal](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IsPrincipalNamespacedPublic.lean/declarations/associatesnonzerodivisorsequivisprincipal.md) | 126 | `declaration-track:e48309936c36f26ecc6f2c72e85a2e0f261eac70141b53167b8291f6a4191d65` |
| 13 | `theorem` | [associatesNonZeroDivisorsEquivIsPrincipal_apply](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IsPrincipalNamespacedPublic.lean/declarations/associatesnonzerodivisorsequivisprincipal-apply.md) | 140 | `result-track:6d759e12bfecc9a38b7ede917b9a8f60e0010ff34c7a8986c9b6108ef17ef91d` |
| 14 | `theorem` | [associatesNonZeroDivisorsEquivIsPrincipal_coe](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IsPrincipalNamespacedPublic.lean/declarations/associatesnonzerodivisorsequivisprincipal-coe.md) | 143 | `result-track:0946bcf500b497be6e5d617dc272633d31d2fff6d38d7aeb4e8a2db900805d63` |
| 15 | `theorem` | [associatesNonZeroDivisorsEquivIsPrincipal_mul](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IsPrincipalNamespacedPublic.lean/declarations/associatesnonzerodivisorsequivisprincipal-mul.md) | 147 | `result-track:f2d1ada453c03c534727dab43854d1ff38d52980b8f01a6df54da7251cff4c82` |
| 16 | `theorem` | [associatesNonZeroDivisorsEquivIsPrincipal_map_one](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IsPrincipalNamespacedPublic.lean/declarations/associatesnonzerodivisorsequivisprincipal-map-one.md) | 155 | `result-track:0b7521f4e1f3bafc5fba1e06d4f329ed5648ae88a2cf4c99037af920dded4f4b` |
| 17 | `def` | [associatesNonZeroDivisorsMulEquivIsPrincipal](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IsPrincipalNamespacedPublic.lean/declarations/associatesnonzerodivisorsmulequivisprincipal.md) | 163 | `declaration-track:f705710ec6421e6dbc1c9bcd2d050ff521ead6c54afe9d4ff5ca8a74b9680306` |
| 18 | `def` | [isoBaseOfIsPrincipal](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IsPrincipalNamespacedPublic.lean/declarations/isobaseofisprincipal.md) | 173 | `declaration-track:6fa4ea15ff55955ddc0a9edd85d141ff3279c234039ac79dc2a7695e68cd8223` |
| 19 | `theorem` | [isoBaseOfIsPrincipal_apply](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IsPrincipalNamespacedPublic.lean/declarations/isobaseofisprincipal-apply.md) | 181 | `result-track:4902731a236cc636f976f6690de024f721bf39d4888a4b80aabcbfc8ba2b6b91` |
| 20 | `theorem` | [subtype_isoBaseOfIsPrincipal_eq_mul](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IsPrincipalNamespacedPublic.lean/declarations/subtype-isobaseofisprincipal-eq-mul.md) | 185 | `result-track:4d8a57ab537bb316630020c12bb862f7c514651fac92f37343932620977c1376` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e99ed1990c79cddb5375e0f0468b12c5f69cd1648a0baf392f7ef96ef10b314d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/IsPrincipal/Variant1c91fe8b959c67936f115eb1c00884156a3e559447b1e576080ab759a1fe735c.lean","GRWTSK/_verification/specifications/Algebra/IsPrincipal/Variant1c91fe8b959c67936f115eb1c00884156a3e559447b1e576080ab759a1fe735c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
