# Verification target: Subslice Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "649c9a7df2be15285a818fcd51d4bccd978709d7",
  "lexical_observation_count": 40,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Subslice/Variant5be053d16c6a8fc85cacce8d81c0bdb2f062ab9db93262e8175801077c108e57.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/SubsliceNamespacedPublic.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/SubsliceNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `649c9a7df2be15285a818fcd51d4bccd978709d7`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Subslice/Variant5be053d16c6a8fc85cacce8d81c0bdb2f062ab9db93262e8175801077c108e57.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Subslice/Variant5be053d16c6a8fc85cacce8d81c0bdb2f062ab9db93262e8175801077c108e57.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.String.Lemmas.IsEmpty` — import line 15; external provider; requires a separately pinned dependency.
- `Init.Data.String.Lemmas.Basic` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Subslice](../../../../../ComputerScience/AlgorithmsInComputerScience/SubsliceNamespacedPublic.lean/declarations/subslice-source-edition-2.md) | 41 | `declaration-track:9f86a7a92d2ee4a05f8227df4db2463c4db763dea78c9f59f403cb153340007b` |
| 2 | `instance` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/SubsliceNamespacedPublic.lean/declarations/instance.md) | 49 | `declaration-track:02d97008f3f0dd72e9b13db155e132c1ee10a4b7936536427979ffe0751f7eca` |
| 3 | `def` | [toSlice](../../../../../ComputerScience/AlgorithmsInComputerScience/SubsliceNamespacedPublic.lean/declarations/toslice.md) | 58 | `declaration-track:497aa2bd81bb1ce2414dce1ed20037b605f3284a46000a43fa2b47f5b4c3e2b9` |
| 4 | `theorem` | [str_toSlice](../../../../../ComputerScience/AlgorithmsInComputerScience/SubsliceNamespacedPublic.lean/declarations/str-toslice.md) | 62 | `result-track:90bb5a31865b03fd8aa3b832d0dd351c344091bbc75539540ad38c27eeb6a41c` |
| 5 | `theorem` | [startInclusive_toSlice](../../../../../ComputerScience/AlgorithmsInComputerScience/SubsliceNamespacedPublic.lean/declarations/startinclusive-toslice.md) | 65 | `result-track:17078f0bbc75c0aed5be7500d46d702be708e4cb8eada37fc0037c3b413c6f1b` |
| 6 | `theorem` | [endExclusive_toSlice](../../../../../ComputerScience/AlgorithmsInComputerScience/SubsliceNamespacedPublic.lean/declarations/endexclusive-toslice.md) | 69 | `result-track:8baa1700fc06fd47723bfa52d7610a620e2cad59e91a487944d4b736b8daca94` |
| 7 | `theorem` | [isEmpty_toSlice_iff](../../../../../ComputerScience/AlgorithmsInComputerScience/SubsliceNamespacedPublic.lean/declarations/isempty-toslice-iff.md) | 73 | `result-track:5c97c89133f3babb4527ea7b84389678601dfd3a1671fccce31bf7b770bfb031` |
| 8 | `instance` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/SubsliceNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 77 | `declaration-track:477dfd6346ce4e2620625f93eb58278350c09da678d7c2f1d753f8fbca36bcae` |
| 9 | `def` | [copy](../../../../../ComputerScience/AlgorithmsInComputerScience/SubsliceNamespacedPublic.lean/declarations/copy.md) | 84 | `declaration-track:7a9dfcf735f2dfb0a7d98c0ab6136d123c8eb134d8ac3413a1ba1e4ed6c6841c` |
| 10 | `def` | [toString](../../../../../ComputerScience/AlgorithmsInComputerScience/SubsliceNamespacedPublic.lean/declarations/tostring.md) | 88 | `declaration-track:c14aae917d2565a7248976a54a66bb334c1b0ed05ed2a8d16df76c6de975be17` |
| 11 | `instance` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/SubsliceNamespacedPublic.lean/declarations/instance-source-edition-3.md) | 91 | `declaration-track:fb5d63172a4031b13a8ed0ecd3ec5e06a2f13bc033d1de0bde4dd143688040b1` |
| 12 | `theorem` | [copy_eq](../../../../../ComputerScience/AlgorithmsInComputerScience/SubsliceNamespacedPublic.lean/declarations/copy-eq.md) | 95 | `result-track:e939550d4edbbaf1885386d090ac0c262239f30f18f3d9af0cede9d4aaeba2c1` |
| 13 | `theorem` | [toString_eq](../../../../../ComputerScience/AlgorithmsInComputerScience/SubsliceNamespacedPublic.lean/declarations/tostring-eq.md) | 98 | `result-track:3ed380f96cdd55b0f8a4f034d7c82d965ca4703897e815bc174e7446586aadee` |
| 14 | `theorem` | [toStringToString_eq](../../../../../ComputerScience/AlgorithmsInComputerScience/SubsliceNamespacedPublic.lean/declarations/tostringtostring-eq.md) | 101 | `result-track:8857d8dd16ef7c6ef69308603e7370042762c2d3480d68f687919539d64b0a90` |
| 15 | `def` | [subslice](../../../../../ComputerScience/AlgorithmsInComputerScience/SubsliceNamespacedPublic.lean/declarations/subslice-source-edition-3.md) | 111 | `declaration-track:cec54d3bcabe3a0e00f9f077c22119c779397092f4dfc41755a558b35a4d887d` |
| 16 | `theorem` | [toSlice_subslice](../../../../../ComputerScience/AlgorithmsInComputerScience/SubsliceNamespacedPublic.lean/declarations/toslice-subslice.md) | 117 | `result-track:ca1e2ea90b56a4e2c1b29077e299433125e5ca1a30c59764f51562cc7ae37184` |
| 17 | `theorem` | [startInclusive_subslice](../../../../../ComputerScience/AlgorithmsInComputerScience/SubsliceNamespacedPublic.lean/declarations/startinclusive-subslice.md) | 121 | `result-track:8a7e1fd8a9ed79dc992da461684a53b86801f3e37209a14dfa9619a17ddf057c` |
| 18 | `theorem` | [endExclusive_subslice](../../../../../ComputerScience/AlgorithmsInComputerScience/SubsliceNamespacedPublic.lean/declarations/endexclusive-subslice.md) | 125 | `result-track:532ad490b94f4dc51a285276a4096461b7ccff68d9ab534eb5e52ef6561febfd` |
| 19 | `def` | [subslice!](../../../../../ComputerScience/AlgorithmsInComputerScience/SubsliceNamespacedPublic.lean/declarations/subslice.md) | 132 | `declaration-track:823c4416409512d2f5aca86cf2b52fca0c595bf535fee002bb8e6f14a46c98c2` |
| 20 | `theorem` | [subslice!_eq_subslice](../../../../../ComputerScience/AlgorithmsInComputerScience/SubsliceNamespacedPublic.lean/declarations/subslice-eq-subslice.md) | 138 | `result-track:6e5f48bdb4f6d2dc3e1f1e11ec3dfaa57fd8a4b1e0399360994f23ac3c476462` |
| 21 | `def` | [subsliceFrom](../../../../../ComputerScience/AlgorithmsInComputerScience/SubsliceNamespacedPublic.lean/declarations/subslicefrom.md) | 147 | `declaration-track:893c012818e590cd1c809d632b16499916b1cb6c02c93ecdf9dad094c2ec85e4` |
| 22 | `theorem` | [startInclusive_subsliceFrom](../../../../../ComputerScience/AlgorithmsInComputerScience/SubsliceNamespacedPublic.lean/declarations/startinclusive-subslicefrom.md) | 151 | `result-track:6b8318bf462b359e31f6b6b401c3467e5a6aa4ec4d19b6468bd99bd19c3e6aeb` |
| 23 | `theorem` | [endExclusive_subsliceFrom](../../../../../ComputerScience/AlgorithmsInComputerScience/SubsliceNamespacedPublic.lean/declarations/endexclusive-subslicefrom.md) | 155 | `result-track:077824667d6fc48ceb3baaff5bfb240f843d6a2dd0e06c8102a735ddec91f159` |
| 24 | `theorem` | [subslice_endPos](../../../../../ComputerScience/AlgorithmsInComputerScience/SubsliceNamespacedPublic.lean/declarations/subslice-endpos.md) | 159 | `result-track:798e73d78f669456823cac616d9e98be7c4bed3e5dd4b12d0124f95f04c93e88` |
| 25 | `theorem` | [toSlice_subsliceFrom](../../../../../ComputerScience/AlgorithmsInComputerScience/SubsliceNamespacedPublic.lean/declarations/toslice-subslicefrom.md) | 163 | `result-track:05f82faa41abe761bb8d9e9139923e244dd4913dc91a99330c76ffe0bb2c32df` |
| 26 | `def` | [toSubslice](../../../../../ComputerScience/AlgorithmsInComputerScience/SubsliceNamespacedPublic.lean/declarations/tosubslice.md) | 169 | `declaration-track:b143b97030462e5c3bdf4b3748cc9857980d74fc2e0def9d28fcedb3d0e1dab9` |
| 27 | `theorem` | [startInclusive_toSubslice](../../../../../ComputerScience/AlgorithmsInComputerScience/SubsliceNamespacedPublic.lean/declarations/startinclusive-tosubslice.md) | 173 | `result-track:d14584ae1441adda7d3738eaf648bf6d45e45aba326b849d6643ed41ba5eb1b3` |
| 28 | `theorem` | [endExclusive_toSubslice](../../../../../ComputerScience/AlgorithmsInComputerScience/SubsliceNamespacedPublic.lean/declarations/endexclusive-tosubslice.md) | 177 | `result-track:d2de72f2bdafa2b53ba8cbf6be2e5baab93e83bbdf1d01b7714826605faac3b1` |
| 29 | `def` | [ofSliceFrom](../../../../../ComputerScience/AlgorithmsInComputerScience/SubsliceNamespacedPublic.lean/declarations/ofslicefrom.md) | 188 | `declaration-track:e45d34a0797797437b31ae2c6fccb204d373a5b54a9486dfce3dbcecd753ddd3` |
| 30 | `theorem` | [startInclusive_ofSliceFrom](../../../../../ComputerScience/AlgorithmsInComputerScience/SubsliceNamespacedPublic.lean/declarations/startinclusive-ofslicefrom.md) | 195 | `result-track:68c5a9794ca3d3843b5ff05acaec1116893d3e1072624eda805b8fae6eb03789` |
| 31 | `theorem` | [endExclusive_ofSliceFrom](../../../../../ComputerScience/AlgorithmsInComputerScience/SubsliceNamespacedPublic.lean/declarations/endexclusive-ofslicefrom.md) | 199 | `result-track:57da391a658c97d340bc3071040e139dd5c8747f4644bd93fa4d94651b77bb4f` |
| 32 | `def` | [extendLeft](../../../../../ComputerScience/AlgorithmsInComputerScience/SubsliceNamespacedPublic.lean/declarations/extendleft.md) | 208 | `declaration-track:1c778438e708ae49dcdf21ab4d128cea83ba27fc6bf9fbd38ba16f83508e1536` |
| 33 | `theorem` | [startInclusive_extendLeft](../../../../../ComputerScience/AlgorithmsInComputerScience/SubsliceNamespacedPublic.lean/declarations/startinclusive-extendleft.md) | 215 | `result-track:41613ea386689c54f8dc2c8bcd9c51de2bf2db8a4ad0864848a28df1c46c2e09` |
| 34 | `theorem` | [endExclusive_extendLeft](../../../../../ComputerScience/AlgorithmsInComputerScience/SubsliceNamespacedPublic.lean/declarations/endexclusive-extendleft.md) | 219 | `result-track:e4b16057eeab788051e22771d1e19a77f83f583d00117ac49044a32f587b11f4` |
| 35 | `theorem` | [extendLeft_extendLeft](../../../../../ComputerScience/AlgorithmsInComputerScience/SubsliceNamespacedPublic.lean/declarations/extendleft-extendleft.md) | 223 | `result-track:b5ccbdfb86bbfaa85f40a56fd758ed22d3fe976d8a221404694652a698639605` |
| 36 | `theorem` | [extendLeft_self](../../../../../ComputerScience/AlgorithmsInComputerScience/SubsliceNamespacedPublic.lean/declarations/extendleft-self.md) | 229 | `result-track:4cb9c8272486c498b823fae5b5e597a45f4ea99f51f1f120af0e099fb518e060` |
| 37 | `def` | [cast](../../../../../ComputerScience/AlgorithmsInComputerScience/SubsliceNamespacedPublic.lean/declarations/cast.md) | 238 | `declaration-track:6b5adc0ff61040f080e8bdf3e6338496a0fee5b1997def2b975996479dc7216a` |
| 38 | `theorem` | [startInclusive_cast](../../../../../ComputerScience/AlgorithmsInComputerScience/SubsliceNamespacedPublic.lean/declarations/startinclusive-cast.md) | 244 | `result-track:ea83d45b0a146f79001ec1d1d6aa71a54a5fff553e75159eb0b51cf8aedf752c` |
| 39 | `theorem` | [endExclusive_cast](../../../../../ComputerScience/AlgorithmsInComputerScience/SubsliceNamespacedPublic.lean/declarations/endexclusive-cast.md) | 248 | `result-track:9988df2b395bfc399534af8be4abf44c08ae081d765e1c99a9b0267f5e687d8c` |
| 40 | `theorem` | [cast_rfl](../../../../../ComputerScience/AlgorithmsInComputerScience/SubsliceNamespacedPublic.lean/declarations/cast-rfl.md) | 252 | `result-track:797694cb422d89b2fb669ed183ad759ce8aba62b049df928b30ce79e58c61651` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f00fd95f3d4df609c9f5da1c5ca8cf890194078c4ff780763e04f64d7b5a9ddd -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Subslice/Variant5be053d16c6a8fc85cacce8d81c0bdb2f062ab9db93262e8175801077c108e57.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Subslice/Variant5be053d16c6a8fc85cacce8d81c0bdb2f062ab9db93262e8175801077c108e57.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
