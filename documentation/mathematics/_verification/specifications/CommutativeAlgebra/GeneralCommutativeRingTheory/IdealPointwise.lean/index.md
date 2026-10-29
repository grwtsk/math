# Verification target: Ideal Pointwise

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9306538775915c6c9a844005df2694c06989c33c",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Pointwise/Variant84502e717d55a3af7a303ba0670cddafef892ef2e72758585cbfaf18ebb762ea.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealPointwise.lean/index.md) · [Full source](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealPointwise.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9306538775915c6c9a844005df2694c06989c33c`.

Source path: `GRWTSK/Algebra/Pointwise/Variant84502e717d55a3af7a303ba0670cddafef892ef2e72758585cbfaf18ebb762ea.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Pointwise/Variant84502e717d55a3af7a303ba0670cddafef892ef2e72758585cbfaf18ebb762ea.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Ring.Action.End` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.Maps` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [pointwiseDistribMulAction](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealPointwise.lean/declarations/pointwisedistribmulaction.md) | 37 | `declaration-track:fff39de92d7488afe9db7eb4a0fc5dd4788cc9cb54ff693a15b45ff4108fa1e0` |
| 2 | `def` | [pointwiseMulSemiringAction](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealPointwise.lean/declarations/pointwisemulsemiringaction.md) | 53 | `declaration-track:e206fef91c9bfb5bcb9fac7d4c6fb7a96af6808e2a689ff10fcdb053e96a5c2f` |
| 3 | `theorem` | [pointwise_smul_def](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealPointwise.lean/declarations/pointwise-smul-def.md) | 60 | `result-track:3d2e10b5de157264dcd1d0b503af8a49ad5b6aef056258d58741e6a82e59c011` |
| 4 | `theorem` | [smul_mem_pointwise_smul](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealPointwise.lean/declarations/smul-mem-pointwise-smul.md) | 66 | `result-track:f1c3d24a89753ac47f988e9fe2a19536e2a5c5ad45ef870fcefe48302c1eab25` |
| 5 | `instance` | [(anonymous)](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealPointwise.lean/declarations/instance.md) | 69 | `declaration-track:959d65cea6452374881e9cc831409a15be27ab8a68fc1ac9723ea8aa91e2b253` |
| 6 | `theorem` | [smul_bot](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealPointwise.lean/declarations/smul-bot.md) | 75 | `result-track:f45f4ecef724739cb29b443803895bd1cc74756155e70f39cffa9f7b795a0c4b` |
| 7 | `theorem` | [smul_sup](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealPointwise.lean/declarations/smul-sup.md) | 78 | `result-track:d4c1bd0349f25f0fe179c51abe60318641144b99c7d58e933bc4014c022ee16b` |
| 8 | `theorem` | [smul_closure](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealPointwise.lean/declarations/smul-closure.md) | 81 | `result-track:11055f196c8fc1283e44804a12993c20b288b464e34d660a66f4e05c53d9c92f` |
| 9 | `instance` | [pointwise_central_scalar](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealPointwise.lean/declarations/pointwise-central-scalar.md) | 84 | `declaration-track:185f84a48e9b29a5ad4e19b4ac9b49e29740a0c973fa1aa2b45ed478fa8873af` |
| 10 | `theorem` | [pointwise_smul_toAddSubmonoid](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealPointwise.lean/declarations/pointwise-smul-toaddsubmonoid.md) | 89 | `result-track:e9a89ecd4b0a67341182f73bf97ebc4b9724b9e6e5a4d6c9c2320246c02ad656` |
| 11 | `theorem` | [pointwise_smul_toAddSubGroup](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealPointwise.lean/declarations/pointwise-smul-toaddsubgroup.md) | 96 | `result-track:8ef9b3a4b4273ffb94e9e20da57966e352ef904aed482fa1842cf4c7a48f71ec` |
| 12 | `theorem` | [pointwise_smul_eq_comap](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealPointwise.lean/declarations/pointwise-smul-eq-comap.md) | 110 | `result-track:478ad89d62ec7b9b2a64af04004cf8ff460b9f8d51d1e0c19985995ee47d46b7` |
| 13 | `theorem` | [smul_mem_pointwise_smul_iff](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealPointwise.lean/declarations/smul-mem-pointwise-smul-iff.md) | 117 | `result-track:1c48aa0a6975f4965bd5d73e41d76dd1723cefede1b456b69115e862cf800b67` |
| 14 | `theorem` | [mem_pointwise_smul_iff_inv_smul_mem](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealPointwise.lean/declarations/mem-pointwise-smul-iff-inv-smul-mem.md) | 120 | `result-track:8db66adda7a55f38f01467a32638ffc30a14339c80f80e2bddb78d1b7520dd6d` |
| 15 | `theorem` | [mem_inv_pointwise_smul_iff](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealPointwise.lean/declarations/mem-inv-pointwise-smul-iff.md) | 125 | `result-track:c80a6595f16b32330281f6fc55db200e4325c1701de1b8647b5f89241fd78fd0` |
| 16 | `theorem` | [pointwise_smul_le_pointwise_smul_iff](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealPointwise.lean/declarations/pointwise-smul-le-pointwise-smul-iff.md) | 129 | `result-track:b1ca8655a1ca9a4894c81260f2258a4706d9e51f77cc29cab8ddff8270af4a86` |
| 17 | `theorem` | [pointwise_smul_subset_iff](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealPointwise.lean/declarations/pointwise-smul-subset-iff.md) | 132 | `result-track:176ddda25ed69a806e45a91773c07567cae82ee661cad480e94ce7409ccb2095` |
| 18 | `theorem` | [subset_pointwise_smul_iff](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealPointwise.lean/declarations/subset-pointwise-smul-iff.md) | 135 | `result-track:62198fe103a82166888614f569fa79408c17e77c3ccd65f849ebabcfbb4801ae` |
| 19 | `instance` | [IsPrime.smul](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealPointwise.lean/declarations/isprime-smul.md) | 138 | `declaration-track:0e6b2e540b80102faeb6917ee65538b6bb7fcfd66af1c888a2e3f6c5f1ebb51a` |
| 20 | `theorem` | [IsPrime.smul_iff](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealPointwise.lean/declarations/isprime-smul-iff.md) | 143 | `result-track:95175b3b0e6fdb8a5ea4d7b5690f867d38f226a876992ce05bd32152ee34d827` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4639b5e587af9c412037a4a6f9b6af712be6f27842a7e36629d9fd02abe869b2 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Pointwise/Variant84502e717d55a3af7a303ba0670cddafef892ef2e72758585cbfaf18ebb762ea.lean","GRWTSK/_verification/specifications/Algebra/Pointwise/Variant84502e717d55a3af7a303ba0670cddafef892ef2e72758585cbfaf18ebb762ea.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
