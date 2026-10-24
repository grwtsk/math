# Verification target: GRWTSK.Topology.MetricTopology.FixedPoints.Variantf253d424c6ebad3848c9f4e120c09193bef144db1866efbfb84dae73b77d44c5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8232d71ac5ddf316cdfe78030c19bf1ea6afe83e",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/FixedPoints/Variantf253d424c6ebad3848c9f4e120c09193bef144db1866efbfb84dae73b77d44c5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/MetricTopology/FixedPoints/Variantf253d424c6ebad3848c9f4e120c09193bef144db1866efbfb84dae73b77d44c5.lean/index.md) · [Full source](../../../../../mathematics/Topology/MetricTopology/FixedPoints/Variantf253d424c6ebad3848c9f4e120c09193bef144db1866efbfb84dae73b77d44c5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8232d71ac5ddf316cdfe78030c19bf1ea6afe83e`.

Source path: `GRWTSK/Topology/MetricTopology/FixedPoints/Variantf253d424c6ebad3848c9f4e120c09193bef144db1866efbfb84dae73b77d44c5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/FixedPoints/Variantf253d424c6ebad3848c9f4e120c09193bef144db1866efbfb84dae73b77d44c5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.QuadraticDiscriminant` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [gl_smul_eq_iff_num_eq](../../../../../mathematics/Topology/MetricTopology/FixedPoints/Variantf253d424c6ebad3848c9f4e120c09193bef144db1866efbfb84dae73b77d44c5.lean/declarations/gl-smul-eq-iff-num-eq--fdb135ace3fcf7dab5eb60ad.md) | 43 | `result-track:fdb135ace3fcf7dab5eb60add64035ebee8441522a5892b187e54496d4e60b9f` |
| 2 | `theorem` | [gl_smul_eq_self_iff_re_eq](../../../../../mathematics/Topology/MetricTopology/FixedPoints/Variantf253d424c6ebad3848c9f4e120c09193bef144db1866efbfb84dae73b77d44c5.lean/declarations/gl-smul-eq-self-iff-re-eq--5f0a429c592361f5a0116b7b.md) | 50 | `result-track:5f0a429c592361f5a0116b7b621f453d22675bde7e60704d7ff3ba44de54629c` |
| 3 | `theorem` | [gl_smul_eq_self_iff_dist_sq_eq](../../../../../mathematics/Topology/MetricTopology/FixedPoints/Variantf253d424c6ebad3848c9f4e120c09193bef144db1866efbfb84dae73b77d44c5.lean/declarations/gl-smul-eq-self-iff-dist-sq-eq--e6defa5c42324c4347984114.md) | 66 | `result-track:e6defa5c42324c434798411419c53bd81139b6d00b8af924dac178f488534cb4` |
| 4 | `theorem` | [gl_smul_eq_self_iff_dist_eq](../../../../../mathematics/Topology/MetricTopology/FixedPoints/Variantf253d424c6ebad3848c9f4e120c09193bef144db1866efbfb84dae73b77d44c5.lean/declarations/gl-smul-eq-self-iff-dist-eq--47c63926b32399647baa7ded.md) | 78 | `result-track:47c63926b32399647baa7ded0b3b0446194f2c9e8e8e0c7ba42e6c55eb4036ad` |
| 5 | `theorem` | [exists_gl_smul_eq_self_iff_trace_eq_zero](../../../../../mathematics/Topology/MetricTopology/FixedPoints/Variantf253d424c6ebad3848c9f4e120c09193bef144db1866efbfb84dae73b77d44c5.lean/declarations/exists-gl-smul-eq-self-iff-trace-eq-zero--e239b62ec1d515361cb077c4.md) | 86 | `result-track:e239b62ec1d515361cb077c48f3b009909dff93159ae42e388e400ca34f97442` |
| 6 | `theorem` | [gl_smul_eq_self_iff_quadratic](../../../../../mathematics/Topology/MetricTopology/FixedPoints/Variantf253d424c6ebad3848c9f4e120c09193bef144db1866efbfb84dae73b77d44c5.lean/declarations/gl-smul-eq-self-iff-quadratic--5c7c906460d4652a42c1d38e.md) | 114 | `result-track:5c7c906460d4652a42c1d38e615b85b617d08e6c9f07e5e21710b3ad0f1d9602` |
| 7 | `theorem` | [isElliptic_of_exists_smul_eq_self](../../../../../mathematics/Topology/MetricTopology/FixedPoints/Variantf253d424c6ebad3848c9f4e120c09193bef144db1866efbfb84dae73b77d44c5.lean/declarations/iselliptic-of-exists-smul-eq-self--0c095a2a8a70e8949ab3b061.md) | 121 | `result-track:0c095a2a8a70e8949ab3b061a64bea02eec0182c5babaa97bc30423406fa5eee` |
| 8 | `def` | [fixedPt](../../../../../mathematics/Topology/MetricTopology/FixedPoints/Variantf253d424c6ebad3848c9f4e120c09193bef144db1866efbfb84dae73b77d44c5.lean/declarations/fixedpt--65093068c43aa2e3b3f00567.md) | 140 | `declaration-track:65093068c43aa2e3b3f00567099d3ae7efd0d00a25cd65c08e1f1fb27a6efb08` |
| 9 | `theorem` | [fixedPt_neg](../../../../../mathematics/Topology/MetricTopology/FixedPoints/Variantf253d424c6ebad3848c9f4e120c09193bef144db1866efbfb84dae73b77d44c5.lean/declarations/fixedpt-neg--b5fcfa74ede0d37a60c0850f.md) | 145 | `result-track:b5fcfa74ede0d37a60c0850fe5396d6b180397f14e46723c6cc0ed8015cc08ad` |
| 10 | `theorem` | [gl_smul_eq_self_iff_eq_fixedPt](../../../../../mathematics/Topology/MetricTopology/FixedPoints/Variantf253d424c6ebad3848c9f4e120c09193bef144db1866efbfb84dae73b77d44c5.lean/declarations/gl-smul-eq-self-iff-eq-fixedpt--721b4287bda9206cd5610a12.md) | 153 | `result-track:721b4287bda9206cd5610a12b1b83db0bee47a04bb1d7c3a36e3f1126aa7a876` |
| 11 | `theorem` | [gl_smul_I_eq_I_iff_of_pos](../../../../../mathematics/Topology/MetricTopology/FixedPoints/Variantf253d424c6ebad3848c9f4e120c09193bef144db1866efbfb84dae73b77d44c5.lean/declarations/gl-smul-i-eq-i-iff-of-pos--2c52ddde9817ba3be78d2d0c.md) | 172 | `result-track:2c52ddde9817ba3be78d2d0cfaeffb967f01e46d6e9c4cfb93b70de60bd1f6dc` |
| 12 | `theorem` | [gl_smul_I_eq_I_iff_of_neg](../../../../../mathematics/Topology/MetricTopology/FixedPoints/Variantf253d424c6ebad3848c9f4e120c09193bef144db1866efbfb84dae73b77d44c5.lean/declarations/gl-smul-i-eq-i-iff-of-neg--cc1043a0e25abf2e1442a801.md) | 177 | `result-track:cc1043a0e25abf2e1442a80165fbec68751c91b9f89d417749791030b7dcea5b` |
| 13 | `theorem` | [forall_smul_eq_self_iff_mem_center](../../../../../mathematics/Topology/MetricTopology/FixedPoints/Variantf253d424c6ebad3848c9f4e120c09193bef144db1866efbfb84dae73b77d44c5.lean/declarations/forall-smul-eq-self-iff-mem-center--89e0575f602b1e200d25f41d.md) | 184 | `result-track:89e0575f602b1e200d25f41de8b9d950141d488742085651aa085842289c0f0b` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/FixedPoints/Variantf253d424c6ebad3848c9f4e120c09193bef144db1866efbfb84dae73b77d44c5.lean/declarations/instance--075d014e25e82a31ea77b77e.md) | 207 | `declaration-track:075d014e25e82a31ea77b77e484f106e9644b9d4a6aafb8a1d9127a34d5bce20` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
