# Verification target: Is Principal

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b4b21780be013d09b7499cabc2e5d6a65b35e85e",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/IsPrincipal/Variant46034827c03843b31f9b10d407c41b6e7c579feda05a898a9f9adcb1b1e0c998.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IsPrincipal.lean/index.md) · [Full source](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IsPrincipal.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b4b21780be013d09b7499cabc2e5d6a65b35e85e`.

Source path: `GRWTSK/Algebra/IsPrincipal/Variant46034827c03843b31f9b10d407c41b6e7c579feda05a898a9f9adcb1b1e0c998.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/IsPrincipal/Variant46034827c03843b31f9b10d407c41b6e7c579feda05a898a9f9adcb1b1e0c998.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.PrincipalIdealDomain` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [isPrincipalSubmonoid](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IsPrincipal.lean/declarations/isprincipalsubmonoid.md) | 37 | `declaration-track:f9e1ff077ec801bcceeeed5971f6cd622a44a54316dbfe6430093044f4e36fd3` |
| 2 | `theorem` | [mem_isPrincipalSubmonoid_iff](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IsPrincipal.lean/declarations/mem-isprincipalsubmonoid-iff.md) | 44 | `result-track:f001722c511ea11e81687c224fddceb309223bcedbf7eb061080084678744dac` |
| 3 | `theorem` | [span_singleton_mem_isPrincipalSubmonoid](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IsPrincipal.lean/declarations/span-singleton-mem-isprincipalsubmonoid.md) | 47 | `result-track:0f6dffdf7387b19ebfbc12ea64096d64d0a031fa88253d602ed8748f5b2d7918` |
| 4 | `def` | [isPrincipalNonZeroDivisorsSubmonoid](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IsPrincipal.lean/declarations/isprincipalnonzerodivisorssubmonoid.md) | 52 | `declaration-track:3f31624861b3b6aa29a0794dfb519deea0ed689172dde187b22100244c5747f1` |
| 5 | `def` | [associatesEquivIsPrincipal](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IsPrincipal.lean/declarations/associatesequivisprincipal.md) | 65 | `declaration-track:ddd1ea6f5df1da5c5c1c89373adfaa3792b071ce5705098296625f30dc10c8bb` |
| 6 | `theorem` | [associatesEquivIsPrincipal_apply](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IsPrincipal.lean/declarations/associatesequivisprincipal-apply.md) | 75 | `result-track:ada7f7b5d9a9c9cabf5e57a1574ad55010c63913af5f36d12a42a8be8f448ff1` |
| 7 | `theorem` | [associatesEquivIsPrincipal_symm_apply](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IsPrincipal.lean/declarations/associatesequivisprincipal-symm-apply.md) | 79 | `result-track:9954d8a6042111dafd8bd2d56e6dff2aec8dd4fa8fec57793928e93cc4d69c93` |
| 8 | `theorem` | [associatesEquivIsPrincipal_mul](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IsPrincipal.lean/declarations/associatesequivisprincipal-mul.md) | 82 | `result-track:aaa623e4223cffdcb3a3e7d831f85427d31e265b59167367aa782924d7c952f1` |
| 9 | `theorem` | [associatesEquivIsPrincipal_map_zero](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IsPrincipal.lean/declarations/associatesequivisprincipal-map-zero.md) | 89 | `result-track:81dd14788591581a2947379ec9c8b143176277d8e6ddbdae44d22c9e1fdde5e0` |
| 10 | `theorem` | [associatesEquivIsPrincipal_map_one](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IsPrincipal.lean/declarations/associatesequivisprincipal-map-one.md) | 94 | `result-track:61d5523d6613a3f81d9b75c0ab282f5f7fb1e5d9f5e8c3836f4f650f2358df31` |
| 11 | `def` | [associatesMulEquivIsPrincipal](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IsPrincipal.lean/declarations/associatesmulequivisprincipal.md) | 100 | `declaration-track:e0233e4b5b4cb97dc8b85bd95656a8349f35ef2660e15a9fecd6ad987c3a1510` |
| 12 | `def` | [associatesNonZeroDivisorsEquivIsPrincipal](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IsPrincipal.lean/declarations/associatesnonzerodivisorsequivisprincipal.md) | 113 | `declaration-track:c5c85b16d07842f0620637288f4d9cfd440f284ebc2eff89794c482c5769ac5a` |
| 13 | `theorem` | [associatesNonZeroDivisorsEquivIsPrincipal_apply](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IsPrincipal.lean/declarations/associatesnonzerodivisorsequivisprincipal-apply.md) | 126 | `result-track:a30cf670a4c5ff6b825c2b7040eaf2372dfec892a951d3fa4ec8e932672d87e0` |
| 14 | `theorem` | [associatesNonZeroDivisorsEquivIsPrincipal_coe](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IsPrincipal.lean/declarations/associatesnonzerodivisorsequivisprincipal-coe.md) | 129 | `result-track:8219d8cd1ebfc2ad5d53a76ba22d6196ee8edf06c1acac0751e6c8ef76341c3a` |
| 15 | `theorem` | [associatesNonZeroDivisorsEquivIsPrincipal_mul](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IsPrincipal.lean/declarations/associatesnonzerodivisorsequivisprincipal-mul.md) | 133 | `result-track:72e965d52097c12d305bd0a6fc160215770c51d5dae130d3b0c14542e4bbe574` |
| 16 | `theorem` | [associatesNonZeroDivisorsEquivIsPrincipal_map_one](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IsPrincipal.lean/declarations/associatesnonzerodivisorsequivisprincipal-map-one.md) | 141 | `result-track:c792a56c0116fd25a1e774740c1633bb7e5b66f2345b421c3205ac3b1c0b2a3d` |
| 17 | `def` | [associatesNonZeroDivisorsMulEquivIsPrincipal](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IsPrincipal.lean/declarations/associatesnonzerodivisorsmulequivisprincipal.md) | 148 | `declaration-track:8473dd902ee81dae68d7cf24774ac7c57481ca6ef9dba29a5518e6799688701d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=88519c09d1bd88ccd3cbc1acd0b24c12c193ad1660e6e1c790c178d3a05cdaff -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/IsPrincipal/Variant46034827c03843b31f9b10d407c41b6e7c579feda05a898a9f9adcb1b1e0c998.lean","GRWTSK/_verification/specifications/Algebra/IsPrincipal/Variant46034827c03843b31f9b10d407c41b6e7c579feda05a898a9f9adcb1b1e0c998.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
