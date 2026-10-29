# Verification target: Preorder Chain Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "974bfc6ccf62d911f0b7f90e7f6e5d0643552a24",
  "lexical_observation_count": 59,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Chain/Variant6521a68746c9eaf72bdfe4991e5b8cc51f979a12c45292d1b191a0824fd215b8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/PreorderChainNamespaced.lean/index.md) · [Full source](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/PreorderChainNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `974bfc6ccf62d911f0b7f90e7f6e5d0643552a24`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Chain/Variant6521a68746c9eaf72bdfe4991e5b8cc51f979a12c45292d1b191a0824fd215b8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Chain/Variant6521a68746c9eaf72bdfe4991e5b8cc51f979a12c45292d1b191a0824fd215b8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Set.Pairwise.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.SetLike.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Directed` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Hom.Set` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsChain](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/PreorderChainNamespaced.lean/declarations/ischain.md) | 53 | `declaration-track:eefa1843b532b571bd395d1864e6642b713bf54e99ef0bb40a00136980b3d8b5` |
| 2 | `def` | [SuperChain](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/PreorderChainNamespaced.lean/declarations/superchain.md) | 57 | `declaration-track:8ab5799b8ec14e9c36a65d85d6783589d5c75397c533d08df464886fc316bf0f` |
| 3 | `def` | [IsMaxChain](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/PreorderChainNamespaced.lean/declarations/ismaxchain.md) | 61 | `declaration-track:59544be83ea4015841fd8f5fe02dfa49dbba5b9772c14141ce7abb54dc11c217` |
| 4 | `lemma` | [IsChain.empty](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/PreorderChainNamespaced.lean/declarations/ischain-empty.md) | 66 | `result-track:71b464222422a4891da50ae512e76468b7bb73cb78fd3685df986daf8bb5bb13` |
| 5 | `lemma` | [IsChain.singleton](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/PreorderChainNamespaced.lean/declarations/ischain-singleton.md) | 67 | `result-track:6d333ac5cd782587ca123ae435e742be7eeef00bdd4a1f7a400e2221c730c994` |
| 6 | `theorem` | [Set.Subsingleton.isChain](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/PreorderChainNamespaced.lean/declarations/set-subsingleton-ischain.md) | 71 | `result-track:0fc8c072fdd5a5cb81f6e7c98c129a4e91beda03385af3370abadc3f15a20458` |
| 7 | `theorem` | [IsChain.mono](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/PreorderChainNamespaced.lean/declarations/ischain-mono.md) | 74 | `result-track:8f6ecd4b654b04fa8247fc718c981331fef33e0d6314dbcc9cfc620f00b8fe59` |
| 8 | `theorem` | [IsChain.mono_rel](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/PreorderChainNamespaced.lean/declarations/ischain-mono-rel.md) | 77 | `result-track:b23a5178a48da84b82b77985e0ca8820c9540861a7065958de13a5a53c264307` |
| 9 | `theorem` | [IsChain.symm](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/PreorderChainNamespaced.lean/declarations/ischain-symm.md) | 82 | `result-track:7204567ae26a9b6ab31d27ae915570ea19d7c77bba89105314247b09e7d69022` |
| 10 | `theorem` | [isChain_of_trichotomous](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/PreorderChainNamespaced.lean/declarations/ischain-of-trichotomous.md) | 85 | `result-track:338bcafe4a848a27d3764d2675186846f946542f39241fee40e8f6b0e7975ef7` |
| 11 | `theorem` | [IsChain.insert](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/PreorderChainNamespaced.lean/declarations/ischain-insert.md) | 88 | `result-track:fa1840e5b1f2195e3da0f053a8e19b7d2cc3758152efc7c67f4c41510c38b291` |
| 12 | `lemma` | [IsChain.pair](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/PreorderChainNamespaced.lean/declarations/ischain-pair.md) | 92 | `result-track:654f09c0b115e1e5bc3555721bb319a0fbac3545dfe186347ca065002890378c` |
| 13 | `theorem` | [isChain_univ_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/PreorderChainNamespaced.lean/declarations/ischain-univ-iff.md) | 95 | `result-track:6be12cd7c7dbe7ae31431c7a1b0f7da91853d9aaf2fde684a503e14063f70c02` |
| 14 | `theorem` | [IsChain.image](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/PreorderChainNamespaced.lean/declarations/ischain-image.md) | 100 | `result-track:cf4b1173d47211f0b03339e7105e86ca72cb36c8877f0f9d80280e6c03031873` |
| 15 | `lemma` | [isChain_union](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/PreorderChainNamespaced.lean/declarations/ischain-union.md) | 105 | `result-track:e9cbea77517e9ca14980fc1cdfe1fbee7a9acaf8a8c277095e3d2f475e8f9e2c` |
| 16 | `lemma` | [Monotone.isChain_image](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/PreorderChainNamespaced.lean/declarations/monotone-ischain-image.md) | 109 | `result-track:2b78d1c2ef582d6717d5aa99656fb955fd3341adc0141b3f0ca977a0e07c068d` |
| 17 | `theorem` | [Monotone.isChain_range](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/PreorderChainNamespaced.lean/declarations/monotone-ischain-range.md) | 113 | `result-track:c184a08695725f2f2a491c83b154594f6a36f424cd524d78e83ab7966b43b886` |
| 18 | `theorem` | [IsChain.lt_of_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/PreorderChainNamespaced.lean/declarations/ischain-lt-of-le.md) | 118 | `result-track:8a4f1c5b30160e82487e560388c4b59fa442eca0cced1dd88b49131de222c704` |
| 19 | `theorem` | [IsChain.total](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/PreorderChainNamespaced.lean/declarations/ischain-total.md) | 126 | `result-track:ca38bb5cb2d6b501295f8a2bbdf5bc78d41205244d995822330cd77fd3cfbb14` |
| 20 | `theorem` | [IsChain.directedOn](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/PreorderChainNamespaced.lean/declarations/ischain-directedon.md) | 129 | `result-track:0c17683f254b58a62ad38e451894a272bbbec230da5ce0a94a1cdf68ed6a086d` |
| 21 | `theorem` | [IsChain.directed](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/PreorderChainNamespaced.lean/declarations/ischain-directed.md) | 132 | `result-track:5547b55f38d13a04500296ad3e929af24f29064be1fdacb228c47a9844489d0a` |
| 22 | `theorem` | [IsChain.exists3](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/PreorderChainNamespaced.lean/declarations/ischain-exists3.md) | 140 | `result-track:52eb7b03cd7e4b8bfe1f40d24a85e28c2a3c2998ead57bb9892b7c0ddb2b28eb` |
| 23 | `lemma` | [IsChain.le_of_not_lt](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/PreorderChainNamespaced.lean/declarations/ischain-le-of-not-lt.md) | 149 | `result-track:7c9c7c3fb9785ac74be008a89aab2bf4fd7d4a7e51d9e91afde229a1cd9e28af` |
| 24 | `lemma` | [IsChain.not_lt](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/PreorderChainNamespaced.lean/declarations/ischain-not-lt.md) | 155 | `result-track:551c8473203c091175375210967123b5b3267cd486bf2d587a243249795f5dfe` |
| 25 | `lemma` | [IsChain.lt_of_not_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/PreorderChainNamespaced.lean/declarations/ischain-lt-of-not-le.md) | 159 | `result-track:87074c126e1414c5c542ad75fc9059373ac40621f14f4b592ca83cd748322019` |
| 26 | `lemma` | [IsChain.not_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/PreorderChainNamespaced.lean/declarations/ischain-not-le.md) | 163 | `result-track:59c22dbb1e5e0c5fd4358b1c21dab61d85cd7cf6640956c2a0cdbc5df16cef7a` |
| 27 | `theorem` | [IsMaxChain.isChain](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/PreorderChainNamespaced.lean/declarations/ismaxchain-ischain.md) | 167 | `result-track:ada6e1a8afa1bbd25a68777237e09e9523e2b10eb8f229c1f4e0f3cccc4795c7` |
| 28 | `theorem` | [IsMaxChain.not_superChain](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/PreorderChainNamespaced.lean/declarations/ismaxchain-not-superchain.md) | 170 | `result-track:a9e4c1de5a85c801719422b87c951deb597a664c7af1866cdbf30760f74c845b` |
| 29 | `theorem` | [IsMaxChain.bot_mem](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/PreorderChainNamespaced.lean/declarations/ismaxchain-bot-mem.md) | 173 | `result-track:a1c45f4e06fe4f7977d974c3bfd46dc4d58988e849141a51bb55e3c580348942` |
| 30 | `theorem` | [IsMaxChain.top_mem](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/PreorderChainNamespaced.lean/declarations/ismaxchain-top-mem.md) | 176 | `result-track:a1a8783ba5e089291333d205de6022ef75c59b3e64d21759741bf9633506b115` |
| 31 | `lemma` | [IsMaxChain.image](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/PreorderChainNamespaced.lean/declarations/ismaxchain-image.md) | 179 | `result-track:3daec273d225eb441d0c130a415d7e37d661fe44e25b857ab945709a523243cc` |
| 32 | `def` | [SuccChain](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/PreorderChainNamespaced.lean/declarations/succchain.md) | 190 | `declaration-track:392367dc945599f6fd847c75dd4bc6ad0bf4ff4d17c0735d2017d16de4bb8324` |
| 33 | `theorem` | [succChain_spec](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/PreorderChainNamespaced.lean/declarations/succchain-spec.md) | 193 | `result-track:b69ffb5ac497bf14e68052582ec6fdf8fcf6ac3cb007415c51027ba4b794d502` |
| 34 | `theorem` | [IsChain.succ](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/PreorderChainNamespaced.lean/declarations/ischain-succ.md) | 199 | `result-track:8be1eb623909f9d0a81b4f7634373955517a0caa0772ace2732326de02223fec` |
| 35 | `theorem` | [IsChain.superChain_succChain](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/PreorderChainNamespaced.lean/declarations/ischain-superchain-succchain.md) | 205 | `result-track:7efee005326de06674c5502eaa98e9c83684e05970a180391ed9d04ae72dcf5a` |
| 36 | `theorem` | [subset_succChain](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/PreorderChainNamespaced.lean/declarations/subset-succchain.md) | 212 | `result-track:990686990fd06aa0155296b7f0b8533ca8c1a17cd16fc1a2fb56b256b1903339` |
| 37 | `structure` | [Flag](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/PreorderChainNamespaced.lean/declarations/flag.md) | 224 | `declaration-track:c37afcc4044db9bfd0c14ca0f3e3dacad05d0f35e631d0439123d8f57aef1856` |
| 38 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/PreorderChainNamespaced.lean/declarations/instance-source-edition-5.md) | 238 | `declaration-track:e0bb1a7aa96c0db99ac08184af16b7a5b5ad86452bfbdcda460dcecd0c450bda` |
| 39 | `theorem` | [ext](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/PreorderChainNamespaced.lean/declarations/ext.md) | 246 | `result-track:4c2794d6202eeddffcafbfd115e58d794a241eb4f4523f4fbe1bae22f3f16bd0` |
| 40 | `theorem` | [mem_coe_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/PreorderChainNamespaced.lean/declarations/mem-coe-iff.md) | 249 | `result-track:f23dc4e09b3efbf3d7d0b15f103c76fa207e94d4c59b95d17eef07314e918306` |
| 41 | `theorem` | [coe_mk](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/PreorderChainNamespaced.lean/declarations/coe-mk.md) | 253 | `result-track:0ecada2eb56963033d7402ff754f099ce7570f9f85d1da3894ad331e1dd8afcf` |
| 42 | `theorem` | [mk_coe](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/PreorderChainNamespaced.lean/declarations/mk-coe.md) | 257 | `result-track:67f1ea525f3287c02f980c20feadb22b35af25c3c6d448dea6ea66ec682e13ff` |
| 43 | `theorem` | [chain_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/PreorderChainNamespaced.lean/declarations/chain-le.md) | 260 | `result-track:49909390d9be8c488e734ef0da8410ad3e523afae45d5a195d7071947d0d623d` |
| 44 | `theorem` | [maxChain](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/PreorderChainNamespaced.lean/declarations/maxchain.md) | 263 | `result-track:de864125777fda6580f5e4c72755017d14940a9a8a3d711ba8a92ff3c13b06f6` |
| 45 | `theorem` | [top_mem](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/PreorderChainNamespaced.lean/declarations/top-mem.md) | 266 | `result-track:4bcb2f5271340e9156fdc9727863bae9e0e4c99da9b55a419cf5a8ab06a0a677` |
| 46 | `theorem` | [bot_mem](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/PreorderChainNamespaced.lean/declarations/bot-mem.md) | 269 | `result-track:b51c3aefa0c91db1d65ed4fddb34ea98f26c935cc7479746c5cab43f98f2d133` |
| 47 | `def` | [ofIsMaxChain](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/PreorderChainNamespaced.lean/declarations/ofismaxchain.md) | 273 | `declaration-track:3600e67a239fa0b664c2458a7f0d956636e546c52da64199e58cd19ce6c1f617` |
| 48 | `lemma` | [coe_ofIsMaxChain](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/PreorderChainNamespaced.lean/declarations/coe-ofismaxchain.md) | 276 | `result-track:04db1c3ac450a61e0f2b0056acfc3c8958776ca28ca4972f4413a3963a65a5de` |
| 49 | `theorem` | [le_or_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/PreorderChainNamespaced.lean/declarations/le-or-le.md) | 284 | `result-track:d4f72c8698bc091f28328337e0fbe1c01af269470fa38bb654f8691821b819d2` |
| 50 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/PreorderChainNamespaced.lean/declarations/instance-source-edition-4.md) | 287 | `declaration-track:b79190f52b1114cd20a187d3d2b8d7010c3d1b5288021619e5cda2e18d837c51` |
| 51 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/PreorderChainNamespaced.lean/declarations/instance-source-edition-2.md) | 290 | `declaration-track:5b218e6bdb60422eec2a121378fa6f950ccbb83dc03cc7e82001f8eda660c0b2` |
| 52 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/PreorderChainNamespaced.lean/declarations/instance-source-edition-3.md) | 293 | `declaration-track:b4b0da70a0bcd4bbf412c18f0377ed4c54aac6553e4a2f535918bb823e35c47f` |
| 53 | `lemma` | [mem_iff_forall_le_or_ge](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/PreorderChainNamespaced.lean/declarations/mem-iff-forall-le-or-ge.md) | 296 | `result-track:e4333e1d67b4739fdc9b2473f773b3f11714458a4098be729186d0123a39edce` |
| 54 | `def` | [map](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/PreorderChainNamespaced.lean/declarations/map.md) | 303 | `declaration-track:32b63e57d9c467e852910102f8758a0f63e0f650e62597bace76023d42251116` |
| 55 | `lemma` | [coe_map](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/PreorderChainNamespaced.lean/declarations/coe-map.md) | 309 | `result-track:eac9b21de4b064709999aeb5734fafbb9ee4ec0f3b05ae1d836034e9064ae8a2` |
| 56 | `lemma` | [symm_map](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/PreorderChainNamespaced.lean/declarations/symm-map.md) | 311 | `result-track:7543dc7f7d6af07c461d58ecbd517db09d73babb30ac67e8a6353adc90d15091` |
| 57 | `theorem` | [chain_lt](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/PreorderChainNamespaced.lean/declarations/chain-lt.md) | 319 | `result-track:bd2646b334c8ab413270c9b5e36674d4d908136b5e4d6334c75c26cd4a58d296` |
| 58 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/PreorderChainNamespaced.lean/declarations/instance-source-edition-6.md) | 321 | `declaration-track:f3694dfa9d55c365dc68b9db2824aa6bfa9d2e2cad46205840913964222780e6` |
| 59 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/PreorderChainNamespaced.lean/declarations/instance.md) | 330 | `declaration-track:5174655eeee63396b980823dcc383024c6de924cb0957f102728b81e00960b65` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=40227dc105937c159a2414cdaaa2617f47a0e4ad016ad79e0917aff09afb65af -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Chain/Variant6521a68746c9eaf72bdfe4991e5b8cc51f979a12c45292d1b191a0824fd215b8.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Chain/Variant6521a68746c9eaf72bdfe4991e5b8cc51f979a12c45292d1b191a0824fd215b8.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
