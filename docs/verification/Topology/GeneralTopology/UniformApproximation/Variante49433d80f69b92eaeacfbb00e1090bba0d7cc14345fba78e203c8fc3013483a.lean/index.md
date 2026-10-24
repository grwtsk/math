# Verification target: GRWTSK.Topology.GeneralTopology.UniformApproximation.Variante49433d80f69b92eaeacfbb00e1090bba0d7cc14345fba78e203c8fc3013483a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d6e8341515dd8ed2978f40a54d4141d1a9c294ef",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/UniformApproximation/Variante49433d80f69b92eaeacfbb00e1090bba0d7cc14345fba78e203c8fc3013483a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/UniformApproximation/Variante49433d80f69b92eaeacfbb00e1090bba0d7cc14345fba78e203c8fc3013483a.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/UniformApproximation/Variante49433d80f69b92eaeacfbb00e1090bba0d7cc14345fba78e203c8fc3013483a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d6e8341515dd8ed2978f40a54d4141d1a9c294ef`.

Source path: `GRWTSK/Topology/GeneralTopology/UniformApproximation/Variante49433d80f69b92eaeacfbb00e1090bba0d7cc14345fba78e203c8fc3013483a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/UniformApproximation/Variante49433d80f69b92eaeacfbb00e1090bba0d7cc14345fba78e203c8fc3013483a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.UniformSpace.LocallyUniformConvergence` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [continuousWithinAt_of_locally_uniform_approx_of_continuousWithinAt](../../../../../mathematics/Topology/GeneralTopology/UniformApproximation/Variante49433d80f69b92eaeacfbb00e1090bba0d7cc14345fba78e203c8fc3013483a.lean/declarations/continuouswithinat-of-locally-uniform-approx-of-continuouswithinat--d14e88a00a807e4280d09541.md) | 38 | `result-track:d14e88a00a807e4280d095410a1af287c845c1542ea4c7f2bbacfbaef7596ed1` |
| 2 | `theorem` | [continuousAt_of_locally_uniform_approx_of_continuousAt](../../../../../mathematics/Topology/GeneralTopology/UniformApproximation/Variante49433d80f69b92eaeacfbb00e1090bba0d7cc14345fba78e203c8fc3013483a.lean/declarations/continuousat-of-locally-uniform-approx-of-continuousat--fe1e6ca0eeb2a529f66a635d.md) | 56 | `result-track:fe1e6ca0eeb2a529f66a635d6a90783b80a0667978aa9a476c4bee46e99a39c7` |
| 3 | `theorem` | [continuousOn_of_locally_uniform_approx_of_continuousWithinAt](../../../../../mathematics/Topology/GeneralTopology/UniformApproximation/Variante49433d80f69b92eaeacfbb00e1090bba0d7cc14345fba78e203c8fc3013483a.lean/declarations/continuouson-of-locally-uniform-approx-of-continuouswithinat--cc3baab9c9f6457c75d80824.md) | 65 | `result-track:cc3baab9c9f6457c75d80824bd15779c7fb710bb70d1ea5ba585d5e574c44d13` |
| 4 | `theorem` | [continuousOn_of_uniform_approx_of_continuousOn](../../../../../mathematics/Topology/GeneralTopology/UniformApproximation/Variante49433d80f69b92eaeacfbb00e1090bba0d7cc14345fba78e203c8fc3013483a.lean/declarations/continuouson-of-uniform-approx-of-continuouson--7aa20d249607de5e7435dada.md) | 73 | `result-track:7aa20d249607de5e7435dada70392cc407fd974ca7ca4e85ec64c7baa541472b` |
| 5 | `theorem` | [continuous_of_locally_uniform_approx_of_continuousAt](../../../../../mathematics/Topology/GeneralTopology/UniformApproximation/Variante49433d80f69b92eaeacfbb00e1090bba0d7cc14345fba78e203c8fc3013483a.lean/declarations/continuous-of-locally-uniform-approx-of-continuousat--adf37f4b9778cb25051bae5b.md) | 79 | `result-track:adf37f4b9778cb25051bae5bfae7656e335945fd98b7fcff437e96c22333200d` |
| 6 | `theorem` | [continuous_of_uniform_approx_of_continuous](../../../../../mathematics/Topology/GeneralTopology/UniformApproximation/Variante49433d80f69b92eaeacfbb00e1090bba0d7cc14345fba78e203c8fc3013483a.lean/declarations/continuous-of-uniform-approx-of-continuous--9ada7a3dc1b2d2b61fa9e76b.md) | 86 | `result-track:9ada7a3dc1b2d2b61fa9e76bb4fb194c7f24bbfdf1a83661a39afd6ca6e8e407` |
| 7 | `theorem` | [TendstoLocallyUniformlyOn.continuousOn](../../../../../mathematics/Topology/GeneralTopology/UniformApproximation/Variante49433d80f69b92eaeacfbb00e1090bba0d7cc14345fba78e203c8fc3013483a.lean/declarations/tendstolocallyuniformlyon-continuouson--0a8d405ce59b8b6e651b4cd2.md) | 102 | `result-track:0a8d405ce59b8b6e651b4cd26b140dcc81c176aa56e6091352455a889ac5d0e4` |
| 8 | `theorem` | [TendstoUniformlyOn.continuousOn](../../../../../mathematics/Topology/GeneralTopology/UniformApproximation/Variante49433d80f69b92eaeacfbb00e1090bba0d7cc14345fba78e203c8fc3013483a.lean/declarations/tendstouniformlyon-continuouson--a208b733042126ee40221399.md) | 111 | `result-track:a208b733042126ee402213991a3bccc8113f3173389e970f40d027d29c17c728` |
| 9 | `theorem` | [TendstoLocallyUniformly.continuous](../../../../../mathematics/Topology/GeneralTopology/UniformApproximation/Variante49433d80f69b92eaeacfbb00e1090bba0d7cc14345fba78e203c8fc3013483a.lean/declarations/tendstolocallyuniformly-continuous--db3c2aa90c605f4e5360594f.md) | 116 | `result-track:db3c2aa90c605f4e5360594f108fde6475b68bfee553a7b2a8ed00bffd27951c` |
| 10 | `theorem` | [TendstoUniformly.continuous](../../../../../mathematics/Topology/GeneralTopology/UniformApproximation/Variante49433d80f69b92eaeacfbb00e1090bba0d7cc14345fba78e203c8fc3013483a.lean/declarations/tendstouniformly-continuous--f3179d86fd2da3f904fb573f.md) | 122 | `result-track:f3179d86fd2da3f904fb573facecc6619431af9069f1b9ad1e9c0537e0ef4ea2` |
| 11 | `theorem` | [tendsto_comp_of_locally_uniform_limit_within](../../../../../mathematics/Topology/GeneralTopology/UniformApproximation/Variante49433d80f69b92eaeacfbb00e1090bba0d7cc14345fba78e203c8fc3013483a.lean/declarations/tendsto-comp-of-locally-uniform-limit-within--d08388a94fa90cf9f3bed56f.md) | 138 | `result-track:d08388a94fa90cf9f3bed56f7ee8341a998871ae431c80c85d246080a7d1b8b5` |
| 12 | `theorem` | [tendsto_comp_of_locally_uniform_limit](../../../../../mathematics/Topology/GeneralTopology/UniformApproximation/Variante49433d80f69b92eaeacfbb00e1090bba0d7cc14345fba78e203c8fc3013483a.lean/declarations/tendsto-comp-of-locally-uniform-limit--6e721578a5a5469328fbae49.md) | 151 | `result-track:6e721578a5a5469328fbae498bed3f01c2c2c2375457c3ffca5c5717311fb2e5` |
| 13 | `theorem` | [TendstoLocallyUniformlyOn.tendsto_comp](../../../../../mathematics/Topology/GeneralTopology/UniformApproximation/Variante49433d80f69b92eaeacfbb00e1090bba0d7cc14345fba78e203c8fc3013483a.lean/declarations/tendstolocallyuniformlyon-tendsto-comp--dce380173762f55ab5544086.md) | 160 | `result-track:dce380173762f55ab5544086829e62792df4b0a9d39076d67e9e52f46bb41198` |
| 14 | `theorem` | [TendstoUniformlyOn.tendsto_comp](../../../../../mathematics/Topology/GeneralTopology/UniformApproximation/Variante49433d80f69b92eaeacfbb00e1090bba0d7cc14345fba78e203c8fc3013483a.lean/declarations/tendstouniformlyon-tendsto-comp--ea42963dc9d1344716748b2e.md) | 167 | `result-track:ea42963dc9d1344716748b2e54c159e24fd58596b73e7214e9f64d5715b8dfc1` |
| 15 | `theorem` | [TendstoLocallyUniformly.tendsto_comp](../../../../../mathematics/Topology/GeneralTopology/UniformApproximation/Variante49433d80f69b92eaeacfbb00e1090bba0d7cc14345fba78e203c8fc3013483a.lean/declarations/tendstolocallyuniformly-tendsto-comp--da6362876c0b2ea9ae45c5c9.md) | 173 | `result-track:da6362876c0b2ea9ae45c5c92c16e23f098728a835c62cfb77a6bbec838186f7` |
| 16 | `theorem` | [TendstoUniformly.tendsto_comp](../../../../../mathematics/Topology/GeneralTopology/UniformApproximation/Variante49433d80f69b92eaeacfbb00e1090bba0d7cc14345fba78e203c8fc3013483a.lean/declarations/tendstouniformly-tendsto-comp--c3cd08b75ec48dbcc94877fa.md) | 178 | `result-track:c3cd08b75ec48dbcc94877faef172d66230dbe790e1fc71abaea174aba8ac7af` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
