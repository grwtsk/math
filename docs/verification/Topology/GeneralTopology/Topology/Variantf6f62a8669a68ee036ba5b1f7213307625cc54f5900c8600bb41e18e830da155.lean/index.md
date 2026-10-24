# Verification target: GRWTSK.Topology.GeneralTopology.Topology.Variantf6f62a8669a68ee036ba5b1f7213307625cc54f5900c8600bb41e18e830da155

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "94fd9986cf925b7f1fdba557d6c47d2ba8e3f27b",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Topology/Variantf6f62a8669a68ee036ba5b1f7213307625cc54f5900c8600bb41e18e830da155.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Topology/Variantf6f62a8669a68ee036ba5b1f7213307625cc54f5900c8600bb41e18e830da155.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Topology/Variantf6f62a8669a68ee036ba5b1f7213307625cc54f5900c8600bb41e18e830da155.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `94fd9986cf925b7f1fdba557d6c47d2ba8e3f27b`.

Source path: `GRWTSK/Topology/GeneralTopology/Topology/Variantf6f62a8669a68ee036ba5b1f7213307625cc54f5900c8600bb41e18e830da155.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Topology/Variantf6f62a8669a68ee036ba5b1f7213307625cc54f5900c8600bb41e18e830da155.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Topology/Variantf6f62a8669a68ee036ba5b1f7213307625cc54f5900c8600bb41e18e830da155.lean/declarations/instance--b536c75f19b4967c4903f099.md) | 40 | `declaration-track:b536c75f19b4967c4903f09931e4ff454aca44a6402cca0391d4e9f9bbcc66eb` |
| 2 | `theorem` | [continuous_contLinear](../../../../../mathematics/Topology/GeneralTopology/Topology/Variantf6f62a8669a68ee036ba5b1f7213307625cc54f5900c8600bb41e18e830da155.lean/declarations/continuous-contlinear--bde34bed19335796dd0a592f.md) | 45 | `result-track:bde34bed19335796dd0a592f1c7c270cea148c269f178167226b3994657bcb0f` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Topology/Variantf6f62a8669a68ee036ba5b1f7213307625cc54f5900c8600bb41e18e830da155.lean/declarations/instance--408b06628d4c3f93030d8ced.md) | 49 | `declaration-track:408b06628d4c3f93030d8ced97afacb876929c48a8511f396b7903ff64fdf7d1` |
| 4 | `theorem` | [continuous_rng](../../../../../mathematics/Topology/GeneralTopology/Topology/Variantf6f62a8669a68ee036ba5b1f7213307625cc54f5900c8600bb41e18e830da155.lean/declarations/continuous-rng--3d432aff76fd676f1bf07575.md) | 57 | `result-track:3d432aff76fd676f1bf075759a5ecd6ece13e0d698b0aa34b456778c6a406771` |
| 5 | `theorem` | [continuous_rng_iff](../../../../../mathematics/Topology/GeneralTopology/Topology/Variantf6f62a8669a68ee036ba5b1f7213307625cc54f5900c8600bb41e18e830da155.lean/declarations/continuous-rng-iff--f738cb16938072b09efdcd1b.md) | 62 | `result-track:f738cb16938072b09efdcd1beae4499436de341f966f401e06629fb0ebe2ef72` |
| 6 | `theorem` | [continuous_rng_of_exists](../../../../../mathematics/Topology/GeneralTopology/Topology/Variantf6f62a8669a68ee036ba5b1f7213307625cc54f5900c8600bb41e18e830da155.lean/declarations/continuous-rng-of-exists--6785ad03c83fd0190913bbde.md) | 66 | `result-track:6785ad03c83fd0190913bbde28a8052a193cbd5a9f9be1ab92be40134385dae4` |
| 7 | `theorem` | [continuous_const](../../../../../mathematics/Topology/GeneralTopology/Topology/Variantf6f62a8669a68ee036ba5b1f7213307625cc54f5900c8600bb41e18e830da155.lean/declarations/continuous-const--d93b4a49e8213cdba00093c6.md) | 75 | `result-track:d93b4a49e8213cdba00093c64bdd968ae11215b29dc9a3b91b504c0f916c4cb5` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Topology/Variantf6f62a8669a68ee036ba5b1f7213307625cc54f5900c8600bb41e18e830da155.lean/declarations/instance--db0528b96e0fbc9086e32d40.md) | 79 | `declaration-track:db0528b96e0fbc9086e32d4085a64faa5ce85617a0aebbe58b7e30aa877c72c3` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Topology/Variantf6f62a8669a68ee036ba5b1f7213307625cc54f5900c8600bb41e18e830da155.lean/declarations/instance--10234fb300e6675b265aa9ef.md) | 85 | `declaration-track:10234fb300e6675b265aa9ef05e02ccc9ce3766888bf6c962e91be810619e078` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Topology/Variantf6f62a8669a68ee036ba5b1f7213307625cc54f5900c8600bb41e18e830da155.lean/declarations/instance--3fb134d7e88a3bb453bc67e4.md) | 88 | `declaration-track:3fb134d7e88a3bb453bc67e408aae14cf204a8240e11331ad90ff9d234a9d13c` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Topology/Variantf6f62a8669a68ee036ba5b1f7213307625cc54f5900c8600bb41e18e830da155.lean/declarations/instance--a2d66d4639af0be2f8ca51a0.md) | 98 | `declaration-track:a2d66d4639af0be2f8ca51a0e411be3152b05b09505c12c9bb5d3ea581f72339` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Topology/Variantf6f62a8669a68ee036ba5b1f7213307625cc54f5900c8600bb41e18e830da155.lean/declarations/instance--d20c9064bcade217f10f4380.md) | 101 | `declaration-track:d20c9064bcade217f10f43805399d37be2d1aafed9790aee3e6f61d3e559b18e` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Topology/Variantf6f62a8669a68ee036ba5b1f7213307625cc54f5900c8600bb41e18e830da155.lean/declarations/instance--ddc7e50c4a476a5048c3b5c4.md) | 106 | `declaration-track:ddc7e50c4a476a5048c3b5c4ecf7aa4d941abab09828534f53c30680c750dfc7` |
| 14 | `theorem` | [_root_.GRWTSK.Topology.GeneralTopology.ContinuousContLinear.Variant71c511026f072d68b0474ec542cdfea4a034255ad6f744fd4b9e4af105481f7a.ContinuousLinearMap.continuous_toContinuousAffineMap](../../../../../mathematics/Topology/GeneralTopology/Topology/Variantf6f62a8669a68ee036ba5b1f7213307625cc54f5900c8600bb41e18e830da155.lean/declarations/root-grwtsk-topology-generaltopology-continuouscontlinear-variant71c5110--a77aeb1def4e82b793a5af8b.md) | 117 | `result-track:a77aeb1def4e82b793a5af8b9830df258265bd74f49ca648075b6464396719f3` |
| 15 | `def` | [decompHomeomorph](../../../../../mathematics/Topology/GeneralTopology/Topology/Variantf6f62a8669a68ee036ba5b1f7213307625cc54f5900c8600bb41e18e830da155.lean/declarations/decomphomeomorph--6c326ceb07c5cab5ef601b21.md) | 134 | `declaration-track:6c326ceb07c5cab5ef601b212022bfbebae9979df70c44e2dc1006235f09505e` |
| 16 | `theorem` | [fst_decompHomeomorph](../../../../../mathematics/Topology/GeneralTopology/Topology/Variantf6f62a8669a68ee036ba5b1f7213307625cc54f5900c8600bb41e18e830da155.lean/declarations/fst-decomphomeomorph--edc2a5ebbd3064208f6462c0.md) | 142 | `result-track:edc2a5ebbd3064208f6462c099bcf2bc37728b50aadcdf1e6e61d3b6bf73510f` |
| 17 | `theorem` | [snd_decompHomeomorph](../../../../../mathematics/Topology/GeneralTopology/Topology/Variantf6f62a8669a68ee036ba5b1f7213307625cc54f5900c8600bb41e18e830da155.lean/declarations/snd-decomphomeomorph--7c81a4b312be66236a89dfa6.md) | 146 | `result-track:7c81a4b312be66236a89dfa6cc8d237cd5c03e82e0b6ce0e9b9a77374a81684d` |
| 18 | `theorem` | [decompHomeomorph_symm_apply](../../../../../mathematics/Topology/GeneralTopology/Topology/Variantf6f62a8669a68ee036ba5b1f7213307625cc54f5900c8600bb41e18e830da155.lean/declarations/decomphomeomorph-symm-apply--e1128f5b3d504c228a4656bb.md) | 150 | `result-track:e1128f5b3d504c228a4656bb2ccda4a379174cec671dcb133fbdac3ccf04437d` |
| 19 | `theorem` | [decompHomeomorph_symm_contLinear](../../../../../mathematics/Topology/GeneralTopology/Topology/Variantf6f62a8669a68ee036ba5b1f7213307625cc54f5900c8600bb41e18e830da155.lean/declarations/decomphomeomorph-symm-contlinear--2c5f9b4684f51efc7b30e489.md) | 155 | `result-track:2c5f9b4684f51efc7b30e4890d812b5a72805b494ec6d6c518ddb397e277551c` |
| 20 | `def` | [decompContinuousLinearEquiv](../../../../../mathematics/Topology/GeneralTopology/Topology/Variantf6f62a8669a68ee036ba5b1f7213307625cc54f5900c8600bb41e18e830da155.lean/declarations/decompcontinuouslinearequiv--9c832293f2b9b05132ae4a4e.md) | 168 | `declaration-track:9c832293f2b9b05132ae4a4e6a8b318f63fe3f57f35bfecdc0528d220eb71e54` |
| 21 | `theorem` | [fst_decompContinuousLinearEquiv](../../../../../mathematics/Topology/GeneralTopology/Topology/Variantf6f62a8669a68ee036ba5b1f7213307625cc54f5900c8600bb41e18e830da155.lean/declarations/fst-decompcontinuouslinearequiv--1243359aa1a35db2ea53072e.md) | 173 | `result-track:1243359aa1a35db2ea53072ee21e7650da32218c430120f9502fa70f529fa687` |
| 22 | `theorem` | [snd_decompContinuousLinearEquiv](../../../../../mathematics/Topology/GeneralTopology/Topology/Variantf6f62a8669a68ee036ba5b1f7213307625cc54f5900c8600bb41e18e830da155.lean/declarations/snd-decompcontinuouslinearequiv--61938aee74063ffc09205afa.md) | 178 | `result-track:61938aee74063ffc09205afaf631d6bddfde2e34e2801fe743a0ed696f47f144` |
| 23 | `theorem` | [decompContinuousLinearEquiv_symm_apply](../../../../../mathematics/Topology/GeneralTopology/Topology/Variantf6f62a8669a68ee036ba5b1f7213307625cc54f5900c8600bb41e18e830da155.lean/declarations/decompcontinuouslinearequiv-symm-apply--1307b7d33bba5aea051f2542.md) | 183 | `result-track:1307b7d33bba5aea051f2542cff0f80092c703c7ca64c1d7da89e2ad879f9044` |
| 24 | `theorem` | [decompContinuousLinearEquiv_symm_contLinear](../../../../../mathematics/Topology/GeneralTopology/Topology/Variantf6f62a8669a68ee036ba5b1f7213307625cc54f5900c8600bb41e18e830da155.lean/declarations/decompcontinuouslinearequiv-symm-contlinear--88b0c1038fef55f8be374bbc.md) | 188 | `result-track:88b0c1038fef55f8be374bbcbc965c9ed59bf94cf6753bca97e764025376b824` |
| 25 | `def` | [decompContinuousAffineEquiv](../../../../../mathematics/Topology/GeneralTopology/Topology/Variantf6f62a8669a68ee036ba5b1f7213307625cc54f5900c8600bb41e18e830da155.lean/declarations/decompcontinuousaffineequiv--63322077e662b4a092c2e8d8.md) | 201 | `declaration-track:63322077e662b4a092c2e8d88b1d1c994c913f746a0aba1547a0d16920297933` |
| 26 | `theorem` | [fst_decompContinuousAffineEquiv](../../../../../mathematics/Topology/GeneralTopology/Topology/Variantf6f62a8669a68ee036ba5b1f7213307625cc54f5900c8600bb41e18e830da155.lean/declarations/fst-decompcontinuousaffineequiv--c5236e8383f9da6d683add5a.md) | 206 | `result-track:c5236e8383f9da6d683add5affb2313737b890b13d5ad061bc29fdd10127ccf4` |
| 27 | `theorem` | [snd_decompContinuousAffineEquiv](../../../../../mathematics/Topology/GeneralTopology/Topology/Variantf6f62a8669a68ee036ba5b1f7213307625cc54f5900c8600bb41e18e830da155.lean/declarations/snd-decompcontinuousaffineequiv--23b6ed4f3647adb0d479d315.md) | 211 | `result-track:23b6ed4f3647adb0d479d315a329c92564f958a1b0df573f6115b7541f11432c` |
| 28 | `theorem` | [decompContinuousAffineEquiv_symm_apply](../../../../../mathematics/Topology/GeneralTopology/Topology/Variantf6f62a8669a68ee036ba5b1f7213307625cc54f5900c8600bb41e18e830da155.lean/declarations/decompcontinuousaffineequiv-symm-apply--012b449c1e5e293291d2dd97.md) | 216 | `result-track:012b449c1e5e293291d2dd97f25ee7d4a593ef8ca47e0c0f9cbce1d3412c4a43` |
| 29 | `theorem` | [decompContinuousAffineEquiv_symm_contLinear](../../../../../mathematics/Topology/GeneralTopology/Topology/Variantf6f62a8669a68ee036ba5b1f7213307625cc54f5900c8600bb41e18e830da155.lean/declarations/decompcontinuousaffineequiv-symm-contlinear--e06cb9cb152ac281501cae5d.md) | 221 | `result-track:e06cb9cb152ac281501cae5d309615497d4a90646c1fa881c495706473deb877` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
