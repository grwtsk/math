# Verification target: GRWTSK.Topology.GeneralTopology.SMul.Variant9734ae4d9afd1e353b0518b76860430ed232ad95921becb2ef5293b626f13dba

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7a88af13b51552d0862c17bd6a8c95ead968d047",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/SMul/Variant9734ae4d9afd1e353b0518b76860430ed232ad95921becb2ef5293b626f13dba.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/SMul/Variant9734ae4d9afd1e353b0518b76860430ed232ad95921becb2ef5293b626f13dba.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/SMul/Variant9734ae4d9afd1e353b0518b76860430ed232ad95921becb2ef5293b626f13dba.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7a88af13b51552d0862c17bd6a8c95ead968d047`.

Source path: `GRWTSK/Topology/GeneralTopology/SMul/Variant9734ae4d9afd1e353b0518b76860430ed232ad95921becb2ef5293b626f13dba.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/SMul/Variant9734ae4d9afd1e353b0518b76860430ed232ad95921becb2ef5293b626f13dba.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finsupp.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Regular.SMul` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finsupp.SMulWithZero` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Action.Basic` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [single_smul](../../../../../mathematics/Topology/GeneralTopology/SMul/Variant9734ae4d9afd1e353b0518b76860430ed232ad95921becb2ef5293b626f13dba.lean/declarations/single-smul--48e88c5d08939317c4a8939a.md) | 43 | `result-track:48e88c5d08939317c4a8939a394908dc1768a93262ede1735d78d2045f876a4a` |
| 2 | `def` | [comapSMul](../../../../../mathematics/Topology/GeneralTopology/SMul/Variant9734ae4d9afd1e353b0518b76860430ed232ad95921becb2ef5293b626f13dba.lean/declarations/comapsmul--683030ae16320d23fc989fa4.md) | 56 | `declaration-track:683030ae16320d23fc989fa4131c428800ee4d9f3d83348cc8c090b2b331896d` |
| 3 | `theorem` | [comapSMul_def](../../../../../mathematics/Topology/GeneralTopology/SMul/Variant9734ae4d9afd1e353b0518b76860430ed232ad95921becb2ef5293b626f13dba.lean/declarations/comapsmul-def--8276d77c7739d849c195b4cb.md) | 60 | `result-track:8276d77c7739d849c195b4cbac8e7f1fc348d44dc3abcfbf654aa8bf5894c0ee` |
| 4 | `theorem` | [comapSMul_single](../../../../../mathematics/Topology/GeneralTopology/SMul/Variant9734ae4d9afd1e353b0518b76860430ed232ad95921becb2ef5293b626f13dba.lean/declarations/comapsmul-single--c04ea81dbed8ef6e57d18834.md) | 64 | `result-track:c04ea81dbed8ef6e57d18834975244b7e9394414ebd54d80423756530114af91` |
| 5 | `def` | [comapMulAction](../../../../../mathematics/Topology/GeneralTopology/SMul/Variant9734ae4d9afd1e353b0518b76860430ed232ad95921becb2ef5293b626f13dba.lean/declarations/comapmulaction--1bd9f1b549e15d9e48327c91.md) | 68 | `declaration-track:1bd9f1b549e15d9e48327c9185abda51b17b030dad5a5b44a6114fa7faeb5668` |
| 6 | `def` | [comapDistribMulAction](../../../../../mathematics/Topology/GeneralTopology/SMul/Variant9734ae4d9afd1e353b0518b76860430ed232ad95921becb2ef5293b626f13dba.lean/declarations/comapdistribmulaction--b84f04b855eca23e992465f3.md) | 76 | `declaration-track:b84f04b855eca23e992465f3dd87e9d660aa7e37738f77a6b39f4cb84f7a608f` |
| 7 | `theorem` | [comapSMul_apply](../../../../../mathematics/Topology/GeneralTopology/SMul/Variant9734ae4d9afd1e353b0518b76860430ed232ad95921becb2ef5293b626f13dba.lean/declarations/comapsmul-apply--8bdb78d167858d806bc20814.md) | 97 | `result-track:8bdb78d167858d806bc208144fb709b62776d5d8e3043ef806b568e98358869e` |
| 8 | `theorem` | [_root_.GRWTSK.Topology.GeneralTopology.SingleSmul.Variantc6f768895e7b4cc540f6c41a2929f8f656db97eabb05fe72a0a39ad6b9aa78f6.IsSMulRegular.finsupp](../../../../../mathematics/Topology/GeneralTopology/SMul/Variant9734ae4d9afd1e353b0518b76860430ed232ad95921becb2ef5293b626f13dba.lean/declarations/root-grwtsk-topology-generaltopology-singlesmul-variantc6f768895e7b4cc54--e8ca6793a1ed290f234d69a7.md) | 110 | `result-track:e8ca6793a1ed290f234d69a7ad445659bee35c888b7a51e04c7e62ee1fd1645b` |
| 9 | `instance` | [faithfulSMul](../../../../../mathematics/Topology/GeneralTopology/SMul/Variant9734ae4d9afd1e353b0518b76860430ed232ad95921becb2ef5293b626f13dba.lean/declarations/faithfulsmul--84d46ad7a7ad402f68656d10.md) | 114 | `declaration-track:84d46ad7a7ad402f68656d10358dd8811f6aac57796ebc51588d035526c3fd6f` |
| 10 | `instance` | [distribMulAction](../../../../../mathematics/Topology/GeneralTopology/SMul/Variant9734ae4d9afd1e353b0518b76860430ed232ad95921becb2ef5293b626f13dba.lean/declarations/distribmulaction--235c8eaf3a96ee0082e8187c.md) | 122 | `declaration-track:235c8eaf3a96ee0082e8187cd1af66997e4776319d9631352015d890d7d33ec6` |
| 11 | `instance` | [module](../../../../../mathematics/Topology/GeneralTopology/SMul/Variant9734ae4d9afd1e353b0518b76860430ed232ad95921becb2ef5293b626f13dba.lean/declarations/module--3742906aabbad723b44d9dac.md) | 128 | `declaration-track:3742906aabbad723b44d9dac02c966405c9eee2b6d278dc294a5ad2a0df7e546` |
| 12 | `theorem` | [support_smul_eq](../../../../../mathematics/Topology/GeneralTopology/SMul/Variant9734ae4d9afd1e353b0518b76860430ed232ad95921becb2ef5293b626f13dba.lean/declarations/support-smul-eq--e4be892d0f0cfca294a4c4df.md) | 136 | `result-track:e4be892d0f0cfca294a4c4dfb3fcca933e665e1ddbffd268447debab4730786e` |
| 13 | `theorem` | [filter_smul](../../../../../mathematics/Topology/GeneralTopology/SMul/Variant9734ae4d9afd1e353b0518b76860430ed232ad95921becb2ef5293b626f13dba.lean/declarations/filter-smul--0ce55d364be716f6cbd19d0f.md) | 145 | `result-track:0ce55d364be716f6cbd19d0f42b31c0fddd2cdc6809ba2221ad1aebb6984372c` |
| 14 | `theorem` | [mapDomain_smul](../../../../../mathematics/Topology/GeneralTopology/SMul/Variant9734ae4d9afd1e353b0518b76860430ed232ad95921becb2ef5293b626f13dba.lean/declarations/mapdomain-smul--d75b4743f35d613c2bfb670a.md) | 153 | `result-track:d75b4743f35d613c2bfb670ad91b7024769b439ec5326e75182a0e18e8e006ca` |
| 15 | `theorem` | [smul_single'](../../../../../mathematics/Topology/GeneralTopology/SMul/Variant9734ae4d9afd1e353b0518b76860430ed232ad95921becb2ef5293b626f13dba.lean/declarations/smul-single--c292d10dfe9c12a58abe7c9e.md) | 157 | `result-track:c292d10dfe9c12a58abe7c9eaa40f496366e45103e4ae15a596980fe194368f4` |
| 16 | `theorem` | [smul_single_one](../../../../../mathematics/Topology/GeneralTopology/SMul/Variant9734ae4d9afd1e353b0518b76860430ed232ad95921becb2ef5293b626f13dba.lean/declarations/smul-single-one--c87c708065d51c3f505f8d2a.md) | 160 | `result-track:c87c708065d51c3f505f8d2a2d31bb0a50bd835acf1e984ef2e99f2b4daf404c` |
| 17 | `theorem` | [comapDomain_smul](../../../../../mathematics/Topology/GeneralTopology/SMul/Variant9734ae4d9afd1e353b0518b76860430ed232ad95921becb2ef5293b626f13dba.lean/declarations/comapdomain-smul--46527344651357d42ca0e6e6.md) | 164 | `result-track:46527344651357d42ca0e6e685d8aa40ab6d9d6c327b555ac126af83ae9a75d3` |
| 18 | `theorem` | [comapDomain_smul_of_injective](../../../../../mathematics/Topology/GeneralTopology/SMul/Variant9734ae4d9afd1e353b0518b76860430ed232ad95921becb2ef5293b626f13dba.lean/declarations/comapdomain-smul-of-injective--e2c0b7d2882e73c7e6699b6c.md) | 173 | `result-track:e2c0b7d2882e73c7e6699b6c51fee80f2b240128097f1bf5a1f6fb6bac57bee6` |
| 19 | `theorem` | [sum_smul_index](../../../../../mathematics/Topology/GeneralTopology/SMul/Variant9734ae4d9afd1e353b0518b76860430ed232ad95921becb2ef5293b626f13dba.lean/declarations/sum-smul-index--d01f9400a85d94e2f2fd8fac.md) | 180 | `result-track:d01f9400a85d94e2f2fd8fac6130cdca8623628f098e618da6c124478bb9a1fd` |
| 20 | `theorem` | [sum_smul_index'](../../../../../mathematics/Topology/GeneralTopology/SMul/Variant9734ae4d9afd1e353b0518b76860430ed232ad95921becb2ef5293b626f13dba.lean/declarations/sum-smul-index--2fdc1bd41d5377536ff34501.md) | 184 | `result-track:2fdc1bd41d5377536ff34501eaa691344cf8682422b8727277f15165035677f2` |
| 21 | `theorem` | [sum_smul_index_addMonoidHom](../../../../../mathematics/Topology/GeneralTopology/SMul/Variant9734ae4d9afd1e353b0518b76860430ed232ad95921becb2ef5293b626f13dba.lean/declarations/sum-smul-index-addmonoidhom--ec10faf6df22f9bd6d2c1b29.md) | 189 | `result-track:ec10faf6df22f9bd6d2c1b29728fca7d2e4341f1cae4a149e8a5ca872ca3c61d` |
| 22 | `instance` | [noZeroSMulDivisors](../../../../../mathematics/Topology/GeneralTopology/SMul/Variant9734ae4d9afd1e353b0518b76860430ed232ad95921becb2ef5293b626f13dba.lean/declarations/nozerosmuldivisors--19bac3c8a6dfebdf6d87326d.md) | 194 | `declaration-track:19bac3c8a6dfebdf6d87326df1603e7bc5fc0b4219e6ee7c2de3af69f249c734` |
| 23 | `def` | [DistribMulActionHom.single](../../../../../mathematics/Topology/GeneralTopology/SMul/Variant9734ae4d9afd1e353b0518b76860430ed232ad95921becb2ef5293b626f13dba.lean/declarations/distribmulactionhom-single--a1e5bf865007770606a674a2.md) | 205 | `declaration-track:a1e5bf865007770606a674a20563a7d4fe3f54004473f911248c593b991823b9` |
| 24 | `theorem` | [distribMulActionHom_ext](../../../../../mathematics/Topology/GeneralTopology/SMul/Variant9734ae4d9afd1e353b0518b76860430ed232ad95921becb2ef5293b626f13dba.lean/declarations/distribmulactionhom-ext--c01c557c5afe4b2f691e61e0.md) | 209 | `result-track:c01c557c5afe4b2f691e61e00d53b63caa3975d27852a211d2483507f171d71f` |
| 25 | `theorem` | [distribMulActionHom_ext'](../../../../../mathematics/Topology/GeneralTopology/SMul/Variant9734ae4d9afd1e353b0518b76860430ed232ad95921becb2ef5293b626f13dba.lean/declarations/distribmulactionhom-ext--c62a5d2e815374a0272870c5.md) | 215 | `result-track:c62a5d2e815374a0272870c530891a4f5c1455d240c02affb745730d43f39f7a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
