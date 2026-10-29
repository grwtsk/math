# Verification target: Abel Ruffini Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3e83b05f47b9548982f19e8ea3dde485ef684b25",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/FieldTheory/AbelRuffini/Variantbf98dffa6fcc24b731c49d4ae47b7df41da640c38ab620f84510eb62d3484bc5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FieldTheoryAndPolynomials/AbelRuffiniNamespacedPublic.lean/index.md) · [Full source](../../../../FieldTheoryAndPolynomials/AbelRuffiniNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3e83b05f47b9548982f19e8ea3dde485ef684b25`.

Source path: `GRWTSK/Algebra/FieldTheory/AbelRuffini/Variantbf98dffa6fcc24b731c49d4ae47b7df41da640c38ab620f84510eb62d3484bc5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/FieldTheory/AbelRuffini/Variantbf98dffa6fcc24b731c49d4ae47b7df41da640c38ab620f84510eb62d3484bc5.lean.json)

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
| 1 | `theorem` | [gal_zero_isSolvable](../../../../FieldTheoryAndPolynomials/AbelRuffiniNamespacedPublic.lean/declarations/gal-zero-issolvable.md) | 41 | `result-track:a0fad70cae6177a375a47a5f5f006e9dea1acb3769393bf0ba7d1c55f271030b` |
| 2 | `theorem` | [gal_one_isSolvable](../../../../FieldTheoryAndPolynomials/AbelRuffiniNamespacedPublic.lean/declarations/gal-one-issolvable.md) | 43 | `result-track:cd743744f09a6df25f9548a491a2e0134c0c117f9f352d2a13c46f8dc375df2a` |
| 3 | `theorem` | [gal_C_isSolvable](../../../../FieldTheoryAndPolynomials/AbelRuffiniNamespacedPublic.lean/declarations/gal-c-issolvable.md) | 45 | `result-track:2ea87ebba04902f4714e982bea6bf9615e5ec480f594c473a1d8906ad36acc10` |
| 4 | `theorem` | [gal_X_isSolvable](../../../../FieldTheoryAndPolynomials/AbelRuffiniNamespacedPublic.lean/declarations/gal-x-issolvable.md) | 47 | `result-track:09f2c3a1ee9cbde2a41fdad5688955b6446d68a9793d19c34d54d7a8de61edb1` |
| 5 | `theorem` | [gal_X_sub_C_isSolvable](../../../../FieldTheoryAndPolynomials/AbelRuffiniNamespacedPublic.lean/declarations/gal-x-sub-c-issolvable.md) | 49 | `result-track:39c76c35d0b3a870e9b15f31cae69683143a13cb5864ac6cc15dadca342b1217` |
| 6 | `theorem` | [gal_X_pow_isSolvable](../../../../FieldTheoryAndPolynomials/AbelRuffiniNamespacedPublic.lean/declarations/gal-x-pow-issolvable.md) | 51 | `result-track:514aa138aefbea901fb64b0fb0b212e872e22580f2ce4fdf8af1f8461da1603f` |
| 7 | `theorem` | [gal_mul_isSolvable](../../../../FieldTheoryAndPolynomials/AbelRuffiniNamespacedPublic.lean/declarations/gal-mul-issolvable.md) | 53 | `result-track:b162485f2c93da678330dda74792c166a9dc3c8dcf6a8322d4ec153ace46c8ec` |
| 8 | `theorem` | [gal_prod_isSolvable](../../../../FieldTheoryAndPolynomials/AbelRuffiniNamespacedPublic.lean/declarations/gal-prod-issolvable.md) | 57 | `result-track:ab0c2be6386116fc2752e93b2f6e22651587957a58f0f02e81bdf6d66125c1da` |
| 9 | `theorem` | [gal_isSolvable_of_splits](../../../../FieldTheoryAndPolynomials/AbelRuffiniNamespacedPublic.lean/declarations/gal-issolvable-of-splits.md) | 65 | `result-track:110e88232b5aa1bd5912ab94adbbc4219e20721595db343cb0b0437402e56313` |
| 10 | `theorem` | [gal_isSolvable_tower](../../../../FieldTheoryAndPolynomials/AbelRuffiniNamespacedPublic.lean/declarations/gal-issolvable-tower.md) | 71 | `result-track:f290d7e3068f60159c75d9b5bc0c35437014f1f2647b174f6dca6f541687a4d1` |
| 11 | `theorem` | [gal_X_pow_sub_one_isSolvable](../../../../FieldTheoryAndPolynomials/AbelRuffiniNamespacedPublic.lean/declarations/gal-x-pow-sub-one-issolvable.md) | 88 | `result-track:e2069dbb2c44c4eaa648db74bafb3ab784ae5f5e1b05d5667de0330e4617660e` |
| 12 | `theorem` | [gal_X_pow_sub_C_isSolvable_aux](../../../../FieldTheoryAndPolynomials/AbelRuffiniNamespacedPublic.lean/declarations/gal-x-pow-sub-c-issolvable-aux.md) | 107 | `result-track:4fc1500f1513d1ca65ee212e34f3e5d3ad930ac180c1cb9e8fcee3e4b9cf13c3` |
| 13 | `theorem` | [splits_X_pow_sub_one_of_X_pow_sub_C](../../../../FieldTheoryAndPolynomials/AbelRuffiniNamespacedPublic.lean/declarations/splits-x-pow-sub-one-of-x-pow-sub-c.md) | 145 | `result-track:3ccef5f2807c3672ba6b55117f428ec8ccdd57c002d38135a872ad3afed504e6` |
| 14 | `theorem` | [gal_X_pow_sub_C_isSolvable](../../../../FieldTheoryAndPolynomials/AbelRuffiniNamespacedPublic.lean/declarations/gal-x-pow-sub-c-issolvable.md) | 184 | `result-track:bce017b9f9171cb0095d5e6d845b75fa36bfda008d1967af1502afb9c49aaf4d` |
| 15 | `def` | [solvableByRad](../../../../FieldTheoryAndPolynomials/AbelRuffiniNamespacedPublic.lean/declarations/solvablebyrad.md) | 203 | `declaration-track:969d88e78dae1b6a2718d7179d4f1390f94f7e3b5d501b1b94c805acad43a666` |
| 16 | `theorem` | [solvableByRad_le](../../../../FieldTheoryAndPolynomials/AbelRuffiniNamespacedPublic.lean/declarations/solvablebyrad-le.md) | 206 | `result-track:4c892a3250fe66466d0516d8db1afae93f0123609af94ea704e2ed8d18288bf3` |
| 17 | `theorem` | [solvableByRad.rad_mem](../../../../FieldTheoryAndPolynomials/AbelRuffiniNamespacedPublic.lean/declarations/solvablebyrad-rad-mem.md) | 210 | `result-track:f38522b33cb5f483a2e412d7242eb1806dd86f329d795da8cb37d916f457094b` |
| 18 | `theorem` | [solvableByRad_le_algClosure](../../../../FieldTheoryAndPolynomials/AbelRuffiniNamespacedPublic.lean/declarations/solvablebyrad-le-algclosure.md) | 215 | `result-track:2a09bc67f099f6bccc3364b243a2a523bd96b224b600aaef32ffd34617ea509a` |
| 19 | `theorem` | [isAlgebraic_solvableByRad](../../../../FieldTheoryAndPolynomials/AbelRuffiniNamespacedPublic.lean/declarations/isalgebraic-solvablebyrad.md) | 224 | `result-track:cb2a6d4bd2ef2300b0152df569a3564728ef149887b9463cee75dad421f201ab` |
| 20 | `theorem` | [isIntegral_of_mem_solvableByRad](../../../../FieldTheoryAndPolynomials/AbelRuffiniNamespacedPublic.lean/declarations/isintegral-of-mem-solvablebyrad.md) | 227 | `result-track:682f8e87270a9ff5335a42880bd3c05b8fdd885d3e5e9fb366254f0b76a49574` |
| 21 | `theorem` | [solvableByRad.induction](../../../../FieldTheoryAndPolynomials/AbelRuffiniNamespacedPublic.lean/declarations/solvablebyrad-induction.md) | 232 | `result-track:104cd20dea7c462d253668af7e3508a06e88451ae4d107268c0aed299c5dcd88` |
| 22 | `theorem` | [induction_rad](../../../../FieldTheoryAndPolynomials/AbelRuffiniNamespacedPublic.lean/declarations/induction-rad.md) | 256 | `result-track:fcad935de87b4488f00ef1f3143cd7696676439e9b600a769a6af0df0e43f656` |
| 23 | `theorem` | [induction_step](../../../../FieldTheoryAndPolynomials/AbelRuffiniNamespacedPublic.lean/declarations/induction-step.md) | 284 | `result-track:aa7d2c58e4cdedc2f9edd8da98447420c604ff05b0877d0eecea9d84a0bbe302` |
| 24 | `theorem` | [isSolvable_gal_minpoly](../../../../FieldTheoryAndPolynomials/AbelRuffiniNamespacedPublic.lean/declarations/issolvable-gal-minpoly.md) | 310 | `result-track:70e21d0c69e358c194da3d76a70084de2d3b9ccd0ecb5ae7e343274d813d18dc` |
| 25 | `theorem` | [isSolvable_gal_of_irreducible](../../../../FieldTheoryAndPolynomials/AbelRuffiniNamespacedPublic.lean/declarations/issolvable-gal-of-irreducible.md) | 322 | `result-track:a46e72645ae9a8195f1cda8131f286f8b4c43a028b9fcaad00cb8bcc10bc41f9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=235d657e093d38e8c0c7980cbe2e1241871ea52aff5ad2e7e57e248e1cb2e7f3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/FieldTheory/AbelRuffini/Variantbf98dffa6fcc24b731c49d4ae47b7df41da640c38ab620f84510eb62d3484bc5.lean","GRWTSK/_verification/specifications/Algebra/FieldTheory/AbelRuffini/Variantbf98dffa6fcc24b731c49d4ae47b7df41da640c38ab620f84510eb62d3484bc5.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
