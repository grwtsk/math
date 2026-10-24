# Verification target: GRWTSK.Topology.GeneralTopology.WithZeroTopology.Variant9117936becb3121171d47f37b7760bf1879b6c2880283601b71b957e238d9dcc

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ec4213f2e12fd977a28a9524aba0f85a858f69e4",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/WithZeroTopology/Variant9117936becb3121171d47f37b7760bf1879b6c2880283601b71b957e238d9dcc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/WithZeroTopology/Variant9117936becb3121171d47f37b7760bf1879b6c2880283601b71b957e238d9dcc.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/WithZeroTopology/Variant9117936becb3121171d47f37b7760bf1879b6c2880283601b71b957e238d9dcc.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ec4213f2e12fd977a28a9524aba0f85a858f69e4`.

Source path: `GRWTSK/Topology/GeneralTopology/WithZeroTopology/Variant9117936becb3121171d47f37b7760bf1879b6c2880283601b71b957e238d9dcc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/WithZeroTopology/Variant9117936becb3121171d47f37b7760bf1879b6c2880283601b71b957e238d9dcc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.WithZero` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.GroupWithZero` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Order.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/WithZeroTopology/Variant9117936becb3121171d47f37b7760bf1879b6c2880283601b71b957e238d9dcc.lean/declarations/instance--4fdf40f70318111504effd0b.md) | 44 | `declaration-track:4fdf40f70318111504effd0b1ebdca5178a392240f388541e1e5ff3f07764e88` |
| 2 | `theorem` | [nhds_eq_update](../../../../../mathematics/Topology/GeneralTopology/WithZeroTopology/Variant9117936becb3121171d47f37b7760bf1879b6c2880283601b71b957e238d9dcc.lean/declarations/nhds-eq-update--2709eb951453fd30ae8ec130.md) | 48 | `result-track:2709eb951453fd30ae8ec130c49e4a55a62227d2b4a5ea76ced9bf2d5c4c28fd` |
| 3 | `theorem` | [nhds_zero](../../../../../mathematics/Topology/GeneralTopology/WithZeroTopology/Variant9117936becb3121171d47f37b7760bf1879b6c2880283601b71b957e238d9dcc.lean/declarations/nhds-zero--3889a40f0bced518aa2babbb.md) | 56 | `result-track:3889a40f0bced518aa2babbb45c805dcbb16befe355cbea7b09ee55e20e51fd7` |
| 4 | `theorem` | [hasBasis_nhds_zero](../../../../../mathematics/Topology/GeneralTopology/WithZeroTopology/Variant9117936becb3121171d47f37b7760bf1879b6c2880283601b71b957e238d9dcc.lean/declarations/hasbasis-nhds-zero--1b9a040e970e2fbe2095cc01.md) | 62 | `result-track:1b9a040e970e2fbe2095cc016e5fe9dcc033bd2f6a2673f034256fed8ac799f7` |
| 5 | `theorem` | [Iio_mem_nhds_zero](../../../../../mathematics/Topology/GeneralTopology/WithZeroTopology/Variant9117936becb3121171d47f37b7760bf1879b6c2880283601b71b957e238d9dcc.lean/declarations/iio-mem-nhds-zero--cbac9399f7a2549c4dc31bb7.md) | 68 | `result-track:cbac9399f7a2549c4dc31bb756bfb8b9479490b1cf719ba12499d422285dd0e2` |
| 6 | `theorem` | [nhds_zero_of_units](../../../../../mathematics/Topology/GeneralTopology/WithZeroTopology/Variant9117936becb3121171d47f37b7760bf1879b6c2880283601b71b957e238d9dcc.lean/declarations/nhds-zero-of-units--b06a0e635949a810eb6e6912.md) | 74 | `result-track:b06a0e635949a810eb6e69127494bcf97e6cf3dc97d43b4ac32292b1d32f2f09` |
| 7 | `theorem` | [tendsto_zero](../../../../../mathematics/Topology/GeneralTopology/WithZeroTopology/Variant9117936becb3121171d47f37b7760bf1879b6c2880283601b71b957e238d9dcc.lean/declarations/tendsto-zero--61c923b65a4fe7b019f60c45.md) | 78 | `result-track:61c923b65a4fe7b019f60c454ef16d64f0ae46bcbd56108125d79dbdcfbaa679` |
| 8 | `theorem` | [nhds_of_ne_zero](../../../../../mathematics/Topology/GeneralTopology/WithZeroTopology/Variant9117936becb3121171d47f37b7760bf1879b6c2880283601b71b957e238d9dcc.lean/declarations/nhds-of-ne-zero--057658c624da603bd960aca9.md) | 89 | `result-track:057658c624da603bd960aca9423d9447b92e0965e3a8ad1e2df6fb6a47bdb55f` |
| 9 | `theorem` | [nhds_coe_units](../../../../../mathematics/Topology/GeneralTopology/WithZeroTopology/Variant9117936becb3121171d47f37b7760bf1879b6c2880283601b71b957e238d9dcc.lean/declarations/nhds-coe-units--49a92ca6f8f3ae948de59fbb.md) | 95 | `result-track:49a92ca6f8f3ae948de59fbbd4abba37fcc9010c3408e812f76ec06988059f1c` |
| 10 | `theorem` | [singleton_mem_nhds_of_units](../../../../../mathematics/Topology/GeneralTopology/WithZeroTopology/Variant9117936becb3121171d47f37b7760bf1879b6c2880283601b71b957e238d9dcc.lean/declarations/singleton-mem-nhds-of-units--730ac533a9934a5c375ed12f.md) | 101 | `result-track:730ac533a9934a5c375ed12f0c9dcc3584fec9e73f3be36d1e31622a7f976877` |
| 11 | `theorem` | [singleton_mem_nhds_of_ne_zero](../../../../../mathematics/Topology/GeneralTopology/WithZeroTopology/Variant9117936becb3121171d47f37b7760bf1879b6c2880283601b71b957e238d9dcc.lean/declarations/singleton-mem-nhds-of-ne-zero--a562965dc94035d376047a63.md) | 106 | `result-track:a562965dc94035d376047a63e70b322d39253d0594a50e8633e1e659ee791dbd` |
| 12 | `theorem` | [hasBasis_nhds_of_ne_zero](../../../../../mathematics/Topology/GeneralTopology/WithZeroTopology/Variant9117936becb3121171d47f37b7760bf1879b6c2880283601b71b957e238d9dcc.lean/declarations/hasbasis-nhds-of-ne-zero--aa3595e231142330460dfc63.md) | 109 | `result-track:aa3595e231142330460dfc637f2c5fc25cad3fcd04c7df0e70b9f541e97bf3fc` |
| 13 | `theorem` | [hasBasis_nhds_units](../../../../../mathematics/Topology/GeneralTopology/WithZeroTopology/Variant9117936becb3121171d47f37b7760bf1879b6c2880283601b71b957e238d9dcc.lean/declarations/hasbasis-nhds-units--273185176bcd5f01d7d18ec0.md) | 115 | `result-track:273185176bcd5f01d7d18ec02f14033f39e3f7cc23c8dd3adc034632e32288cc` |
| 14 | `theorem` | [tendsto_of_ne_zero](../../../../../mathematics/Topology/GeneralTopology/WithZeroTopology/Variant9117936becb3121171d47f37b7760bf1879b6c2880283601b71b957e238d9dcc.lean/declarations/tendsto-of-ne-zero--f143ee6c28e406c1e950e9db.md) | 120 | `result-track:f143ee6c28e406c1e950e9db3425ece0b6aedbd201f869acfc4055015b15cf35` |
| 15 | `theorem` | [tendsto_units](../../../../../mathematics/Topology/GeneralTopology/WithZeroTopology/Variant9117936becb3121171d47f37b7760bf1879b6c2880283601b71b957e238d9dcc.lean/declarations/tendsto-units--8e3504f39d061ce2d0e15274.md) | 124 | `result-track:8e3504f39d061ce2d0e15274102b37126d1b6f8545b67db642d7aa802a8abc77` |
| 16 | `theorem` | [Iio_mem_nhds](../../../../../mathematics/Topology/GeneralTopology/WithZeroTopology/Variant9117936becb3121171d47f37b7760bf1879b6c2880283601b71b957e238d9dcc.lean/declarations/iio-mem-nhds--2fbe2bb028d824c0f3234410.md) | 128 | `result-track:2fbe2bb028d824c0f323441004eb2a991a0e0e5794d727855e17a570a2fe3e07` |
| 17 | `theorem` | [isOpen_iff](../../../../../mathematics/Topology/GeneralTopology/WithZeroTopology/Variant9117936becb3121171d47f37b7760bf1879b6c2880283601b71b957e238d9dcc.lean/declarations/isopen-iff--60a08a11256993798562ca10.md) | 136 | `result-track:60a08a11256993798562ca105545c2cf9291453ed58a19a3684a97dbb938e142` |
| 18 | `theorem` | [isClosed_iff](../../../../../mathematics/Topology/GeneralTopology/WithZeroTopology/Variant9117936becb3121171d47f37b7760bf1879b6c2880283601b71b957e238d9dcc.lean/declarations/isclosed-iff--bd7f15631deca9326fe5376b.md) | 142 | `result-track:bd7f15631deca9326fe5376b172b34ec9c49eee0afafb1bc8b1f0e6e896181ea` |
| 19 | `theorem` | [isOpen_Iio](../../../../../mathematics/Topology/GeneralTopology/WithZeroTopology/Variant9117936becb3121171d47f37b7760bf1879b6c2880283601b71b957e238d9dcc.lean/declarations/isopen-iio--ff680d222e942247d6c40e77.md) | 147 | `result-track:ff680d222e942247d6c40e77dc4b7a3abf10fd35b0e6e8780e8b2101bbe55446` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/WithZeroTopology/Variant9117936becb3121171d47f37b7760bf1879b6c2880283601b71b957e238d9dcc.lean/declarations/instance--854973ae209b483dea686214.md) | 158 | `declaration-track:854973ae209b483dea68621404db4ae46f8a1a8f34fcb7bfad450db1d73df84c` |
| 21 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/WithZeroTopology/Variant9117936becb3121171d47f37b7760bf1879b6c2880283601b71b957e238d9dcc.lean/declarations/instance--2b8037ac51e0392598f1ed0b.md) | 168 | `declaration-track:2b8037ac51e0392598f1ed0b0563c686d67cfff93f5070f932592c4323838534` |
| 22 | `lemma` | [t3Space](../../../../../mathematics/Topology/GeneralTopology/WithZeroTopology/Variant9117936becb3121171d47f37b7760bf1879b6c2880283601b71b957e238d9dcc.lean/declarations/t3space--2998234ca3ffb4967ec6ca85.md) | 176 | `result-track:2998234ca3ffb4967ec6ca853215cc513ed156d4e1569c5bf7d896f1c1563046` |
| 23 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/WithZeroTopology/Variant9117936becb3121171d47f37b7760bf1879b6c2880283601b71b957e238d9dcc.lean/declarations/instance--26573f7737d8e151f6cdac4b.md) | 182 | `declaration-track:26573f7737d8e151f6cdac4b8cabf2afa29ef7d02540731a935843d2208ddd61` |
| 24 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/WithZeroTopology/Variant9117936becb3121171d47f37b7760bf1879b6c2880283601b71b957e238d9dcc.lean/declarations/instance--97eb5f43ce13720c5365e3b2.md) | 205 | `declaration-track:97eb5f43ce13720c5365e3b2d84b879f49d2a9efe4c246d9f067507ff79bfb19` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
