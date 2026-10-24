# Verification target: GRWTSK.Topology.GeneralTopology.UnifTight.Variantabc24083152e9e5d72244f3d73726b9cb52fe4e70df735ff03080cb2fd0a1494

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fd1a0d9fca4fadf47abf2fe514a1d90c69cfcd84",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/UnifTight/Variantabc24083152e9e5d72244f3d73726b9cb52fe4e70df735ff03080cb2fd0a1494.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/UnifTight/Variantabc24083152e9e5d72244f3d73726b9cb52fe4e70df735ff03080cb2fd0a1494.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/UnifTight/Variantabc24083152e9e5d72244f3d73726b9cb52fe4e70df735ff03080cb2fd0a1494.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fd1a0d9fca4fadf47abf2fe514a1d90c69cfcd84`.

Source path: `GRWTSK/Topology/GeneralTopology/UnifTight/Variantabc24083152e9e5d72244f3d73726b9cb52fe4e70df735ff03080cb2fd0a1494.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/UnifTight/Variantabc24083152e9e5d72244f3d73726b9cb52fe4e70df735ff03080cb2fd0a1494.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Function.ConvergenceInMeasure` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.UniformIntegrable` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [UnifTight](../../../../../mathematics/Topology/GeneralTopology/UnifTight/Variantabc24083152e9e5d72244f3d73726b9cb52fe4e70df735ff03080cb2fd0a1494.lean/declarations/uniftight--ecbbda4f400d538bf7b4f073.md) | 63 | `declaration-track:ecbbda4f400d538bf7b4f07350528b8034e40b1a6a34ca431bd21859198d4672` |
| 2 | `theorem` | [unifTight_iff_ennreal](../../../../../mathematics/Topology/GeneralTopology/UnifTight/Variantabc24083152e9e5d72244f3d73726b9cb52fe4e70df735ff03080cb2fd0a1494.lean/declarations/uniftight-iff-ennreal--6d4a0d1cfdb51e29ed31abe0.md) | 66 | `result-track:6d4a0d1cfdb51e29ed31abe02fb99f574557e05446a7eca48a52f317d411347b` |
| 3 | `theorem` | [unifTight_iff_real](../../../../../mathematics/Topology/GeneralTopology/UnifTight/Variantabc24083152e9e5d72244f3d73726b9cb52fe4e70df735ff03080cb2fd0a1494.lean/declarations/uniftight-iff-real--5255d315d0d75309591b5701.md) | 74 | `result-track:5255d315d0d75309591b5701e0fb4b5e27679c0929f406ea9bf08b8a9bd39706` |
| 4 | `theorem` | [eventually_cofinite_indicator](../../../../../mathematics/Topology/GeneralTopology/UnifTight/Variantabc24083152e9e5d72244f3d73726b9cb52fe4e70df735ff03080cb2fd0a1494.lean/declarations/eventually-cofinite-indicator--fbe0c73c9c2695789acb3f38.md) | 84 | `result-track:fbe0c73c9c2695789acb3f38d95c6d2dd0e46e007fa62308cc452656ab2075c3` |
| 5 | `theorem` | [exists_measurableSet_indicator](../../../../../mathematics/Topology/GeneralTopology/UnifTight/Variantabc24083152e9e5d72244f3d73726b9cb52fe4e70df735ff03080cb2fd0a1494.lean/declarations/exists-measurableset-indicator--ca2156148666282568905697.md) | 94 | `result-track:ca2156148666282568905697c832f582c4ff66dca4ad49aaea32484d23c87d65` |
| 6 | `theorem` | [add](../../../../../mathematics/Topology/GeneralTopology/UnifTight/Variantabc24083152e9e5d72244f3d73726b9cb52fe4e70df735ff03080cb2fd0a1494.lean/declarations/add--3c39972069308e0545f07746.md) | 99 | `result-track:3c39972069308e0545f0774683588624ac30c6259392d373217238573c68087e` |
| 7 | `theorem` | [neg](../../../../../mathematics/Topology/GeneralTopology/UnifTight/Variantabc24083152e9e5d72244f3d73726b9cb52fe4e70df735ff03080cb2fd0a1494.lean/declarations/neg--45840b435f2e13d9a37b4e80.md) | 123 | `result-track:45840b435f2e13d9a37b4e802535402221dba52cf59f111f590ced0f6ca15542` |
| 8 | `theorem` | [sub](../../../../../mathematics/Topology/GeneralTopology/UnifTight/Variantabc24083152e9e5d72244f3d73726b9cb52fe4e70df735ff03080cb2fd0a1494.lean/declarations/sub--bf834fb19cf9e01e3c1221a3.md) | 127 | `result-track:bf834fb19cf9e01e3c1221a33578e972b3b8a9c2512dd3588cfb9ecb781d1374` |
| 9 | `theorem` | [aeeq](../../../../../mathematics/Topology/GeneralTopology/UnifTight/Variantabc24083152e9e5d72244f3d73726b9cb52fe4e70df735ff03080cb2fd0a1494.lean/declarations/aeeq--878800893250457d07baa454.md) | 133 | `result-track:878800893250457d07baa454328315a721d4c971c8a3c5b12e075cabf358b23f` |
| 10 | `theorem` | [unifTight_congr_ae](../../../../../mathematics/Topology/GeneralTopology/UnifTight/Variantabc24083152e9e5d72244f3d73726b9cb52fe4e70df735ff03080cb2fd0a1494.lean/declarations/uniftight-congr-ae--c36f709ac8302fd93b8297e5.md) | 144 | `result-track:c36f709ac8302fd93b8297e5f40945cc5c39719b37f9bfcdefb97da823fddd26` |
| 11 | `theorem` | [unifTight_const](../../../../../mathematics/Topology/GeneralTopology/UnifTight/Variantabc24083152e9e5d72244f3d73726b9cb52fe4e70df735ff03080cb2fd0a1494.lean/declarations/uniftight-const--d40b68b5237039780cb3db72.md) | 149 | `result-track:d40b68b5237039780cb3db725e1ccc5bd5e7f7b317b6be79f3599a449ab7907b` |
| 12 | `theorem` | [unifTight_of_subsingleton](../../../../../mathematics/Topology/GeneralTopology/UnifTight/Variantabc24083152e9e5d72244f3d73726b9cb52fe4e70df735ff03080cb2fd0a1494.lean/declarations/uniftight-of-subsingleton--71f09bdf0f990e2176e2981d.md) | 158 | `result-track:71f09bdf0f990e2176e2981df210d247143b0be92ed5bdd9a795c4a6117db587` |
| 13 | `theorem` | [unifTight_fin](../../../../../mathematics/Topology/GeneralTopology/UnifTight/Variantabc24083152e9e5d72244f3d73726b9cb52fe4e70df735ff03080cb2fd0a1494.lean/declarations/uniftight-fin--c7536f736988779000402591.md) | 171 | `result-track:c7536f73698877900040259191c7845539a90c5ccad39609cb90814c2b172635` |
| 14 | `theorem` | [unifTight_finite](../../../../../mathematics/Topology/GeneralTopology/UnifTight/Variantabc24083152e9e5d72244f3d73726b9cb52fe4e70df735ff03080cb2fd0a1494.lean/declarations/uniftight-finite--93afb72280aaa449fb20205f.md) | 201 | `result-track:93afb72280aaa449fb20205f62dfffc7f30d8601901b27fcf82d8c2793f78eaa` |
| 15 | `theorem` | [unifTight_of_tendsto_Lp_zero](../../../../../mathematics/Topology/GeneralTopology/UnifTight/Variantabc24083152e9e5d72244f3d73726b9cb52fe4e70df735ff03080cb2fd0a1494.lean/declarations/uniftight-of-tendsto-lp-zero--a72b5769f54d86f15763926f.md) | 224 | `result-track:a72b5769f54d86f15763926f9a707fddb7d12215d8cc961f1f650f16ab4c9205` |
| 16 | `theorem` | [unifTight_of_tendsto_Lp](../../../../../mathematics/Topology/GeneralTopology/UnifTight/Variantabc24083152e9e5d72244f3d73726b9cb52fe4e70df735ff03080cb2fd0a1494.lean/declarations/uniftight-of-tendsto-lp--0c97b6cb1d3c229e4c0946ee.md) | 238 | `result-track:0c97b6cb1d3c229e4c0946ee0a125423ac6b7d3387830157de2fa4f38ee0329f` |
| 17 | `theorem` | [tendsto_Lp_of_tendsto_ae_of_meas](../../../../../mathematics/Topology/GeneralTopology/UnifTight/Variantabc24083152e9e5d72244f3d73726b9cb52fe4e70df735ff03080cb2fd0a1494.lean/declarations/tendsto-lp-of-tendsto-ae-of-meas--459b5e4886f2748aa818543a.md) | 253 | `result-track:459b5e4886f2748aa818543af5beb16267753d0483353ac3f4ce4df1c3182f25` |
| 18 | `theorem` | [ae_tendsto_ae_congr](../../../../../mathematics/Topology/GeneralTopology/UnifTight/Variantabc24083152e9e5d72244f3d73726b9cb52fe4e70df735ff03080cb2fd0a1494.lean/declarations/ae-tendsto-ae-congr--851b93b7a5db1b37da181d53.md) | 327 | `result-track:851b93b7a5db1b37da181d5399b8167f13796b288d4bcf1f69ddd00d3db95335` |
| 19 | `theorem` | [tendsto_Lp_of_tendsto_ae](../../../../../mathematics/Topology/GeneralTopology/UnifTight/Variantabc24083152e9e5d72244f3d73726b9cb52fe4e70df735ff03080cb2fd0a1494.lean/declarations/tendsto-lp-of-tendsto-ae--2e7a870e5f4121600a04e957.md) | 338 | `result-track:2e7a870e5f4121600a04e957eaa45ba9bd9d86a2d4ec871c9c05ff7a708d8c00` |
| 20 | `theorem` | [tendsto_Lp_of_tendstoInMeasure](../../../../../mathematics/Topology/GeneralTopology/UnifTight/Variantabc24083152e9e5d72244f3d73726b9cb52fe4e70df735ff03080cb2fd0a1494.lean/declarations/tendsto-lp-of-tendstoinmeasure--524510dfd87fbf38f1b7f473.md) | 362 | `result-track:524510dfd87fbf38f1b7f473ea14a33776f03fcb3e67873027a40d23b6538d01` |
| 21 | `theorem` | [tendstoInMeasure_iff_tendsto_Lp](../../../../../mathematics/Topology/GeneralTopology/UnifTight/Variantabc24083152e9e5d72244f3d73726b9cb52fe4e70df735ff03080cb2fd0a1494.lean/declarations/tendstoinmeasure-iff-tendsto-lp--8a533ea93ceffef217395bd4.md) | 382 | `result-track:8a533ea93ceffef217395bd45c9f16b0c1853ff33d837fae9c307334e58353ba` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
