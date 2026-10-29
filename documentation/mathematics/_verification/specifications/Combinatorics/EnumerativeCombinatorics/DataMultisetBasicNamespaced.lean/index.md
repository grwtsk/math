# Verification target: Data Multiset Basic Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ddbb08c3b4a83d768f390a5defc01e9ff3838a82",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variantf87328903bc8e406bd618758d59021dbeb172c5ecd4e61906ebebffd4a02ba12.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../Combinatorics/EnumerativeCombinatorics/DataMultisetBasicNamespaced.lean/index.md) · [Full source](../../../../../Combinatorics/EnumerativeCombinatorics/DataMultisetBasicNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ddbb08c3b4a83d768f390a5defc01e9ff3838a82`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variantf87328903bc8e406bd618758d59021dbeb172c5ecd4e61906ebebffd4a02ba12.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Basic/Variantf87328903bc8e406bd618758d59021dbeb172c5ecd4e61906ebebffd4a02ba12.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Multiset.ZeroCons` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [toList](../../../../../Combinatorics/EnumerativeCombinatorics/DataMultisetBasicNamespaced.lean/declarations/tolist.md) | 37 | `declaration-track:a4ea905a4593aee55d80a3d4b5ddc8c6137da1d646cc0bb40a672f2cbbfa1493` |
| 2 | `theorem` | [coe_toList](../../../../../Combinatorics/EnumerativeCombinatorics/DataMultisetBasicNamespaced.lean/declarations/coe-tolist.md) | 41 | `result-track:449e2340a00dd06bbd160e47743197a6b1ae70355f59cb981d80b179067784ce` |
| 3 | `theorem` | [toList_eq_nil](../../../../../Combinatorics/EnumerativeCombinatorics/DataMultisetBasicNamespaced.lean/declarations/tolist-eq-nil.md) | 45 | `result-track:7070dfa3adfe6046f5c063892969990c7f4fc8d63a716ba44304b0c3235a3610` |
| 4 | `theorem` | [empty_toList](../../../../../Combinatorics/EnumerativeCombinatorics/DataMultisetBasicNamespaced.lean/declarations/empty-tolist.md) | 48 | `result-track:4688e00818b83eeb80824eb3ea85b9e8a2110747e916f74673ad9ca57804d516` |
| 5 | `theorem` | [toList_zero](../../../../../Combinatorics/EnumerativeCombinatorics/DataMultisetBasicNamespaced.lean/declarations/tolist-zero.md) | 51 | `result-track:58b4cce0d06addaac45f1f1ecaed736401959509c6f0f1c482e89883629efb05` |
| 6 | `theorem` | [mem_toList](../../../../../Combinatorics/EnumerativeCombinatorics/DataMultisetBasicNamespaced.lean/declarations/mem-tolist.md) | 55 | `result-track:65e1a194da63f16b9f487b0d2c66a655855ddb9cf79ef5388e5a6d8ce5e30223` |
| 7 | `theorem` | [toList_eq_singleton_iff](../../../../../Combinatorics/EnumerativeCombinatorics/DataMultisetBasicNamespaced.lean/declarations/tolist-eq-singleton-iff.md) | 59 | `result-track:da80856e139cdfd005ea559b240f2d0ca6fedb1afe03933304b5cc4eabfe1221` |
| 8 | `theorem` | [toList_singleton](../../../../../Combinatorics/EnumerativeCombinatorics/DataMultisetBasicNamespaced.lean/declarations/tolist-singleton.md) | 63 | `result-track:b298558a08e1e22abd7f127364875178299737cd2a6d4fd858ce410b76ab7bae` |
| 9 | `theorem` | [length_toList](../../../../../Combinatorics/EnumerativeCombinatorics/DataMultisetBasicNamespaced.lean/declarations/length-tolist.md) | 67 | `result-track:e4a78f41aea325cc474b4166cf1277b55218c686ebbf97134099ef0e9d0728f2` |
| 10 | `def` | [strongInductionOn](../../../../../Combinatorics/EnumerativeCombinatorics/DataMultisetBasicNamespaced.lean/declarations/stronginductionon.md) | 76 | `declaration-track:3db331ae56fa4c80f3c27c4ddd3f38b5f9e063d924b05b23e598d6a736017b7c` |
| 11 | `theorem` | [strongInductionOn_eq](../../../../../Combinatorics/EnumerativeCombinatorics/DataMultisetBasicNamespaced.lean/declarations/stronginductionon-eq.md) | 83 | `result-track:5649cb4fd94ceed9a1af53215a4dcac99b272f68e1de7a3b11bb411070b3aa2b` |
| 12 | `theorem` | [case_strongInductionOn](../../../../../Combinatorics/EnumerativeCombinatorics/DataMultisetBasicNamespaced.lean/declarations/case-stronginductionon.md) | 88 | `result-track:681fcddae02b424a7d6031bef3d87f5235330da70b5b1e780b0773257860348e` |
| 13 | `def` | [strongDownwardInduction](../../../../../Combinatorics/EnumerativeCombinatorics/DataMultisetBasicNamespaced.lean/declarations/strongdownwardinduction.md) | 98 | `declaration-track:6f74081f8533600e09d3a56559372c087d0382149abe37e8cd02e2c87224293e` |
| 14 | `theorem` | [strongDownwardInduction_eq](../../../../../Combinatorics/EnumerativeCombinatorics/DataMultisetBasicNamespaced.lean/declarations/strongdownwardinduction-eq.md) | 107 | `result-track:d0db832b16cb8f57a1dc0d87146263d56f66c28be611e9e4282d3e4533a849f4` |
| 15 | `def` | [strongDownwardInductionOn](../../../../../Combinatorics/EnumerativeCombinatorics/DataMultisetBasicNamespaced.lean/declarations/strongdownwardinductionon.md) | 115 | `declaration-track:af0f8a6a76563a25b77a58b78fa01df6056c3f8a94f41d9d2f30cfb47f02d19c` |
| 16 | `theorem` | [strongDownwardInductionOn_eq](../../../../../Combinatorics/EnumerativeCombinatorics/DataMultisetBasicNamespaced.lean/declarations/strongdownwardinductionon-eq.md) | 121 | `result-track:d04cfa144123a5e88b32d1f4f6a90fd318c67e10a656202d6fce3b8d148e8828` |
| 17 | `def` | [chooseX](../../../../../Combinatorics/EnumerativeCombinatorics/DataMultisetBasicNamespaced.lean/declarations/choosex.md) | 133 | `declaration-track:1f73061b2177f1d1e4c65b52df2e0b2fd8f90361f39d590f0a10cec8a19cc1e9` |
| 18 | `def` | [choose](../../../../../Combinatorics/EnumerativeCombinatorics/DataMultisetBasicNamespaced.lean/declarations/choose.md) | 150 | `declaration-track:483b8c1119d29456494fe3b5e0288b99ccdf105f60571478ec03944927120bee` |
| 19 | `theorem` | [choose_spec](../../../../../Combinatorics/EnumerativeCombinatorics/DataMultisetBasicNamespaced.lean/declarations/choose-spec.md) | 153 | `result-track:a8c8f5c74d810461d6304c61322f1d00bfdb3c9676ae7edbd4230b53c90f41a2` |
| 20 | `theorem` | [choose_mem](../../../../../Combinatorics/EnumerativeCombinatorics/DataMultisetBasicNamespaced.lean/declarations/choose-mem.md) | 156 | `result-track:a15eafb36e2e4e20748de07fbb7f7ab499f8a0d2a1a1fe4de47e45371ee22f28` |
| 21 | `theorem` | [choose_property](../../../../../Combinatorics/EnumerativeCombinatorics/DataMultisetBasicNamespaced.lean/declarations/choose-property.md) | 159 | `result-track:7551c7b16449ed728fd019fc851012dcd036aa5ffa89c72e3f0803866f424783` |
| 22 | `def` | [subsingletonEquiv](../../../../../Combinatorics/EnumerativeCombinatorics/DataMultisetBasicNamespaced.lean/declarations/subsingletonequiv.md) | 166 | `declaration-track:3ccc9f697da139ae6cd13b98161c047653ec74862b5d4bdd27e6948f184ab8fb` |
| 23 | `theorem` | [coe_subsingletonEquiv](../../../../../Combinatorics/EnumerativeCombinatorics/DataMultisetBasicNamespaced.lean/declarations/coe-subsingletonequiv.md) | 175 | `result-track:dc723adbe78a8e96668484b15b53d01ff3917f25be24d408523505cdbeca34e2` |
| 24 | `theorem` | [sizeOf_lt_sizeOf_of_mem](../../../../../Combinatorics/EnumerativeCombinatorics/DataMultisetBasicNamespaced.lean/declarations/sizeof-lt-sizeof-of-mem.md) | 183 | `result-track:8da20aafdf798848ea6454473c2b821c41ff2fca5e55a5332ac4e8ee06173e5d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e5003793076ddbf68dfb782999396736b93e1eb9dd4cc4f279f9e1b6ac119ffc -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variantf87328903bc8e406bd618758d59021dbeb172c5ecd4e61906ebebffd4a02ba12.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/Basic/Variantf87328903bc8e406bd618758d59021dbeb172c5ecd4e61906ebebffd4a02ba12.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
