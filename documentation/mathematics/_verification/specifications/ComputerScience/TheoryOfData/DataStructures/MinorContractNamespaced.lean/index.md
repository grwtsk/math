# Verification target: Minor Contract Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "95268aafc7cee76f5ca4a9534dcdf5010b14443d",
  "lexical_observation_count": 91,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Contract/Variantf51981e6baf0c8cec97614f162fd5f2a7f556e727b1107616fdb4a68dddac71c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfData/DataStructures/MinorContractNamespaced.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfData/DataStructures/MinorContractNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `95268aafc7cee76f5ca4a9534dcdf5010b14443d`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Contract/Variantf51981e6baf0c8cec97614f162fd5f2a7f556e727b1107616fdb4a68dddac71c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Contract/Variantf51981e6baf0c8cec97614f162fd5f2a7f556e727b1107616fdb4a68dddac71c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Matroid.Minor.Delete` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.TautoSet` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [contract](../../../../../../ComputerScience/TheoryOfData/DataStructures/MinorContractNamespaced.lean/declarations/contract.md) | 65 | `declaration-track:e30d59e85b2719303c967d96bd4baadb3033f4baa73130adfe2a3f6f6cc07e7d` |
| 2 | `lemma` | [contract_ground](../../../../../../ComputerScience/TheoryOfData/DataStructures/MinorContractNamespaced.lean/declarations/contract-ground.md) | 70 | `result-track:59c82c1fd7a13b13d97ec8e3d70b192a9c6fde467261b45b24eee63e16184adf` |
| 3 | `lemma` | [dual_delete_dual](../../../../../../ComputerScience/TheoryOfData/DataStructures/MinorContractNamespaced.lean/declarations/dual-delete-dual.md) | 72 | `result-track:6d243e154f6562e1706302495d41c87c37f908b2a04764773074db29053b227e` |
| 4 | `lemma` | [dual_delete](../../../../../../ComputerScience/TheoryOfData/DataStructures/MinorContractNamespaced.lean/declarations/dual-delete.md) | 75 | `result-track:1bf958f28d8d5e7000b9318d0f6bf504f185440455605fe3e537fa429358599f` |
| 5 | `lemma` | [dual_contract](../../../../../../ComputerScience/TheoryOfData/DataStructures/MinorContractNamespaced.lean/declarations/dual-contract.md) | 79 | `result-track:317aeb7699425d9132b30b3047a2f148e184e8ce078410347190c828f7cb163c` |
| 6 | `lemma` | [dual_contract_dual](../../../../../../ComputerScience/TheoryOfData/DataStructures/MinorContractNamespaced.lean/declarations/dual-contract-dual.md) | 82 | `result-track:f22d94c578469d9c9ef9868d10b4183a9d7a58bcbd75f1ec578d6199f8320786` |
| 7 | `lemma` | [contract_contract](../../../../../../ComputerScience/TheoryOfData/DataStructures/MinorContractNamespaced.lean/declarations/contract-contract.md) | 86 | `result-track:37b1f0ba227a4c59306720bbc72c1e922e0ad5da85f818fe26eb9a19fa3a73ef` |
| 8 | `lemma` | [contract_comm](../../../../../../ComputerScience/TheoryOfData/DataStructures/MinorContractNamespaced.lean/declarations/contract-comm.md) | 89 | `result-track:7bb84a008226034273d0492f4b395f70b3e1cd4dc786e41021209bdc777a4c53` |
| 9 | `lemma` | [dual_contract_delete](../../../../../../ComputerScience/TheoryOfData/DataStructures/MinorContractNamespaced.lean/declarations/dual-contract-delete.md) | 92 | `result-track:0681f24ace11b3fc92dd1ab82fd1a80a8bfd981dd4348c68c0765c3cfa419941` |
| 10 | `lemma` | [dual_delete_contract](../../../../../../ComputerScience/TheoryOfData/DataStructures/MinorContractNamespaced.lean/declarations/dual-delete-contract.md) | 95 | `result-track:c3747cc91cde4ebfbce0b1a2a3b05c1a5d5b3897e18d2c8cbaeba5338d1be964` |
| 11 | `lemma` | [contract_eq_self_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/MinorContractNamespaced.lean/declarations/contract-eq-self-iff.md) | 98 | `result-track:70ac4f4a5452987a0df4a34dd59877b17545972ef259428c2170d94349a4c16b` |
| 12 | `lemma` | [contractElem_eq_self](../../../../../../ComputerScience/TheoryOfData/DataStructures/MinorContractNamespaced.lean/declarations/contractelem-eq-self.md) | 101 | `result-track:74ac6ae5cd5f4ce23be634ad74f2af106be96cd1c25c0e9b9bba1d0053244e22` |
| 13 | `lemma` | [contract_empty](../../../../../../ComputerScience/TheoryOfData/DataStructures/MinorContractNamespaced.lean/declarations/contract-empty.md) | 104 | `result-track:fd8d9d4a0e7df8af338210494776f1ea0491bca6d47f17dea4b3397a71bf7db5` |
| 14 | `lemma` | [contract_contract_eq_contract_diff](../../../../../../ComputerScience/TheoryOfData/DataStructures/MinorContractNamespaced.lean/declarations/contract-contract-eq-contract-diff.md) | 107 | `result-track:7ebe370749b105a8e669c7c13db6b64cb8029d38fe52d89198ebbfaec00ffa57` |
| 15 | `lemma` | [contract_eq_contract_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/MinorContractNamespaced.lean/declarations/contract-eq-contract-iff.md) | 111 | `result-track:0b346bd610405309d8489fffed94309bd1861968e9a1e34420b12914efa15620` |
| 16 | `lemma` | [contract_inter_ground_eq](../../../../../../ComputerScience/TheoryOfData/DataStructures/MinorContractNamespaced.lean/declarations/contract-inter-ground-eq.md) | 114 | `result-track:5412df430823ae582764b3115fad40ced454153d6469320ed8d252d20c728df7` |
| 17 | `lemma` | [contract_ground_subset_ground](../../../../../../ComputerScience/TheoryOfData/DataStructures/MinorContractNamespaced.lean/declarations/contract-ground-subset-ground.md) | 118 | `result-track:0dc90a50c4554cb449d7d86ddc355ba13afaf019744111919a49f039276066a2` |
| 18 | `lemma` | [coindep_contract_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/MinorContractNamespaced.lean/declarations/coindep-contract-iff.md) | 123 | `result-track:29263cb26af63d5ebe4e6a31b5ea5e1e14232b44304969436e0bc8746a999e3a` |
| 19 | `lemma` | [Coindep.coindep_contract_of_disjoint](../../../../../../ComputerScience/TheoryOfData/DataStructures/MinorContractNamespaced.lean/declarations/coindep-coindep-contract-of-disjoint.md) | 126 | `result-track:4a103a66820f9f1370b0111b18c76b264a50a4b3b64b9f12cdc2938932b2ee71` |
| 20 | `lemma` | [contract_isCocircuit_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/MinorContractNamespaced.lean/declarations/contract-iscocircuit-iff.md) | 130 | `result-track:db093f028b70e6070c912f4557efeaa77a4acf87c650161438868b0dba529b30` |
| 21 | `lemma` | [Indep.contract_isBase_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/MinorContractNamespaced.lean/declarations/indep-contract-isbase-iff.md) | 134 | `result-track:82892953e64b25c49de3ce708f647949e6e53ce54d049d0450879ca7bcc8037a` |
| 22 | `lemma` | [Indep.contract_indep_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/MinorContractNamespaced.lean/declarations/indep-contract-indep-iff.md) | 144 | `result-track:6107263e81f1699d1758aa0916969dc0559de4873e403427afdfc1da7d083a98` |
| 23 | `lemma` | [IsNonloop.contractElem_indep_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/MinorContractNamespaced.lean/declarations/isnonloop-contractelem-indep-iff.md) | 152 | `result-track:c4ffa4d3a51671df9d4120e6f8f7fd057868cfbe93795399b4599b8d6e124529` |
| 24 | `lemma` | [Indep.union_indep_iff_contract_indep](../../../../../../ComputerScience/TheoryOfData/DataStructures/MinorContractNamespaced.lean/declarations/indep-union-indep-iff-contract-indep.md) | 156 | `result-track:b6b9434611b72fcb22076f2a3b3eddb828d4073cc2a1d578eda935471c6033a3` |
| 25 | `lemma` | [Indep.diff_indep_contract_of_subset](../../../../../../ComputerScience/TheoryOfData/DataStructures/MinorContractNamespaced.lean/declarations/indep-diff-indep-contract-of-subset.md) | 160 | `result-track:41a3b34781f13b8b93daafa1d717c30d308babb3277788c5be2ffb6fe712e6c4` |
| 26 | `lemma` | [Indep.contract_dep_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/MinorContractNamespaced.lean/declarations/indep-contract-dep-iff.md) | 164 | `result-track:bb37938031c98ccf1058b56982e6a55b8961a89bc47ca41c5fdd825285b5ee47` |
| 27 | `lemma` | [IsBasis.contract_eq_contract_delete](../../../../../../ComputerScience/TheoryOfData/DataStructures/MinorContractNamespaced.lean/declarations/isbasis-contract-eq-contract-delete.md) | 173 | `result-track:a60066368aa7cb95340c33046369e2e3a8b3c69bf56cba4b876df7a2005150cf` |
| 28 | `lemma` | [Indep.union_isBasis_union_of_contract_isBasis](../../../../../../ComputerScience/TheoryOfData/DataStructures/MinorContractNamespaced.lean/declarations/indep-union-isbasis-union-of-contract-isbasis.md) | 185 | `result-track:f096fc6262d99043f9f5b51d17b4b4281084d71894f1bf35653988b1a77c9e81` |
| 29 | `lemma` | [IsBasis'.contract_isBasis'_diff_diff_of_subset](../../../../../../ComputerScience/TheoryOfData/DataStructures/MinorContractNamespaced.lean/declarations/isbasis-contract-isbasis-diff-diff-of-subset-source-edition-2.md) | 196 | `result-track:b7f40aab2ce2948c6b82e2f791ce7ad369a1ca76a5ad7d27621c04651a3af490` |
| 30 | `lemma` | [IsBasis'.contract_isBasis'_diff_of_subset](../../../../../../ComputerScience/TheoryOfData/DataStructures/MinorContractNamespaced.lean/declarations/isbasis-contract-isbasis-diff-of-subset.md) | 206 | `result-track:fbe678113fe424d7cb4e12b42bf3465b7df926d06af0172b4adb72b996e18ee0` |
| 31 | `lemma` | [IsBasis.contract_isBasis_diff_diff_of_subset](../../../../../../ComputerScience/TheoryOfData/DataStructures/MinorContractNamespaced.lean/declarations/isbasis-contract-isbasis-diff-diff-of-subset.md) | 211 | `result-track:a3ffcf8fb4fd35843e23e8ad08aa364ccafc949edde1bf816c9d9d3f75134ddc` |
| 32 | `lemma` | [IsBasis.contract_diff_isBasis_diff](../../../../../../ComputerScience/TheoryOfData/DataStructures/MinorContractNamespaced.lean/declarations/isbasis-contract-diff-isbasis-diff.md) | 216 | `result-track:151c5f100049c16f1b719799724c8285623653f78386406610d36b1139cd66d9` |
| 33 | `lemma` | [IsBasis'.contract_isBasis_union_union](../../../../../../ComputerScience/TheoryOfData/DataStructures/MinorContractNamespaced.lean/declarations/isbasis-contract-isbasis-union-union-source-edition-2.md) | 225 | `result-track:af99711181d8355e1155022c44ea83ec45c3ba56ecb4a261166ccbc5b6643316` |
| 34 | `lemma` | [IsBasis.contract_isBasis_union_union](../../../../../../ComputerScience/TheoryOfData/DataStructures/MinorContractNamespaced.lean/declarations/isbasis-contract-isbasis-union-union.md) | 230 | `result-track:17c89ef5ea033f7da336c99350ecf8d3a6cb52ea9a22aa55ce0caeff10666e24` |
| 35 | `lemma` | [IsBasis'.contract_eq_contract_delete](../../../../../../ComputerScience/TheoryOfData/DataStructures/MinorContractNamespaced.lean/declarations/isbasis-contract-eq-contract-delete-source-edition-2.md) | 236 | `result-track:fdeaca6cdf62049c40e0af1a5be837d4be74a5f402b4c9eb805e9ffd56ce160e` |
| 36 | `lemma` | [IsBasis'.contract_indep_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/MinorContractNamespaced.lean/declarations/isbasis-contract-indep-iff.md) | 241 | `result-track:222b0dc8dc82d133b92c62ccd4073f9ca68d0c3e43f27d10e983822e0c839df1` |
| 37 | `lemma` | [IsBasis.contract_indep_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/MinorContractNamespaced.lean/declarations/isbasis-contract-indep-iff-source-edition-2.md) | 247 | `result-track:b57cfdcffc17103d49900e170a4d1f554522d6b0f696b788165df141ed3da5bb` |
| 38 | `lemma` | [IsBasis'.contract_dep_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/MinorContractNamespaced.lean/declarations/isbasis-contract-dep-iff-source-edition-2.md) | 251 | `result-track:53ece54c7f1aa59baebbca1709b3b042d13749b684e7f210265b7232de336217` |
| 39 | `lemma` | [IsBasis.contract_dep_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/MinorContractNamespaced.lean/declarations/isbasis-contract-dep-iff.md) | 256 | `result-track:41acdb21040230d7218d7a448ef97df1c553d0c1e8bc3d4496dddcdfa881eb72` |
| 40 | `lemma` | [IsBasis.contract_indep_iff_of_disjoint](../../../../../../ComputerScience/TheoryOfData/DataStructures/MinorContractNamespaced.lean/declarations/isbasis-contract-indep-iff-of-disjoint.md) | 260 | `result-track:44a3ce9e874427df6ec2128eaa1eff84e05401cf746c0b6d9268b725abf0b195` |
| 41 | `lemma` | [IsBasis.contract_indep_diff_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/MinorContractNamespaced.lean/declarations/isbasis-contract-indep-diff-iff.md) | 264 | `result-track:eceb931d86d553f28c6ee2b99a507e962ed9e86f9ba896425cff5bbebd09098d` |
| 42 | `lemma` | [IsBasis'.contract_indep_diff_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/MinorContractNamespaced.lean/declarations/isbasis-contract-indep-diff-iff-source-edition-2.md) | 268 | `result-track:f9c4e3ee1663afaec144f1014a2e3b2e8b441dd9d2b8417b4dca341cd0a65f58` |
| 43 | `lemma` | [IsBasis.contract_isBasis_of_isBasis'](../../../../../../ComputerScience/TheoryOfData/DataStructures/MinorContractNamespaced.lean/declarations/isbasis-contract-isbasis-of-isbasis.md) | 272 | `result-track:c180e510a7babae4a0faed0275ab38300121172832de46168277131137c23db9` |
| 44 | `lemma` | [IsBasis'.contract_isBasis'](../../../../../../ComputerScience/TheoryOfData/DataStructures/MinorContractNamespaced.lean/declarations/isbasis-contract-isbasis.md) | 285 | `result-track:ac022a68e504f242710b816f128deebdfa1cfae43b1f3e51b15ee33dd50cedc2` |
| 45 | `lemma` | [IsBasis.contract_isBasis](../../../../../../ComputerScience/TheoryOfData/DataStructures/MinorContractNamespaced.lean/declarations/isbasis-contract-isbasis-source-edition-2.md) | 290 | `result-track:d69ed080290deba894bdf874399586573e5f8fa0e5533ac11368f995d02d575d` |
| 46 | `lemma` | [IsBasis.contract_isBasis_of_disjoint](../../../../../../ComputerScience/TheoryOfData/DataStructures/MinorContractNamespaced.lean/declarations/isbasis-contract-isbasis-of-disjoint.md) | 294 | `result-track:7f6fe112e42ddd0753c24fbab0fd386207bb0f6319ce5d615ad1e3a4c87bd9dd` |
| 47 | `lemma` | [IsBasis'.contract_isBasis_of_indep](../../../../../../ComputerScience/TheoryOfData/DataStructures/MinorContractNamespaced.lean/declarations/isbasis-contract-isbasis-of-indep-source-edition-2.md) | 299 | `result-track:407c6e40355cb4266b6dcf4fe7a14a1a7d2d2f8401a1b968624f523dfb840090` |
| 48 | `lemma` | [IsBasis.contract_isBasis_of_indep](../../../../../../ComputerScience/TheoryOfData/DataStructures/MinorContractNamespaced.lean/declarations/isbasis-contract-isbasis-of-indep.md) | 303 | `result-track:2ef7212adb01102bbe690214bb284f29d5995d2d2923125a35ad2c8d8e93b9d3` |
| 49 | `lemma` | [IsBasis.contract_isBasis_of_disjoint_indep](../../../../../../ComputerScience/TheoryOfData/DataStructures/MinorContractNamespaced.lean/declarations/isbasis-contract-isbasis-of-disjoint-indep.md) | 307 | `result-track:6587280870b55002badf8535db4bfe234330db60e6a2f6e079fa86dd3ad322ce` |
| 50 | `lemma` | [Indep.of_contract](../../../../../../ComputerScience/TheoryOfData/DataStructures/MinorContractNamespaced.lean/declarations/indep-of-contract.md) | 312 | `result-track:0c6722095298040945859ff29cc5e4a542ffda22a2c06ecc5bbdb88205f9f933` |
| 51 | `lemma` | [Dep.of_contract](../../../../../../ComputerScience/TheoryOfData/DataStructures/MinorContractNamespaced.lean/declarations/dep-of-contract.md) | 315 | `result-track:7944bfec4342bef65ae3a80a4dd641aac299c0ea758f7145e8d83e0c9ba4f32a` |
| 52 | `instance` | [contract_finite](../../../../../../ComputerScience/TheoryOfData/DataStructures/MinorContractNamespaced.lean/declarations/contract-finite.md) | 324 | `declaration-track:3349cdc0be2f26f159fcf346705caeb24adc26d38b109a6e1961b482defffb68` |
| 53 | `instance` | [contract_rankFinite](../../../../../../ComputerScience/TheoryOfData/DataStructures/MinorContractNamespaced.lean/declarations/contract-rankfinite.md) | 328 | `declaration-track:831adf009c87bc33fefd3783004ecae0d29819dcbb4d96c471e982487bd0c436` |
| 54 | `instance` | [contract_finitary](../../../../../../ComputerScience/TheoryOfData/DataStructures/MinorContractNamespaced.lean/declarations/contract-finitary.md) | 332 | `declaration-track:dbd9e528ee072fcf596788b15540b1b34a1fb5ddf121946c4d49a95826de5027` |
| 55 | `lemma` | [contract_eq_delete_of_subset_loops](../../../../../../ComputerScience/TheoryOfData/DataStructures/MinorContractNamespaced.lean/declarations/contract-eq-delete-of-subset-loops.md) | 345 | `result-track:bcf15029fa2be6e98bcb55090143ec74bfc384ee0e15179db7f4c50a7a72ceab` |
| 56 | `lemma` | [contract_eq_delete_of_subset_coloops](../../../../../../ComputerScience/TheoryOfData/DataStructures/MinorContractNamespaced.lean/declarations/contract-eq-delete-of-subset-coloops.md) | 348 | `result-track:29d2026c703211e11cb34f34675a463b262b97c4d82a27c4ae4c9cce6db62d1d` |
| 57 | `lemma` | [contract_isLoop_iff_mem_closure](../../../../../../ComputerScience/TheoryOfData/DataStructures/MinorContractNamespaced.lean/declarations/contract-isloop-iff-mem-closure.md) | 352 | `result-track:93fbec7570be0180048d29da6058e8b470ac6e33372ab529a7d0fd756690d21a` |
| 58 | `lemma` | [contract_loops_eq](../../../../../../ComputerScience/TheoryOfData/DataStructures/MinorContractNamespaced.lean/declarations/contract-loops-eq.md) | 361 | `result-track:06af4f7f3381d2db564e7b73975bd4dba8a2b4bbdcfc520875c09e6fd9fed214` |
| 59 | `lemma` | [contract_coloops_eq](../../../../../../ComputerScience/TheoryOfData/DataStructures/MinorContractNamespaced.lean/declarations/contract-coloops-eq.md) | 365 | `result-track:a8f1c868cbd0c414949ef6a5f4a00ffa4f1ab94c1b1b23fe12df1a4efbc4368a` |
| 60 | `lemma` | [contract_isColoop_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/MinorContractNamespaced.lean/declarations/contract-iscoloop-iff.md) | 369 | `result-track:ad6e6e3931a7eaf3285352ecb5e264b9969906f254cab0f5e2bf303e6f0dc92f` |
| 61 | `lemma` | [IsNonloop.of_contract](../../../../../../ComputerScience/TheoryOfData/DataStructures/MinorContractNamespaced.lean/declarations/isnonloop-of-contract.md) | 372 | `result-track:a172bd95ba2dc630cf6171bc08b2b7370697765b84925dc73ba3121d61915c92` |
| 62 | `lemma` | [contract_isNonloop_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/MinorContractNamespaced.lean/declarations/contract-isnonloop-iff.md) | 377 | `result-track:1d7009ba58def69dc44b8a9b69ec97eee65dd7425c201a2b8302ba28633cb2d7` |
| 63 | `lemma` | [IsBasis.diff_subset_loops_contract](../../../../../../ComputerScience/TheoryOfData/DataStructures/MinorContractNamespaced.lean/declarations/isbasis-diff-subset-loops-contract.md) | 384 | `result-track:64b3344ce61883b29de3a6bd928dce9f62f4267996fd660cf08537f698c99f1f` |
| 64 | `lemma` | [contract_closure_eq_contract_delete](../../../../../../ComputerScience/TheoryOfData/DataStructures/MinorContractNamespaced.lean/declarations/contract-closure-eq-contract-delete.md) | 393 | `result-track:5921f01eee6c6a5fda6d947fca76262d3d05168c37e9d300341cb3e6f787f464` |
| 65 | `lemma` | [contract_closure_eq](../../../../../../ComputerScience/TheoryOfData/DataStructures/MinorContractNamespaced.lean/declarations/contract-closure-eq.md) | 403 | `result-track:60b022bbbbd914a8ff0c647bdd107f5eca3aae82bcf6cbfe92cb29be2dc61518` |
| 66 | `lemma` | [contract_spanning_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/MinorContractNamespaced.lean/declarations/contract-spanning-iff-source-edition-2.md) | 413 | `result-track:6800c71f4f96a03af1385bb4c45a87fd72cdcd28186dc126de2a959a68143986` |
| 67 | `lemma` | [contract_spanning_iff'](../../../../../../ComputerScience/TheoryOfData/DataStructures/MinorContractNamespaced.lean/declarations/contract-spanning-iff.md) | 423 | `result-track:64ed36cff51d78d38f6b6345e7b262d497fbaf7febc6b0be1d76856d297cc5fd` |
| 68 | `lemma` | [Spanning.contract](../../../../../../ComputerScience/TheoryOfData/DataStructures/MinorContractNamespaced.lean/declarations/spanning-contract.md) | 429 | `result-track:d69bdfb1207c6c158ca9b617cceb802864202b76de5abfd38774c8d10dcfa7b1` |
| 69 | `lemma` | [Spanning.contract_eq_loopyOn](../../../../../../ComputerScience/TheoryOfData/DataStructures/MinorContractNamespaced.lean/declarations/spanning-contract-eq-loopyon.md) | 434 | `result-track:b71e6dcc6591435895adf033dfeb877996d89e49d806c5bb121b11a1de66f9a2` |
| 70 | `lemma` | [IsCircuit.contract_isCircuit](../../../../../../ComputerScience/TheoryOfData/DataStructures/MinorContractNamespaced.lean/declarations/iscircuit-contract-iscircuit.md) | 440 | `result-track:33fa25ef2d4e0fdd91e0f6f6557edf1ac990eb625454dac39f7a9d4559c1d447` |
| 71 | `lemma` | [IsCircuit.contractElem_isCircuit](../../../../../../ComputerScience/TheoryOfData/DataStructures/MinorContractNamespaced.lean/declarations/iscircuit-contractelem-iscircuit.md) | 449 | `result-track:1c794b2c633272b873d46d85afc36e646f81fc7fa809f308f46ce05b6cfe4930` |
| 72 | `lemma` | [IsCircuit.contract_dep](../../../../../../ComputerScience/TheoryOfData/DataStructures/MinorContractNamespaced.lean/declarations/iscircuit-contract-dep.md) | 453 | `result-track:0d22c9c1a1fff6e15db632bd284e8f54c06a7bf3fa110ff4c2fdeb8922e89160` |
| 73 | `lemma` | [IsCircuit.contract_dep_of_not_subset](../../../../../../ComputerScience/TheoryOfData/DataStructures/MinorContractNamespaced.lean/declarations/iscircuit-contract-dep-of-not-subset.md) | 460 | `result-track:5f973c3d7a31d2f9a6ffab38b43d30305a7da26bbfa16003488620174bc01374` |
| 74 | `lemma` | [IsCircuit.contract_diff_isCircuit](../../../../../../ComputerScience/TheoryOfData/DataStructures/MinorContractNamespaced.lean/declarations/iscircuit-contract-diff-iscircuit.md) | 467 | `result-track:a3771a2fa794812db1c4b66d4fbbb0eff54f017c76b6ede1b17b8069a96a66df` |
| 75 | `lemma` | [IsCircuit.exists_subset_isCircuit_of_contract](../../../../../../ComputerScience/TheoryOfData/DataStructures/MinorContractNamespaced.lean/declarations/iscircuit-exists-subset-iscircuit-of-contract.md) | 473 | `result-track:cfe635d4ee91292c2fa65505b3ad82512908a533b9c1262e47247f50faa76a82` |
| 76 | `lemma` | [IsCocircuit.of_contract](../../../../../../ComputerScience/TheoryOfData/DataStructures/MinorContractNamespaced.lean/declarations/iscocircuit-of-contract.md) | 489 | `result-track:43929887cd0067aae28a2bce1bbaa09504723e67f58bda245ebb0266d23fe509` |
| 77 | `lemma` | [IsCocircuit.delete_isCocircuit](../../../../../../ComputerScience/TheoryOfData/DataStructures/MinorContractNamespaced.lean/declarations/iscocircuit-delete-iscocircuit.md) | 493 | `result-track:2a63756faa33edb398ec33146a264b138ff7b0286123fa90dc22d6b7c7eeccf1` |
| 78 | `lemma` | [IsCocircuit.delete_diff_isCocircuit](../../../../../../ComputerScience/TheoryOfData/DataStructures/MinorContractNamespaced.lean/declarations/iscocircuit-delete-diff-iscocircuit.md) | 498 | `result-track:7d3a2bcee0e3e8c252b42fc1418170ddf33c97f9440a741e3275978c42b51981` |
| 79 | `lemma` | [contract_delete_diff](../../../../../../ComputerScience/TheoryOfData/DataStructures/MinorContractNamespaced.lean/declarations/contract-delete-diff.md) | 505 | `result-track:1919d54d5c5e44521bd7c72053fce2da52cc49f588fea0edd482c29311ddfcaa` |
| 80 | `lemma` | [contract_restrict_eq_restrict_contract](../../../../../../ComputerScience/TheoryOfData/DataStructures/MinorContractNamespaced.lean/declarations/contract-restrict-eq-restrict-contract.md) | 509 | `result-track:6ba5fde6b504376722712af2828d16d67bfc61685313daf26b034f9412c3afdc` |
| 81 | `lemma` | [restrict_contract_eq_contract_restrict](../../../../../../ComputerScience/TheoryOfData/DataStructures/MinorContractNamespaced.lean/declarations/restrict-contract-eq-contract-restrict.md) | 519 | `result-track:e583277f08c14854233eb63a0d2f6977922f7cee9e24214897cee0d5c0e39c39` |
| 82 | `lemma` | [contract_delete_comm](../../../../../../ComputerScience/TheoryOfData/DataStructures/MinorContractNamespaced.lean/declarations/contract-delete-comm-source-edition-2.md) | 525 | `result-track:f9fa5ed591595627558569a9ae11b5a8c46017e81f33bb0b1255707ce2caac74` |
| 83 | `lemma` | [contract_delete_comm'](../../../../../../ComputerScience/TheoryOfData/DataStructures/MinorContractNamespaced.lean/declarations/contract-delete-comm.md) | 535 | `result-track:9d209eabdb1a6c77840c845f180bf4c995f4da9f2f348b249d1809509f6dd569` |
| 84 | `lemma` | [delete_contract_eq_diff](../../../../../../ComputerScience/TheoryOfData/DataStructures/MinorContractNamespaced.lean/declarations/delete-contract-eq-diff.md) | 538 | `result-track:dcd392781fb06de7909a2826ed6aafd8e49f3cca3fd975ca44730f207950ef48` |
| 85 | `lemma` | [delete_contract_comm'](../../../../../../ComputerScience/TheoryOfData/DataStructures/MinorContractNamespaced.lean/declarations/delete-contract-comm.md) | 544 | `result-track:bdaf5af910c8ccd2a206219b1ac25a227c257210b0a87f55602f91e51ee2cb62` |
| 86 | `lemma` | [contract_delete_contract'](../../../../../../ComputerScience/TheoryOfData/DataStructures/MinorContractNamespaced.lean/declarations/contract-delete-contract.md) | 549 | `result-track:48577005ec3117d598750b2d9a62998bc349f187a85508af9408b46a93643e52` |
| 87 | `lemma` | [contract_delete_contract](../../../../../../ComputerScience/TheoryOfData/DataStructures/MinorContractNamespaced.lean/declarations/contract-delete-contract-source-edition-2.md) | 553 | `result-track:53b75c1614a86ec68840b4d905cc53528e3a49b4bcda8ee429533f70f74cbf8e` |
| 88 | `lemma` | [contract_delete_contract_delete'](../../../../../../ComputerScience/TheoryOfData/DataStructures/MinorContractNamespaced.lean/declarations/contract-delete-contract-delete-source-edition-2.md) | 558 | `result-track:1ccf656b3b7e3d4bdad8a5d4b126a2b9ec66542293a78effb522aee5b5c4f9f7` |
| 89 | `lemma` | [contract_delete_contract_delete](../../../../../../ComputerScience/TheoryOfData/DataStructures/MinorContractNamespaced.lean/declarations/contract-delete-contract-delete.md) | 562 | `result-track:11194f8762c464a86f0f702e17bf24e522a810ec43ae7d5e7c544f9cd074d65d` |
| 90 | `lemma` | [delete_contract_delete'](../../../../../../ComputerScience/TheoryOfData/DataStructures/MinorContractNamespaced.lean/declarations/delete-contract-delete.md) | 568 | `result-track:b2e69275dc82d69ea33b0276a66d3b386fc7d26a46b5596a41e45eb1f571130c` |
| 91 | `lemma` | [delete_contract_delete](../../../../../../ComputerScience/TheoryOfData/DataStructures/MinorContractNamespaced.lean/declarations/delete-contract-delete-source-edition-2.md) | 572 | `result-track:bb6972fb2532e1ce4fc8d6e7be47765bb90886dbaf03385cfd15957f9b2fea50` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=524f871d116b4f2b41a1233b18135a9de3fb47d3973b6f656988f20f508bd16f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Contract/Variantf51981e6baf0c8cec97614f162fd5f2a7f556e727b1107616fdb4a68dddac71c.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Contract/Variantf51981e6baf0c8cec97614f162fd5f2a7f556e727b1107616fdb4a68dddac71c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
