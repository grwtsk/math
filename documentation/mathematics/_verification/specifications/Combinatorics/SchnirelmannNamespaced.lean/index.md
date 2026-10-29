# Verification target: Schnirelmann Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1c44341143936b30113df63cb4626bb8d3ede465",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Schnirelmann/Varianta73edbdec06ead781663885c00c64892d5c24dc643d131f0e57c3929824039f7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../Combinatorics/SchnirelmannNamespaced.lean/index.md) · [Full source](../../../../Combinatorics/SchnirelmannNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1c44341143936b30113df63cb4626bb8d3ede465`.

Source path: `GRWTSK/Topology/GeneralTopology/Schnirelmann/Varianta73edbdec06ead781663885c00c64892d5c24dc643d131f0e57c3929824039f7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Schnirelmann/Varianta73edbdec06ead781663885c00c64892d5c24dc643d131f0e57c3929824039f7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Ring.Abs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.ModEq` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Prime.Defs` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Real.Archimedean` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Interval.Finset.Nat` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [schnirelmannDensity](../../../../Combinatorics/SchnirelmannNamespaced.lean/declarations/schnirelmanndensity.md) | 57 | `declaration-track:ba79bb5a4a820f3b01b6b95f652c16df970ffb5d9beb0ad16ae2bdffea6184b4` |
| 2 | `lemma` | [schnirelmannDensity_nonneg](../../../../Combinatorics/SchnirelmannNamespaced.lean/declarations/schnirelmanndensity-nonneg.md) | 64 | `result-track:9ef5ae63d64fd8698e05aa4a2973953823857882ff7532dd164a5897622d8a58` |
| 3 | `lemma` | [schnirelmannDensity_le_div](../../../../Combinatorics/SchnirelmannNamespaced.lean/declarations/schnirelmanndensity-le-div.md) | 67 | `result-track:05b1075de97bbb86270ce7a817f3a31237034b064a851217f99ead777f7f249f` |
| 4 | `lemma` | [schnirelmannDensity_mul_le_card_filter](../../../../Combinatorics/SchnirelmannNamespaced.lean/declarations/schnirelmanndensity-mul-le-card-filter.md) | 75 | `result-track:4bdc7cbc4b38afb343ffcbd62d6854d705e5bb7fac0d2e062af6e307fe8d3bf2` |
| 5 | `lemma` | [schnirelmannDensity_le_of_le](../../../../Combinatorics/SchnirelmannNamespaced.lean/declarations/schnirelmanndensity-le-of-le.md) | 88 | `result-track:2efe2dafe1d5871a8bf9ffb6426b670b6b0fd51f742f91c1f0e083976d02d95e` |
| 6 | `lemma` | [schnirelmannDensity_le_one](../../../../Combinatorics/SchnirelmannNamespaced.lean/declarations/schnirelmanndensity-le-one.md) | 92 | `result-track:081c592051239beea52252174bfe44ab2f25d0f994a7f64eaf112f579d5cde0c` |
| 7 | `lemma` | [schnirelmannDensity_le_of_notMem](../../../../Combinatorics/SchnirelmannNamespaced.lean/declarations/schnirelmanndensity-le-of-notmem.md) | 99 | `result-track:e9c0d6da5f8ae92ead298767d92e98fa19d2ca99ec0d66ed285e948c0316506d` |
| 8 | `lemma` | [schnirelmannDensity_eq_zero_of_one_notMem](../../../../Combinatorics/SchnirelmannNamespaced.lean/declarations/schnirelmanndensity-eq-zero-of-one-notmem.md) | 115 | `result-track:8aee7dfadccef891d10a8e6903cdcbd534ed32d5529d2fdda94711f9c651a2c9` |
| 9 | `lemma` | [schnirelmannDensity_le_of_subset](../../../../Combinatorics/SchnirelmannNamespaced.lean/declarations/schnirelmanndensity-le-of-subset.md) | 122 | `result-track:06cad9a6a1e52643df60cdc674124abd5694c5603eb7561c566507f9f36c2523` |
| 10 | `lemma` | [schnirelmannDensity_eq_one_iff](../../../../Combinatorics/SchnirelmannNamespaced.lean/declarations/schnirelmanndensity-eq-one-iff.md) | 128 | `result-track:30fd7e7c30dc9e93cc14c36d46ff7f0180a9a144e1ea354c6bb7fab1f7bf0443` |
| 11 | `lemma` | [schnirelmannDensity_eq_one_iff_of_zero_mem](../../../../Combinatorics/SchnirelmannNamespaced.lean/declarations/schnirelmanndensity-eq-one-iff-of-zero-mem.md) | 143 | `result-track:c1b7c0f78c5d39d660cd88371a4229101f49d40abaa2bace90e3e5e02505c2eb` |
| 12 | `lemma` | [le_schnirelmannDensity_iff](../../../../Combinatorics/SchnirelmannNamespaced.lean/declarations/le-schnirelmanndensity-iff.md) | 154 | `result-track:3c19f39c431dd82ef3545175472b11a496fce089151a2adc0e0818b9d0015cbb` |
| 13 | `lemma` | [schnirelmannDensity_lt_iff](../../../../Combinatorics/SchnirelmannNamespaced.lean/declarations/schnirelmanndensity-lt-iff.md) | 158 | `result-track:8ba38165cfcf71dd0d3a87c35ffee8f7b619091571b38b96c28925d4dddb1022` |
| 14 | `lemma` | [schnirelmannDensity_le_iff_forall](../../../../Combinatorics/SchnirelmannNamespaced.lean/declarations/schnirelmanndensity-le-iff-forall.md) | 162 | `result-track:978fb678069d5af93efefed67083a225b66a890caa4f1256be7b9b16b151a7f0` |
| 15 | `lemma` | [schnirelmannDensity_congr'](../../../../Combinatorics/SchnirelmannNamespaced.lean/declarations/schnirelmanndensity-congr.md) | 168 | `result-track:70cc3dc9e709b8f2da8ec39f33641d1d4f9c45f6f773cb11015b35916fcf5d67` |
| 16 | `lemma` | [schnirelmannDensity_insert_zero](../../../../Combinatorics/SchnirelmannNamespaced.lean/declarations/schnirelmanndensity-insert-zero.md) | 173 | `result-track:32132e789a2bb8bbeb4c76a4059f99fc9590d775da588986e093a52c9b5b9b95` |
| 17 | `lemma` | [schnirelmannDensity_diff_singleton_zero](../../../../Combinatorics/SchnirelmannNamespaced.lean/declarations/schnirelmanndensity-diff-singleton-zero.md) | 178 | `result-track:bf0083852399120c9d892d3ae86c9161350d71042c1ef956024eb7ac4d70fa55` |
| 18 | `lemma` | [schnirelmannDensity_congr](../../../../Combinatorics/SchnirelmannNamespaced.lean/declarations/schnirelmanndensity-congr-source-edition-2.md) | 182 | `result-track:d7490899d26d6c04b5d5caf0761aa094d17c0c05b8e609d4cf6f339172c3b0a4` |
| 19 | `lemma` | [exists_of_schnirelmannDensity_eq_zero](../../../../Combinatorics/SchnirelmannNamespaced.lean/declarations/exists-of-schnirelmanndensity-eq-zero.md) | 191 | `result-track:e9262961c66ca20853ffa2b2451614ddbee6928249eee2bfb8d66a23610c00d8` |
| 20 | `lemma` | [schnirelmannDensity_empty](../../../../Combinatorics/SchnirelmannNamespaced.lean/declarations/schnirelmanndensity-empty.md) | 199 | `result-track:7665b835d99f96ac404f4566de4ffad9b03d886aae33039f71bad173125fd181` |
| 21 | `lemma` | [schnirelmannDensity_finset](../../../../Combinatorics/SchnirelmannNamespaced.lean/declarations/schnirelmanndensity-finset.md) | 203 | `result-track:67736fa03083c0062ca7c32898c5ca1aac0e51a040a0e58cb2221d32c7f9f4fe` |
| 22 | `lemma` | [schnirelmannDensity_finite](../../../../Combinatorics/SchnirelmannNamespaced.lean/declarations/schnirelmanndensity-finite.md) | 217 | `result-track:8231478144f6c365003bea12fa872fc6f70ce99c8dedcb5a9685b293b87c8cf9` |
| 23 | `lemma` | [schnirelmannDensity_univ](../../../../Combinatorics/SchnirelmannNamespaced.lean/declarations/schnirelmanndensity-univ.md) | 220 | `result-track:c0ea747dc15b3beee82ba2558e7d45133493f6e2ed630c7d8d9b301434127a67` |
| 24 | `lemma` | [schnirelmannDensity_setOf_even](../../../../Combinatorics/SchnirelmannNamespaced.lean/declarations/schnirelmanndensity-setof-even.md) | 223 | `result-track:19b2354d0eb862432cab9a200e424f37fbf5eb1036a615869a482eba0b34d05b` |
| 25 | `lemma` | [schnirelmannDensity_setOf_prime](../../../../Combinatorics/SchnirelmannNamespaced.lean/declarations/schnirelmanndensity-setof-prime.md) | 226 | `result-track:3e12482dc1655977ddd1100456016f83d06a4dc7418809a1bd5aa919cfd962c4` |
| 26 | `lemma` | [schnirelmannDensity_setOf_mod_eq_one](../../../../Combinatorics/SchnirelmannNamespaced.lean/declarations/schnirelmanndensity-setof-mod-eq-one.md) | 234 | `result-track:40758d4e4bb031e20272da1a5dda67cf139a2e8256d433a063a70fe854d67a14` |
| 27 | `lemma` | [schnirelmannDensity_setOf_modeq_one](../../../../Combinatorics/SchnirelmannNamespaced.lean/declarations/schnirelmanndensity-setof-modeq-one.md) | 269 | `result-track:dc3dc624468accfedf381fc8e5a0657cbb7402ba4bfe7432fed6b7a8a10f5757` |
| 28 | `lemma` | [schnirelmannDensity_setOf_Odd](../../../../Combinatorics/SchnirelmannNamespaced.lean/declarations/schnirelmanndensity-setof-odd.md) | 278 | `result-track:03259baf1f28555f16c477a1f2802204ef90abfc557513cba5b19ab3ddd0caf6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f4254f81f4500219e533f976a91c552c8e644976d22a76a119e03a73fb076798 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Schnirelmann/Varianta73edbdec06ead781663885c00c64892d5c24dc643d131f0e57c3929824039f7.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Schnirelmann/Varianta73edbdec06ead781663885c00c64892d5c24dc643d131f0e57c3929824039f7.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
