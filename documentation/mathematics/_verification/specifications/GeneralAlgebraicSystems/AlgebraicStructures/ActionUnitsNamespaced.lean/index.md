# Verification target: Action Units Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e1db92f192f7a85f158eda6e13da06912a5dc035",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Units/Variantdfde0a940b2ef37cedf6df9a3f3de4502a8981d035a7393db6eeeb20a6f3f22b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ActionUnitsNamespaced.lean/index.md) · [Full source](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ActionUnitsNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e1db92f192f7a85f158eda6e13da06912a5dc035`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Units/Variantdfde0a940b2ef37cedf6df9a3f3de4502a8981d035a7393db6eeeb20a6f3f22b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Units/Variantdfde0a940b2ef37cedf6df9a3f3de4502a8981d035a7393db6eeeb20a6f3f22b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Action.Units` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GroupWithZero.Action.Defs` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GroupWithZero.Units.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [smul_mk0](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ActionUnitsNamespaced.lean/declarations/smul-mk0.md) | 43 | `result-track:567f2027d26c8a01fcdd714a6cb3ddc8821f7471aa67407f89cf7109563cef70` |
| 2 | `lemma` | [inv_smul_smul₀](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ActionUnitsNamespaced.lean/declarations/inv-smul-smul.md) | 50 | `result-track:c1ef2ca815f58433d6d29bcc3a095bfccdadd12b2075919b8eae47621b6c8576` |
| 3 | `lemma` | [smul_inv_smul₀](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ActionUnitsNamespaced.lean/declarations/smul-inv-smul.md) | 54 | `result-track:8b1f7f6ef0f2a91158d15bf37152e9cd8b1048b808d12088da2383878cd0eec3` |
| 4 | `lemma` | [inv_smul_eq_iff₀](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ActionUnitsNamespaced.lean/declarations/inv-smul-eq-iff.md) | 56 | `result-track:45a42537361bc68c964a0277581d24dc12c55e02c4d0c1ec9d65fec63f816fca` |
| 5 | `lemma` | [eq_inv_smul_iff₀](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ActionUnitsNamespaced.lean/declarations/eq-inv-smul-iff.md) | 59 | `result-track:3e7c9e9a08b7ac6f24ca1ea21b8652ad771a5cd3a0c3f6905666d73d2e08f426` |
| 6 | `lemma` | [Commute.smul_right_iff₀](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ActionUnitsNamespaced.lean/declarations/commute-smul-right-iff.md) | 63 | `result-track:669de2079ac0b8f086b579be7f9ad1a12cacfa7c2cafb15dd608bfac15e8854b` |
| 7 | `lemma` | [Commute.smul_left_iff₀](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ActionUnitsNamespaced.lean/declarations/commute-smul-left-iff.md) | 67 | `result-track:c8451c47432f897443264893e1d787610ff8e085af5aca7e2ac77c51f5511202` |
| 8 | `def` | [Equiv.smulRight](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ActionUnitsNamespaced.lean/declarations/equiv-smulright.md) | 71 | `declaration-track:d95f093c24d33ba259a2dd5f22db5532a508050273c99354605ef756e1ff2a2c` |
| 9 | `instance` | [instSMulZeroClass](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ActionUnitsNamespaced.lean/declarations/instsmulzeroclass.md) | 83 | `declaration-track:db95341545f8e2cc606a579df5dd57bcfafe848c5a5a5f905328cbdd2a1710f7` |
| 10 | `instance` | [instDistribSMulUnits](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ActionUnitsNamespaced.lean/declarations/instdistribsmulunits.md) | 87 | `declaration-track:2c8aba21bf144c4f9708c82e2ca8428616987a63c6a0d6e62ca14074715bc9b2` |
| 11 | `instance` | [instDistribMulAction](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ActionUnitsNamespaced.lean/declarations/instdistribmulaction.md) | 90 | `declaration-track:f28d64d2cc638ffd8cfe6659153a68c368667dd5768e26401314c3d449719e50` |
| 12 | `instance` | [instMulDistribMulAction](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ActionUnitsNamespaced.lean/declarations/instmuldistribmulaction.md) | 96 | `declaration-track:70120b2e8ec405faa7171fca5871ccd96c552f955f8ca6e2b5f7fbcf3e6de6b4` |
| 13 | `instance` | [mulDistribMulAction'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ActionUnitsNamespaced.lean/declarations/muldistribmulaction.md) | 104 | `declaration-track:b7ecc646841aa1e171149341be0c82a50bdd83848eb42ba6aae9f7bcac1ec918` |
| 14 | `lemma` | [IsUnit.smul_eq_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ActionUnitsNamespaced.lean/declarations/isunit-smul-eq-zero.md) | 116 | `result-track:27784b0f9319151f28f8b113e713ebb9e2b88ed705f93035448efa6d8721a544` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=307b69079f9f5dbfcaf6c4d6447db3eede20ea4be6bcc1891090df390419c785 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/UniversalAlgebra/Units/Variantdfde0a940b2ef37cedf6df9a3f3de4502a8981d035a7393db6eeeb20a6f3f22b.lean","GRWTSK/_verification/specifications/Algebra/UniversalAlgebra/Units/Variantdfde0a940b2ef37cedf6df9a3f3de4502a8981d035a7393db6eeeb20a6f3f22b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
