# Verification target: Finset Range Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "954c092fa406183e18b75f3517beff7b8c160e0f",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Range/Variantce0b59117762778c31091fae786fc2e9c9bdb24f37b606583bd830118779a185.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetRangeNamespaced.lean/index.md) · [Full source](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetRangeNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `954c092fa406183e18b75f3517beff7b8c160e0f`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Range/Variantce0b59117762778c31091fae786fc2e9c9bdb24f37b606583bd830118779a185.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Range/Variantce0b59117762778c31091fae786fc2e9c9bdb24f37b606583bd830118779a185.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finset.Insert` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Multiset.Range` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Interval.Set.Defs` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [range](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetRangeNamespaced.lean/declarations/range.md) | 57 | `declaration-track:a91e27e2783290616806c8f2701f8261ca741818253cb5cb7a24d1524ab08e01` |
| 2 | `theorem` | [range_val](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetRangeNamespaced.lean/declarations/range-val.md) | 61 | `result-track:6102ed3e8c9f13d92d4bee03fc554d4af22772a8398b8a463642e411ad1f13d7` |
| 3 | `theorem` | [mem_range](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetRangeNamespaced.lean/declarations/mem-range.md) | 65 | `result-track:86b673d6ace9a564e0341b8a1b9dea319c8029a1e9817e0834ccc283a6c61721` |
| 4 | `theorem` | [coe_range](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetRangeNamespaced.lean/declarations/coe-range.md) | 69 | `result-track:bc74a298c216ae3579f3b25d07922004671202ca5c7a735e2d5ee7985afba29a` |
| 5 | `theorem` | [range_zero](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetRangeNamespaced.lean/declarations/range-zero.md) | 73 | `result-track:a8d911d06b6b9420b0479aa3dd5b00485f475b16a6a900e322176d2c70c56d05` |
| 6 | `theorem` | [range_one](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetRangeNamespaced.lean/declarations/range-one.md) | 77 | `result-track:441d0d7b558536cebceb2093c3e31e9ad4e44b295913a5c81ab141c817c909e0` |
| 7 | `theorem` | [range_succ](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetRangeNamespaced.lean/declarations/range-succ.md) | 80 | `result-track:14094bb4eb1f416d083841311832d6d12eb20c55d6dcc9d0a6ed0fed33a261a8` |
| 8 | `theorem` | [range_add_one](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetRangeNamespaced.lean/declarations/range-add-one.md) | 83 | `result-track:a1bad8548c3d15179ad6dde68574d3ed42fa38ce2ba4d8afa3617bb3f05d7c13` |
| 9 | `theorem` | [notMem_range_self](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetRangeNamespaced.lean/declarations/notmem-range-self.md) | 86 | `result-track:6ca079683343eea910f2e47254eb2c550db7bee88e045200b0b2704e5917cde3` |
| 10 | `theorem` | [self_mem_range_succ](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetRangeNamespaced.lean/declarations/self-mem-range-succ.md) | 91 | `result-track:94caf01b810e1a0b238f40413ac9068e303915d1787402953ba105a74100d8c6` |
| 11 | `theorem` | [range_subset](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetRangeNamespaced.lean/declarations/range-subset.md) | 95 | `result-track:ab88f2f2620957aa56fbd12fae6c88641328071a6f659ecf241ba4a3787101b2` |
| 12 | `theorem` | [range_mono](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetRangeNamespaced.lean/declarations/range-mono.md) | 98 | `result-track:bc5c20eb30dd48bb89c959d47645deb238455005a4f1c86c8f1ac0053ee783fd` |
| 13 | `theorem` | [mem_range_succ_iff](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetRangeNamespaced.lean/declarations/mem-range-succ-iff.md) | 102 | `result-track:dfd29281b1d8339e2d2cd32e0b6e96de11ad50b08f7e547bf6b6af38f7c3a22a` |
| 14 | `theorem` | [mem_range_le](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetRangeNamespaced.lean/declarations/mem-range-le.md) | 105 | `result-track:ac072c977bb9c57686bf1e53ef820e8426ef3847f187a797caab0b9f9f543806` |
| 15 | `theorem` | [mem_range_sub_ne_zero](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetRangeNamespaced.lean/declarations/mem-range-sub-ne-zero.md) | 108 | `result-track:41aaf676bd9a96e1cec88b39681adf268049e2c5b201ec7adcfcc59e72458f8a` |
| 16 | `theorem` | [nonempty_range_iff](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetRangeNamespaced.lean/declarations/nonempty-range-iff.md) | 112 | `result-track:c4d8185e8b5125faba94f293848c7bad51f6926e9889d17885936386e918cadb` |
| 17 | `theorem` | [range_eq_empty_iff](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetRangeNamespaced.lean/declarations/range-eq-empty-iff.md) | 120 | `result-track:0a60f66efeb0c6405656da6b5f83ae03086a1067fe278d625fb7084a0ddf4da0` |
| 18 | `theorem` | [nonempty_range_succ](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetRangeNamespaced.lean/declarations/nonempty-range-succ.md) | 124 | `result-track:0dcea67af351e15b07af7ce6c1b03978f5e3866c3df13398dc1a8531afb570b5` |
| 19 | `lemma` | [range_nontrivial](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetRangeNamespaced.lean/declarations/range-nontrivial.md) | 127 | `result-track:e412ec609c04e4ffb6d9e5b6521265afe9016e083c2f2237945a42cab01487c1` |
| 20 | `theorem` | [exists_nat_subset_range](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetRangeNamespaced.lean/declarations/exists-nat-subset-range.md) | 131 | `result-track:ef0b84283aca7c2ef83e5dfacb428dab72fb26fe508c930e11c70b77f538649f` |
| 21 | `def` | [notMemRangeEquiv](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetRangeNamespaced.lean/declarations/notmemrangeequiv.md) | 140 | `declaration-track:dbed00d7d1f6b4480b0c04f5d9501661ece306242a697da66e0b08cf84fafef4` |
| 22 | `theorem` | [coe_notMemRangeEquiv](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetRangeNamespaced.lean/declarations/coe-notmemrangeequiv.md) | 150 | `result-track:810ff99f72de3653cdda33b6a82b378ac2375c1c1b4537e7528e08756c3c6156` |
| 23 | `theorem` | [coe_notMemRangeEquiv_symm](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetRangeNamespaced.lean/declarations/coe-notmemrangeequiv-symm.md) | 155 | `result-track:502758eea81f8222100b380d694700ef9b4196f371cfab6739b3d802b5c61efa` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c934b3a1af28f24a0bdc93dcfcdf38266bd6879b61b26c4b01450582631816a1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Range/Variantce0b59117762778c31091fae786fc2e9c9bdb24f37b606583bd830118779a185.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/Range/Variantce0b59117762778c31091fae786fc2e9c9bdb24f37b606583bd830118779a185.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
