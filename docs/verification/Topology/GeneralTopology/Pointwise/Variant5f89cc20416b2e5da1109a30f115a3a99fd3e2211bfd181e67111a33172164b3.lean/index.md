# Verification target: GRWTSK.Topology.GeneralTopology.Pointwise.Variant5f89cc20416b2e5da1109a30f115a3a99fd3e2211bfd181e67111a33172164b3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fd7aee4857bb6a7f355bc453c29b821bc884b7f5",
  "lexical_observation_count": 38,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Pointwise/Variant5f89cc20416b2e5da1109a30f115a3a99fd3e2211bfd181e67111a33172164b3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Pointwise/Variant5f89cc20416b2e5da1109a30f115a3a99fd3e2211bfd181e67111a33172164b3.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Pointwise/Variant5f89cc20416b2e5da1109a30f115a3a99fd3e2211bfd181e67111a33172164b3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fd7aee4857bb6a7f355bc453c29b821bc884b7f5`.

Source path: `GRWTSK/Topology/GeneralTopology/Pointwise/Variant5f89cc20416b2e5da1109a30f115a3a99fd3e2211bfd181e67111a33172164b3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Pointwise/Variant5f89cc20416b2e5da1109a30f115a3a99fd3e2211bfd181e67111a33172164b3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Algebra.Group.Basic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [subset_interior_smul](../../../../../mathematics/Topology/GeneralTopology/Pointwise/Variant5f89cc20416b2e5da1109a30f115a3a99fd3e2211bfd181e67111a33172164b3.lean/declarations/subset-interior-smul--099778090637d96ca5b62084.md) | 45 | `result-track:099778090637d96ca5b620844a93d0112e0093668029550015a61d7d4e87659d` |
| 2 | `theorem` | [IsClosed.smul_left_of_isCompact](../../../../../mathematics/Topology/GeneralTopology/Pointwise/Variant5f89cc20416b2e5da1109a30f115a3a99fd3e2211bfd181e67111a33172164b3.lean/declarations/isclosed-smul-left-of-iscompact--5a7beef929a0df6e94a8ba43.md) | 56 | `result-track:5a7beef929a0df6e94a8ba4369bd2fe2bfa03876c07d2d57b135842ff8d0c497` |
| 3 | `theorem` | [MulAction.isClosedMap_quotient](../../../../../mathematics/Topology/GeneralTopology/Pointwise/Variant5f89cc20416b2e5da1109a30f115a3a99fd3e2211bfd181e67111a33172164b3.lean/declarations/mulaction-isclosedmap-quotient--5696bd33df50f79ab1e9dc91.md) | 90 | `result-track:5696bd33df50f79ab1e9dc91996295e134bfa77c0a56efcf5150fb3675596026` |
| 4 | `theorem` | [IsOpen.mul_left](../../../../../mathematics/Topology/GeneralTopology/Pointwise/Variant5f89cc20416b2e5da1109a30f115a3a99fd3e2211bfd181e67111a33172164b3.lean/declarations/isopen-mul-left--57ae5d16e81268c40bef5f97.md) | 107 | `result-track:57ae5d16e81268c40bef5f97c7f514246fa6ecb8885673973f326622aa7075b8` |
| 5 | `theorem` | [subset_interior_mul_right](../../../../../mathematics/Topology/GeneralTopology/Pointwise/Variant5f89cc20416b2e5da1109a30f115a3a99fd3e2211bfd181e67111a33172164b3.lean/declarations/subset-interior-mul-right--de147f5d783ae48fe14da6e3.md) | 111 | `result-track:de147f5d783ae48fe14da6e3dcf723e65f284c3787696efec14ba3c4c197c3df` |
| 6 | `theorem` | [subset_interior_mul](../../../../../mathematics/Topology/GeneralTopology/Pointwise/Variant5f89cc20416b2e5da1109a30f115a3a99fd3e2211bfd181e67111a33172164b3.lean/declarations/subset-interior-mul--8b06573c914e26cc8941c566.md) | 115 | `result-track:8b06573c914e26cc8941c56664b472234b0d24738c45d2e3b7331afc56f912d3` |
| 7 | `theorem` | [singleton_mul_mem_nhds](../../../../../mathematics/Topology/GeneralTopology/Pointwise/Variant5f89cc20416b2e5da1109a30f115a3a99fd3e2211bfd181e67111a33172164b3.lean/declarations/singleton-mul-mem-nhds--32230609af11c67701cfcc83.md) | 119 | `result-track:32230609af11c67701cfcc83e2cc0a2ffaae6e1140e7c621e8aecec320064efe` |
| 8 | `theorem` | [singleton_mul_mem_nhds_of_nhds_one](../../../../../mathematics/Topology/GeneralTopology/Pointwise/Variant5f89cc20416b2e5da1109a30f115a3a99fd3e2211bfd181e67111a33172164b3.lean/declarations/singleton-mul-mem-nhds-of-nhds-one--e247ef55fe4aac7bef5abb13.md) | 123 | `result-track:e247ef55fe4aac7bef5abb136cf21b45c57bc8e9a584dcdf6352dbbf2154c306` |
| 9 | `theorem` | [IsOpen.mul_right](../../../../../mathematics/Topology/GeneralTopology/Pointwise/Variant5f89cc20416b2e5da1109a30f115a3a99fd3e2211bfd181e67111a33172164b3.lean/declarations/isopen-mul-right--ed42d8c6811bc2cf5b505b47.md) | 133 | `result-track:ed42d8c6811bc2cf5b505b47ddb71649f9c2ef60c20d848f343d00ec1d3d7a92` |
| 10 | `theorem` | [subset_interior_mul_left](../../../../../mathematics/Topology/GeneralTopology/Pointwise/Variant5f89cc20416b2e5da1109a30f115a3a99fd3e2211bfd181e67111a33172164b3.lean/declarations/subset-interior-mul-left--b9280ed4f01ddbd8189fc1b9.md) | 138 | `result-track:b9280ed4f01ddbd8189fc1b93d807d790828a34477b1b4f3aa67c49ea622de5d` |
| 11 | `theorem` | [subset_interior_mul'](../../../../../mathematics/Topology/GeneralTopology/Pointwise/Variant5f89cc20416b2e5da1109a30f115a3a99fd3e2211bfd181e67111a33172164b3.lean/declarations/subset-interior-mul--80bf9fd73ce4aa534eff9f5d.md) | 142 | `result-track:80bf9fd73ce4aa534eff9f5de7663ec5e718c060561f3ab00520aaabc1760f2a` |
| 12 | `theorem` | [mul_singleton_mem_nhds](../../../../../mathematics/Topology/GeneralTopology/Pointwise/Variant5f89cc20416b2e5da1109a30f115a3a99fd3e2211bfd181e67111a33172164b3.lean/declarations/mul-singleton-mem-nhds--131a3291f48369de2662684d.md) | 146 | `result-track:131a3291f48369de2662684df165177e6272ab6db917844240d16ec7e9be6ea4` |
| 13 | `theorem` | [mul_singleton_mem_nhds_of_nhds_one](../../../../../mathematics/Topology/GeneralTopology/Pointwise/Variant5f89cc20416b2e5da1109a30f115a3a99fd3e2211bfd181e67111a33172164b3.lean/declarations/mul-singleton-mem-nhds-of-nhds-one--01a2dcbb7ebf16f7df05cb35.md) | 151 | `result-track:01a2dcbb7ebf16f7df05cb3563642274daef0e5d80b2df029f56a38ddf340ee2` |
| 14 | `theorem` | [IsOpen.div_left](../../../../../mathematics/Topology/GeneralTopology/Pointwise/Variant5f89cc20416b2e5da1109a30f115a3a99fd3e2211bfd181e67111a33172164b3.lean/declarations/isopen-div-left--4b5ce6c296a1c0ce690d4633.md) | 161 | `result-track:4b5ce6c296a1c0ce690d4633e325c970a55e8d55c4896b7c8b220db477298fab` |
| 15 | `theorem` | [IsOpen.div_right](../../../../../mathematics/Topology/GeneralTopology/Pointwise/Variant5f89cc20416b2e5da1109a30f115a3a99fd3e2211bfd181e67111a33172164b3.lean/declarations/isopen-div-right--1cbd17fc09725f428f02df4b.md) | 166 | `result-track:1cbd17fc09725f428f02df4b1d568c0756296bf9d741ffe627461db201374f77` |
| 16 | `theorem` | [subset_interior_div_left](../../../../../mathematics/Topology/GeneralTopology/Pointwise/Variant5f89cc20416b2e5da1109a30f115a3a99fd3e2211bfd181e67111a33172164b3.lean/declarations/subset-interior-div-left--dff935b102f3a9e941f57906.md) | 171 | `result-track:dff935b102f3a9e941f57906302986e6862e02028a38d02b4ad8c7c99abbcebe` |
| 17 | `theorem` | [subset_interior_div_right](../../../../../mathematics/Topology/GeneralTopology/Pointwise/Variant5f89cc20416b2e5da1109a30f115a3a99fd3e2211bfd181e67111a33172164b3.lean/declarations/subset-interior-div-right--6be57b9a1100257eef733073.md) | 175 | `result-track:6be57b9a1100257eef733073e1931f573f3d0ca76076e573d7a1531dff546d92` |
| 18 | `theorem` | [subset_interior_div](../../../../../mathematics/Topology/GeneralTopology/Pointwise/Variant5f89cc20416b2e5da1109a30f115a3a99fd3e2211bfd181e67111a33172164b3.lean/declarations/subset-interior-div--3fff3778414d05bb67aa9a4e.md) | 179 | `result-track:3fff3778414d05bb67aa9a4ec9f662c3f52b5313a484732e46b6649cb9b7f752` |
| 19 | `theorem` | [IsOpen.mul_closure](../../../../../mathematics/Topology/GeneralTopology/Pointwise/Variant5f89cc20416b2e5da1109a30f115a3a99fd3e2211bfd181e67111a33172164b3.lean/declarations/isopen-mul-closure--cc269d328fe08f988ea47149.md) | 183 | `result-track:cc269d328fe08f988ea47149bf7c366b4a2c1c1b3b958f69eb84ccef1fe5eeeb` |
| 20 | `theorem` | [IsOpen.closure_mul](../../../../../mathematics/Topology/GeneralTopology/Pointwise/Variant5f89cc20416b2e5da1109a30f115a3a99fd3e2211bfd181e67111a33172164b3.lean/declarations/isopen-closure-mul--f8ab81addee5d2787c5a025a.md) | 191 | `result-track:f8ab81addee5d2787c5a025a64b89f6e605e71d4f82936a1a4761f9a9ac839fc` |
| 21 | `theorem` | [IsOpen.div_closure](../../../../../mathematics/Topology/GeneralTopology/Pointwise/Variant5f89cc20416b2e5da1109a30f115a3a99fd3e2211bfd181e67111a33172164b3.lean/declarations/isopen-div-closure--d3910289aa3edba5d20f2fea.md) | 196 | `result-track:d3910289aa3edba5d20f2fea322687ccb272ca67fd6a74f03ef4fe917ed428c0` |
| 22 | `theorem` | [IsOpen.closure_div](../../../../../mathematics/Topology/GeneralTopology/Pointwise/Variant5f89cc20416b2e5da1109a30f115a3a99fd3e2211bfd181e67111a33172164b3.lean/declarations/isopen-closure-div--3381f7bfc4b81865a351b013.md) | 200 | `result-track:3381f7bfc4b81865a351b013d89665830a9cf9f4e251bec7258beb0cad3bcea6` |
| 23 | `theorem` | [IsClosed.mul_left_of_isCompact](../../../../../mathematics/Topology/GeneralTopology/Pointwise/Variant5f89cc20416b2e5da1109a30f115a3a99fd3e2211bfd181e67111a33172164b3.lean/declarations/isclosed-mul-left-of-iscompact--fcd7dccd7d90ccbd12ea5108.md) | 204 | `result-track:fcd7dccd7d90ccbd12ea5108cae6d0cb466bbc453d7a61bdb1b2e91e509874dd` |
| 24 | `theorem` | [IsClosed.mul_right_of_isCompact](../../../../../mathematics/Topology/GeneralTopology/Pointwise/Variant5f89cc20416b2e5da1109a30f115a3a99fd3e2211bfd181e67111a33172164b3.lean/declarations/isclosed-mul-right-of-iscompact--b91c995a1fc34b36327677f4.md) | 208 | `result-track:b91c995a1fc34b36327677f47c108acf9d296cef432918b41fd049cb17e2f225` |
| 25 | `lemma` | [subset_mul_closure_one](../../../../../mathematics/Topology/GeneralTopology/Pointwise/Variant5f89cc20416b2e5da1109a30f115a3a99fd3e2211bfd181e67111a33172164b3.lean/declarations/subset-mul-closure-one--d9c960bd83bd15cba6914f8d.md) | 214 | `result-track:d9c960bd83bd15cba6914f8deae89cb1e0cc29ef685f32b15e4a7fb83e698828` |
| 26 | `lemma` | [IsCompact.mul_closure_one_eq_closure](../../../../../mathematics/Topology/GeneralTopology/Pointwise/Variant5f89cc20416b2e5da1109a30f115a3a99fd3e2211bfd181e67111a33172164b3.lean/declarations/iscompact-mul-closure-one-eq-closure--b911f1e5992ab840677911f2.md) | 220 | `result-track:b911f1e5992ab840677911f290c588dc9bc9171ac4a1117e6e1e2fcf182ec97b` |
| 27 | `lemma` | [IsClosed.mul_closure_one_eq](../../../../../mathematics/Topology/GeneralTopology/Pointwise/Variant5f89cc20416b2e5da1109a30f115a3a99fd3e2211bfd181e67111a33172164b3.lean/declarations/isclosed-mul-closure-one-eq--a52584ecc4de00a46d731f0f.md) | 234 | `result-track:a52584ecc4de00a46d731f0fc178b48069f14e7a93abe1758e552c665b0a213b` |
| 28 | `lemma` | [compl_mul_closure_one_eq](../../../../../mathematics/Topology/GeneralTopology/Pointwise/Variant5f89cc20416b2e5da1109a30f115a3a99fd3e2211bfd181e67111a33172164b3.lean/declarations/compl-mul-closure-one-eq--987a6f8fdc75ec83c8a2d678.md) | 243 | `result-track:987a6f8fdc75ec83c8a2d678bcd345140f5e8a561481b57c44432a614be87ac7` |
| 29 | `lemma` | [compl_mul_closure_one_eq_iff](../../../../../mathematics/Topology/GeneralTopology/Pointwise/Variant5f89cc20416b2e5da1109a30f115a3a99fd3e2211bfd181e67111a33172164b3.lean/declarations/compl-mul-closure-one-eq-iff--f738b94fd4e59e81b07cefe0.md) | 256 | `result-track:f738b94fd4e59e81b07cefe006f996cdf12ee5e4123351ad053040c5a46bba7f` |
| 30 | `lemma` | [IsOpen.mul_closure_one_eq](../../../../../mathematics/Topology/GeneralTopology/Pointwise/Variant5f89cc20416b2e5da1109a30f115a3a99fd3e2211bfd181e67111a33172164b3.lean/declarations/isopen-mul-closure-one-eq--a9db31e2f754fd7db030c08e.md) | 261 | `result-track:a9db31e2f754fd7db030c08ee2aaa52f3b22fc1cbc8be22a0782f69710ca24d2` |
| 31 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Pointwise/Variant5f89cc20416b2e5da1109a30f115a3a99fd3e2211bfd181e67111a33172164b3.lean/declarations/instance--d3dc6d5cca81fbe6b1e24628.md) | 274 | `declaration-track:d3dc6d5cca81fbe6b1e246280802b6102ae7f7b1aa74b9043434a79ccf590243` |
| 32 | `theorem` | [group_inseparable_iff](../../../../../mathematics/Topology/GeneralTopology/Pointwise/Variant5f89cc20416b2e5da1109a30f115a3a99fd3e2211bfd181e67111a33172164b3.lean/declarations/group-inseparable-iff--bb4fb63075ef4a87d4664aee.md) | 290 | `result-track:bb4fb63075ef4a87d4664aee3dc008a123853a006ba12f421e2905c385cd291c` |
| 33 | `theorem` | [IsTopologicalGroup.t2Space_iff_one_closed](../../../../../mathematics/Topology/GeneralTopology/Pointwise/Variant5f89cc20416b2e5da1109a30f115a3a99fd3e2211bfd181e67111a33172164b3.lean/declarations/istopologicalgroup-t2space-iff-one-closed--4ff4da614e0e1bd53f8398e1.md) | 296 | `result-track:4ff4da614e0e1bd53f8398e1ac265b01448333d6ce3d726ee8e54954f9481dfa` |
| 34 | `theorem` | [IsTopologicalGroup.t2Space_of_one_sep](../../../../../mathematics/Topology/GeneralTopology/Pointwise/Variant5f89cc20416b2e5da1109a30f115a3a99fd3e2211bfd181e67111a33172164b3.lean/declarations/istopologicalgroup-t2space-of-one-sep--53d55634d3bae5d46e16ea52.md) | 301 | `result-track:53d55634d3bae5d46e16ea5292b72d77adcc1b4b17ef9d893d3eae43fe7a28b7` |
| 35 | `theorem` | [exists_closed_nhds_one_inv_eq_mul_subset](../../../../../mathematics/Topology/GeneralTopology/Pointwise/Variant5f89cc20416b2e5da1109a30f115a3a99fd3e2211bfd181e67111a33172164b3.lean/declarations/exists-closed-nhds-one-inv-eq-mul-subset--319cf1f0f5a10ff9fb0e0f0b.md) | 312 | `result-track:319cf1f0f5a10ff9fb0e0f0ba0ae6cb926b75f8239118e1c0d93cfc002a1042c` |
| 36 | `theorem` | [IsCompact.locallyCompactSpace_of_mem_nhds_of_group](../../../../../mathematics/Topology/GeneralTopology/Pointwise/Variant5f89cc20416b2e5da1109a30f115a3a99fd3e2211bfd181e67111a33172164b3.lean/declarations/iscompact-locallycompactspace-of-mem-nhds-of-group--c6ad632876a13403e69a9537.md) | 333 | `result-track:c6ad632876a13403e69a9537c9563832d9d9c9b933fe77c5c70bb9eb4e2bb10c` |
| 37 | `theorem` | [eq_zero_or_locallyCompactSpace_of_support_subset_isCompact_of_group](../../../../../mathematics/Topology/GeneralTopology/Pointwise/Variant5f89cc20416b2e5da1109a30f115a3a99fd3e2211bfd181e67111a33172164b3.lean/declarations/eq-zero-or-locallycompactspace-of-support-subset-iscompact-of-group--b397c066bb3333a15566326e.md) | 346 | `result-track:b397c066bb3333a15566326ecbebbf7ba65b8a03e4ee5776d014ecce29d4e976` |
| 38 | `theorem` | [HasCompactSupport.eq_zero_or_locallyCompactSpace_of_group](../../../../../mathematics/Topology/GeneralTopology/Pointwise/Variant5f89cc20416b2e5da1109a30f115a3a99fd3e2211bfd181e67111a33172164b3.lean/declarations/hascompactsupport-eq-zero-or-locallycompactspace-of-group--a236c16e933cb4ed6fc91f3d.md) | 363 | `result-track:a236c16e933cb4ed6fc91f3d091e7f80bb5160cbea0d7e4b8a732bd6527f85cf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
