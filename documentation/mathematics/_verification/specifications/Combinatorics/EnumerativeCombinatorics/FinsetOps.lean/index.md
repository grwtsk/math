# Verification target: Finset Ops

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3fdba5f4a32459bea6d96a0a07e13dc9d8ff00ec",
  "lexical_observation_count": 51,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FinsetOps/Variant63cb7a034c27fc6e19faff65baa5299b4743b62cf1f5fa279b1177337b3e6f9f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetOps.lean/index.md) · [Full source](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetOps.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3fdba5f4a32459bea6d96a0a07e13dc9d8ff00ec`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FinsetOps/Variant63cb7a034c27fc6e19faff65baa5299b4743b62cf1f5fa279b1177337b3e6f9f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FinsetOps/Variant63cb7a034c27fc6e19faff65baa5299b4743b62cf1f5fa279b1177337b3e6f9f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Multiset.Dedup` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.List.Infix` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ndinsert](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetOps.lean/declarations/ndinsert.md) | 33 | `declaration-track:437c7b3981b31fac72dcc861dfa918dd7f166c8f477fa389a2f53eb07684604c` |
| 2 | `theorem` | [coe_ndinsert](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetOps.lean/declarations/coe-ndinsert.md) | 37 | `result-track:717aa339cb0a05dc2c65e8806399e875ee30d90ce81a1f6924b1789841916680` |
| 3 | `theorem` | [ndinsert_zero](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetOps.lean/declarations/ndinsert-zero.md) | 41 | `result-track:d9f59d0ca67581414ccf91ee74ace7d3071c36dfb5624f6cd138ee6f0eb0169f` |
| 4 | `theorem` | [ndinsert_of_mem](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetOps.lean/declarations/ndinsert-of-mem.md) | 45 | `result-track:3b28bf35161e15c9feb05ba05b47ceed9044e0d567595cd5db1b1232a3b298f1` |
| 5 | `theorem` | [ndinsert_of_notMem](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetOps.lean/declarations/ndinsert-of-notmem.md) | 49 | `result-track:11baf21e615226fb3c69e031a0c04a67a13f8ec017d67076b12fabae64644358` |
| 6 | `theorem` | [mem_ndinsert](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetOps.lean/declarations/mem-ndinsert.md) | 55 | `result-track:606e690905e4c730d281588f1bcee8404830b569750a4e1b1f2fc8bff91dc197` |
| 7 | `theorem` | [le_ndinsert_self](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetOps.lean/declarations/le-ndinsert-self.md) | 59 | `result-track:a6f53b04393064cc54e37540e52d5c8218d9f14712a6cd2bd7b45e8175499a98` |
| 8 | `theorem` | [mem_ndinsert_self](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetOps.lean/declarations/mem-ndinsert-self.md) | 62 | `result-track:d38c2930c8f99ded7cb758492ae8cd1ca1b3a0f7b05f96cfd2ed6b3ba385122e` |
| 9 | `theorem` | [mem_ndinsert_of_mem](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetOps.lean/declarations/mem-ndinsert-of-mem.md) | 64 | `result-track:a2d8cb43898b4b18cf4f4bdf63aa4549d534758cf5845c7cef70e2fe4ed19bc9` |
| 10 | `theorem` | [length_ndinsert_of_mem](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetOps.lean/declarations/length-ndinsert-of-mem.md) | 67 | `result-track:8ce81a1629d90983611ec7ed5b022b1233c489f0471b63123e67206a8e7e7835` |
| 11 | `theorem` | [length_ndinsert_of_notMem](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetOps.lean/declarations/length-ndinsert-of-notmem.md) | 70 | `result-track:719b991f6d3a94a91c100feb8badf008a10b3830838c5a3dc5e88197ee3ab8dd` |
| 12 | `theorem` | [dedup_cons](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetOps.lean/declarations/dedup-cons.md) | 75 | `result-track:e90497c22d5ddd9e1a324a40bf44ac90ba3b429b9bfe33d5f15d7eef14f0d559` |
| 13 | `theorem` | [Nodup.ndinsert](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetOps.lean/declarations/nodup-ndinsert.md) | 78 | `result-track:acb0110a4ef82cfc4e62731bdcf3a9b3ab5efa655c1d338a3f7c091f6db1229f` |
| 14 | `theorem` | [ndinsert_le](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetOps.lean/declarations/ndinsert-le.md) | 81 | `result-track:955bcbd6da0b90144748a91f945bbd0201bc251d687dffd43e5b28747ca78383` |
| 15 | `theorem` | [attach_ndinsert](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetOps.lean/declarations/attach-ndinsert.md) | 89 | `result-track:f24fe21156dc96c2d595544926ecf6a1fb726a27980271bace769f6aab61a511` |
| 16 | `theorem` | [disjoint_ndinsert_left](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetOps.lean/declarations/disjoint-ndinsert-left.md) | 109 | `result-track:65c71a29a091e140f4c55b900558d01938e36ff6ba8691ba753025594dd693b7` |
| 17 | `theorem` | [disjoint_ndinsert_right](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetOps.lean/declarations/disjoint-ndinsert-right.md) | 114 | `result-track:48f5d44ff35a04d5fc96da792eae28a5736cd5adc399f55c8da9fe2af92a109b` |
| 18 | `def` | [ndunion](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetOps.lean/declarations/ndunion.md) | 125 | `declaration-track:2861a8fde1ab149fc6b589bba042a3ab8c062da9ee471bc80cd46d33d66a8120` |
| 19 | `theorem` | [coe_ndunion](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetOps.lean/declarations/coe-ndunion.md) | 130 | `result-track:8caac54124054088c3b7d9ea6b0e18da86949688249a1b06a3b7b1bccecd9a34` |
| 20 | `theorem` | [zero_ndunion](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetOps.lean/declarations/zero-ndunion.md) | 134 | `result-track:d2860235dcf4dc26498a85042cf997f84cc79fd18a1b133edcab0dfd4af3db24` |
| 21 | `theorem` | [cons_ndunion](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetOps.lean/declarations/cons-ndunion.md) | 138 | `result-track:9fc0e630d6e467e726bdefd73c5312c298199f5e481303ac8fc9add422791412` |
| 22 | `theorem` | [mem_ndunion](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetOps.lean/declarations/mem-ndunion.md) | 142 | `result-track:e9232cd97a15d9432a552c7c887d24c25caa709a468e26d9c8f5ae89d832a7ec` |
| 23 | `theorem` | [le_ndunion_right](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetOps.lean/declarations/le-ndunion-right.md) | 145 | `result-track:39b05586b77af18448375fcaf98b04fc4f7fa84e0204e3fd6a55959ec0da0bc0` |
| 24 | `theorem` | [subset_ndunion_right](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetOps.lean/declarations/subset-ndunion-right.md) | 148 | `result-track:855c6be1d166aefb337138e75b8b925ad379b05d75710661bb6ebf4e6c77dcb1` |
| 25 | `theorem` | [ndunion_le_add](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetOps.lean/declarations/ndunion-le-add.md) | 151 | `result-track:8db3eda91f1da7c776bb3e3a8a99da639cf3e1dc6c85bfbe58918b4ec0734da5` |
| 26 | `theorem` | [ndunion_le](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetOps.lean/declarations/ndunion-le.md) | 154 | `result-track:fe959e9fa588223fda957fdd035f41eae4180cbb811e6e0e381419a911b1f750` |
| 27 | `theorem` | [subset_ndunion_left](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetOps.lean/declarations/subset-ndunion-left.md) | 160 | `result-track:7434bf1af08265116ddbfae44b8caff05d5984159ba07d63351269e572a2d228` |
| 28 | `theorem` | [le_ndunion_left](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetOps.lean/declarations/le-ndunion-left.md) | 163 | `result-track:9fb08c468c2fd500dbc44f72a4e975a2cf1732ada56d4457f5ac2c072e9fc83e` |
| 29 | `theorem` | [ndunion_le_union](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetOps.lean/declarations/ndunion-le-union.md) | 166 | `result-track:3a2986f22a9b500ae6edaea44bece2f5d897cd5aa49b8bd98eb5a54de8b17243` |
| 30 | `theorem` | [Nodup.ndunion](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetOps.lean/declarations/nodup-ndunion.md) | 169 | `result-track:384def78e582594e833fc1c1692384bcd3c915ab58d5a35fb6d68f83df59d0f5` |
| 31 | `theorem` | [ndunion_eq_union](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetOps.lean/declarations/ndunion-eq-union.md) | 173 | `result-track:65f235a8f78e84b08777b2ba9543d599b81db5ac9903c121504148eab85cd930` |
| 32 | `theorem` | [dedup_add](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetOps.lean/declarations/dedup-add.md) | 176 | `result-track:2b06bec729dc7fd27942de71feaafdf9011d3b7d07b3a3dcd8e2f3a4916feda8` |
| 33 | `theorem` | [Disjoint.ndunion_eq](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetOps.lean/declarations/disjoint-ndunion-eq.md) | 179 | `result-track:d8efcdf8494de826f247dbd5f904f6de0ef685ae7d7d446b26934b28cacf4c7c` |
| 34 | `theorem` | [Subset.ndunion_eq_right](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetOps.lean/declarations/subset-ndunion-eq-right.md) | 184 | `result-track:22e594fc35c8926a1a6193cffb8ac988f258655efb8aaf6aa3934f1f677e0e1d` |
| 35 | `def` | [ndinter](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetOps.lean/declarations/ndinter.md) | 195 | `declaration-track:588db1c2224780d93c396393901efe4263676774f6bffd95909183ef6b4a0b91` |
| 36 | `theorem` | [coe_ndinter](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetOps.lean/declarations/coe-ndinter.md) | 199 | `result-track:4ccd8324e5bdf0e76527550ab0333124a06346402ef5b106e84dd09295aaf21d` |
| 37 | `theorem` | [zero_ndinter](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetOps.lean/declarations/zero-ndinter.md) | 204 | `result-track:6a65ecbdffbe401cf748693c5f4bf69ac80dbadb2333af89369264c8101023de` |
| 38 | `theorem` | [cons_ndinter_of_mem](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetOps.lean/declarations/cons-ndinter-of-mem.md) | 208 | `result-track:4b8bbdcaecffca393e7b29caaf98d1b1e02398972db616191fa2cf2993ab2277` |
| 39 | `theorem` | [ndinter_cons_of_notMem](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetOps.lean/declarations/ndinter-cons-of-notmem.md) | 212 | `result-track:451f4e3c50ae8d1192c13d0bd6e27c6d06203c7ef69cfaa88026068f00989682` |
| 40 | `theorem` | [mem_ndinter](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetOps.lean/declarations/mem-ndinter.md) | 218 | `result-track:09cd0ffdee1b6e11848eebc18fbe1b94a0a6782c8f9e50ec3556d446175d0075` |
| 41 | `theorem` | [Nodup.ndinter](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetOps.lean/declarations/nodup-ndinter.md) | 222 | `result-track:3a939d5a5d40e3f2b05dd4ae49ed0a2e546bbfa05d815cef3445403bc05add19` |
| 42 | `theorem` | [le_ndinter](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetOps.lean/declarations/le-ndinter.md) | 225 | `result-track:1177d3e189753e555bd378d2e1e37d4636e796d8900cbec36fc2df0b06206947` |
| 43 | `theorem` | [ndinter_le_left](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetOps.lean/declarations/ndinter-le-left.md) | 228 | `result-track:13a10bd1d07b035740a739f3787a0ab83c137e6e86b7ff28b49fa3c93657b96e` |
| 44 | `theorem` | [ndinter_subset_left](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetOps.lean/declarations/ndinter-subset-left.md) | 231 | `result-track:7dcfa6ac33518798490ed80d4582be1f9ec4aa2dacc779349a6cabb7d987e282` |
| 45 | `theorem` | [ndinter_subset_right](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetOps.lean/declarations/ndinter-subset-right.md) | 234 | `result-track:8be12c788df65faf3b2c0779e880c744679100d29b5a1fa7c1dad83fe7958efd` |
| 46 | `theorem` | [ndinter_le_right](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetOps.lean/declarations/ndinter-le-right.md) | 237 | `result-track:95ede81d9ec5f8c9c91dad689bee687afb334f097e4419cf40be97104c9ff2ff` |
| 47 | `theorem` | [inter_le_ndinter](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetOps.lean/declarations/inter-le-ndinter.md) | 240 | `result-track:d90d8fb3a6aa5e121ad5a6c4e06c653fa400af79eee7978780dbf7ee6c93e45f` |
| 48 | `theorem` | [ndinter_eq_inter](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetOps.lean/declarations/ndinter-eq-inter.md) | 244 | `result-track:ef5b1faf6cd948a373a386e085a620d7ca2d6f569242feada98ea0ce34fa5f9c` |
| 49 | `theorem` | [Nodup.inter](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetOps.lean/declarations/nodup-inter.md) | 248 | `result-track:1cee76bc44a9e9e474bb9b1be5687ac96e7a769906e16dfe56a13d0f45cab922` |
| 50 | `theorem` | [ndinter_eq_zero_iff_disjoint](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetOps.lean/declarations/ndinter-eq-zero-iff-disjoint.md) | 252 | `result-track:5b6cbfbd33d5b583c7817bd88de2b3cebadafa19a2ad883e6cb2ffe7daf5cd1c` |
| 51 | `theorem` | [Subset.ndinter_eq_left](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetOps.lean/declarations/subset-ndinter-eq-left.md) | 257 | `result-track:25fe2bbae09c00ff864ddfefca2203d829a34d10098ff408d22ac8ff4b362f3a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c1b7a0e36760994eb695a0b7205a0b511576265efa645b635ae962b6740e6487 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FinsetOps/Variant63cb7a034c27fc6e19faff65baa5299b4743b62cf1f5fa279b1177337b3e6f9f.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FinsetOps/Variant63cb7a034c27fc6e19faff65baa5299b4743b62cf1f5fa279b1177337b3e6f9f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
