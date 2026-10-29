# Verification target: Inverses Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ccacc8d757509ff99eb8f9892d14c144f2243725",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Inverses/Variant1426e6bd5eb9d99cfd066517112c82fd50e945f5c52d81cd94cc4c7b10bd9565.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GroupTheoryAndGeneralizations/InversesNamespaced.lean/index.md) · [Full source](../../../../GroupTheoryAndGeneralizations/InversesNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ccacc8d757509ff99eb8f9892d14c144f2243725`.

Source path: `GRWTSK/Algebra/GroupTheory/Inverses/Variant1426e6bd5eb9d99cfd066517112c82fd50e945f5c52d81cd94cc4c7b10bd9565.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Inverses/Variant1426e6bd5eb9d99cfd066517112c82fd50e945f5c52d81cd94cc4c7b10bd9565.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Submonoid.Pointwise` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/InversesNamespaced.lean/declarations/instance-source-edition-2.md) | 45 | `declaration-track:ccced41c9da4b724af22b0a60d26b669c054cd224f2a2a80e92a7ad073897d43` |
| 2 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/InversesNamespaced.lean/declarations/instance.md) | 52 | `declaration-track:3d1c018cbc1d8a5179048dcef5e0e38c69c23b0f9d96f38b931bbc6dfc25ac61` |
| 3 | `theorem` | [IsUnit.Submonoid.coe_inv](../../../../GroupTheoryAndGeneralizations/InversesNamespaced.lean/declarations/isunit-submonoid-coe-inv.md) | 57 | `result-track:184cd7df930da60b4a5a1ac1e83e8340528bbec6c8efc0be256fca08afa3a068` |
| 4 | `def` | [leftInv](../../../../GroupTheoryAndGeneralizations/InversesNamespaced.lean/declarations/leftinv.md) | 68 | `declaration-track:103e9f81c85d700aa4f4a4310295a7eda8f3287a48d52f99169edaa1b53c706a` |
| 5 | `theorem` | [leftInv_leftInv_le](../../../../GroupTheoryAndGeneralizations/InversesNamespaced.lean/declarations/leftinv-leftinv-le.md) | 75 | `result-track:6f8b78b3396a0df5657b0bca35981199b82e1f94a0593c9288b352e5a6323673` |
| 6 | `theorem` | [unit_mem_leftInv](../../../../GroupTheoryAndGeneralizations/InversesNamespaced.lean/declarations/unit-mem-leftinv.md) | 81 | `result-track:d4ae9c8211be305143c9f6dc301f89a4c4a24694bf06c9bcbe5a326955804aac` |
| 7 | `theorem` | [leftInv_leftInv_eq](../../../../GroupTheoryAndGeneralizations/InversesNamespaced.lean/declarations/leftinv-leftinv-eq.md) | 85 | `result-track:0ca510622e63886489aa3c697982113de345563ffef1bc799774c05195d43307` |
| 8 | `def` | [fromLeftInv](../../../../GroupTheoryAndGeneralizations/InversesNamespaced.lean/declarations/fromleftinv.md) | 99 | `declaration-track:69f8f49aba4b45890a5c9679fe20cbd917fae7f54598848647da9377d21a615c` |
| 9 | `theorem` | [mul_fromLeftInv](../../../../GroupTheoryAndGeneralizations/InversesNamespaced.lean/declarations/mul-fromleftinv.md) | 102 | `result-track:cf448c1769f9adb708dff2201e754361605345523bd87b34fe86b00876478883` |
| 10 | `theorem` | [fromLeftInv_one](../../../../GroupTheoryAndGeneralizations/InversesNamespaced.lean/declarations/fromleftinv-one.md) | 106 | `result-track:732818441f067b699e8b3d9666eb31451639dba0ff56343bf9a161900a12dfc6` |
| 11 | `theorem` | [fromLeftInv_mul](../../../../GroupTheoryAndGeneralizations/InversesNamespaced.lean/declarations/fromleftinv-mul.md) | 116 | `result-track:860b0a83d1233d42dc08e26da7224e0f3a50998283331b1915eb48d780dc1780` |
| 12 | `theorem` | [leftInv_le_isUnit](../../../../GroupTheoryAndGeneralizations/InversesNamespaced.lean/declarations/leftinv-le-isunit.md) | 120 | `result-track:47c57e4ef76dab13d4df75920b69dd5f761e9ab23b0a537ec102dcfa545cffef` |
| 13 | `theorem` | [fromLeftInv_eq_iff](../../../../GroupTheoryAndGeneralizations/InversesNamespaced.lean/declarations/fromleftinv-eq-iff.md) | 124 | `result-track:de62fe9c9007e2ccc2ecfe03ed24b2ac457f465af51dce0b4ffcac2cee12a4c4` |
| 14 | `def` | [fromCommLeftInv](../../../../GroupTheoryAndGeneralizations/InversesNamespaced.lean/declarations/fromcommleftinv.md) | 132 | `declaration-track:b1d2d2879c8fa6c3c4479f1bec70ab1fdca099a2cf4062bab2079717a1722db5` |
| 15 | `def` | [leftInvEquiv](../../../../GroupTheoryAndGeneralizations/InversesNamespaced.lean/declarations/leftinvequiv.md) | 145 | `declaration-track:58c7c64e53da403753ddae586a3d703b602766e4469a5682f95128488559be29` |
| 16 | `theorem` | [fromLeftInv_leftInvEquiv_symm](../../../../GroupTheoryAndGeneralizations/InversesNamespaced.lean/declarations/fromleftinv-leftinvequiv-symm.md) | 158 | `result-track:43b0fe5fad2e179a79c05c687c1b58de8b3250c8a825da8dd91ce80873c1c67d` |
| 17 | `theorem` | [leftInvEquiv_symm_fromLeftInv](../../../../GroupTheoryAndGeneralizations/InversesNamespaced.lean/declarations/leftinvequiv-symm-fromleftinv.md) | 162 | `result-track:7f21a9142c0549d1c6e1b995e729b1da62ccdf3c4866096c09176074d2a6f26d` |
| 18 | `theorem` | [leftInvEquiv_mul](../../../../GroupTheoryAndGeneralizations/InversesNamespaced.lean/declarations/leftinvequiv-mul.md) | 167 | `result-track:73e1cdaff3abd78a2bcb40c1225ab3be94d0d86bf9ab5dd5c025e91050e7e670` |
| 19 | `theorem` | [mul_leftInvEquiv](../../../../GroupTheoryAndGeneralizations/InversesNamespaced.lean/declarations/mul-leftinvequiv.md) | 171 | `result-track:e3eedcb89d834a1f86b736f6daa86aae188d691838f233de0ded46f7078f98e0` |
| 20 | `theorem` | [leftInvEquiv_symm_mul](../../../../GroupTheoryAndGeneralizations/InversesNamespaced.lean/declarations/leftinvequiv-symm-mul.md) | 175 | `result-track:5c38519662f11504aea2e01e144f7ffd400de3c820c1fc19c28c565aaa16efdc` |
| 21 | `theorem` | [mul_leftInvEquiv_symm](../../../../GroupTheoryAndGeneralizations/InversesNamespaced.lean/declarations/mul-leftinvequiv-symm.md) | 180 | `result-track:15c7b59e4094a317e8b6862c907286806c06d855e81682ef98bad37e89801045` |
| 22 | `theorem` | [leftInv_eq_inv](../../../../GroupTheoryAndGeneralizations/InversesNamespaced.lean/declarations/leftinv-eq-inv.md) | 193 | `result-track:3d6176f8fd061e792f1233167fd309d951ac715b37acd74450b7351857e022ff` |
| 23 | `theorem` | [fromLeftInv_eq_inv](../../../../GroupTheoryAndGeneralizations/InversesNamespaced.lean/declarations/fromleftinv-eq-inv.md) | 200 | `result-track:f4a9ee84b9ff8962671738a5e590ecb421f561e3d20fc12d3e515c13abd324f5` |
| 24 | `theorem` | [leftInvEquiv_symm_eq_inv](../../../../GroupTheoryAndGeneralizations/InversesNamespaced.lean/declarations/leftinvequiv-symm-eq-inv.md) | 210 | `result-track:6ca3981ad1432e4d3ced1740276cc01d8aaea207ecdc287eeeaff3fc2a5437a1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ff8f321557f75b74f673ec4cf5288b5ad28f94a0864b919876f762a5772899fe -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Inverses/Variant1426e6bd5eb9d99cfd066517112c82fd50e945f5c52d81cd94cc4c7b10bd9565.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/Inverses/Variant1426e6bd5eb9d99cfd066517112c82fd50e945f5c52d81cd94cc4c7b10bd9565.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
