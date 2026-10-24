# Verification target: GRWTSK.Topology.GeneralTopology.PiTopology.Variantd1165341b2f25bc057c4c1dc9cae0fffe2f7b3aa9aa3bf84e08f93b2d18277b0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6773d34ca2f845ba6355659c260cc91361d707df",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/PiTopology/Variantd1165341b2f25bc057c4c1dc9cae0fffe2f7b3aa9aa3bf84e08f93b2d18277b0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/PiTopology/Variantd1165341b2f25bc057c4c1dc9cae0fffe2f7b3aa9aa3bf84e08f93b2d18277b0.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/PiTopology/Variantd1165341b2f25bc057c4c1dc9cae0fffe2f7b3aa9aa3bf84e08f93b2d18277b0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6773d34ca2f845ba6355659c260cc91361d707df`.

Source path: `GRWTSK/Topology/GeneralTopology/PiTopology/Variantd1165341b2f25bc057c4c1dc9cae0fffe2f7b3aa9aa3bf84e08f93b2d18277b0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/PiTopology/Variantd1165341b2f25bc057c4c1dc9cae0fffe2f7b3aa9aa3bf84e08f93b2d18277b0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.MvPowerSeries.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.MvPowerSeries.Trunc` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Nilpotent.Defs` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.InfiniteSum.Constructions` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Ring.Basic` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.IsUniformGroup.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.UniformSpace.Pi` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.TopologicallyNilpotent` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/PiTopology/Variantd1165341b2f25bc057c4c1dc9cae0fffe2f7b3aa9aa3bf84e08f93b2d18277b0.lean/declarations/instance--1b44635279ea48a8728e8a92.md) | 93 | `declaration-track:1b44635279ea48a8728e8a92e19bbfd4d602ccc665fb6f462bb1ff44e407a9b5` |
| 2 | `theorem` | [instTopologicalSpace_mono](../../../../../mathematics/Topology/GeneralTopology/PiTopology/Variantd1165341b2f25bc057c4c1dc9cae0fffe2f7b3aa9aa3bf84e08f93b2d18277b0.lean/declarations/insttopologicalspace-mono--a12cbb4f0f92a7597356e47d.md) | 96 | `result-track:a12cbb4f0f92a7597356e47d809f6e318e5270cb9dfc9110f220769fd36fc867` |
| 3 | `theorem` | [instT0Space](../../../../../mathematics/Topology/GeneralTopology/PiTopology/Variantd1165341b2f25bc057c4c1dc9cae0fffe2f7b3aa9aa3bf84e08f93b2d18277b0.lean/declarations/instt0space--5eb900dac91f4e97377b3c0e.md) | 103 | `result-track:5eb900dac91f4e97377b3c0ec163aaf3c5a5ba6344884cf87646e02448977331` |
| 4 | `theorem` | [instT2Space](../../../../../mathematics/Topology/GeneralTopology/PiTopology/Variantd1165341b2f25bc057c4c1dc9cae0fffe2f7b3aa9aa3bf84e08f93b2d18277b0.lean/declarations/instt2space--38bd81ad1e311fc6f205d613.md) | 107 | `result-track:38bd81ad1e311fc6f205d61356eaafcb5a7740a0f24fcf85f554403539e2d273` |
| 5 | `theorem` | [continuous_coeff](../../../../../mathematics/Topology/GeneralTopology/PiTopology/Variantd1165341b2f25bc057c4c1dc9cae0fffe2f7b3aa9aa3bf84e08f93b2d18277b0.lean/declarations/continuous-coeff--e7a43ed3eceb31d0f01e201e.md) | 112 | `result-track:e7a43ed3eceb31d0f01e201e223042d5b244207a0517b6a77a8aa44faddf24a4` |
| 6 | `theorem` | [continuous_constantCoeff](../../../../../mathematics/Topology/GeneralTopology/PiTopology/Variantd1165341b2f25bc057c4c1dc9cae0fffe2f7b3aa9aa3bf84e08f93b2d18277b0.lean/declarations/continuous-constantcoeff--f6719eb376d5fd8a78d6919a.md) | 118 | `result-track:f6719eb376d5fd8a78d6919a8f7c4ea879d6f4cc8940f239c9fa8b921ea05fa3` |
| 7 | `theorem` | [tendsto_iff_coeff_tendsto](../../../../../mathematics/Topology/GeneralTopology/PiTopology/Variantd1165341b2f25bc057c4c1dc9cae0fffe2f7b3aa9aa3bf84e08f93b2d18277b0.lean/declarations/tendsto-iff-coeff-tendsto--c5540175e30e94d274bfad5a.md) | 122 | `result-track:c5540175e30e94d274bfad5ae3e2292b54b2fa67cde5e4a2cd502ba5383d6c56` |
| 8 | `theorem` | [tendsto_trunc'_atTop](../../../../../mathematics/Topology/GeneralTopology/PiTopology/Variantd1165341b2f25bc057c4c1dc9cae0fffe2f7b3aa9aa3bf84e08f93b2d18277b0.lean/declarations/tendsto-trunc-attop--e5b07632ac00d5a0809aa528.md) | 129 | `result-track:e5b07632ac00d5a0809aa5283aca4fa7a8460abcf94fbb9d20ff2d95b5278feb` |
| 9 | `theorem` | [tendsto_trunc_atTop](../../../../../mathematics/Topology/GeneralTopology/PiTopology/Variantd1165341b2f25bc057c4c1dc9cae0fffe2f7b3aa9aa3bf84e08f93b2d18277b0.lean/declarations/tendsto-trunc-attop--e734eafc405252b2215237c4.md) | 135 | `result-track:e734eafc405252b2215237c44987b899b70a9d9d2d8af6f48fe9345761adb217` |
| 10 | `theorem` | [denseRange_toMvPowerSeries](../../../../../mathematics/Topology/GeneralTopology/PiTopology/Variantd1165341b2f25bc057c4c1dc9cae0fffe2f7b3aa9aa3bf84e08f93b2d18277b0.lean/declarations/denserange-tomvpowerseries--9ae6fdb3daec8dc9b9d646a2.md) | 148 | `result-track:9ae6fdb3daec8dc9b9d646a2bdd5605a47a97136ca09801f6d03157f8f18f5f6` |
| 11 | `theorem` | [instIsTopologicalSemiring](../../../../../mathematics/Topology/GeneralTopology/PiTopology/Variantd1165341b2f25bc057c4c1dc9cae0fffe2f7b3aa9aa3bf84e08f93b2d18277b0.lean/declarations/instistopologicalsemiring--50584f18fc393dd096eb3694.md) | 157 | `result-track:50584f18fc393dd096eb3694119398b301d55ca063cf41467cb7ba8b7f4d8fd4` |
| 12 | `theorem` | [instIsTopologicalRing](../../../../../mathematics/Topology/GeneralTopology/PiTopology/Variantd1165341b2f25bc057c4c1dc9cae0fffe2f7b3aa9aa3bf84e08f93b2d18277b0.lean/declarations/instistopologicalring--d1dcafdaa0a66befd38eedae.md) | 167 | `result-track:d1dcafdaa0a66befd38eedae364ac8378be212468ca24c48a596b17a572c4565` |
| 13 | `theorem` | [continuous_C](../../../../../mathematics/Topology/GeneralTopology/PiTopology/Variantd1165341b2f25bc057c4c1dc9cae0fffe2f7b3aa9aa3bf84e08f93b2d18277b0.lean/declarations/continuous-c--b532a778e13b40fbfbb08c02.md) | 176 | `result-track:b532a778e13b40fbfbb08c02d94e10a873aa15138b0ba924eb72ce801b1f03a8` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/PiTopology/Variantd1165341b2f25bc057c4c1dc9cae0fffe2f7b3aa9aa3bf84e08f93b2d18277b0.lean/declarations/instance--3eee7d4027cc215c62083bb0.md) | 187 | `declaration-track:3eee7d4027cc215c62083bb0ef1606dd48f8d3b3c4b526a874771489c788862b` |
| 15 | `theorem` | [variables_tendsto_zero](../../../../../mathematics/Topology/GeneralTopology/PiTopology/Variantd1165341b2f25bc057c4c1dc9cae0fffe2f7b3aa9aa3bf84e08f93b2d18277b0.lean/declarations/variables-tendsto-zero--b6780bbe7b4a6cad6444fac1.md) | 192 | `result-track:b6780bbe7b4a6cad6444fac1030b1f7c96e1a8227341b23c6802087e1717fe98` |
| 16 | `theorem` | [isTopologicallyNilpotent_of_constantCoeff_isNilpotent](../../../../../mathematics/Topology/GeneralTopology/PiTopology/Variantd1165341b2f25bc057c4c1dc9cae0fffe2f7b3aa9aa3bf84e08f93b2d18277b0.lean/declarations/istopologicallynilpotent-of-constantcoeff-isnilpotent--2ed17aa05f1cb7a919b7ff71.md) | 204 | `result-track:2ed17aa05f1cb7a919b7ff71a9c90981a489661691f45d0fca1c3a8ae9b75d2f` |
| 17 | `theorem` | [isTopologicallyNilpotent_of_constantCoeff_zero](../../../../../mathematics/Topology/GeneralTopology/PiTopology/Variantd1165341b2f25bc057c4c1dc9cae0fffe2f7b3aa9aa3bf84e08f93b2d18277b0.lean/declarations/istopologicallynilpotent-of-constantcoeff-zero--a8b6df87cb64b13924accc74.md) | 213 | `result-track:a8b6df87cb64b13924accc74ada38fa966fbf4d2825ff6266b3b460d8c1f35a2` |
| 18 | `theorem` | [isTopologicallyNilpotent_iff_constantCoeff_isNilpotent](../../../../../mathematics/Topology/GeneralTopology/PiTopology/Variantd1165341b2f25bc057c4c1dc9cae0fffe2f7b3aa9aa3bf84e08f93b2d18277b0.lean/declarations/istopologicallynilpotent-iff-constantcoeff-isnilpotent--ef985f423ea59a8fbfc1bf66.md) | 225 | `result-track:ef985f423ea59a8fbfc1bf66a7e779dfc17dd12ec7f0a031eee2537dcdd77e34` |
| 19 | `theorem` | [hasSum_of_monomials_self](../../../../../mathematics/Topology/GeneralTopology/PiTopology/Variantd1165341b2f25bc057c4c1dc9cae0fffe2f7b3aa9aa3bf84e08f93b2d18277b0.lean/declarations/hassum-of-monomials-self--cc3fd04e6b87e1e524607384.md) | 236 | `result-track:cc3fd04e6b87e1e524607384ef577c942cbc7400a82fa7a753325716d2eae335` |
| 20 | `theorem` | [as_tsum](../../../../../mathematics/Topology/GeneralTopology/PiTopology/Variantd1165341b2f25bc057c4c1dc9cae0fffe2f7b3aa9aa3bf84e08f93b2d18277b0.lean/declarations/as-tsum--3701bc94264c5fb6ef9bcac5.md) | 245 | `result-track:3701bc94264c5fb6ef9bcac59da94c875f7e65a9debb01966f5a808a2e28c6ea` |
| 21 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/PiTopology/Variantd1165341b2f25bc057c4c1dc9cae0fffe2f7b3aa9aa3bf84e08f93b2d18277b0.lean/declarations/instance--83670afba37b952c392aeff3.md) | 256 | `declaration-track:83670afba37b952c392aeff3bb799e49077fb75bc734ae66653ee0c63d396f23` |
| 22 | `theorem` | [uniformContinuous_coeff](../../../../../mathematics/Topology/GeneralTopology/PiTopology/Variantd1165341b2f25bc057c4c1dc9cae0fffe2f7b3aa9aa3bf84e08f93b2d18277b0.lean/declarations/uniformcontinuous-coeff--6b9ede2d1fe93dc11e50c6af.md) | 261 | `result-track:6b9ede2d1fe93dc11e50c6af57ab763ac2c633d1a2671a9768debe3d3101db12` |
| 23 | `theorem` | [instCompleteSpace](../../../../../mathematics/Topology/GeneralTopology/PiTopology/Variantd1165341b2f25bc057c4c1dc9cae0fffe2f7b3aa9aa3bf84e08f93b2d18277b0.lean/declarations/instcompletespace--f521eb4ab05466f4b2698a93.md) | 267 | `result-track:f521eb4ab05466f4b2698a9341aa81dddd320fea4c32c826b376c156afb3ddfb` |
| 24 | `theorem` | [instIsUniformAddGroup](../../../../../mathematics/Topology/GeneralTopology/PiTopology/Variantd1165341b2f25bc057c4c1dc9cae0fffe2f7b3aa9aa3bf84e08f93b2d18277b0.lean/declarations/instisuniformaddgroup--26a436fa652b7b4ea6db3028.md) | 272 | `result-track:26a436fa652b7b4ea6db30284134a63175ec2bcb400317d4753f9adcad661986` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
