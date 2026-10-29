# Verification target: DFinsupp Ne Locus Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5190779975a781e78070742dfb505b56aa42f532",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/NeLocus/Variant3023d9aad31f8557da512a96d9e2e96359a95d78a4234bea0a1e35d1a73d4691.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppNeLocusNamespaced.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppNeLocusNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5190779975a781e78070742dfb505b56aa42f532`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/NeLocus/Variant3023d9aad31f8557da512a96d9e2e96359a95d78a4234bea0a1e35d1a73d4691.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/NeLocus/Variant3023d9aad31f8557da512a96d9e2e96359a95d78a4234bea0a1e35d1a73d4691.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.DFinsupp.Defs` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [neLocus](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppNeLocusNamespaced.lean/declarations/nelocus.md) | 42 | `declaration-track:2af836ddd34df44c24fa92b5104def2b42b0fcc67f5169ac4fae6fb5298a29d3` |
| 2 | `theorem` | [mem_neLocus](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppNeLocusNamespaced.lean/declarations/mem-nelocus.md) | 46 | `result-track:5aea5144a1a58d364eb48ba78575bfb1d1eb34986b3ed58e106d5987fd442ea7` |
| 3 | `theorem` | [notMem_neLocus](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppNeLocusNamespaced.lean/declarations/notmem-nelocus.md) | 50 | `result-track:3173bb3b255ddea658efe3e86a7e1399c468ba8b064dff459cfd45cb4031b3db` |
| 4 | `theorem` | [coe_neLocus](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppNeLocusNamespaced.lean/declarations/coe-nelocus.md) | 56 | `result-track:c48c1eac00b2d818d78aa8a4600f05e836a2b5b0b786d1d3e05c198ac383c07f` |
| 5 | `theorem` | [neLocus_eq_empty](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppNeLocusNamespaced.lean/declarations/nelocus-eq-empty.md) | 60 | `result-track:87c363629f8da0e52bfe79fb04f7d0a540850a82a3e4eb4e361a8d10c46194be` |
| 6 | `theorem` | [nonempty_neLocus_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppNeLocusNamespaced.lean/declarations/nonempty-nelocus-iff.md) | 66 | `result-track:6c93a2cfe97df0f7d1b181635da3cfd0e6b50589285350331595ae4f90a91eb8` |
| 7 | `theorem` | [neLocus_comm](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppNeLocusNamespaced.lean/declarations/nelocus-comm.md) | 69 | `result-track:09d386cc6200bdb87aea1d9609dfb1819d50c0ada804f2c05ab670b97231e656` |
| 8 | `theorem` | [neLocus_zero_right](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppNeLocusNamespaced.lean/declarations/nelocus-zero-right.md) | 73 | `result-track:0f8fa7debd9ca5a7947682c4b2725758884f3e15e1608803741113cb5dbcddae` |
| 9 | `theorem` | [neLocus_zero_left](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppNeLocusNamespaced.lean/declarations/nelocus-zero-left.md) | 78 | `result-track:95133d5a9ddfbe0f3d45b1617868ee4cee539fc8ecf17766f16c36fd31fa2c7f` |
| 10 | `theorem` | [subset_mapRange_neLocus](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppNeLocusNamespaced.lean/declarations/subset-maprange-nelocus.md) | 87 | `result-track:69dfcafb172670cc495d745b19c11cf4556340eeb4f689e430609be8ef14e86f` |
| 11 | `theorem` | [zipWith_neLocus_eq_left](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppNeLocusNamespaced.lean/declarations/zipwith-nelocus-eq-left.md) | 92 | `result-track:cbf7285d84d6f300c687ed31d9351cbbbf1fed91c1c0f30aaf00882c2aff7a6f` |
| 12 | `theorem` | [zipWith_neLocus_eq_right](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppNeLocusNamespaced.lean/declarations/zipwith-nelocus-eq-right.md) | 99 | `result-track:3c03549b7536762ad6179dd9507688f0527b8407806af49378622304bfe6bbd9` |
| 13 | `theorem` | [mapRange_neLocus_eq](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppNeLocusNamespaced.lean/declarations/maprange-nelocus-eq.md) | 106 | `result-track:60819de06bb631dc7331abd205623cfd64b58fbe57ada7cf368eda344e1c1f24` |
| 14 | `theorem` | [neLocus_add_left](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppNeLocusNamespaced.lean/declarations/nelocus-add-left.md) | 117 | `result-track:e961fb0e7a536280d93d37aba3c58c4ceb1e63908b19404ca85303407b5b6a56` |
| 15 | `theorem` | [neLocus_add_right](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppNeLocusNamespaced.lean/declarations/nelocus-add-right.md) | 122 | `result-track:54539963234c549bd2a5fb1b0c132cddfdc8cc54573d5db1ff5bbe85497aa413` |
| 16 | `theorem` | [neLocus_neg_neg](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppNeLocusNamespaced.lean/declarations/nelocus-neg-neg.md) | 131 | `result-track:5e0d6ee9cca5e3464f39181a381ef6bf11e87d2d26307601d4c8ee93fcf72571` |
| 17 | `theorem` | [neLocus_neg](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppNeLocusNamespaced.lean/declarations/nelocus-neg.md) | 134 | `result-track:a5bcd3ac5a3aa3c11727dee837a35c51a70d336905537ecd1c6c166ae77902e6` |
| 18 | `theorem` | [neLocus_eq_support_sub](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppNeLocusNamespaced.lean/declarations/nelocus-eq-support-sub.md) | 136 | `result-track:d10aa7ba89e8db756a300556e1399c23e01aa6ea38a1125b7ca9634f66bacc28` |
| 19 | `theorem` | [neLocus_sub_left](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppNeLocusNamespaced.lean/declarations/nelocus-sub-left.md) | 140 | `result-track:a364f5714cfde911554e470f553904d481da20d7b318be28d0761b4c1d68cfc2` |
| 20 | `theorem` | [neLocus_sub_right](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppNeLocusNamespaced.lean/declarations/nelocus-sub-right.md) | 144 | `result-track:cf115662f5c15f7081d0470e7829b84975dd95962ba88f95507f34839c8a15c8` |
| 21 | `theorem` | [neLocus_self_add_right](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppNeLocusNamespaced.lean/declarations/nelocus-self-add-right.md) | 148 | `result-track:2d7253cc36139f5f4095975dae0348ace1d0f256601dee7c76a92b1ff4e3ff4b` |
| 22 | `theorem` | [neLocus_self_add_left](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppNeLocusNamespaced.lean/declarations/nelocus-self-add-left.md) | 152 | `result-track:170e7e2c06786419a427688b86cf0b8e90c130403229d17396318e760bf1df96` |
| 23 | `theorem` | [neLocus_self_sub_right](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppNeLocusNamespaced.lean/declarations/nelocus-self-sub-right.md) | 156 | `result-track:2430bf5a8f5e1c0b251508bd28142590a93307a1369d5133de07296f0e9a2f0a` |
| 24 | `theorem` | [neLocus_self_sub_left](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppNeLocusNamespaced.lean/declarations/nelocus-self-sub-left.md) | 160 | `result-track:b6eab1c01cc32050c9cd3cb716995c536e97ca696d1e3c7b980fc5a1b88b4d9e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2f2c7e2586814825fc6bda71192beb7d0b3c9ade42afae94cae13b64c3ff0390 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/NeLocus/Variant3023d9aad31f8557da512a96d9e2e96359a95d78a4234bea0a1e35d1a73d4691.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/NeLocus/Variant3023d9aad31f8557da512a96d9e2e96359a95d78a4234bea0a1e35d1a73d4691.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
