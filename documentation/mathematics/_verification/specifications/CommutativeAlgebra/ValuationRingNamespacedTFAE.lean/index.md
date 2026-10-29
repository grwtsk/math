# Verification target: Valuation Ring Namespaced TFAE

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5dfd71807fba011dee570b5bd6d349688385ece5",
  "lexical_observation_count": 32,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/ValuationRing/Variant17d80014147529f2a567443524a2304ae3cc4f5d22efb2355450506882697a0c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/ValuationRingNamespacedTFAE.lean/index.md) · [Full source](../../../../CommutativeAlgebra/ValuationRingNamespacedTFAE.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5dfd71807fba011dee570b5bd6d349688385ece5`.

Source path: `GRWTSK/Algebra/ValuationRing/Variant17d80014147529f2a567443524a2304ae3cc4f5d22efb2355450506882697a0c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/ValuationRing/Variant17d80014147529f2a567443524a2304ae3cc4f5d22efb2355450506882697a0c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Valuation.Integers` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.LocalRing` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Localization.FractionRing` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Localization.Integer` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.DiscreteValuationRing.Basic` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Bezout` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FieldSimp` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [ValuationRing](../../../../CommutativeAlgebra/ValuationRingNamespacedTFAE.lean/declarations/valuationring.md) | 50 | `declaration-track:81cb043fa1f3ee9c12a22488dc9bcab8d41d2b5a8712e0aaefa0bdad8754d652` |
| 2 | `lemma` | [ValuationRing.cond](../../../../CommutativeAlgebra/ValuationRingNamespacedTFAE.lean/declarations/valuationring-cond.md) | 55 | `result-track:bd4c8f56f9fe0dffab3f37a5c2d99810a9125397b5d9e2e8777086feba61244f` |
| 3 | `def` | [ValueGroup](../../../../CommutativeAlgebra/ValuationRingNamespacedTFAE.lean/declarations/valuegroup.md) | 67 | `declaration-track:2e4ee20437d32532528558fabc86ab5368e8fb4421fde9c18208552832cf9877` |
| 4 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/ValuationRingNamespacedTFAE.lean/declarations/instance-source-edition-7.md) | 70 | `declaration-track:8a5cea2a3f27097d9496c75171dcc141c2ee3890b302f28ac54b78cd9517b18d` |
| 5 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/ValuationRingNamespacedTFAE.lean/declarations/instance-source-edition-4.md) | 72 | `declaration-track:6f7f118fda24473cb6a1cdc925b7472c97bebe72da7956ad05ecefebec49f0f0` |
| 6 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/ValuationRingNamespacedTFAE.lean/declarations/instance.md) | 88 | `declaration-track:34a0f8547fe5448cccb43f02051d7475e1eeecbf5e23c6d75ad0b93a00809a20` |
| 7 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/ValuationRingNamespacedTFAE.lean/declarations/instance-source-edition-2.md) | 90 | `declaration-track:3c7414406eb4db17a45bbd9b743ca322c0e9b65b9d310b50209c1d3a31b90044` |
| 8 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/ValuationRingNamespacedTFAE.lean/declarations/instance-source-edition-10.md) | 92 | `declaration-track:d461e0d0f4fc1b721e3f1b953b7b07d4384b1e2983021699bfc3b7691b736b96` |
| 9 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/ValuationRingNamespacedTFAE.lean/declarations/instance-source-edition-11.md) | 103 | `declaration-track:e6db979226158bae473fe03d393e4f82dc5a44ea5e2a7c1e48f360122b183c3f` |
| 10 | `theorem` | [le_total](../../../../CommutativeAlgebra/ValuationRingNamespacedTFAE.lean/declarations/le-total.md) | 116 | `result-track:b5ae5856ecd806bd37f3476bbeba556dfd994a0e32dc5185dd026d2ec18ac744` |
| 11 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/ValuationRingNamespacedTFAE.lean/declarations/instance-source-edition-6.md) | 137 | `declaration-track:7d066d41c8a83b622e041875fbe299f8a696ad8140bf0654c56437ca2b0da582` |
| 12 | `instance` | [linearOrderedCommGroupWithZero](../../../../CommutativeAlgebra/ValuationRingNamespacedTFAE.lean/declarations/linearorderedcommgroupwithzero.md) | 156 | `declaration-track:487068abdbfdae34ff5d0c38f9dc9cbcb3e218e73670ab0446ae7e2d52b6075d` |
| 13 | `def` | [valuation](../../../../CommutativeAlgebra/ValuationRingNamespacedTFAE.lean/declarations/valuation.md) | 186 | `declaration-track:142167c81aa376dc965fa47740f3eef4b8faa17621cf91c000b980a6e3242a76` |
| 14 | `theorem` | [mem_integer_iff](../../../../CommutativeAlgebra/ValuationRingNamespacedTFAE.lean/declarations/mem-integer-iff.md) | 213 | `result-track:2b91450d3d45ec73df892205f38904bbf0a96eb8b6d62edbdac16721a3d28935` |
| 15 | `def` | [equivInteger](../../../../CommutativeAlgebra/ValuationRingNamespacedTFAE.lean/declarations/equivinteger.md) | 224 | `declaration-track:8d703f8b8139463cc4152ff88528808a780263b7429a237f40ed6b63e3da3a9a` |
| 16 | `theorem` | [coe_equivInteger_apply](../../../../CommutativeAlgebra/ValuationRingNamespacedTFAE.lean/declarations/coe-equivinteger-apply.md) | 243 | `result-track:362250b54938120982252971f34dc6422758f7b5a204fc374988348e9e69854c` |
| 17 | `theorem` | [range_algebraMap_eq](../../../../CommutativeAlgebra/ValuationRingNamespacedTFAE.lean/declarations/range-algebramap-eq.md) | 246 | `result-track:f81c2ebee79c389bc4bf121e7e4cb98ddd713f063f81730384b92dab57bb9643` |
| 18 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/ValuationRingNamespacedTFAE.lean/declarations/instance-source-edition-5.md) | 256 | `declaration-track:79ecb3e4fa2bb5d8c76d36cc0fb1829fd5e0bc145aa4cc8170e21c4cb376f129` |
| 19 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/ValuationRingNamespacedTFAE.lean/declarations/instance-source-edition-8.md) | 268 | `declaration-track:8bf8602573e087c8550a419006eda5698b0b163b3865707b0657c83596c121eb` |
| 20 | `theorem` | [iff_dvd_total](../../../../CommutativeAlgebra/ValuationRingNamespacedTFAE.lean/declarations/iff-dvd-total.md) | 293 | `result-track:40b9b73dc187c6f6bccbbf5bdc117bf69749c8e7f92f834e8182d1f75990f654` |
| 21 | `theorem` | [iff_ideal_total](../../../../CommutativeAlgebra/ValuationRingNamespacedTFAE.lean/declarations/iff-ideal-total.md) | 300 | `result-track:a9302fb7f38c5e086d507bda3982fe44470f73833062ba0ad70623db2fd52f6a` |
| 22 | `theorem` | [dvd_total](../../../../CommutativeAlgebra/ValuationRingNamespacedTFAE.lean/declarations/dvd-total.md) | 310 | `result-track:1d8d963991a5cb6cb98bcbf6c4b068853f8da950b23236af7d75ba2ac244d995` |
| 23 | `theorem` | [unique_irreducible](../../../../CommutativeAlgebra/ValuationRingNamespacedTFAE.lean/declarations/unique-irreducible.md) | 314 | `result-track:5c5a6c5ed6989a3fc0639c5d41ef9d4452eda9789513a4f13c1489869c966344` |
| 24 | `theorem` | [iff_isInteger_or_isInteger](../../../../CommutativeAlgebra/ValuationRingNamespacedTFAE.lean/declarations/iff-isinteger-or-isinteger.md) | 323 | `result-track:de6343e74cfc9c6c55d33bb6df0bf1ff82aab3abf11a0bedb5a7b894c5e61877` |
| 25 | `theorem` | [isInteger_or_isInteger](../../../../CommutativeAlgebra/ValuationRingNamespacedTFAE.lean/declarations/isinteger-or-isinteger.md) | 349 | `result-track:2668476918d894641e5e7d98a0633dd422b79bf458e9a23eb1cde2e72756d2b7` |
| 26 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/ValuationRingNamespacedTFAE.lean/declarations/instance-source-edition-12.md) | 357 | `declaration-track:ea33367d6ff47e35a249d0a27d7530025b95dd6d33f85030092f0bd5ec60ca20` |
| 27 | `theorem` | [iff_local_bezout_domain](../../../../CommutativeAlgebra/ValuationRingNamespacedTFAE.lean/declarations/iff-local-bezout-domain.md) | 366 | `result-track:b548e5cf70de2678ba36766285a37d96b4f80a1f96dc5c0d729427c23eb5a750` |
| 28 | `theorem` | [tFAE](../../../../CommutativeAlgebra/ValuationRingNamespacedTFAE.lean/declarations/tfae.md) | 389 | `result-track:20aa379046f766caf8468cfadc7f318b0630f64805d84fcabf4142963168a398` |
| 29 | `theorem` | [Valuation Ring Namespaced TFAE](../../../../CommutativeAlgebra/ValuationRingNamespacedTFAE.lean/declarations/valuationring-source-line-403-occurrence-2.md) | 403 | `result-track:6729c1dc5dade6c34ed7cc0c644ed1a5dae70380df5f181b27e8e1b6822757b9` |
| 30 | `theorem` | [of_integers](../../../../CommutativeAlgebra/ValuationRingNamespacedTFAE.lean/declarations/of-integers.md) | 419 | `result-track:c42c7b70b6c7fe4e8ac9b9ce25f98efbcca63724b6531e9c60422f54bf62091d` |
| 31 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/ValuationRingNamespacedTFAE.lean/declarations/instance-source-edition-3.md) | 436 | `declaration-track:3ee8879699044e3c2dfeb9f6298b202399e883ea28ce71f43871669798561e9d` |
| 32 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/ValuationRingNamespacedTFAE.lean/declarations/instance-source-edition-9.md) | 451 | `declaration-track:d35164ef4ae676ead831fac4ff62798d8c9c9e6bd70e442ce9c3a1ee1f57f891` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4d393186c64b1a705e08ba40e4e458dec44a2caf69cc58235117950cceb5b025 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/ValuationRing/Variant17d80014147529f2a567443524a2304ae3cc4f5d22efb2355450506882697a0c.lean","GRWTSK/_verification/specifications/Algebra/ValuationRing/Variant17d80014147529f2a567443524a2304ae3cc4f5d22efb2355450506882697a0c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
