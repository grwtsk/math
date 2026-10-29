# Verification target: Power Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7c1075bf15e3e0bfe98d8cd97bd080ba9ca8b7df",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Power/Variant91a8ee02767f22cbc3a7db4c57cb8312b404d83fd9c995660204312063f544f1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../Geometry/RealAndComplexGeometry/PowerNamespacedPublic.lean/index.md) · [Full source](../../../../../Geometry/RealAndComplexGeometry/PowerNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7c1075bf15e3e0bfe98d8cd97bd080ba9ca8b7df`.

Source path: `GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Power/Variant91a8ee02767f22cbc3a7db4c57cb8312b404d83fd9c995660204312063f544f1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/ClassicalGeometry/EuclideanGeometry/Power/Variant91a8ee02767f22cbc3a7db4c57cb8312b404d83fd9c995660204312063f544f1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Geometry.Euclidean.Angle.Sphere` — import line 17; external provider; requires a separately pinned dependency.
- `Mathlib.Geometry.Euclidean.Similarity` — import line 18; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [mul_norm_eq_abs_sub_sq_norm](../../../../../Geometry/RealAndComplexGeometry/PowerNamespacedPublic.lean/declarations/mul-norm-eq-abs-sub-sq-norm.md) | 60 | `result-track:06cd399769b97f79b50099d8dbf49840758afc1de3eed762a12d67c992bfd804` |
| 2 | `theorem` | [mul_dist_eq_abs_sub_sq_dist](../../../../../Geometry/RealAndComplexGeometry/PowerNamespacedPublic.lean/declarations/mul-dist-eq-abs-sub-sq-dist.md) | 94 | `result-track:80dd8c05d57ec7793c2534880dfb99d25d592a76ba3deb5773ae0798428bc912` |
| 3 | `theorem` | [mul_dist_eq_mul_dist_of_cospherical](../../../../../Geometry/RealAndComplexGeometry/PowerNamespacedPublic.lean/declarations/mul-dist-eq-mul-dist-of-cospherical.md) | 118 | `result-track:140616c4acf3c58cad3d83ca6fc1f2ea35d2dfd253677334b6acdf04a5fd7eac` |
| 4 | `theorem` | [mul_dist_eq_mul_dist_of_cospherical_of_angle_eq_pi](../../../../../Geometry/RealAndComplexGeometry/PowerNamespacedPublic.lean/declarations/mul-dist-eq-mul-dist-of-cospherical-of-angle-eq-pi.md) | 128 | `result-track:57ea24048c5ec4bd87fff1c6d1bfe4b04cb32abfe507ac7581a12fd4f0d2bcd1` |
| 5 | `lemma` | [cospherical_of_mul_dist_eq_mul_dist_of_angle_eq_pi_aux](../../../../../Geometry/RealAndComplexGeometry/PowerNamespacedPublic.lean/declarations/cospherical-of-mul-dist-eq-mul-dist-of-angle-eq-pi-aux.md) | 134 | `result-track:4e7ef8f32a6a6d7d0f370e747dd2025b7bfafbad8a33fbfc18e53fd743566667` |
| 6 | `theorem` | [cospherical_of_mul_dist_eq_mul_dist_of_angle_eq_pi](../../../../../Geometry/RealAndComplexGeometry/PowerNamespacedPublic.lean/declarations/cospherical-of-mul-dist-eq-mul-dist-of-angle-eq-pi.md) | 177 | `result-track:b4ee9e253945bbb91ce33d684a35bd1dc065bf1b5f51ebb9c27dee81d7fa5fb8` |
| 7 | `theorem` | [mul_dist_eq_mul_dist_of_cospherical_of_angle_eq_zero](../../../../../Geometry/RealAndComplexGeometry/PowerNamespacedPublic.lean/declarations/mul-dist-eq-mul-dist-of-cospherical-of-angle-eq-zero.md) | 218 | `result-track:1b67a90e54400f4c19cd26b4c4160a64397f31c89836f494115d7f2079c77506` |
| 8 | `def` | [power](../../../../../Geometry/RealAndComplexGeometry/PowerNamespacedPublic.lean/declarations/power.md) | 233 | `declaration-track:2217d738f8e677c738e0098e75efa4a9edadacf5b8a3e969373e76513753a0e3` |
| 9 | `theorem` | [power_eq_zero_iff_mem_sphere](../../../../../Geometry/RealAndComplexGeometry/PowerNamespacedPublic.lean/declarations/power-eq-zero-iff-mem-sphere.md) | 238 | `result-track:6ed1e19795df34e9a06563db9cc2d914a4a21e7912eae3aa3885a0d362ed1d7a` |
| 10 | `theorem` | [power_pos_iff_radius_lt_dist_center](../../../../../Geometry/RealAndComplexGeometry/PowerNamespacedPublic.lean/declarations/power-pos-iff-radius-lt-dist-center.md) | 243 | `result-track:1c26cdc4edc13a0504e3d7ca3a0881e3c7a6a281d097c5730fa87503ea2c722a` |
| 11 | `theorem` | [power_neg_iff_dist_center_lt_radius](../../../../../Geometry/RealAndComplexGeometry/PowerNamespacedPublic.lean/declarations/power-neg-iff-dist-center-lt-radius.md) | 248 | `result-track:62f9179a76afae509568bbb3344cb9cb891c8cee397281dc692701631bc6537b` |
| 12 | `theorem` | [power_nonneg_iff_radius_le_dist_center](../../../../../Geometry/RealAndComplexGeometry/PowerNamespacedPublic.lean/declarations/power-nonneg-iff-radius-le-dist-center.md) | 253 | `result-track:84ae6f4fd5abbf34f09c8ed6f116e53f3e36106899a1864e6c3042dbaa86ed91` |
| 13 | `theorem` | [power_nonpos_iff_dist_center_le_radius](../../../../../Geometry/RealAndComplexGeometry/PowerNamespacedPublic.lean/declarations/power-nonpos-iff-dist-center-le-radius.md) | 258 | `result-track:cbf3ca99fcb65437868a29687d9c82e2873e65bcfcd52b6a8619ba2a3b9529c9` |
| 14 | `theorem` | [mul_dist_eq_abs_power](../../../../../Geometry/RealAndComplexGeometry/PowerNamespacedPublic.lean/declarations/mul-dist-eq-abs-power.md) | 264 | `result-track:029fccaeb6b2ef2e4d14491780ef3150cc625ed6d81e04cd814ef2594380ce31` |
| 15 | `theorem` | [mul_dist_eq_zero_of_mem_sphere](../../../../../Geometry/RealAndComplexGeometry/PowerNamespacedPublic.lean/declarations/mul-dist-eq-zero-of-mem-sphere.md) | 275 | `result-track:f555602ed5b9580042f235482fd5cd3cc3e524665d109310a881fc17566793a7` |
| 16 | `theorem` | [mul_dist_eq_power_of_radius_le_dist_center](../../../../../Geometry/RealAndComplexGeometry/PowerNamespacedPublic.lean/declarations/mul-dist-eq-power-of-radius-le-dist-center.md) | 287 | `result-track:d869f035355e2c78a56bdd1658bb638079dbb7981c741b97657f319a85658482` |
| 17 | `theorem` | [mul_dist_eq_neg_power_of_dist_center_le_radius](../../../../../Geometry/RealAndComplexGeometry/PowerNamespacedPublic.lean/declarations/mul-dist-eq-neg-power-of-dist-center-le-radius.md) | 298 | `result-track:dbfe890e2435f1e1b41ebc6c04956d87749babca9c97c37e3e62779157d17107` |
| 18 | `theorem` | [dist_sq_eq_mul_dist_of_tangent_and_secant](../../../../../Geometry/RealAndComplexGeometry/PowerNamespacedPublic.lean/declarations/dist-sq-eq-mul-dist-of-tangent-and-secant.md) | 309 | `result-track:cad91b87028056c7587ece8f6e4abafaf76458b2605a73a6ae105dd4aecc7d77` |
| 19 | `theorem` | [IsTangentAt.power_eq_dist_sq](../../../../../Geometry/RealAndComplexGeometry/PowerNamespacedPublic.lean/declarations/istangentat-power-eq-dist-sq.md) | 321 | `result-track:8c621cd19b50a576252ebd82bd6ab9870798fc6fe6db65993eb03e7040bd76d4` |
| 20 | `theorem` | [isTangentAt_iff_dist_sq_eq_power](../../../../../Geometry/RealAndComplexGeometry/PowerNamespacedPublic.lean/declarations/istangentat-iff-dist-sq-eq-power.md) | 329 | `result-track:37e3c362800362a6511636fa7ff275d4142057a3a06d14ecea39fc027a4f4f34` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=81a450ce03a1c1b9f458792f92a9241c387dd286e3d5560d304e8d2f9c306a0e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Power/Variant91a8ee02767f22cbc3a7db4c57cb8312b404d83fd9c995660204312063f544f1.lean","GRWTSK/_verification/specifications/Geometry/ClassicalGeometry/EuclideanGeometry/Power/Variant91a8ee02767f22cbc3a7db4c57cb8312b404d83fd9c995660204312063f544f1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
