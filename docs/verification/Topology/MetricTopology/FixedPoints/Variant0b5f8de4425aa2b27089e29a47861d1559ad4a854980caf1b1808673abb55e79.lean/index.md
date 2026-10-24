# Verification target: GRWTSK.Topology.MetricTopology.FixedPoints.Variant0b5f8de4425aa2b27089e29a47861d1559ad4a854980caf1b1808673abb55e79

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8f3cb21f4417916793fc7585d7a0402e302db6a5",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/FixedPoints/Variant0b5f8de4425aa2b27089e29a47861d1559ad4a854980caf1b1808673abb55e79.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/MetricTopology/FixedPoints/Variant0b5f8de4425aa2b27089e29a47861d1559ad4a854980caf1b1808673abb55e79.lean/index.md) · [Full source](../../../../../mathematics/Topology/MetricTopology/FixedPoints/Variant0b5f8de4425aa2b27089e29a47861d1559ad4a854980caf1b1808673abb55e79.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8f3cb21f4417916793fc7585d7a0402e302db6a5`.

Source path: `GRWTSK/Topology/MetricTopology/FixedPoints/Variant0b5f8de4425aa2b27089e29a47861d1559ad4a854980caf1b1808673abb55e79.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/FixedPoints/Variant0b5f8de4425aa2b27089e29a47861d1559ad4a854980caf1b1808673abb55e79.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.QuadraticDiscriminant` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [gl_smul_eq_iff_num_eq](../../../../../mathematics/Topology/MetricTopology/FixedPoints/Variant0b5f8de4425aa2b27089e29a47861d1559ad4a854980caf1b1808673abb55e79.lean/declarations/gl-smul-eq-iff-num-eq--4a50cf2e45be1841fd3a8841.md) | 51 | `result-track:4a50cf2e45be1841fd3a88414319d0952fd496c06932d764026fe42100eeb0be` |
| 2 | `theorem` | [gl_smul_eq_self_iff_re_eq](../../../../../mathematics/Topology/MetricTopology/FixedPoints/Variant0b5f8de4425aa2b27089e29a47861d1559ad4a854980caf1b1808673abb55e79.lean/declarations/gl-smul-eq-self-iff-re-eq--8fed46844192b3f443fcceae.md) | 58 | `result-track:8fed46844192b3f443fcceae8c52d6fd822819ab159ce47df9b60497e2088c93` |
| 3 | `theorem` | [gl_smul_eq_self_iff_dist_sq_eq](../../../../../mathematics/Topology/MetricTopology/FixedPoints/Variant0b5f8de4425aa2b27089e29a47861d1559ad4a854980caf1b1808673abb55e79.lean/declarations/gl-smul-eq-self-iff-dist-sq-eq--5d1ec98c53cd6a1fb82dd758.md) | 74 | `result-track:5d1ec98c53cd6a1fb82dd758cd2be05e4015dccbb1f777da52de4e4366301e8a` |
| 4 | `theorem` | [gl_smul_eq_self_iff_dist_eq](../../../../../mathematics/Topology/MetricTopology/FixedPoints/Variant0b5f8de4425aa2b27089e29a47861d1559ad4a854980caf1b1808673abb55e79.lean/declarations/gl-smul-eq-self-iff-dist-eq--39ff08f3c01ba44148840e9c.md) | 86 | `result-track:39ff08f3c01ba44148840e9c44822746c829fd42c055879206365dac856bea0e` |
| 5 | `theorem` | [exists_gl_smul_eq_self_iff_trace_eq_zero](../../../../../mathematics/Topology/MetricTopology/FixedPoints/Variant0b5f8de4425aa2b27089e29a47861d1559ad4a854980caf1b1808673abb55e79.lean/declarations/exists-gl-smul-eq-self-iff-trace-eq-zero--66cac20cd504eb009910cd95.md) | 94 | `result-track:66cac20cd504eb009910cd958136822608933035d824ab73983812756600925f` |
| 6 | `theorem` | [gl_smul_eq_self_iff_quadratic](../../../../../mathematics/Topology/MetricTopology/FixedPoints/Variant0b5f8de4425aa2b27089e29a47861d1559ad4a854980caf1b1808673abb55e79.lean/declarations/gl-smul-eq-self-iff-quadratic--d22dee3fb1ebc664eef0e877.md) | 122 | `result-track:d22dee3fb1ebc664eef0e87778dce4ef53b7c73decf59abbac0a34349ab5045e` |
| 7 | `theorem` | [isElliptic_of_exists_smul_eq_self](../../../../../mathematics/Topology/MetricTopology/FixedPoints/Variant0b5f8de4425aa2b27089e29a47861d1559ad4a854980caf1b1808673abb55e79.lean/declarations/iselliptic-of-exists-smul-eq-self--a399a94937ed65639bf64d51.md) | 129 | `result-track:a399a94937ed65639bf64d5118cace6497a8811ca6b474acf702d7c622f6c03e` |
| 8 | `def` | [fixedPt](../../../../../mathematics/Topology/MetricTopology/FixedPoints/Variant0b5f8de4425aa2b27089e29a47861d1559ad4a854980caf1b1808673abb55e79.lean/declarations/fixedpt--0b7fffd6eac60800f10fa111.md) | 148 | `declaration-track:0b7fffd6eac60800f10fa111c188215409c49774c83ff39f5b676964182e057f` |
| 9 | `theorem` | [fixedPt_neg](../../../../../mathematics/Topology/MetricTopology/FixedPoints/Variant0b5f8de4425aa2b27089e29a47861d1559ad4a854980caf1b1808673abb55e79.lean/declarations/fixedpt-neg--17e58fd7929f1152289be242.md) | 153 | `result-track:17e58fd7929f1152289be242e47b071903b8382ccdd2371a2447d0600ccff1fb` |
| 10 | `theorem` | [gl_smul_eq_self_iff_eq_fixedPt](../../../../../mathematics/Topology/MetricTopology/FixedPoints/Variant0b5f8de4425aa2b27089e29a47861d1559ad4a854980caf1b1808673abb55e79.lean/declarations/gl-smul-eq-self-iff-eq-fixedpt--ce117039fbab64494e75f43c.md) | 161 | `result-track:ce117039fbab64494e75f43ce2114ec3b23e600b78173a7844795dd98d2953d8` |
| 11 | `theorem` | [gl_smul_I_eq_I_iff_of_pos](../../../../../mathematics/Topology/MetricTopology/FixedPoints/Variant0b5f8de4425aa2b27089e29a47861d1559ad4a854980caf1b1808673abb55e79.lean/declarations/gl-smul-i-eq-i-iff-of-pos--ac392535f2c66692796622de.md) | 180 | `result-track:ac392535f2c66692796622de4d160f943e1bb338763679dc3d5b53b86ff2b543` |
| 12 | `theorem` | [gl_smul_I_eq_I_iff_of_neg](../../../../../mathematics/Topology/MetricTopology/FixedPoints/Variant0b5f8de4425aa2b27089e29a47861d1559ad4a854980caf1b1808673abb55e79.lean/declarations/gl-smul-i-eq-i-iff-of-neg--4619e501df9d2d4367f20217.md) | 185 | `result-track:4619e501df9d2d4367f20217797c150165d05970245def953d13c3f97324396e` |
| 13 | `theorem` | [forall_smul_eq_self_iff_mem_center](../../../../../mathematics/Topology/MetricTopology/FixedPoints/Variant0b5f8de4425aa2b27089e29a47861d1559ad4a854980caf1b1808673abb55e79.lean/declarations/forall-smul-eq-self-iff-mem-center--20f76eb64fb31dbda0402479.md) | 192 | `result-track:20f76eb64fb31dbda0402479864a28a8564a15729ce5cf402ab7ce5b503b1e7b` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/FixedPoints/Variant0b5f8de4425aa2b27089e29a47861d1559ad4a854980caf1b1808673abb55e79.lean/declarations/instance--32d7f7423e75feae9ebeb6af.md) | 215 | `declaration-track:32d7f7423e75feae9ebeb6afbfcaf9f74da99dd5b23faf3d41aa5f2646e899c0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
