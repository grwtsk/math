# Verification target: Theorems Theorems Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2e525dd442ab8af08ad8ae8a16d04ece362084bc",
  "lexical_observation_count": 38,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/ConvexGeometry/Theorems/Variantac5430cf0fe9f3df0f05254a542cb0c533a8c50612df3407b3c90633c0bce82b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/TheoremsTheoremsNamespaced.lean/index.md) · [Full source](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/TheoremsTheoremsNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2e525dd442ab8af08ad8ae8a16d04ece362084bc`.

Source path: `GRWTSK/Geometry/ConvexGeometry/Theorems/Variantac5430cf0fe9f3df0f05254a542cb0c533a8c50612df3407b3c90633c0bce82b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/ConvexGeometry/Theorems/Variantac5430cf0fe9f3df0f05254a542cb0c533a8c50612df3407b3c90633c0bce82b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Think.Kakeya.Gauge.Measurement` — import line 6; external provider; requires a separately pinned dependency.
- `Think.Kakeya.Gauge.GammaMeasure` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [gauge_nonnegative](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/TheoremsTheoremsNamespaced.lean/declarations/gauge-nonnegative.md) | 43 | `result-track:1245ef53dd90c3225c7d4b742bc0111993d25d4b85289f7c77652516153d598c` |
| 2 | `theorem` | [gauge_complement_symmetric](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/TheoremsTheoremsNamespaced.lean/declarations/gauge-complement-symmetric.md) | 46 | `result-track:b985a94330c77fc48b879f9f8c4bf015ba6848b01cad33ab000138432603603e` |
| 3 | `theorem` | [gauge_energy_nonnegative](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/TheoremsTheoremsNamespaced.lean/declarations/gauge-energy-nonnegative.md) | 49 | `result-track:1f70e32833761e3f4c7803395df36dd2f075a7d356179bb0badba24de9524a88` |
| 4 | `theorem` | [bounded_error_contains_measurement](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/TheoremsTheoremsNamespaced.lean/declarations/bounded-error-contains-measurement.md) | 52 | `result-track:446fad8b901bc71c18656b9f57c633ffdf5a5b74cf36680ccba87cf4c9f6f56c` |
| 5 | `theorem` | [exact_eq_implies_k_equal](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/TheoremsTheoremsNamespaced.lean/declarations/exact-eq-implies-k-equal.md) | 55 | `result-track:d3032b97ccb6eef7a59f214ace12b44d9f3ba48650dd599e616f55b49fb8e4a3` |
| 6 | `def` | [measured_bounds_transport_exact_eq_to_k](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/TheoremsTheoremsNamespaced.lean/declarations/measured-bounds-transport-exact-eq-to-k.md) | 66 | `declaration-track:bce924dde23a65037d0c5232830ad6433b7222d6744daaf0dd37b3e1c206c149` |
| 7 | `theorem` | [k_residue_heat_nonnegative](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/TheoremsTheoremsNamespaced.lean/declarations/k-residue-heat-nonnegative.md) | 69 | `result-track:585d89e4ac8d8eaac2403b2b302ead47f9808a616d43b03f188c07d1d13f028f` |
| 8 | `def` | [k_equal_iff_zero_residue](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/TheoremsTheoremsNamespaced.lean/declarations/k-equal-iff-zero-residue.md) | 77 | `declaration-track:d93ad43bfcc8c153743529e6097b2e06e17886098818ff3b4bb699eadd4d5025` |
| 9 | `def` | [complement_maps_lower_to_upper](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/TheoremsTheoremsNamespaced.lean/declarations/complement-maps-lower-to-upper.md) | 80 | `declaration-track:43ce06ffcbd5c2d78cac834c9cd7ecf0071f4070df32ecfecf8f999ddfcc478d` |
| 10 | `def` | [wedge_k_precise_iff_zero_residue](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/TheoremsTheoremsNamespaced.lean/declarations/wedge-k-precise-iff-zero-residue.md) | 83 | `declaration-track:8f18afc82ee9406fcb89e88bd0627fe64ddfc834056e3eb15f1adc945d874b41` |
| 11 | `theorem` | [bool_and_zero_left](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/TheoremsTheoremsNamespaced.lean/declarations/bool-and-zero-left.md) | 86 | `result-track:21596b411499d41d204fb3a5977c705817dead9a120add0800384c03fdb491a0` |
| 12 | `theorem` | [bool_and_zero_right](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/TheoremsTheoremsNamespaced.lean/declarations/bool-and-zero-right.md) | 89 | `result-track:c134d5f3315119644aad09526ecd64c9637c95acf6e3291f040024091244f683` |
| 13 | `theorem` | [bool_and_one_one](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/TheoremsTheoremsNamespaced.lean/declarations/bool-and-one-one.md) | 92 | `result-track:443759bd0a1ae3e9b77baea833e976044e102a66ebc454b9649f4dbfde04955d` |
| 14 | `def` | [boundary_k_precise_iff_zero_residue](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/TheoremsTheoremsNamespaced.lean/declarations/boundary-k-precise-iff-zero-residue.md) | 95 | `declaration-track:6fca5b4bf0c9ae3ff8587e249ccb92d5a5bae57f57773ff2e63f5cf7bc6bdc3d` |
| 15 | `def` | [boundary_member_k_iff_zero_residue_from_norm_one](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/TheoremsTheoremsNamespaced.lean/declarations/boundary-member-k-iff-zero-residue-from-norm-one.md) | 98 | `declaration-track:8f854903710717a807adb887c35196bc6684a904b28a350b87d8a442eb4c715e` |
| 16 | `theorem` | [bool_xor_same_false](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/TheoremsTheoremsNamespaced.lean/declarations/bool-xor-same-false.md) | 101 | `result-track:586a954a87d4f6e09402aec0031ef4fcf86aa4e75853f7bc7188c80c6a15e446` |
| 17 | `theorem` | [bool_xor_different_true](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/TheoremsTheoremsNamespaced.lean/declarations/bool-xor-different-true.md) | 104 | `result-track:2f1e0c68c40c0d34ff40cd4ed24d7dc84d825eb4c0c682e1cfda17a6189dad8b` |
| 18 | `theorem` | [complement_preserves_bit_boundary](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/TheoremsTheoremsNamespaced.lean/declarations/complement-preserves-bit-boundary.md) | 107 | `result-track:adb7a58c46b0b73f8c189fc8debe8373e07f662ad84f755d4a4991e2937d17f8` |
| 19 | `theorem` | [partial_two_variation_table_0110](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/TheoremsTheoremsNamespaced.lean/declarations/partial-two-variation-table-0110.md) | 110 | `result-track:42f1b863169c05e15adbf3ce6bd7c0c724574cda75a217fec3ba1f56845ff601` |
| 20 | `theorem` | [partial_two_xor_table_0110](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/TheoremsTheoremsNamespaced.lean/declarations/partial-two-xor-table-0110.md) | 113 | `result-track:979a6bb65bf33b80b263f7c1ce29176cbbc7f39c8e1c6b5645272cc106795fac` |
| 21 | `theorem` | [variation_boundary_zero_iff_all_equal](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/TheoremsTheoremsNamespaced.lean/declarations/variation-boundary-zero-iff-all-equal.md) | 116 | `result-track:7200e8b87fc2112f73c9ed280b69695b0c7302d311a60620e7904150b3a95993` |
| 22 | `theorem` | [xor_boundary_is_parity](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/TheoremsTheoremsNamespaced.lean/declarations/xor-boundary-is-parity.md) | 119 | `result-track:494d3837c091e9f2b3c536e147b9a05f73e8c890544c00234656d0314f10d666` |
| 23 | `theorem` | [completion_agreement_resolves_boundary](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/TheoremsTheoremsNamespaced.lean/declarations/completion-agreement-resolves-boundary.md) | 122 | `result-track:88b452cad20a52cffafcd0bf6cad089bd3a3048fec631df5101fbac18976983d` |
| 24 | `theorem` | [canonK_idempotent](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/TheoremsTheoremsNamespaced.lean/declarations/canonk-idempotent.md) | 125 | `result-track:84935d438aa0469723f600d618b86b1a1fdcdeac92478450ca79eb7c805f8ee2` |
| 25 | `theorem` | [canonical_encoding_roundtrip](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/TheoremsTheoremsNamespaced.lean/declarations/canonical-encoding-roundtrip.md) | 128 | `result-track:1439017f8da8df11de9407e606f2e83d641bbdae6d640b62fdb69a4c2635cead` |
| 26 | `theorem` | [raw_to_qk_not_injective](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/TheoremsTheoremsNamespaced.lean/declarations/raw-to-qk-not-injective.md) | 131 | `result-track:5b72aef514db07ec53ba3a0ee18bfa4b94565a8bb0bc9036b3fef051ec66f616` |
| 27 | `theorem` | [canonical_state_bijection](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/TheoremsTheoremsNamespaced.lean/declarations/canonical-state-bijection.md) | 134 | `result-track:7b097b128b108eec18667537ef88ae0c5dfd030a30fbd0250081561d873ed43e` |
| 28 | `def` | [l1_boundary_k_iff_zero_residue](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/TheoremsTheoremsNamespaced.lean/declarations/l1-boundary-k-iff-zero-residue.md) | 137 | `declaration-track:02b198e347135a10090506321b94d71927a3fe3badb6c4486b9ca08bf6904cb7` |
| 29 | `theorem` | [cross_polytope_vertex_count](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/TheoremsTheoremsNamespaced.lean/declarations/cross-polytope-vertex-count.md) | 140 | `result-track:684cbfce551a94aa7042700a592b3ce949dffa88afc05950cdf27989b87f003c` |
| 30 | `theorem` | [cross_polytope_strut_count](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/TheoremsTheoremsNamespaced.lean/declarations/cross-polytope-strut-count.md) | 143 | `result-track:0a687cc96b9a50d7bf4bf7094d9e362b66ffea395d8a7c7b9fc0dee4aca6f8bd` |
| 31 | `theorem` | [cross_polytope_facet_count](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/TheoremsTheoremsNamespaced.lean/declarations/cross-polytope-facet-count.md) | 146 | `result-track:a0e74feccdfb39e86f9e07e91a5a5d2d0b81772ce7d601ded3976b7bd7cb07f4` |
| 32 | `theorem` | [gamma_unit_ball_volume_normalization](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/TheoremsTheoremsNamespaced.lean/declarations/gamma-unit-ball-volume-normalization.md) | 149 | `result-track:9a35443cb78c1f14236acdbbf21a251d4586b40656b90f6e95f45b9da57202a4` |
| 33 | `theorem` | [gamma_unit_sphere_area_normalization](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/TheoremsTheoremsNamespaced.lean/declarations/gamma-unit-sphere-area-normalization.md) | 152 | `result-track:afc5d8282670125865139c0d3281db5c7c118e1eb3bf2f79907ed67c6aea3dfb` |
| 34 | `theorem` | [k_equal_symmetric](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/TheoremsTheoremsNamespaced.lean/declarations/k-equal-symmetric.md) | 155 | `result-track:b82f2cbf77ef39fd65276b5364932b69a975526506e3b3d7a68003624fe04a28` |
| 35 | `theorem` | [lower_upper_complement_symmetric](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/TheoremsTheoremsNamespaced.lean/declarations/lower-upper-complement-symmetric.md) | 158 | `result-track:c04b05295f55fb3d4ee0e59dbfe7f7889e6af1081ed728b8b0872bd4c0a6b253` |
| 36 | `theorem` | [lower_upper_disjoint_of_eps_lt_half](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/TheoremsTheoremsNamespaced.lean/declarations/lower-upper-disjoint-of-eps-lt-half.md) | 161 | `result-track:43f4d334716aceaa9a7f8bf3ff54cca3a2fa8d9ec9cdece7b2633db0c7dd4152` |
| 37 | `theorem` | [grey_disjoint_from_lower_of_eps_lt_quarter](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/TheoremsTheoremsNamespaced.lean/declarations/grey-disjoint-from-lower-of-eps-lt-quarter.md) | 164 | `result-track:7d20fd01a1112e1ad4c320e6789598101ab763ef11378decd0deb9b1287d4ace` |
| 38 | `theorem` | [grey_disjoint_from_upper_of_eps_lt_quarter](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/TheoremsTheoremsNamespaced.lean/declarations/grey-disjoint-from-upper-of-eps-lt-quarter.md) | 167 | `result-track:66f34f44a24035bc4de133042aa7ec822efc9d73687e386100e23d6d97b639e0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8730b32bd1224055a0bbf6eb13334f920efdeffbe5c3f6b531b16776c21c2363 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Geometry/ConvexGeometry/Theorems/Variantac5430cf0fe9f3df0f05254a542cb0c533a8c50612df3407b3c90633c0bce82b.lean","GRWTSK/_verification/specifications/Geometry/ConvexGeometry/Theorems/Variantac5430cf0fe9f3df0f05254a542cb0c533a8c50612df3407b3c90633c0bce82b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
