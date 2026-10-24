# Verification target: GRWTSK.Topology.GeneralTopology.UrysohnsLemma.Variantfe5fbfd7b340ade36ad907b57b221dedd021e9393958b6710d7c2b1307d86aa3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7f17ed9b742c281ae4c6dd3c83b47ffb540f9926",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/UrysohnsLemma/Variantfe5fbfd7b340ade36ad907b57b221dedd021e9393958b6710d7c2b1307d86aa3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/UrysohnsLemma/Variantfe5fbfd7b340ade36ad907b57b221dedd021e9393958b6710d7c2b1307d86aa3.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/UrysohnsLemma/Variantfe5fbfd7b340ade36ad907b57b221dedd021e9393958b6710d7c2b1307d86aa3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7f17ed9b742c281ae4c6dd3c83b47ffb540f9926`.

Source path: `GRWTSK/Topology/GeneralTopology/UrysohnsLemma/Variantfe5fbfd7b340ade36ad907b57b221dedd021e9393958b6710d7c2b1307d86aa3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/UrysohnsLemma/Variantfe5fbfd7b340ade36ad907b57b221dedd021e9393958b6710d7c2b1307d86aa3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.NormedSpace.AddTorsor` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.AffineSpace.Ordered` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.ContinuousFunction.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [CU](../../../../../mathematics/Topology/GeneralTopology/UrysohnsLemma/Variantfe5fbfd7b340ade36ad907b57b221dedd021e9393958b6710d7c2b1307d86aa3.lean/declarations/cu--2871f3e7763afc056b99ff10.md) | 91 | `declaration-track:2871f3e7763afc056b99ff10cc9018d5e9829ae5e7c8761efa157227f4c973da` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/UrysohnsLemma/Variantfe5fbfd7b340ade36ad907b57b221dedd021e9393958b6710d7c2b1307d86aa3.lean/declarations/instance--ec54a68c306d480d98b38fe6.md) | 98 | `declaration-track:ec54a68c306d480d98b38fe6dc72ce3701b06f736c2ac01060b98bedaff7afd9` |
| 3 | `def` | [left](../../../../../mathematics/Topology/GeneralTopology/UrysohnsLemma/Variantfe5fbfd7b340ade36ad907b57b221dedd021e9393958b6710d7c2b1307d86aa3.lean/declarations/left--a310d4dabbfa329d0866f1f7.md) | 108 | `declaration-track:a310d4dabbfa329d0866f1f7193ab4ac0acb3f4da80d8c1afd064849eaca5a69` |
| 4 | `def` | [right](../../../../../mathematics/Topology/GeneralTopology/UrysohnsLemma/Variantfe5fbfd7b340ade36ad907b57b221dedd021e9393958b6710d7c2b1307d86aa3.lean/declarations/right--99ed62f6323834bf69d29eff.md) | 119 | `declaration-track:99ed62f6323834bf69d29eff52c4325b95ab58b88150661bcbed75383ed35b6a` |
| 5 | `theorem` | [left_U_subset_right_C](../../../../../mathematics/Topology/GeneralTopology/UrysohnsLemma/Variantfe5fbfd7b340ade36ad907b57b221dedd021e9393958b6710d7c2b1307d86aa3.lean/declarations/left-u-subset-right-c--a553f40fa97631fbf17f393a.md) | 127 | `result-track:a553f40fa97631fbf17f393acb2b5d54922034a1d5c99f778b321c9e3ad6ff75` |
| 6 | `theorem` | [left_U_subset](../../../../../mathematics/Topology/GeneralTopology/UrysohnsLemma/Variantfe5fbfd7b340ade36ad907b57b221dedd021e9393958b6710d7c2b1307d86aa3.lean/declarations/left-u-subset--a673a4b0339fe9a55532bb65.md) | 131 | `result-track:a673a4b0339fe9a55532bb650a5567718b516af9116420a8fd07d5692d0cb69b` |
| 7 | `theorem` | [subset_right_C](../../../../../mathematics/Topology/GeneralTopology/UrysohnsLemma/Variantfe5fbfd7b340ade36ad907b57b221dedd021e9393958b6710d7c2b1307d86aa3.lean/declarations/subset-right-c--e099e84037c6671b89e8465f.md) | 135 | `result-track:e099e84037c6671b89e8465f7d96a467c224f3bf940f8644fdb9b67a1daf4b86` |
| 8 | `def` | [approx](../../../../../mathematics/Topology/GeneralTopology/UrysohnsLemma/Variantfe5fbfd7b340ade36ad907b57b221dedd021e9393958b6710d7c2b1307d86aa3.lean/declarations/approx--6888c7e2713655817c3d9d92.md) | 141 | `declaration-track:6888c7e2713655817c3d9d92856bef0b3f56178a54f2b8e8c805c0590eede26c` |
| 9 | `theorem` | [approx_of_mem_C](../../../../../mathematics/Topology/GeneralTopology/UrysohnsLemma/Variantfe5fbfd7b340ade36ad907b57b221dedd021e9393958b6710d7c2b1307d86aa3.lean/declarations/approx-of-mem-c--5e1fdad82d6720dc612a7b6c.md) | 146 | `result-track:5e1fdad82d6720dc612a7b6c36a1e68fdf4c867155a00d029e47752f16b0d57b` |
| 10 | `theorem` | [approx_of_nmem_U](../../../../../mathematics/Topology/GeneralTopology/UrysohnsLemma/Variantfe5fbfd7b340ade36ad907b57b221dedd021e9393958b6710d7c2b1307d86aa3.lean/declarations/approx-of-nmem-u--ee3509c20476671172eaa0d9.md) | 154 | `result-track:ee3509c20476671172eaa0d956e806356ed4e30c13cd2fb66b7c0bed5eacb7bf` |
| 11 | `theorem` | [approx_nonneg](../../../../../mathematics/Topology/GeneralTopology/UrysohnsLemma/Variantfe5fbfd7b340ade36ad907b57b221dedd021e9393958b6710d7c2b1307d86aa3.lean/declarations/approx-nonneg--a872e7d6be439ed774656109.md) | 163 | `result-track:a872e7d6be439ed7746561096873658f519287a6598ee8f26951464d28ed9d61` |
| 12 | `theorem` | [approx_le_one](../../../../../mathematics/Topology/GeneralTopology/UrysohnsLemma/Variantfe5fbfd7b340ade36ad907b57b221dedd021e9393958b6710d7c2b1307d86aa3.lean/declarations/approx-le-one--b0813429132ab93cce4c9990.md) | 170 | `result-track:b0813429132ab93cce4c9990ff5d1cdd9650a85a7c3d05aa179c6bd1a9f639cb` |
| 13 | `theorem` | [bddAbove_range_approx](../../../../../mathematics/Topology/GeneralTopology/UrysohnsLemma/Variantfe5fbfd7b340ade36ad907b57b221dedd021e9393958b6710d7c2b1307d86aa3.lean/declarations/bddabove-range-approx--1343fb14b48b342c20ce5543.md) | 179 | `result-track:1343fb14b48b342c20ce554327b6cfcac7ce484ce1268b51143f5b3c0d4ec865` |
| 14 | `theorem` | [approx_le_approx_of_U_sub_C](../../../../../mathematics/Topology/GeneralTopology/UrysohnsLemma/Variantfe5fbfd7b340ade36ad907b57b221dedd021e9393958b6710d7c2b1307d86aa3.lean/declarations/approx-le-approx-of-u-sub-c--ee3a391385b303338425b0ca.md) | 183 | `result-track:ee3a391385b303338425b0ca78c0160682a147ab5f51a64c36cbe3db11d59ca8` |
| 15 | `theorem` | [approx_mem_Icc_right_left](../../../../../mathematics/Topology/GeneralTopology/UrysohnsLemma/Variantfe5fbfd7b340ade36ad907b57b221dedd021e9393958b6710d7c2b1307d86aa3.lean/declarations/approx-mem-icc-right-left--a4ed3a52a1ad3a27a28106fd.md) | 194 | `result-track:a4ed3a52a1ad3a27a28106fd04e18f4df050189ad1fea752a1dab66d50695b93` |
| 16 | `theorem` | [approx_le_succ](../../../../../mathematics/Topology/GeneralTopology/UrysohnsLemma/Variantfe5fbfd7b340ade36ad907b57b221dedd021e9393958b6710d7c2b1307d86aa3.lean/declarations/approx-le-succ--bfa0104d964aacfec494818e.md) | 205 | `result-track:bfa0104d964aacfec494818ef39e90ce61f5e4291143dc4b09bfd1f940131813` |
| 17 | `theorem` | [approx_mono](../../../../../mathematics/Topology/GeneralTopology/UrysohnsLemma/Variantfe5fbfd7b340ade36ad907b57b221dedd021e9393958b6710d7c2b1307d86aa3.lean/declarations/approx-mono--421da6dad96393e83b8c441a.md) | 213 | `result-track:421da6dad96393e83b8c441a9a93a912d74d70678be50b33573e143fbfa27397` |
| 18 | `def` | [lim](../../../../../mathematics/Topology/GeneralTopology/UrysohnsLemma/Variantfe5fbfd7b340ade36ad907b57b221dedd021e9393958b6710d7c2b1307d86aa3.lean/declarations/lim--719b4b79f238af49781ad394.md) | 222 | `declaration-track:719b4b79f238af49781ad3946c8c85ed6a074375549a2ffa5e9983813e3fd377` |
| 19 | `theorem` | [tendsto_approx_atTop](../../../../../mathematics/Topology/GeneralTopology/UrysohnsLemma/Variantfe5fbfd7b340ade36ad907b57b221dedd021e9393958b6710d7c2b1307d86aa3.lean/declarations/tendsto-approx-attop--a87e59f7ab319cfaeb0c6055.md) | 226 | `result-track:a87e59f7ab319cfaeb0c605509cf454d09c57eeedacfbfe674b1d66d39cf1550` |
| 20 | `theorem` | [lim_of_mem_C](../../../../../mathematics/Topology/GeneralTopology/UrysohnsLemma/Variantfe5fbfd7b340ade36ad907b57b221dedd021e9393958b6710d7c2b1307d86aa3.lean/declarations/lim-of-mem-c--64fed31fd0c3c7ddc9253ba8.md) | 231 | `result-track:64fed31fd0c3c7ddc9253ba8a71ab156ed8ce8f2c9d3cf8eddc13d9452fdf50a` |
| 21 | `theorem` | [lim_of_nmem_U](../../../../../mathematics/Topology/GeneralTopology/UrysohnsLemma/Variantfe5fbfd7b340ade36ad907b57b221dedd021e9393958b6710d7c2b1307d86aa3.lean/declarations/lim-of-nmem-u--78cb55755eef3c098499c6f5.md) | 235 | `result-track:78cb55755eef3c098499c6f5ef7979adbef822536b491652f4b3d05532005ec9` |
| 22 | `theorem` | [lim_eq_midpoint](../../../../../mathematics/Topology/GeneralTopology/UrysohnsLemma/Variantfe5fbfd7b340ade36ad907b57b221dedd021e9393958b6710d7c2b1307d86aa3.lean/declarations/lim-eq-midpoint--d1d94e5c367ea3fe64b6b0c7.md) | 239 | `result-track:d1d94e5c367ea3fe64b6b0c76c726c63c6dd8cba3c7320a7db8287f4f0a3ec82` |
| 23 | `theorem` | [approx_le_lim](../../../../../mathematics/Topology/GeneralTopology/UrysohnsLemma/Variantfe5fbfd7b340ade36ad907b57b221dedd021e9393958b6710d7c2b1307d86aa3.lean/declarations/approx-le-lim--5e555bbb53e9248be61129b6.md) | 246 | `result-track:5e555bbb53e9248be61129b6ea5750396ceb939560552936bfd35ee67a37aaaa` |
| 24 | `theorem` | [lim_nonneg](../../../../../mathematics/Topology/GeneralTopology/UrysohnsLemma/Variantfe5fbfd7b340ade36ad907b57b221dedd021e9393958b6710d7c2b1307d86aa3.lean/declarations/lim-nonneg--48c4a3cba55882febbbf7ebc.md) | 250 | `result-track:48c4a3cba55882febbbf7ebc09e67918c0f72055c715adc30155002651dbe77a` |
| 25 | `theorem` | [lim_le_one](../../../../../mathematics/Topology/GeneralTopology/UrysohnsLemma/Variantfe5fbfd7b340ade36ad907b57b221dedd021e9393958b6710d7c2b1307d86aa3.lean/declarations/lim-le-one--47474aa949c101ffe49a6a30.md) | 254 | `result-track:47474aa949c101ffe49a6a300b9431c0cff62dc2a4c202526b10de32b7a2e772` |
| 26 | `theorem` | [lim_mem_Icc](../../../../../mathematics/Topology/GeneralTopology/UrysohnsLemma/Variantfe5fbfd7b340ade36ad907b57b221dedd021e9393958b6710d7c2b1307d86aa3.lean/declarations/lim-mem-icc--cac619abf8c801cfcd9f7ec9.md) | 258 | `result-track:cac619abf8c801cfcd9f7ec98ef42ae92a4f252205c24f342a9a8a31fafb271c` |
| 27 | `theorem` | [continuous_lim](../../../../../mathematics/Topology/GeneralTopology/UrysohnsLemma/Variantfe5fbfd7b340ade36ad907b57b221dedd021e9393958b6710d7c2b1307d86aa3.lean/declarations/continuous-lim--5d13290152ce38a65e9fa4c1.md) | 263 | `result-track:5d13290152ce38a65e9fa4c1d7c63e93915de978bed5d53f641e72f253de627d` |
| 28 | `theorem` | [exists_continuous_zero_one_of_closed](../../../../../mathematics/Topology/GeneralTopology/UrysohnsLemma/Variantfe5fbfd7b340ade36ad907b57b221dedd021e9393958b6710d7c2b1307d86aa3.lean/declarations/exists-continuous-zero-one-of-closed--3f2cee617b6172336f9f0d73.md) | 313 | `result-track:3f2cee617b6172336f9f0d7350231d3f0bc05ea0eaeaafb004a5a1de0f570de0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
