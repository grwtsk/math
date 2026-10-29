# Verification target: Finset Option Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "43517fa2fd1887a0dada35d1456da3464f2761a9",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Option/Variant396033ede064c3670458b05283ce72ac7bfd4d4fbc1c70f2f4f497a88dd71357.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetOptionNamespaced.lean/index.md) · [Full source](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetOptionNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `43517fa2fd1887a0dada35d1456da3464f2761a9`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Option/Variant396033ede064c3670458b05283ce72ac7bfd4d4fbc1c70f2f4f497a88dd71357.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Option/Variant396033ede064c3670458b05283ce72ac7bfd4d4fbc1c70f2f4f497a88dd71357.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finset.Card` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [toFinset](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetOptionNamespaced.lean/declarations/tofinset.md) | 44 | `declaration-track:ed4bc2c0f8d0ead33d303689b6ba33ab95f2bec96c29354d8bfd71e79ea26d32` |
| 2 | `theorem` | [toFinset_none](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetOptionNamespaced.lean/declarations/tofinset-none.md) | 49 | `result-track:48828016f2ff4dc3c10967ee716194b5ca48443d5193698d08779a11619c691b` |
| 3 | `theorem` | [toFinset_some](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetOptionNamespaced.lean/declarations/tofinset-some.md) | 54 | `result-track:60d8e0432b3972b5229c13e96350b18337b2af74c25d285f2745affeb1163b6b` |
| 4 | `theorem` | [mem_toFinset](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetOptionNamespaced.lean/declarations/mem-tofinset.md) | 59 | `result-track:3a985eaa5f28dff7c4e4f26273b00afe38fb9848ee2ee8dc1c37539d1311d72a` |
| 5 | `theorem` | [card_toFinset](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetOptionNamespaced.lean/declarations/card-tofinset.md) | 63 | `result-track:8b3c485003a0fad7599e2ef9909a7a4ce4c39ae7ea01fe54ea5323f0d10ccf50` |
| 6 | `def` | [insertNone](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetOptionNamespaced.lean/declarations/insertnone.md) | 72 | `declaration-track:5feeb3ba6eb23e943b7c29cf065e4ce8d0bacd7c4fa7aa5f18b5f6d06e97982f` |
| 7 | `theorem` | [mem_insertNone](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetOptionNamespaced.lean/declarations/mem-insertnone.md) | 78 | `result-track:c6bdb20e9c9a94c118f72cb401d1a0942e263b4ac3b8381f7db4ae31782babec` |
| 8 | `theorem` | [some_mem_insertNone](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetOptionNamespaced.lean/declarations/some-mem-insertnone.md) | 83 | `result-track:f50f343c85066e765fa9366ce21a34cb9ef3283d8d86a9d9637d6434b58fa5b3` |
| 9 | `theorem` | [card_insertNone](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetOptionNamespaced.lean/declarations/card-insertnone.md) | 87 | `result-track:21c4980bd105bd0c83063f7c433c4bb3773936f750e220e0fcd4b109109e8d73` |
| 10 | `def` | [eraseNone](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetOptionNamespaced.lean/declarations/erasenone.md) | 92 | `declaration-track:38c59c31c80e3b0ee60df1a644b12192a5f034ed70f6ad02dbc688c48ab35c58` |
| 11 | `theorem` | [mem_eraseNone](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetOptionNamespaced.lean/declarations/mem-erasenone.md) | 98 | `result-track:cfcfad39f34b9bf2363dcfaa2f19e132ce6361bad91a89b2c3bb05de3d15e9ac` |
| 12 | `theorem` | [eraseNone_eq_biUnion](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetOptionNamespaced.lean/declarations/erasenone-eq-biunion.md) | 102 | `result-track:03aa5718a1d3111315cc31239005503f62f1ab20bac2c8f41bd0f807cbcb1abb` |
| 13 | `theorem` | [eraseNone_map_some](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetOptionNamespaced.lean/declarations/erasenone-map-some.md) | 109 | `result-track:5540b219487c4981700a30e3b896dae9d47518f32d900107fc1b370ecf67f18d` |
| 14 | `theorem` | [eraseNone_image_some](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetOptionNamespaced.lean/declarations/erasenone-image-some.md) | 115 | `result-track:7d3781b4b49a4ced85a629bbf3bc40cc1afec9b0d72b2a463f356eb3b4ac1221` |
| 15 | `theorem` | [coe_eraseNone](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetOptionNamespaced.lean/declarations/coe-erasenone.md) | 120 | `result-track:1af41a02ccc66a121cc76ee38ae35fe82932f647da5e7a014ee9610f2e8b9275` |
| 16 | `theorem` | [eraseNone_union](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetOptionNamespaced.lean/declarations/erasenone-union.md) | 125 | `result-track:d609c019c44ac4482d0ed9e790b62e540eade05cb9af6da910daf020681bffa4` |
| 17 | `theorem` | [eraseNone_inter](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetOptionNamespaced.lean/declarations/erasenone-inter.md) | 132 | `result-track:6542893179854a00564e40402b816707fa9a6b1034b82e87851d40da1c7f7d3c` |
| 18 | `theorem` | [eraseNone_empty](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetOptionNamespaced.lean/declarations/erasenone-empty.md) | 139 | `result-track:13b2f864d223026669e39a8fe18dff1bdb1850ccbf4a9a0ae64631f87e0e2973` |
| 19 | `theorem` | [eraseNone_none](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetOptionNamespaced.lean/declarations/erasenone-none.md) | 145 | `result-track:9e2ba28cbd43e21cb3ae187065bf4d5f23ff3e238de6b110785278d0e9c3cba0` |
| 20 | `theorem` | [image_some_eraseNone](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetOptionNamespaced.lean/declarations/image-some-erasenone.md) | 151 | `result-track:afd147f87feb370a43e0eb3df70f2c1b62e707ccde2d37b04b79efc3b49b4adb` |
| 21 | `theorem` | [map_some_eraseNone](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetOptionNamespaced.lean/declarations/map-some-erasenone.md) | 156 | `result-track:908309a50efefa5be79f335c7e4dfdd165510ec5762c1458b5b28bb1643e123d` |
| 22 | `theorem` | [insertNone_eraseNone](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetOptionNamespaced.lean/declarations/insertnone-erasenone.md) | 162 | `result-track:ac894297a42826abb9c53ffd8da600f32b1e448b779955d3c901fceedf21c392` |
| 23 | `theorem` | [eraseNone_insertNone](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetOptionNamespaced.lean/declarations/erasenone-insertnone.md) | 167 | `result-track:8faf347a3e2809e72fccedd38b48cddd1457648729e1e2f751d4e7d99d1e2b25` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5e46ca3f72035085ae35eaf6c603498486a8ada523d5d936b976e0a5b9932104 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Option/Variant396033ede064c3670458b05283ce72ac7bfd4d4fbc1c70f2f4f497a88dd71357.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/Option/Variant396033ede064c3670458b05283ce72ac7bfd4d4fbc1c70f2f4f497a88dd71357.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
