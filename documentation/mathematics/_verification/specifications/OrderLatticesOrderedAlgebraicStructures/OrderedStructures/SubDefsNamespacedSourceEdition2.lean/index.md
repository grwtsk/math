# Verification target: Sub Defs Namespaced Source Edition2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "97925334e33614e22391acdfeb21affdf506629c",
  "lexical_observation_count": 66,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variant0d7eeae827cf9153e8cf62bb0eb61ed059cb95aebfe88395b125e96d7931dd56.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/SubDefsNamespacedSourceEdition2.lean/index.md) · [Full source](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/SubDefsNamespacedSourceEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `97925334e33614e22391acdfeb21affdf506629c`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variant0d7eeae827cf9153e8cf62bb0eb61ed059cb95aebfe88395b125e96d7931dd56.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variant0d7eeae827cf9153e8cf62bb0eb61ed059cb95aebfe88395b125e96d7931dd56.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Monoid.Unbundled.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Lattice` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [OrderedSub](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/SubDefsNamespacedSourceEdition2.lean/declarations/orderedsub.md) | 60 | `declaration-track:44d717bf4d8d16028b26a7da42b16a365e85ce6044f18ec6c5e0d412f80183e6` |
| 2 | `theorem` | [tsub_le_iff_right](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/SubDefsNamespacedSourceEdition2.lean/declarations/tsub-le-iff-right.md) | 67 | `result-track:8f2f0a4d6e288f6cdb300a46cdaa15a973b27388abe8d89c5b8519d77bb011dc` |
| 3 | `theorem` | [add_tsub_le_right](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/SubDefsNamespacedSourceEdition2.lean/declarations/add-tsub-le-right.md) | 74 | `result-track:aa3f1fb8bcf3b08544a29f5b6127c9dc9e65ac35ae9c61681ca158d8cbae1895` |
| 4 | `theorem` | [le_tsub_add](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/SubDefsNamespacedSourceEdition2.lean/declarations/le-tsub-add.md) | 77 | `result-track:fb93b48706618f3e28efa6f7e76796b7335d4cf570c2996413e8418190fc7c0b` |
| 5 | `theorem` | [tsub_le_iff_left](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/SubDefsNamespacedSourceEdition2.lean/declarations/tsub-le-iff-left.md) | 96 | `result-track:dda0b39962ab259e64a5d57720dd99ff6e89d325c2df765d4a8de09d85fa83dc` |
| 6 | `theorem` | [le_add_tsub](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/SubDefsNamespacedSourceEdition2.lean/declarations/le-add-tsub-source-edition-2.md) | 98 | `result-track:b3a173db2401dcdf1d1970b1a0dde647699a6a18468c341a8abb4a349c82dc8c` |
| 7 | `theorem` | [add_tsub_le_left](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/SubDefsNamespacedSourceEdition2.lean/declarations/add-tsub-le-left.md) | 102 | `result-track:132ae18068b21196169877cb16ea3b5cc16f865f79673bed3237bb1e1aa3c798` |
| 8 | `theorem` | [tsub_le_tsub_right](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/SubDefsNamespacedSourceEdition2.lean/declarations/tsub-le-tsub-right.md) | 105 | `result-track:596f6014feafd796a6817e477e56ef6257849683a82f0766580ff68f41573f06` |
| 9 | `theorem` | [tsub_le_iff_tsub_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/SubDefsNamespacedSourceEdition2.lean/declarations/tsub-le-iff-tsub-le.md) | 108 | `result-track:8a14e86a35b4367299ce9241f574eb2dc37f0483b5193ea3e69787fb7362abbd` |
| 10 | `theorem` | [tsub_tsub_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/SubDefsNamespacedSourceEdition2.lean/declarations/tsub-tsub-le.md) | 111 | `result-track:eb418e8286920aff119bd1bf029b968318c0efa236e5e036e4c9e065a3a72ad3` |
| 11 | `theorem` | [tsub_le_tsub_left](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/SubDefsNamespacedSourceEdition2.lean/declarations/tsub-le-tsub-left.md) | 118 | `result-track:170d64195815a3f4192c88f86a325b6b02fc45c2f6b41df137d78e8f6f8de651` |
| 12 | `theorem` | [tsub_le_tsub](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/SubDefsNamespacedSourceEdition2.lean/declarations/tsub-le-tsub.md) | 121 | `result-track:6bbb4adcf727254d5b53164100281b40f3ff401cacffdc65bfce514f6e27dee4` |
| 13 | `theorem` | [antitone_const_tsub](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/SubDefsNamespacedSourceEdition2.lean/declarations/antitone-const-tsub.md) | 124 | `result-track:f2899e262a2948a3e2203fe2f11a2462dc1fc1a89aace95765e4a797c80e244d` |
| 14 | `theorem` | [add_tsub_le_assoc](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/SubDefsNamespacedSourceEdition2.lean/declarations/add-tsub-le-assoc.md) | 127 | `result-track:da2e3fc6772905f1831750924e4a1f8403f1c2936422f6451eacf5ad5af28e61` |
| 15 | `theorem` | [add_tsub_le_tsub_add](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/SubDefsNamespacedSourceEdition2.lean/declarations/add-tsub-le-tsub-add.md) | 132 | `result-track:eee575849383e484662b32a1f975431cb0cced676ca609526f1dadc37e2cd29f` |
| 16 | `theorem` | [add_le_add_add_tsub](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/SubDefsNamespacedSourceEdition2.lean/declarations/add-le-add-add-tsub.md) | 136 | `result-track:98737db8bf09441e0c68a02c4d56a313e53988d598daf692965a24be12376932` |
| 17 | `theorem` | [le_tsub_add_add](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/SubDefsNamespacedSourceEdition2.lean/declarations/le-tsub-add-add.md) | 140 | `result-track:bf1657d413a5a70e9de0e15e9a365592c87f0394d91c3e1a8548050b5c929aec` |
| 18 | `theorem` | [tsub_le_tsub_add_tsub](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/SubDefsNamespacedSourceEdition2.lean/declarations/tsub-le-tsub-add-tsub.md) | 144 | `result-track:1634756011d487b1cf0e1674624ba47ba4504e40a1e0498e22fec80c547050cc` |
| 19 | `theorem` | [tsub_tsub_tsub_le_tsub](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/SubDefsNamespacedSourceEdition2.lean/declarations/tsub-tsub-tsub-le-tsub.md) | 148 | `result-track:db6e56a1002e34f1bc8f08a1f3ffa426d17054a7c12065827ac2a0a1b788c3bf` |
| 20 | `theorem` | [tsub_tsub_le_tsub_add](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/SubDefsNamespacedSourceEdition2.lean/declarations/tsub-tsub-le-tsub-add.md) | 152 | `result-track:220d44fb4ee64ef5f649c3a382f06b263a45808fa86d439c73455c9c076fb0be` |
| 21 | `theorem` | [add_tsub_add_le_tsub_add_tsub](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/SubDefsNamespacedSourceEdition2.lean/declarations/add-tsub-add-le-tsub-add-tsub.md) | 160 | `result-track:16333e8a2f213d7dc37b40ddb3f2fd489bb9271bc4269461f250ac5f5e471f84` |
| 22 | `theorem` | [add_tsub_add_le_tsub_left](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/SubDefsNamespacedSourceEdition2.lean/declarations/add-tsub-add-le-tsub-left.md) | 167 | `result-track:fd1e068b2f6f65991bb96b90e6aeb75fda428a48b1c7e0270cc00fe9b56c418f` |
| 23 | `theorem` | [add_tsub_add_le_tsub_right](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/SubDefsNamespacedSourceEdition2.lean/declarations/add-tsub-add-le-tsub-right.md) | 172 | `result-track:b8ba7e83a54205ecdc3f764a88997da612b9150e6621329bdec82454160b1c36` |
| 24 | `theorem` | [le_add_tsub_swap](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/SubDefsNamespacedSourceEdition2.lean/declarations/le-add-tsub-swap.md) | 183 | `result-track:f9e4eba46ba0b151e540fff397e91db548a5433e5c08e2a14b676cf903d53bc9` |
| 25 | `theorem` | [le_add_tsub](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/SubDefsNamespacedSourceEdition2.lean/declarations/le-add-tsub.md) | 186 | `result-track:105f3f34ad7eb013e9a901f1a16f64c4c556f6832595e3ea9e6a256a6fe85c60` |
| 26 | `theorem` | [le_tsub_of_add_le_left](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/SubDefsNamespacedSourceEdition2.lean/declarations/le-tsub-of-add-le-left.md) | 190 | `result-track:d146be7c212d73233f964d5640a1176bb894932b8d771e0eb28a3712147620e0` |
| 27 | `theorem` | [le_tsub_of_add_le_right](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/SubDefsNamespacedSourceEdition2.lean/declarations/le-tsub-of-add-le-right.md) | 193 | `result-track:a4659d14543ca1fae383dec42ee643f5e256ed19a06ff4ef6a12674f0f631806` |
| 28 | `theorem` | [le_add_tsub_swap](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/SubDefsNamespacedSourceEdition2.lean/declarations/le-add-tsub-swap-source-edition-2.md) | 205 | `result-track:ff4fccc67b6da38e158f465804696e03a9c438bb43967d463f916576a9343760` |
| 29 | `theorem` | [le_add_tsub'](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/SubDefsNamespacedSourceEdition2.lean/declarations/le-add-tsub-source-edition-3.md) | 208 | `result-track:e1babd6b80c4926aee6191fe42d0b69b8daa9f21277e1531a8971e15ef612b68` |
| 30 | `theorem` | [le_tsub_of_add_le_left](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/SubDefsNamespacedSourceEdition2.lean/declarations/le-tsub-of-add-le-left-source-edition-2.md) | 211 | `result-track:e58b0354e3ff3a17e742d34fd1a4b4fff2431676d946888624bf63ac6ae648a5` |
| 31 | `theorem` | [le_tsub_of_add_le_right](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/SubDefsNamespacedSourceEdition2.lean/declarations/le-tsub-of-add-le-right-source-edition-2.md) | 214 | `result-track:dd55bfc4938c716bf60f43314df7f209dc00f598b4ec884af83d241b151f2a73` |
| 32 | `theorem` | [tsub_nonpos](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/SubDefsNamespacedSourceEdition2.lean/declarations/tsub-nonpos.md) | 223 | `result-track:cb80ad91667078c70f5ff362743c70ecebe3717e7265a098b0365cb2c141dd04` |
| 33 | `theorem` | [tsub_tsub](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/SubDefsNamespacedSourceEdition2.lean/declarations/tsub-tsub.md) | 234 | `result-track:ee5e0e89f0c1d777ca67def9065296940f72dd53a60595a1bb09f882230158eb` |
| 34 | `theorem` | [tsub_add_eq_tsub_tsub](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/SubDefsNamespacedSourceEdition2.lean/declarations/tsub-add-eq-tsub-tsub.md) | 239 | `result-track:062f9e4675eeb6b54b675819542c3a741060de52b06dc99f340ef015e04038f4` |
| 35 | `theorem` | [tsub_add_eq_tsub_tsub_swap](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/SubDefsNamespacedSourceEdition2.lean/declarations/tsub-add-eq-tsub-tsub-swap.md) | 242 | `result-track:974c65aecab829e36fc1e2efa08a648443079cb46ed8c175b3124564047a451c` |
| 36 | `theorem` | [tsub_right_comm](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/SubDefsNamespacedSourceEdition2.lean/declarations/tsub-right-comm.md) | 246 | `result-track:2564b974c8b6130af9f2bbf75e4dcc95c3043160345ec9ad8e70f1fe5234a5e8` |
| 37 | `theorem` | [tsub_eq_of_eq_add](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/SubDefsNamespacedSourceEdition2.lean/declarations/tsub-eq-of-eq-add.md) | 256 | `result-track:01b4cb77562c01841cdf52df57c469b8fbc8864ee83a21e611a827f2cf2dc005` |
| 38 | `lemma` | [tsub_eq_of_eq_add'](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/SubDefsNamespacedSourceEdition2.lean/declarations/tsub-eq-of-eq-add-source-edition-3.md) | 263 | `result-track:d821e7459d330e27045e330ed585609847f6a397a5147460260f01aef99fc319` |
| 39 | `theorem` | [eq_tsub_of_add_eq](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/SubDefsNamespacedSourceEdition2.lean/declarations/eq-tsub-of-add-eq-source-edition-2.md) | 268 | `result-track:828b21051a67c9bdf35de57bee8a37dd349b3273408b1d74cc8268f6114ba73c` |
| 40 | `lemma` | [eq_tsub_of_add_eq'](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/SubDefsNamespacedSourceEdition2.lean/declarations/eq-tsub-of-add-eq.md) | 273 | `result-track:4d604286fbe6414ab1d081e660b1ca87bb27df6696de6a5fa0421a8819fbd05f` |
| 41 | `theorem` | [tsub_eq_of_eq_add_rev](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/SubDefsNamespacedSourceEdition2.lean/declarations/tsub-eq-of-eq-add-rev.md) | 278 | `result-track:1da265d9c0b741c9d1eda82276d0a780713eface1a1c1cc2a23254e287a38cb6` |
| 42 | `lemma` | [tsub_eq_of_eq_add_rev'](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/SubDefsNamespacedSourceEdition2.lean/declarations/tsub-eq-of-eq-add-rev-source-edition-2.md) | 283 | `result-track:6a46b3b5d8b27de2b3cd07960f0b66d993023176900e99523bb6c560d1621267` |
| 43 | `theorem` | [add_tsub_cancel_right](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/SubDefsNamespacedSourceEdition2.lean/declarations/add-tsub-cancel-right-source-edition-2.md) | 288 | `result-track:9ba3acfe8d20efce53e73a4109759fbbfc4fa34863f57542d87acce4db581eb2` |
| 44 | `theorem` | [add_tsub_cancel_left](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/SubDefsNamespacedSourceEdition2.lean/declarations/add-tsub-cancel-left-source-edition-2.md) | 292 | `result-track:5aeaa2c474e2606478dcb3c1ac8a7992d3083e0896830423e8ac5614c0968d63` |
| 45 | `theorem` | [lt_add_of_tsub_lt_left](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/SubDefsNamespacedSourceEdition2.lean/declarations/lt-add-of-tsub-lt-left-source-edition-2.md) | 295 | `result-track:947549e019c72414542c9bfe27b3f41867a0a101087eba41bd9c2090e8943c65` |
| 46 | `theorem` | [lt_add_of_tsub_lt_right](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/SubDefsNamespacedSourceEdition2.lean/declarations/lt-add-of-tsub-lt-right.md) | 301 | `result-track:220703b0de4fedf1c57c6ccbc6801a78284282316a0e2875c00b6009efe78aa4` |
| 47 | `theorem` | [lt_tsub_of_add_lt_right](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/SubDefsNamespacedSourceEdition2.lean/declarations/lt-tsub-of-add-lt-right-source-edition-2.md) | 308 | `result-track:fd67180424640e3fde07b86aa61a503e8a81087d8de00ab16a9d4a700c4861ee` |
| 48 | `theorem` | [lt_tsub_of_add_lt_left](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/SubDefsNamespacedSourceEdition2.lean/declarations/lt-tsub-of-add-lt-left.md) | 313 | `result-track:58ec8061a75ac68528c50c4d460a87959aa450a08ec6732c6dc2b5de157189f9` |
| 49 | `theorem` | [tsub_eq_of_eq_add](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/SubDefsNamespacedSourceEdition2.lean/declarations/tsub-eq-of-eq-add-source-edition-2.md) | 325 | `result-track:16f9179e6cfd342b2c32b4c7c404c5e035c83240219591b5dc0e69abb18e2161` |
| 50 | `theorem` | [eq_tsub_of_add_eq](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/SubDefsNamespacedSourceEdition2.lean/declarations/eq-tsub-of-add-eq-source-edition-3.md) | 328 | `result-track:c5999856e6c0a9a4d810f011672f88b68d24750e9260edde170647e2faa26f87` |
| 51 | `theorem` | [tsub_eq_of_eq_add_rev](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/SubDefsNamespacedSourceEdition2.lean/declarations/tsub-eq-of-eq-add-rev-source-edition-3.md) | 331 | `result-track:a193dfd64bab302a6a46338c8cfbe97694c89e522cd7c9dff5edacf990279353` |
| 52 | `theorem` | [add_tsub_cancel_right](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/SubDefsNamespacedSourceEdition2.lean/declarations/add-tsub-cancel-right.md) | 335 | `result-track:5d1723e2a6c2d28bca696a141f496af97e90d72e8ee981e6d0e28dbaa82c6fe5` |
| 53 | `theorem` | [add_tsub_cancel_left](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/SubDefsNamespacedSourceEdition2.lean/declarations/add-tsub-cancel-left.md) | 339 | `result-track:2c6c3e2cf78942a154dc46f2f1ae10130ed208a65799c5d7a526ff7905939828` |
| 54 | `theorem` | [tsub_eq_tsub_of_add_eq_add](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/SubDefsNamespacedSourceEdition2.lean/declarations/tsub-eq-tsub-of-add-eq-add.md) | 343 | `result-track:692ae15895aec561411b8c9ce436e922c0662d1c4d2da99fab9aca41607c0e79` |
| 55 | `theorem` | [lt_add_of_tsub_lt_left](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/SubDefsNamespacedSourceEdition2.lean/declarations/lt-add-of-tsub-lt-left.md) | 348 | `result-track:8a1505af954b0090a1f3438cc3db9f6cf7007620ff5118fb33c68abecf7e9360` |
| 56 | `theorem` | [lt_add_of_tsub_lt_right](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/SubDefsNamespacedSourceEdition2.lean/declarations/lt-add-of-tsub-lt-right-source-edition-2.md) | 351 | `result-track:ca0bcf528494ee7c53484575ab38ad8519cfd027b2f3ffa80ad318f1d1098c2a` |
| 57 | `theorem` | [lt_tsub_of_add_lt_left](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/SubDefsNamespacedSourceEdition2.lean/declarations/lt-tsub-of-add-lt-left-source-edition-2.md) | 356 | `result-track:8d938c68c8b5c26bb3c1e64f900338c8f7765c554b0a76997b41a7776632b73d` |
| 58 | `theorem` | [lt_tsub_of_add_lt_right](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/SubDefsNamespacedSourceEdition2.lean/declarations/lt-tsub-of-add-lt-right.md) | 359 | `result-track:075a9057bb0b579468311d871ea3e54da7c894e564861ac57becb92d04b2029c` |
| 59 | `theorem` | [add_tsub_add_eq_tsub_right](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/SubDefsNamespacedSourceEdition2.lean/declarations/add-tsub-add-eq-tsub-right.md) | 368 | `result-track:51d36fa9857615a6bf52e07d73652e58e3eae5ae19f9b5f3e6f23590f0bb64b1` |
| 60 | `theorem` | [add_tsub_add_eq_tsub_left](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/SubDefsNamespacedSourceEdition2.lean/declarations/add-tsub-add-eq-tsub-left.md) | 374 | `result-track:d3978478e9263554fa5297446ae08a6efc114fa9a81b827107d6fa27068f0f80` |
| 61 | `theorem` | [lt_of_tsub_lt_tsub_right](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/SubDefsNamespacedSourceEdition2.lean/declarations/lt-of-tsub-lt-tsub-right.md) | 389 | `result-track:f9d3d1a82e701fa9313b189e1902624b7cd2d2cdf51755456ed9046e6d07db2f` |
| 62 | `theorem` | [lt_tsub_iff_right](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/SubDefsNamespacedSourceEdition2.lean/declarations/lt-tsub-iff-right.md) | 393 | `result-track:bcd9825e125eeb96424718fbc3ceaf2da568fca8dd422511698a74f6295a9e26` |
| 63 | `theorem` | [lt_tsub_iff_left](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/SubDefsNamespacedSourceEdition2.lean/declarations/lt-tsub-iff-left.md) | 397 | `result-track:eb5805b2b0236b53b8a659868b0369068bda33fe389cd9c6ae29082bd19e632d` |
| 64 | `theorem` | [lt_tsub_comm](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/SubDefsNamespacedSourceEdition2.lean/declarations/lt-tsub-comm.md) | 400 | `result-track:d0dd61336fe70fa7f8fa9d18678bd6a5ead1e3520789a4b393426f9db982b952` |
| 65 | `theorem` | [lt_of_tsub_lt_tsub_left](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/SubDefsNamespacedSourceEdition2.lean/declarations/lt-of-tsub-lt-tsub-left.md) | 408 | `result-track:bbf5697bfc23f8794ab26ce660675f86556eeba4feb831f121956416df489edf` |
| 66 | `theorem` | [tsub_zero](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/SubDefsNamespacedSourceEdition2.lean/declarations/tsub-zero.md) | 420 | `result-track:1e66f09aed477dce56922127688aa4f633241aafdd5efed331337da9d59f5160` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=fd32a7a62ad49d787177f62d3694a53f8a01f0569bd900fe74f42c69fbc0771b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variant0d7eeae827cf9153e8cf62bb0eb61ed059cb95aebfe88395b125e96d7931dd56.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variant0d7eeae827cf9153e8cf62bb0eb61ed059cb95aebfe88395b125e96d7931dd56.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
