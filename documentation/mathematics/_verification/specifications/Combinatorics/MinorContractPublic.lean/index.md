# Verification target: Minor Contract Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7eebb258ff1a858db4d643c0458a98390dc5dea6",
  "lexical_observation_count": 91,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Contract/Variant96ea174df5faf3fb5d3f2eb7c648f76442077ca537b684bd18309f262c222e35.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../Combinatorics/MinorContractPublic.lean/index.md) · [Full source](../../../../Combinatorics/MinorContractPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7eebb258ff1a858db4d643c0458a98390dc5dea6`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Contract/Variant96ea174df5faf3fb5d3f2eb7c648f76442077ca537b684bd18309f262c222e35.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Contract/Variant96ea174df5faf3fb5d3f2eb7c648f76442077ca537b684bd18309f262c222e35.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [contract](../../../../Combinatorics/MinorContractPublic.lean/declarations/contract.md) | 61 | `declaration-track:ad70cbfcd806cc1a210b074dd457cf0bbfb5b17815c1bc9df883d6852c8e9093` |
| 2 | `lemma` | [contract_ground](../../../../Combinatorics/MinorContractPublic.lean/declarations/contract-ground.md) | 66 | `result-track:ffe477008cf302130ab4978bae6ef30073966aac41fedcfd2741060ca2bb98e3` |
| 3 | `lemma` | [dual_delete_dual](../../../../Combinatorics/MinorContractPublic.lean/declarations/dual-delete-dual.md) | 68 | `result-track:10936d5879880091e48b18d46bfddb017584b2c50b4141f0398eb0f136326329` |
| 4 | `lemma` | [dual_delete](../../../../Combinatorics/MinorContractPublic.lean/declarations/dual-delete.md) | 71 | `result-track:2b352628f5eea24f2e1b5af2c46c81e60534c0a82731221c3cffcc3cd3ed3db9` |
| 5 | `lemma` | [dual_contract](../../../../Combinatorics/MinorContractPublic.lean/declarations/dual-contract.md) | 75 | `result-track:645c045da65cc62e0efdc763c2e5cf622659e8882c6d9222cc641967558a1582` |
| 6 | `lemma` | [dual_contract_dual](../../../../Combinatorics/MinorContractPublic.lean/declarations/dual-contract-dual.md) | 78 | `result-track:f35433d7cc87036ba9b7e6b216a1360fb320679872a9e9ddd6247bad4f5f161d` |
| 7 | `lemma` | [contract_contract](../../../../Combinatorics/MinorContractPublic.lean/declarations/contract-contract.md) | 82 | `result-track:828a610d54d7b588cebb9d5ff5ce9169f7c52961017b8aac6e001d6bb9d237dd` |
| 8 | `lemma` | [contract_comm](../../../../Combinatorics/MinorContractPublic.lean/declarations/contract-comm.md) | 85 | `result-track:20136e822942ae8cbaebdcfbbb60d642b8f7dde3219a98e5aa54293842d4ef2b` |
| 9 | `lemma` | [dual_contract_delete](../../../../Combinatorics/MinorContractPublic.lean/declarations/dual-contract-delete.md) | 88 | `result-track:ed9a576cee4aeb5ac4cf06dd017951bc21a230e26e604aadad1288ec9b9ec56d` |
| 10 | `lemma` | [dual_delete_contract](../../../../Combinatorics/MinorContractPublic.lean/declarations/dual-delete-contract.md) | 91 | `result-track:9ef13bb9b0b26d245dd3324251fa36fc9be76a963061296fcba8eb45a8e22894` |
| 11 | `lemma` | [contract_eq_self_iff](../../../../Combinatorics/MinorContractPublic.lean/declarations/contract-eq-self-iff.md) | 94 | `result-track:231e9b72ef76fe9a86ac183c4ef1638c0f64a821e12f23860df4f0c101937c5e` |
| 12 | `lemma` | [contractElem_eq_self](../../../../Combinatorics/MinorContractPublic.lean/declarations/contractelem-eq-self.md) | 97 | `result-track:1e609c96f483ab6d57574d1587fc5b9735a5d39760cdb635e8e1f4ac5b7a98d5` |
| 13 | `lemma` | [contract_empty](../../../../Combinatorics/MinorContractPublic.lean/declarations/contract-empty.md) | 100 | `result-track:dc2bf4a945c56400f707cd90a42b644acb0bd80e7d40110957e72a303cb871e1` |
| 14 | `lemma` | [contract_contract_eq_contract_sdiff](../../../../Combinatorics/MinorContractPublic.lean/declarations/contract-contract-eq-contract-sdiff.md) | 103 | `result-track:10d0686f1e662a40cec1c00ee6e5967af83e8548a2d8ac6e8fb89fbaab86a536` |
| 15 | `lemma` | [contract_eq_contract_iff](../../../../Combinatorics/MinorContractPublic.lean/declarations/contract-eq-contract-iff.md) | 110 | `result-track:f357e524e037c256200ae5d5ac94b5216f6c57c99621e9f13e7c6e28ab0bd7e4` |
| 16 | `lemma` | [contract_inter_ground_eq](../../../../Combinatorics/MinorContractPublic.lean/declarations/contract-inter-ground-eq.md) | 113 | `result-track:92e4e0491ebceae8151869fdc3e5f8a426bc7b494588ed8193da67398d5eb5fd` |
| 17 | `lemma` | [contract_ground_subset_ground](../../../../Combinatorics/MinorContractPublic.lean/declarations/contract-ground-subset-ground.md) | 117 | `result-track:6f21e0d4c6e693c13e1660b0f49984221d83f6ce01d0350ec9f4363acc54b170` |
| 18 | `lemma` | [coindep_contract_iff](../../../../Combinatorics/MinorContractPublic.lean/declarations/coindep-contract-iff.md) | 122 | `result-track:fc65f46ddda07460a549dc6f1313541166683b894faefeba82ae24bb1efa52bb` |
| 19 | `lemma` | [Coindep.coindep_contract_of_disjoint](../../../../Combinatorics/MinorContractPublic.lean/declarations/coindep-coindep-contract-of-disjoint.md) | 125 | `result-track:35a4785156df6941f9b8e6be7bd291e974526c46888a8515914fa2c6a034db12` |
| 20 | `lemma` | [contract_isCocircuit_iff](../../../../Combinatorics/MinorContractPublic.lean/declarations/contract-iscocircuit-iff.md) | 129 | `result-track:be1eece7b65501bd501da93c9a8767a1cc47da34818c65bd91403e1f8be2b5d0` |
| 21 | `lemma` | [Indep.contract_isBase_iff](../../../../Combinatorics/MinorContractPublic.lean/declarations/indep-contract-isbase-iff.md) | 133 | `result-track:54779e5c53acfa5bdbbad70df6e7de7352aff413e0076caaf70e0482a4d5fde0` |
| 22 | `lemma` | [Indep.contract_indep_iff](../../../../Combinatorics/MinorContractPublic.lean/declarations/indep-contract-indep-iff.md) | 143 | `result-track:0d61ad56e842000213958a59263a6f9d9f86c8e6a1131404580bbcc58764e730` |
| 23 | `lemma` | [IsNonloop.contractElem_indep_iff](../../../../Combinatorics/MinorContractPublic.lean/declarations/isnonloop-contractelem-indep-iff.md) | 151 | `result-track:d20200bdc4304c5fa83d2d9d456cd405d5bdf74aa5b432f2e7e891324514c584` |
| 24 | `lemma` | [Indep.union_indep_iff_contract_indep](../../../../Combinatorics/MinorContractPublic.lean/declarations/indep-union-indep-iff-contract-indep.md) | 155 | `result-track:970f5a33028a2f30168c699364b8238f8b7a80f1c76eb7d8e7ae852ba66700a0` |
| 25 | `lemma` | [Indep.diff_indep_contract_of_subset](../../../../Combinatorics/MinorContractPublic.lean/declarations/indep-diff-indep-contract-of-subset.md) | 159 | `result-track:a0f62a4519d01c01dcdb57bc750998ad7e766f588061d6920797a68a463974d3` |
| 26 | `lemma` | [Indep.contract_dep_iff](../../../../Combinatorics/MinorContractPublic.lean/declarations/indep-contract-dep-iff.md) | 163 | `result-track:094b7bfc1ecf63cf6a0ec25e01b503f347c0cbaaa11c6dce883099ee10e245a4` |
| 27 | `lemma` | [IsBasis.contract_eq_contract_delete](../../../../Combinatorics/MinorContractPublic.lean/declarations/isbasis-contract-eq-contract-delete-source-edition-2.md) | 172 | `result-track:d8ff63ea29720b0f3c0ce545cf60669b2747f832937a5c6d757d8e3a8a512863` |
| 28 | `lemma` | [Indep.union_isBasis_union_of_contract_isBasis](../../../../Combinatorics/MinorContractPublic.lean/declarations/indep-union-isbasis-union-of-contract-isbasis.md) | 184 | `result-track:6dd75478c5568b788a38fa00acdb727b207a5d78129c645231eefa977333df84` |
| 29 | `lemma` | [IsBasis'.contract_isBasis'_sdiff_sdiff_of_subset](../../../../Combinatorics/MinorContractPublic.lean/declarations/isbasis-contract-isbasis-sdiff-sdiff-of-subset.md) | 195 | `result-track:03ce4969a86203f399eb0ad47a84d4ad4380675f1fbf421e6f89cbef8f081ff3` |
| 30 | `lemma` | [IsBasis'.contract_isBasis'_sdiff_of_subset](../../../../Combinatorics/MinorContractPublic.lean/declarations/isbasis-contract-isbasis-sdiff-of-subset.md) | 209 | `result-track:e800b98dd17f2207d8dabe31b6ac519f682e928b0e4fabe489a1fb87e466ce5f` |
| 31 | `lemma` | [IsBasis.contract_isBasis_sdiff_sdiff_of_subset](../../../../Combinatorics/MinorContractPublic.lean/declarations/isbasis-contract-isbasis-sdiff-sdiff-of-subset-source-edition-2.md) | 217 | `result-track:455aa78d8351bf47cc3db18e39cc33027d4f278568dc6fdf4eb56088e8010ae2` |
| 32 | `lemma` | [IsBasis.contract_sdiff_isBasis_sdiff](../../../../Combinatorics/MinorContractPublic.lean/declarations/isbasis-contract-sdiff-isbasis-sdiff.md) | 225 | `result-track:21a2f07c37cc91d965ed519083e6797aa7615d880863c7f4cb1171e0f0ef24d5` |
| 33 | `lemma` | [IsBasis'.contract_isBasis_union_union](../../../../Combinatorics/MinorContractPublic.lean/declarations/isbasis-contract-isbasis-union-union.md) | 237 | `result-track:5f81098c7d2fbe7976df747ae692d5eb6ae8a8c9b53fa4203c885d7496183811` |
| 34 | `lemma` | [IsBasis.contract_isBasis_union_union](../../../../Combinatorics/MinorContractPublic.lean/declarations/isbasis-contract-isbasis-union-union-source-edition-2.md) | 242 | `result-track:ed3b5203306f349b0cf863e8c7488378b4bcef0c5714b3eca24ff49101761b37` |
| 35 | `lemma` | [IsBasis'.contract_eq_contract_delete](../../../../Combinatorics/MinorContractPublic.lean/declarations/isbasis-contract-eq-contract-delete.md) | 248 | `result-track:a4438f645921f52a1f5672d624515f69695fa9ad02f55e3f48f839fb8df171d8` |
| 36 | `lemma` | [IsBasis'.contract_indep_iff](../../../../Combinatorics/MinorContractPublic.lean/declarations/isbasis-contract-indep-iff-source-edition-2.md) | 253 | `result-track:e1c9f31a3811e849c30a1553e2cd8e93585f31b7bd84f3a2df468f1e85c2b453` |
| 37 | `lemma` | [IsBasis.contract_indep_iff](../../../../Combinatorics/MinorContractPublic.lean/declarations/isbasis-contract-indep-iff.md) | 259 | `result-track:c68cd3fbf0f7e82424f736511d2eef3cdda10ede789b218d2837fb2e890a85fa` |
| 38 | `lemma` | [IsBasis'.contract_dep_iff](../../../../Combinatorics/MinorContractPublic.lean/declarations/isbasis-contract-dep-iff-source-edition-2.md) | 263 | `result-track:796e0dba4ad749e7481aea704d9a5205bada360c5da2dd4ead5c285c9ba7f267` |
| 39 | `lemma` | [IsBasis.contract_dep_iff](../../../../Combinatorics/MinorContractPublic.lean/declarations/isbasis-contract-dep-iff.md) | 268 | `result-track:15f46eddeccf94fe7804ae74a3b365ae1a9811012bb3909ada46a488b9e9be38` |
| 40 | `lemma` | [IsBasis.contract_indep_iff_of_disjoint](../../../../Combinatorics/MinorContractPublic.lean/declarations/isbasis-contract-indep-iff-of-disjoint.md) | 272 | `result-track:cadece46489a7267995d4d287296495b59970a5d00d23364114c50fdd250a048` |
| 41 | `lemma` | [IsBasis.contract_indep_sdiff_iff](../../../../Combinatorics/MinorContractPublic.lean/declarations/isbasis-contract-indep-sdiff-iff.md) | 276 | `result-track:5a831c8f167263e26eaacd42997bf46ec0e0321bcdd389720922949c4ce83e46` |
| 42 | `lemma` | [IsBasis'.contract_indep_sdiff_iff](../../../../Combinatorics/MinorContractPublic.lean/declarations/isbasis-contract-indep-sdiff-iff-source-edition-2.md) | 283 | `result-track:791fc5219e848d429cb455f3510a83086815bf92598f865bb16b2e548743c876` |
| 43 | `lemma` | [IsBasis.contract_isBasis_of_isBasis'](../../../../Combinatorics/MinorContractPublic.lean/declarations/isbasis-contract-isbasis-of-isbasis.md) | 290 | `result-track:c364704ad02d7261a8324211af61ef504e20d66d0987312b8f65a6eb0d5bd3ef` |
| 44 | `lemma` | [IsBasis'.contract_isBasis'](../../../../Combinatorics/MinorContractPublic.lean/declarations/isbasis-contract-isbasis-source-edition-2.md) | 303 | `result-track:a8582df3ca034bf1d26bfd352f480c468da2f4005f48813f493e7e34fa93cfbd` |
| 45 | `lemma` | [IsBasis.contract_isBasis](../../../../Combinatorics/MinorContractPublic.lean/declarations/isbasis-contract-isbasis.md) | 308 | `result-track:65fb52889e9e0496414e30c0d3477cd8af6b5882705517ddfed1ed2ddd42a9a1` |
| 46 | `lemma` | [IsBasis.contract_isBasis_of_disjoint](../../../../Combinatorics/MinorContractPublic.lean/declarations/isbasis-contract-isbasis-of-disjoint.md) | 312 | `result-track:294208ea86daaed3e73c0502283ee858b118f12667d90269a0aa523e55557837` |
| 47 | `lemma` | [IsBasis'.contract_isBasis_of_indep](../../../../Combinatorics/MinorContractPublic.lean/declarations/isbasis-contract-isbasis-of-indep.md) | 317 | `result-track:1774e150862c1fcb1d6b1dfcea9dd90395dcf295fafabaf5203ebbe9f77ced68` |
| 48 | `lemma` | [IsBasis.contract_isBasis_of_indep](../../../../Combinatorics/MinorContractPublic.lean/declarations/isbasis-contract-isbasis-of-indep-source-edition-2.md) | 321 | `result-track:5720f461b2d3898ae1b501d76af7634877e72eabe15c214b5f87d7cfc6eb29d4` |
| 49 | `lemma` | [IsBasis.contract_isBasis_of_disjoint_indep](../../../../Combinatorics/MinorContractPublic.lean/declarations/isbasis-contract-isbasis-of-disjoint-indep.md) | 325 | `result-track:bc3586ab5d75f85daa51008f39fad8e772bfce7e5df968cf36b394eb47b03ee1` |
| 50 | `lemma` | [Indep.of_contract](../../../../Combinatorics/MinorContractPublic.lean/declarations/indep-of-contract.md) | 330 | `result-track:4a97b0a1250d846bb777d071e4f82a3840ac875aa625e44bbd51f82f39ca57ce` |
| 51 | `lemma` | [Dep.of_contract](../../../../Combinatorics/MinorContractPublic.lean/declarations/dep-of-contract.md) | 333 | `result-track:43182247c7bbcc375a5344a137e94830e9b12135a88dfbb89d1a253310cd4eab` |
| 52 | `instance` | [contract_finite](../../../../Combinatorics/MinorContractPublic.lean/declarations/contract-finite.md) | 342 | `declaration-track:a27af57ba60d7e4abff271b84ced76d8a40a1700368b2b4e0e6397b2f25f111a` |
| 53 | `instance` | [contract_rankFinite](../../../../Combinatorics/MinorContractPublic.lean/declarations/contract-rankfinite.md) | 346 | `declaration-track:5ec8d733d52ae2d6c2d62edc0afd50947ab7718ec3beb019992b903462dacae2` |
| 54 | `instance` | [contract_finitary](../../../../Combinatorics/MinorContractPublic.lean/declarations/contract-finitary.md) | 350 | `declaration-track:ca9c82839e88259bf3950e3f403237e3e2692cd8117d69c3234872e856aac214` |
| 55 | `lemma` | [contract_eq_delete_of_subset_loops](../../../../Combinatorics/MinorContractPublic.lean/declarations/contract-eq-delete-of-subset-loops.md) | 363 | `result-track:d38b330ec7d64ee8511a3bbd1ec2b67bca406e8a0438a7a58a89742c39817abc` |
| 56 | `lemma` | [contract_eq_delete_of_subset_coloops](../../../../Combinatorics/MinorContractPublic.lean/declarations/contract-eq-delete-of-subset-coloops.md) | 366 | `result-track:dd259d94eb0f1d3506384d90d220ee5509d0eff6719789fd8383575f893653ea` |
| 57 | `lemma` | [contract_isLoop_iff_mem_closure](../../../../Combinatorics/MinorContractPublic.lean/declarations/contract-isloop-iff-mem-closure.md) | 370 | `result-track:f2bded4cdd925f9aba18ee34a3b276e1f62d8408be367efe95402e9d3df61a66` |
| 58 | `lemma` | [contract_loops_eq](../../../../Combinatorics/MinorContractPublic.lean/declarations/contract-loops-eq.md) | 379 | `result-track:e1ed28a24250eacf6db889be5edd8d650a5f17962bb1c59c9a1cd420cad5d8ae` |
| 59 | `lemma` | [contract_coloops_eq](../../../../Combinatorics/MinorContractPublic.lean/declarations/contract-coloops-eq.md) | 383 | `result-track:56fc91bd5b849bc1f91dc7db9c00aec0d30820cf6e025ba396a345d6a9a35020` |
| 60 | `lemma` | [contract_isColoop_iff](../../../../Combinatorics/MinorContractPublic.lean/declarations/contract-iscoloop-iff.md) | 387 | `result-track:69f7883219ea34eedcf90b5da5f32e2117c55f0fb61405d02434a6f95d45fb50` |
| 61 | `lemma` | [IsNonloop.of_contract](../../../../Combinatorics/MinorContractPublic.lean/declarations/isnonloop-of-contract.md) | 390 | `result-track:d9a3b2417ab98e8f5e141d17fb9cb7ff92ea39a469425139682de8d6d865e9d8` |
| 62 | `lemma` | [contract_isNonloop_iff](../../../../Combinatorics/MinorContractPublic.lean/declarations/contract-isnonloop-iff.md) | 395 | `result-track:11e38c0bc72324b89f905a5931c65b6276536ae3d624c35d37835ff6202315f3` |
| 63 | `lemma` | [IsBasis.sdiff_subset_loops_contract](../../../../Combinatorics/MinorContractPublic.lean/declarations/isbasis-sdiff-subset-loops-contract.md) | 402 | `result-track:e916f5b62df249a5cbb4fe09e66ee87986a21571685f022d6aae5666a7887bb5` |
| 64 | `lemma` | [contract_closure_eq_contract_delete](../../../../Combinatorics/MinorContractPublic.lean/declarations/contract-closure-eq-contract-delete.md) | 414 | `result-track:65329128bd3b977b60cc279bf58e1d43320bb0cdd3f79ee0acbb985780263e9f` |
| 65 | `lemma` | [contract_closure_eq](../../../../Combinatorics/MinorContractPublic.lean/declarations/contract-closure-eq.md) | 424 | `result-track:dd027214538143dc0b518b264e48005aa8977d55c5559d05a16f597bd42957b0` |
| 66 | `lemma` | [contract_spanning_iff](../../../../Combinatorics/MinorContractPublic.lean/declarations/contract-spanning-iff-source-edition-2.md) | 434 | `result-track:845a6439713c5156cf642a71a9ba629ee1e72d7893fdf2f22e82a32fd75d86d4` |
| 67 | `lemma` | [contract_spanning_iff'](../../../../Combinatorics/MinorContractPublic.lean/declarations/contract-spanning-iff.md) | 444 | `result-track:175f0eb5abde6897fe045d0f0552b6153aa51d8c6a4fb7b2a883d92c3b497164` |
| 68 | `lemma` | [Spanning.contract](../../../../Combinatorics/MinorContractPublic.lean/declarations/spanning-contract.md) | 450 | `result-track:e5308ef4cc00dbc6cab0529f60c6c75da6ff8a8cbad5fc1a1fbae8c9bedc483a` |
| 69 | `lemma` | [Spanning.contract_eq_loopyOn](../../../../Combinatorics/MinorContractPublic.lean/declarations/spanning-contract-eq-loopyon.md) | 455 | `result-track:f73b40a27ed5caa528f9ec42632a6d50d4efeb1dfc2967f57711aa2b0c1a9349` |
| 70 | `lemma` | [IsCircuit.contract_isCircuit](../../../../Combinatorics/MinorContractPublic.lean/declarations/iscircuit-contract-iscircuit.md) | 461 | `result-track:462e2ff1ee27ed7f5405908280b5f0e64c3195131cc183210824e814b597ac72` |
| 71 | `lemma` | [IsCircuit.contractElem_isCircuit](../../../../Combinatorics/MinorContractPublic.lean/declarations/iscircuit-contractelem-iscircuit.md) | 470 | `result-track:988bd5a6ffa86c35f6dd0844cf35bc062e3037aec61221ff8fb51f68e0248d7d` |
| 72 | `lemma` | [IsCircuit.contract_dep](../../../../Combinatorics/MinorContractPublic.lean/declarations/iscircuit-contract-dep.md) | 474 | `result-track:19e0871bc324cd2be08747d6dc84ddc873bb0839be1d39107026821d3a0ec93c` |
| 73 | `lemma` | [IsCircuit.contract_dep_of_not_subset](../../../../Combinatorics/MinorContractPublic.lean/declarations/iscircuit-contract-dep-of-not-subset.md) | 481 | `result-track:42a0b7ed3eb12dff0091815cd5b0f12dae9a71da8eda792539ca190fb627e785` |
| 74 | `lemma` | [IsCircuit.contract_sdiff_isCircuit](../../../../Combinatorics/MinorContractPublic.lean/declarations/iscircuit-contract-sdiff-iscircuit.md) | 488 | `result-track:207396bcd9ac4799ee81efca13dfb7f0725e3e5f208c24ac27512cf395984804` |
| 75 | `lemma` | [IsCircuit.exists_subset_isCircuit_of_contract](../../../../Combinatorics/MinorContractPublic.lean/declarations/iscircuit-exists-subset-iscircuit-of-contract.md) | 497 | `result-track:1044fba9f44dfc804fc5c2065d83255391ff385b64cd3b7e333767ee1144647c` |
| 76 | `lemma` | [IsCocircuit.of_contract](../../../../Combinatorics/MinorContractPublic.lean/declarations/iscocircuit-of-contract.md) | 513 | `result-track:67abedc162d3f964c6d96276aec633f7f5aa551773c00b740838b540dcc4515c` |
| 77 | `lemma` | [IsCocircuit.delete_isCocircuit](../../../../Combinatorics/MinorContractPublic.lean/declarations/iscocircuit-delete-iscocircuit.md) | 517 | `result-track:c8bd3467ce65adeb58267c805a844864cc315a41f777e535cf658e4ea694af0f` |
| 78 | `lemma` | [IsCocircuit.delete_sdiff_isCocircuit](../../../../Combinatorics/MinorContractPublic.lean/declarations/iscocircuit-delete-sdiff-iscocircuit.md) | 522 | `result-track:d9d64d4e7fa0f8078b375cc248e981b489e27b48a7544f6d966b0657383f5e58` |
| 79 | `lemma` | [contract_delete_sdiff](../../../../Combinatorics/MinorContractPublic.lean/declarations/contract-delete-sdiff.md) | 532 | `result-track:5c94ddd61729292a199d25f20bd588745ccf303e46ff4b9e8df75545a4a76658` |
| 80 | `lemma` | [contract_restrict_eq_restrict_contract](../../../../Combinatorics/MinorContractPublic.lean/declarations/contract-restrict-eq-restrict-contract.md) | 538 | `result-track:3ae24e1a38749981b75d31824f3b842c16dd39153de04dcbe93f95fd8f286626` |
| 81 | `lemma` | [restrict_contract_eq_contract_restrict](../../../../Combinatorics/MinorContractPublic.lean/declarations/restrict-contract-eq-contract-restrict.md) | 548 | `result-track:a3da9129b36720c10a1ba2bcccb4d74d71c6ac1f57323967b6b833390e6af2d6` |
| 82 | `lemma` | [contract_delete_comm](../../../../Combinatorics/MinorContractPublic.lean/declarations/contract-delete-comm.md) | 554 | `result-track:1638671512383d4c7f9cc3a97c0615ba4669b7f617daac43f0717ec299bf9859` |
| 83 | `lemma` | [contract_delete_comm'](../../../../Combinatorics/MinorContractPublic.lean/declarations/contract-delete-comm-source-edition-2.md) | 564 | `result-track:ee9d9d4acc6ed1a2d99dec91ca5d936dd693807d507dfa9290662f7815130157` |
| 84 | `lemma` | [delete_contract_eq_sdiff](../../../../Combinatorics/MinorContractPublic.lean/declarations/delete-contract-eq-sdiff.md) | 567 | `result-track:fdb8b2a86c005317cdff45392a24694e8c7a50c19d423316e390986e87364038` |
| 85 | `lemma` | [delete_contract_comm'](../../../../Combinatorics/MinorContractPublic.lean/declarations/delete-contract-comm.md) | 575 | `result-track:05893fce1ad15ffac128898d4646a71f1d27cd07b9af6d2949a45ddeb92bdd56` |
| 86 | `lemma` | [contract_delete_contract'](../../../../Combinatorics/MinorContractPublic.lean/declarations/contract-delete-contract.md) | 580 | `result-track:dd82cea4ee536697291b050747652effb86e597c8af6b3e94dd7ae27d1f453c2` |
| 87 | `lemma` | [contract_delete_contract](../../../../Combinatorics/MinorContractPublic.lean/declarations/contract-delete-contract-source-edition-2.md) | 584 | `result-track:e2c5284100686607408c7e27fb1fe08c3474d98d58a6b63d929a9979ce502bd1` |
| 88 | `lemma` | [contract_delete_contract_delete'](../../../../Combinatorics/MinorContractPublic.lean/declarations/contract-delete-contract-delete.md) | 589 | `result-track:261a4287618a7f70f893703d49f12f9f4da3ca9f9f200f1cb5df5f00811c75dc` |
| 89 | `lemma` | [contract_delete_contract_delete](../../../../Combinatorics/MinorContractPublic.lean/declarations/contract-delete-contract-delete-source-edition-2.md) | 593 | `result-track:b52251047577efd5ad5b470f36ee27be8d87342fe17fc452485b0125de6dc2bc` |
| 90 | `lemma` | [delete_contract_delete'](../../../../Combinatorics/MinorContractPublic.lean/declarations/delete-contract-delete-source-edition-2.md) | 599 | `result-track:d7f4e0a7c287716b15cea1a73dd968b929493c5e1b8d462e0f9a7e8b74686d5c` |
| 91 | `lemma` | [delete_contract_delete](../../../../Combinatorics/MinorContractPublic.lean/declarations/delete-contract-delete.md) | 603 | `result-track:74c3a35758e8478778df7149773e21f7c2474eea0bdabd790990745d5559257e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f6fc4f8eddacc3f419e68a613564008a675b0b805a5f50ba4405a15d4827cc64 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Contract/Variant96ea174df5faf3fb5d3f2eb7c648f76442077ca537b684bd18309f262c222e35.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/Contract/Variant96ea174df5faf3fb5d3f2eb7c648f76442077ca537b684bd18309f262c222e35.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
