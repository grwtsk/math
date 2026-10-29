# Verification target: Basic Basic Public Ordering

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a6cf44522e5213d4040988854df6e177be4fe5bf",
  "lexical_observation_count": 174,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant88008e69462e197ac4183f462a4d8046c97e45c3ac9172cf3b4c250f84cae1a3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicPublicOrdering.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicPublicOrdering.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a6cf44522e5213d4040988854df6e177be4fe5bf`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant88008e69462e197ac4183f462a4d8046c97e45c3ac9172cf3b4c250f84cae1a3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant88008e69462e197ac4183f462a4d8046c97e45c3ac9172cf3b4c250f84cae1a3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.ByCases` — import line 9; external provider; requires a separately pinned dependency.
- `Init.Ext` — import line 10; external provider; requires a separately pinned dependency.
- `Init.Classical` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [Ordering](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicPublicOrdering.lean/declarations/ordering.md) | 25 | `declaration-track:63355bb742b0fa3c687a9553eaea0aa514d5f7aeba9080e617cbf210b2634aa0` |
| 2 | `def` | [swap](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicPublicOrdering.lean/declarations/swap.md) | 45 | `declaration-track:7e8c49bab749ef5846f805d44f759ca87f9e40a3cf16d6b61e23726ce45ff33a` |
| 3 | `def` | [«then»](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicPublicOrdering.lean/declarations/then.md) | 94 | `declaration-track:1d22648904b46cc88318dbefba0c5fd21a9796e02fd3038ba3e0432dda9921bf` |
| 4 | `def` | [then'](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicPublicOrdering.lean/declarations/then-source-edition-2.md) | 100 | `declaration-track:80023fa5595db76bc039f1fb454c641c2b52002a5f27503c8d5fb5da42da0202` |
| 5 | `def` | [isEq](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicPublicOrdering.lean/declarations/iseq.md) | 107 | `declaration-track:939ac20f69e0b974cea22095767a292ebd6ae127ec1e8e8182b099b7e482250b` |
| 6 | `def` | [isNe](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicPublicOrdering.lean/declarations/isne.md) | 115 | `declaration-track:90aefd38b0973698ba67bb1249d6cde816b2406141f21d05711c1a05fd8fa8d9` |
| 7 | `def` | [isLE](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicPublicOrdering.lean/declarations/isle.md) | 123 | `declaration-track:a8af29232038f8d34e262d0747c8e4505f4ce00747707bea1872864695ae0205` |
| 8 | `def` | [isLT](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicPublicOrdering.lean/declarations/islt.md) | 131 | `declaration-track:874a0ba1ccf8b38de1a8fd8510bef9df935c0e8f47ba4d24494e16bcc7bd66af` |
| 9 | `def` | [isGT](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicPublicOrdering.lean/declarations/isgt.md) | 139 | `declaration-track:ac7104a485e42d74be311599b77cf773715e216943218580a6db6eb8c15b3ff8` |
| 10 | `def` | [isGE](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicPublicOrdering.lean/declarations/isge.md) | 147 | `declaration-track:359032b6c48c2e6684a2442ab2652d34fc2068e4173dfa3376fbce9b415bcb33` |
| 11 | `theorem` | [«forall»](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicPublicOrdering.lean/declarations/forall.md) | 153 | `result-track:5cca213c9496448fbbe4444a8017a7be41df9330319b1a21dfd0e005419a5175` |
| 12 | `theorem` | [«exists»](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicPublicOrdering.lean/declarations/exists.md) | 159 | `result-track:d50c59a46ec52651cd9bf19b8d3319959bfe97b59f75281fa72f0200430ffe77` |
| 13 | `instance` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicPublicOrdering.lean/declarations/instance-source-edition-11.md) | 167 | `declaration-track:b5f24e5b96baa3ebc182973b2c1c91b517566cb26d83196a8dc130034089e219` |
| 14 | `instance` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicPublicOrdering.lean/declarations/instance-source-edition-7.md) | 170 | `declaration-track:5848ecaab34e57aff21be59aa1c7af372a7f3cb55e4eff72fefd03f508d5ec6c` |
| 15 | `theorem` | [isLT_lt](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicPublicOrdering.lean/declarations/islt-lt.md) | 173 | `result-track:f3957deac35bdf4e7fdc7e62468fee51e78c41914371629b93d149f3f0da99b9` |
| 16 | `theorem` | [isLE_lt](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicPublicOrdering.lean/declarations/isle-lt.md) | 174 | `result-track:159f9ab0efeb1ff306042c7d39cd0b5024064a0b8e018c5234707753d7efd651` |
| 17 | `theorem` | [isEq_lt](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicPublicOrdering.lean/declarations/iseq-lt.md) | 175 | `result-track:359f89d4235e5e976f21cefa56646b3f3868312b9438c13c675d02e861c88fec` |
| 18 | `theorem` | [isNe_lt](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicPublicOrdering.lean/declarations/isne-lt.md) | 176 | `result-track:1947b230a175a1113dfe944e092a5ee508eee3aeb969efa0b6d906615315b02e` |
| 19 | `theorem` | [isGE_lt](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicPublicOrdering.lean/declarations/isge-lt.md) | 177 | `result-track:c4924846e4212c90c320e432b940ae98fafd746929166d1f4bfa4d66aed12fc4` |
| 20 | `theorem` | [isGT_lt](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicPublicOrdering.lean/declarations/isgt-lt.md) | 178 | `result-track:55a5c669e4c331286b47b54a04a15d02a024031497c242ad2593e3609beee849` |
| 21 | `theorem` | [isLT_eq](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicPublicOrdering.lean/declarations/islt-eq.md) | 180 | `result-track:cd4154b3c77fa7bf14b6c06c18bd4eed4f2e1cec76aa0fe4dda5889e4eae6ded` |
| 22 | `theorem` | [isLE_eq](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicPublicOrdering.lean/declarations/isle-eq.md) | 181 | `result-track:93034d61ce8c74dcce3a7098d7a8af57223059bed94ddfa0944d3361219b4506` |
| 23 | `theorem` | [isEq_eq](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicPublicOrdering.lean/declarations/iseq-eq.md) | 182 | `result-track:f0056ae89ab47a885ae87dce3631093ac7a2bf060ccd49b9ac1c549c91ace7d9` |
| 24 | `theorem` | [isNe_eq](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicPublicOrdering.lean/declarations/isne-eq.md) | 183 | `result-track:ebcee518b2dc7101609ff22089ae153f78b11d7a963006e1411350ca25049055` |
| 25 | `theorem` | [isGE_eq](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicPublicOrdering.lean/declarations/isge-eq.md) | 184 | `result-track:052c88be4adfaf6dd665c4569b3f244562d0f3ca215e488dc0a8704f61e9ee45` |
| 26 | `theorem` | [isGT_eq](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicPublicOrdering.lean/declarations/isgt-eq.md) | 185 | `result-track:000ca9a7d5c4ea7c4d026f63f5ef8fb06739d747d3562b510aa6a5e064a10f1e` |
| 27 | `theorem` | [isLT_gt](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicPublicOrdering.lean/declarations/islt-gt.md) | 187 | `result-track:7439f6a0b50bd77aa359b016f162d8e62bb2baef49931f5b0dec135152165f1e` |
| 28 | `theorem` | [isLE_gt](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicPublicOrdering.lean/declarations/isle-gt.md) | 188 | `result-track:e821a3aa3a8363a8d3fa346fba20a0038f85a54cd425361c8cb223ba15083bd0` |
| 29 | `theorem` | [isEq_gt](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicPublicOrdering.lean/declarations/iseq-gt.md) | 189 | `result-track:a9001451479beecf01dc4c85967ec13f4ec5cbed0596733257aace8d55240808` |
| 30 | `theorem` | [isNe_gt](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicPublicOrdering.lean/declarations/isne-gt.md) | 190 | `result-track:a6bdb270b8303109918821eb9a63ac6ee9629d417b1deb0301690ba26d980ea3` |
| 31 | `theorem` | [isGE_gt](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicPublicOrdering.lean/declarations/isge-gt.md) | 191 | `result-track:24909255766adb60873ab654e633671c1f026d4dfe760727dd1dae56f7a99870` |
| 32 | `theorem` | [isGT_gt](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicPublicOrdering.lean/declarations/isgt-gt.md) | 192 | `result-track:ea81929202583c769ee606a5fefa4d0d1d492af26c2ad480bfd33db699811b37` |
| 33 | `theorem` | [lt_beq_eq](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicPublicOrdering.lean/declarations/lt-beq-eq.md) | 194 | `result-track:cef82d08b3627333bf599183db1229a0f5617fa0b56a1ec37cf5c692ed2a38dc` |
| 34 | `theorem` | [lt_beq_gt](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicPublicOrdering.lean/declarations/lt-beq-gt.md) | 195 | `result-track:9856e46fab986d4e7042c75119d02ebecd2a00db57453a4d9703ce110b3bcb70` |
| 35 | `theorem` | [eq_beq_lt](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicPublicOrdering.lean/declarations/eq-beq-lt.md) | 196 | `result-track:fa85bd95447c89f71449ef6a94e5cfaee5a3b0eb5c435d0d80c4a6788287faca` |
| 36 | `theorem` | [eq_beq_gt](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicPublicOrdering.lean/declarations/eq-beq-gt.md) | 197 | `result-track:a309224ae909d5f199e0c5ddc562592acc3302f1c97d937b518d73fffb85b2d5` |
| 37 | `theorem` | [gt_beq_lt](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicPublicOrdering.lean/declarations/gt-beq-lt.md) | 198 | `result-track:4b3d8f73dc592a948881ac22ab819436a7837662b06c8275281b7970006c7171` |
| 38 | `theorem` | [gt_beq_eq](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicPublicOrdering.lean/declarations/gt-beq-eq.md) | 199 | `result-track:7760a0c7a7edbc88b90f10fe9a24e6e6ec697a91aaf0096d1296c1c7710d45ef` |
| 39 | `theorem` | [swap_lt](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicPublicOrdering.lean/declarations/swap-lt.md) | 201 | `result-track:8e68fd3353bc92416c9acdf32103232869c0f609520ce7fab1870d59de8f9135` |
| 40 | `theorem` | [swap_eq](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicPublicOrdering.lean/declarations/swap-eq.md) | 202 | `result-track:c96b98d818d4bd7258ca436b29735c6bf3da48e650805b40421e05d2aa4eb04c` |
| 41 | `theorem` | [swap_gt](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicPublicOrdering.lean/declarations/swap-gt.md) | 203 | `result-track:6263b88b44251ed60a252dcbaf8b41e1c2ca371bc20f71384d7c02d28897e7e8` |
| 42 | `theorem` | [eq_eq_of_isLE_of_isLE_swap](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicPublicOrdering.lean/declarations/eq-eq-of-isle-of-isle-swap.md) | 205 | `result-track:6c21347e9b3b85d07fc774c1204643d5e29ad31899f60ebdfd6d70216a819848` |
| 43 | `theorem` | [eq_eq_of_isGE_of_isGE_swap](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicPublicOrdering.lean/declarations/eq-eq-of-isge-of-isge-swap.md) | 206 | `result-track:7a94fed4233790d20ff3d47f107a49159e267d2e17dfb3cf7dc020834ef22caf` |
| 44 | `theorem` | [eq_eq_of_isLE_of_isGE](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicPublicOrdering.lean/declarations/eq-eq-of-isle-of-isge.md) | 207 | `result-track:c0211d6ed2a75a38d6b3cea6a468c716fa4ddf71eea2bf031462a9a5c0b99522` |
| 45 | `theorem` | [eq_eq_iff_isLE_and_isGE](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicPublicOrdering.lean/declarations/eq-eq-iff-isle-and-isge.md) | 208 | `result-track:24983bc8c9359bb8f9a2f60f1bdf9702401aedbad57a9d9c0ef8ffa0c37e4d74` |
| 46 | `theorem` | [eq_swap_iff_eq_eq](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicPublicOrdering.lean/declarations/eq-swap-iff-eq-eq.md) | 209 | `result-track:7bd92834e3de98da5bb0d1e8855c3472faa56532ea341d3a0137b169faf45eae` |
| 47 | `theorem` | [eq_eq_of_eq_swap](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicPublicOrdering.lean/declarations/eq-eq-of-eq-swap.md) | 210 | `result-track:ac199677c7b284ec8179feddb2ce25e09e4b7006a44268df0b447cd976b4b1a2` |
| 48 | `theorem` | [isLE_eq_false](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicPublicOrdering.lean/declarations/isle-eq-false.md) | 212 | `result-track:4587c3ce59248d57f0988925ee21a1876efc9ece9bb45bf224d8591ce9cfe10c` |
| 49 | `theorem` | [isGE_eq_false](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicPublicOrdering.lean/declarations/isge-eq-false.md) | 213 | `result-track:c484d02a701837c4b611e769d93b80a927c2e9a20c1f56dedd3f8277a263557c` |
| 50 | `theorem` | [isNe_eq_false](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicPublicOrdering.lean/declarations/isne-eq-false.md) | 214 | `result-track:394195d7ae14fd92893f4d3f4405ea4e540e6f06b6f133118d3ffeb4471c43c4` |
| 51 | `theorem` | [isEq_eq_false](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicPublicOrdering.lean/declarations/iseq-eq-false.md) | 215 | `result-track:5751a674245f5905d1d516bcdadb690a03f5bbc595ee702f0f8f79805e68c2ca` |
| 52 | `theorem` | [swap_eq_gt](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicPublicOrdering.lean/declarations/swap-eq-gt.md) | 217 | `result-track:337d94d6bebbfa3c0e37e922a39c70c15da30fe259a9b4d920d2253eb6b1a0c0` |
| 53 | `theorem` | [swap_eq_lt](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicPublicOrdering.lean/declarations/swap-eq-lt.md) | 218 | `result-track:2ed8c06347683e1418d7620e0b09ff9ffa644ee4d101c61a8db32540880b0ece` |
| 54 | `theorem` | [swap_eq_eq](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicPublicOrdering.lean/declarations/swap-eq-eq.md) | 219 | `result-track:c4cf57b91dd340e6f073b014d78b83f138d389a715f011313cfbbbb32864a74c` |
| 55 | `theorem` | [isLT_swap](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicPublicOrdering.lean/declarations/islt-swap.md) | 221 | `result-track:76993af97dfdf626954aecfa0a8e052a6007e7f2ea7142bd62b5f66eae19f15e` |
| 56 | `theorem` | [isLE_swap](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicPublicOrdering.lean/declarations/isle-swap.md) | 222 | `result-track:0edf381501b18dc1c5af9da0c1c5d2d107d36c0626c74607834fcc276289530f` |
| 57 | `theorem` | [isEq_swap](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicPublicOrdering.lean/declarations/iseq-swap.md) | 223 | `result-track:ccb01b4f2aa5f1917e8cc235895c13378a6f6594d59d0c9914b34934652a22ef` |
| 58 | `theorem` | [isNe_swap](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicPublicOrdering.lean/declarations/isne-swap.md) | 224 | `result-track:3cf1a45380080321dc77dc180c01c2e2bc404dab5a828125ab6a3b3c47d44672` |
| 59 | `theorem` | [isGE_swap](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicPublicOrdering.lean/declarations/isge-swap.md) | 225 | `result-track:6234c2d2197d644a23285bfb9962224189548bda1456607251cce76505a21b7d` |
| 60 | `theorem` | [isGT_swap](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicPublicOrdering.lean/declarations/isgt-swap.md) | 226 | `result-track:72a16b37205cc081cf9a581b7d7e7600857f372531ea9c62029404638551b250` |
| 61 | `theorem` | [isLE_of_eq_lt](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicPublicOrdering.lean/declarations/isle-of-eq-lt.md) | 228 | `result-track:e50276d5b8f82cc66ca9d592d0f0e01fcf74e82867f3bfd61df096769671ed1c` |
| 62 | `theorem` | [isLE_of_eq_eq](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicPublicOrdering.lean/declarations/isle-of-eq-eq.md) | 229 | `result-track:66905b904428fd1f6f5c8154048ddbc9f000cd0e02b50cded4c93f0b4a462c29` |
| 63 | `theorem` | [isGE_of_eq_gt](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicPublicOrdering.lean/declarations/isge-of-eq-gt.md) | 230 | `result-track:18478fe1bf19bb93a2e48cb7efc8c24e9c4436f7859f5dbb3e43b44bc56ab034` |
| 64 | `theorem` | [isGE_of_eq_eq](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicPublicOrdering.lean/declarations/isge-of-eq-eq.md) | 231 | `result-track:14f2c9de8999c0bb4cada39b677d5c5cc0e524650fd76e737e95d7b790006605` |
| 65 | `theorem` | [ne_eq_of_eq_lt](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicPublicOrdering.lean/declarations/ne-eq-of-eq-lt.md) | 233 | `result-track:58064514a704618eba4874fac191cac385b3b767a9be441c62ec5fecff11adf4` |
| 66 | `theorem` | [ne_eq_of_eq_gt](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicPublicOrdering.lean/declarations/ne-eq-of-eq-gt.md) | 234 | `result-track:7be7e54c66f7d2a39015238824798452c2cab5259a8a09dc9d4af75b4f118129` |
| 67 | `theorem` | [isLT_iff_eq_lt](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicPublicOrdering.lean/declarations/islt-iff-eq-lt.md) | 236 | `result-track:54d942f4bcaf5f83142316c1fe9f81e22c83d5307c6ada99c7d13812825061a4` |
| 68 | `theorem` | [isGT_iff_eq_gt](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicPublicOrdering.lean/declarations/isgt-iff-eq-gt.md) | 237 | `result-track:dcdce83a48a5b3ab02a30ddb2da8e959b58451bcb95d90366ea3addcc4e65925` |
| 69 | `theorem` | [isEq_iff_eq_eq](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicPublicOrdering.lean/declarations/iseq-iff-eq-eq.md) | 238 | `result-track:35ff7bc9a2e985d19d45a970f0a52dcb1114d145a3e0aeb5717372765092c17c` |
| 70 | `theorem` | [isNe_iff_ne_eq](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicPublicOrdering.lean/declarations/isne-iff-ne-eq.md) | 239 | `result-track:4844aec2aefaf6ba3de641293ed892d50d8643c6bdd11fc0dc3633dec4b45586` |
| 71 | `theorem` | [isLE_iff_ne_gt](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicPublicOrdering.lean/declarations/isle-iff-ne-gt.md) | 241 | `result-track:1b87a0dec2c596471adb326053fa4610b78b81403937931de628e349fe9c4648` |
| 72 | `theorem` | [isGE_iff_ne_lt](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicPublicOrdering.lean/declarations/isge-iff-ne-lt.md) | 242 | `result-track:619a1486b0bb4e0c1d4d0745db422879fe54a0ac498e71906ce1865ae6cef7b7` |
| 73 | `theorem` | [isLE_iff_eq_lt_or_eq_eq](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicPublicOrdering.lean/declarations/isle-iff-eq-lt-or-eq-eq.md) | 243 | `result-track:9cbd4a481bb689ed247633ef6c2194248c7c4d6e3933a3193251730094a44c79` |
| 74 | `theorem` | [isGE_iff_eq_gt_or_eq_eq](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicPublicOrdering.lean/declarations/isge-iff-eq-gt-or-eq-eq.md) | 244 | `result-track:13e66c733c542d25a20fca98263ee1f14e92b4467376743b1a17f4ce9a17f4d5` |
| 75 | `theorem` | [isLT_eq_beq_lt](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicPublicOrdering.lean/declarations/islt-eq-beq-lt.md) | 246 | `result-track:16901717fb128f684336b3c8c95f1f04e05325fbfef5c1f7146e3d7ff57b7ab3` |
| 76 | `theorem` | [isLE_eq_not_beq_gt](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicPublicOrdering.lean/declarations/isle-eq-not-beq-gt.md) | 247 | `result-track:4c86f45b6c811de71634506408ee08a55e1228f6d196b5e663e8469f368aeb89` |
| 77 | `theorem` | [isLE_eq_isLT_or_isEq](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicPublicOrdering.lean/declarations/isle-eq-islt-or-iseq.md) | 248 | `result-track:0c53fe40a6006bdc8e452323b5e4f6d566596eb0b03a1303c5bf23777c595ae7` |
| 78 | `theorem` | [isGT_eq_beq_gt](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicPublicOrdering.lean/declarations/isgt-eq-beq-gt.md) | 249 | `result-track:0edcbf8bdf2b632787f61ecf86d712d1b504245425f59df791ce45fed78a9bd9` |
| 79 | `theorem` | [isGE_eq_not_beq_lt](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicPublicOrdering.lean/declarations/isge-eq-not-beq-lt.md) | 250 | `result-track:fc3a92b55689f322a6a4df48b65958a5d72117cac022d81d1e4eeb2e54587a96` |
| 80 | `theorem` | [isGE_eq_isGT_or_isEq](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicPublicOrdering.lean/declarations/isge-eq-isgt-or-iseq.md) | 251 | `result-track:3cfbdd958f07cab0e2a7835211b6b55183bf8d228e74a38a69eb9ab3ba44579f` |
| 81 | `theorem` | [isEq_eq_beq_eq](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicPublicOrdering.lean/declarations/iseq-eq-beq-eq.md) | 252 | `result-track:5b54748c1611b6eb6e0f212b7353edb12d6a2c433947f2e45da39414ab3b5b85` |
| 82 | `theorem` | [isNe_eq_not_beq_eq](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicPublicOrdering.lean/declarations/isne-eq-not-beq-eq.md) | 253 | `result-track:0c0e3a365305200e19522167f7947ab92d265a86299bd3caae360e01f0bc0bee` |
| 83 | `theorem` | [isNe_eq_isLT_or_isGT](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicPublicOrdering.lean/declarations/isne-eq-islt-or-isgt.md) | 254 | `result-track:5d256040ffb80ced2a6527263afcf7c6ba4dd1220dcc5a67ef7bb09e96d80aff` |
| 84 | `theorem` | [not_isLT_eq_isGE](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicPublicOrdering.lean/declarations/not-islt-eq-isge.md) | 256 | `result-track:713e16d8b529faa1a1b07567598fea66c4d76745fb6911d4d6cc212e0abab856` |
| 85 | `theorem` | [not_isLE_eq_isGT](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicPublicOrdering.lean/declarations/not-isle-eq-isgt.md) | 257 | `result-track:4e5fc73e6c2f18659ec6c025cae1cb72bb13e33c05fecae86b9df37e554cbdb8` |
| 86 | `theorem` | [not_isGT_eq_isLE](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicPublicOrdering.lean/declarations/not-isgt-eq-isle.md) | 258 | `result-track:10e82421b6cf8d097122499b784b38182ecab69df272b12a788672c2f705c884` |
| 87 | `theorem` | [not_isGE_eq_isLT](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicPublicOrdering.lean/declarations/not-isge-eq-islt.md) | 259 | `result-track:487aa66c026bcba8eb7b9dcadc3e0e2f0bac1f6cc34e52882ffa83311a4540ff` |
| 88 | `theorem` | [not_isNe_eq_isEq](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicPublicOrdering.lean/declarations/not-isne-eq-iseq.md) | 260 | `result-track:0eeb502ee4caa07cffd18fcfd5973e7b787eef223359cb240d451c2930114113` |
| 89 | `theorem` | [not_isEq_eq_isNe](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicPublicOrdering.lean/declarations/not-iseq-eq-isne.md) | 261 | `result-track:d6700a3381d4508420c48ae802da363892db2b9710086fc1d59641601739d593` |
| 90 | `theorem` | [ne_lt_iff_isGE](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicPublicOrdering.lean/declarations/ne-lt-iff-isge.md) | 263 | `result-track:b4a350d61a662abc8e307a9a0c47dcd1d4c77d30f9fc114498dfae2f38a7afc7` |
| 91 | `theorem` | [ne_gt_iff_isLE](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicPublicOrdering.lean/declarations/ne-gt-iff-isle.md) | 264 | `result-track:918d6523f31ea1bfb26a656e30e1dd1e1ba34853ebb799a6bf6728b60380a029` |
| 92 | `theorem` | [swap_swap](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicPublicOrdering.lean/declarations/swap-swap.md) | 266 | `result-track:0ad20cfeab007806256da4cc9478bf71b33eff719503d47cdf1afd49e0f58a4a` |
| 93 | `theorem` | [swap_inj](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicPublicOrdering.lean/declarations/swap-inj.md) | 267 | `result-track:b2e2673d0f773f06de40843f222660752b29b5dcd78dac1c985df5dfbfc9f274` |
| 94 | `theorem` | [swap_then](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicPublicOrdering.lean/declarations/swap-then.md) | 269 | `result-track:49005232597046aff9531631af2cc2a9cac890da14da7b55e1ce24cd129b7aa2` |
| 95 | `theorem` | [then_eq_lt](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicPublicOrdering.lean/declarations/then-eq-lt.md) | 271 | `result-track:f9f7aade43dff2a5c75bb0865d430f253cb2a70bf97f3ddf5417551e998918e6` |
| 96 | `theorem` | [then_eq_gt](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicPublicOrdering.lean/declarations/then-eq-gt.md) | 272 | `result-track:cd0157464eb60cafe6b34d6b0fcd15f82bfea2a820aeb93e67d5882c7a828f4d` |
| 97 | `theorem` | [then_eq_eq](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicPublicOrdering.lean/declarations/then-eq-eq.md) | 273 | `result-track:7c95d8b30411118164b02df1419d296227038091455fb867bd6deb4e5daf9f12` |
| 98 | `theorem` | [isLT_then](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicPublicOrdering.lean/declarations/islt-then.md) | 275 | `result-track:ef007ada5d562a1eb51098e6295d5c74386565cb67db8aacaa4b718c3752db5a` |
| 99 | `theorem` | [isEq_then](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicPublicOrdering.lean/declarations/iseq-then.md) | 276 | `result-track:cf3b873c941f339668a108621ec64b50b784d24f2663418a4acfac6beda3777e` |
| 100 | `theorem` | [isNe_then](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicPublicOrdering.lean/declarations/isne-then.md) | 277 | `result-track:bd9943f70750914407ff2eed47a6885c8fa016341bdd365492b456811ab3cf46` |
| 101 | `theorem` | [isGT_then](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicPublicOrdering.lean/declarations/isgt-then.md) | 278 | `result-track:ef92086a60701048c2ff6fa6435029b05062bc2dceaea08b5aeaddc688932302` |
| 102 | `theorem` | [lt_then](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicPublicOrdering.lean/declarations/lt-then.md) | 280 | `result-track:6bf48c391716a6e9cfc17304cc2a0bd7d26a104064d9984ac13bae39471452b5` |
| 103 | `theorem` | [gt_then](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicPublicOrdering.lean/declarations/gt-then.md) | 281 | `result-track:80d44dcf858a614fabef2aae9d5a8ac4ae28c5eb5fbcabe6c0e1c605a212dbd7` |
| 104 | `theorem` | [eq_then](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicPublicOrdering.lean/declarations/eq-then.md) | 282 | `result-track:fee686c88f61163f15019233ba50def1f643c1854af4b1c7e9eacb28abd7ff40` |
| 105 | `theorem` | [then_eq](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicPublicOrdering.lean/declarations/then-eq.md) | 284 | `result-track:4cd324a564c9ab7039d836dcf210bb5bf7a5796d8e3788738f1283e026914ff3` |
| 106 | `theorem` | [then_self](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicPublicOrdering.lean/declarations/then-self.md) | 285 | `result-track:5814fae5d761d9f641711943badde6f8b52e85e78fa92ab006ff6a51a01750b6` |
| 107 | `theorem` | [then_assoc](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicPublicOrdering.lean/declarations/then-assoc.md) | 286 | `result-track:1c63c710452a4ce6b0e3eaf30b119e857e65e2b6050346e415c52b4cff1d93e6` |
| 108 | `theorem` | [isLE_then_iff_or](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicPublicOrdering.lean/declarations/isle-then-iff-or.md) | 288 | `result-track:559c6dbb780345501834cfc0ab9be074e3ffd28387a3cc11036b0750b513be62` |
| 109 | `theorem` | [isLE_then_iff_and](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicPublicOrdering.lean/declarations/isle-then-iff-and.md) | 289 | `result-track:1c87088261e55938ef798c0750a593ac4917e2fb52bcae39a16441e1e00a4284` |
| 110 | `theorem` | [isLE_left_of_isLE_then](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicPublicOrdering.lean/declarations/isle-left-of-isle-then.md) | 290 | `result-track:7081c4528ad52fe35ff936e38180ed5675755219880225da9e9864c156fee94d` |
| 111 | `theorem` | [isGE_left_of_isGE_then](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicPublicOrdering.lean/declarations/isge-left-of-isge-then.md) | 291 | `result-track:27ab1d913d6bbb8d7fa60f8b436679f7b98a4280a60aaace5a5c4c0879bee708` |
| 112 | `instance` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicPublicOrdering.lean/declarations/instance-source-edition-15.md) | 293 | `declaration-track:cebcb1362395cd38f8f41282df52dd58395ea312abed24f2b44d9b234e42fea6` |
| 113 | `instance` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicPublicOrdering.lean/declarations/instance-source-edition-6.md) | 294 | `declaration-track:4ccf779507ace9af6d8b358f1ff445a034dccacb97f61283b346a6507ccacc86` |
| 114 | `instance` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicPublicOrdering.lean/declarations/instance-source-edition-14.md) | 296 | `declaration-track:c6be6690df482d7c2ade0353f95fe7fbe4f58c296f3c144c75a359b5a6bbfd24` |
| 115 | `theorem` | [then'_eq_then](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicPublicOrdering.lean/declarations/then-eq-then.md) | 300 | `result-track:9cba2b2c8970e54d8369ab3e0ac5b237972aa0864940a48abbf68964e30c22d0` |
| 116 | `def` | [compareOfLessAndEq](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicPublicOrdering.lean/declarations/compareoflessandeq.md) | 315 | `declaration-track:5c992040880629a7d83faba7462dba03418d019cecb651e9d36148b781f4e432` |
| 117 | `def` | [compareOfLessAndBEq](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicPublicOrdering.lean/declarations/compareoflessandbeq.md) | 328 | `declaration-track:26c673b4bffc0c23dbff74c6a12b14ef3129ed358c12ac4311198ab17904b4d5` |
| 118 | `def` | [compareLex](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicPublicOrdering.lean/declarations/comparelex.md) | 341 | `declaration-track:09083f5014aeb880e895fe86d06c512cf0d61475617cb36aafa5e44697c645cd` |
| 119 | `theorem` | [compareLex_eq_eq](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicPublicOrdering.lean/declarations/comparelex-eq-eq.md) | 347 | `result-track:d4033b2bf6636c3cdeaad47f7b435e9b7c15afd8def09ece6a507b8221215c1b` |
| 120 | `theorem` | [compareOfLessAndEq_eq_swap_of_lt_iff_not_gt_and_ne](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicPublicOrdering.lean/declarations/compareoflessandeq-eq-swap-of-lt-iff-not-gt-and-ne.md) | 351 | `result-track:e59afe2bca08bd08bb55165e6e80a97dccc580ec385441f09ba090215618d011` |
| 121 | `theorem` | [lt_iff_not_gt_and_ne_of_antisymm_of_total_of_not_le](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicPublicOrdering.lean/declarations/lt-iff-not-gt-and-ne-of-antisymm-of-total-of-not-le.md) | 367 | `result-track:4ec67107dc65b2241f66d3f12b886da98279762bd449522a4cf3d6633ccfac25` |
| 122 | `theorem` | [compareOfLessAndEq_eq_swap](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicPublicOrdering.lean/declarations/compareoflessandeq-eq-swap.md) | 380 | `result-track:359360b3481b756b6547f7dd5ea1726d5f3a31b557f69366b72c42e947ca8eff` |
| 123 | `theorem` | [compareOfLessAndEq_eq_lt](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicPublicOrdering.lean/declarations/compareoflessandeq-eq-lt.md) | 389 | `result-track:b0323eaedb3c62abc18c1e5156487786eed779f1d5d141e39aba1cd40f906036` |
| 124 | `theorem` | [compareOfLessAndEq_eq_eq](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicPublicOrdering.lean/declarations/compareoflessandeq-eq-eq.md) | 395 | `result-track:bbe51357f1cf018761cb50bf622ff2a316f6f1e38b2c13702a17bfc1bc11f9b5` |
| 125 | `theorem` | [compareOfLessAndEq_eq_gt_of_lt_iff_not_gt_and_ne](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicPublicOrdering.lean/declarations/compareoflessandeq-eq-gt-of-lt-iff-not-gt-and-ne.md) | 407 | `result-track:8221fe70da8c5856f5228e8a7d24ae2612a0217f200b35d2302ff73733314c50` |
| 126 | `theorem` | [compareOfLessAndEq_eq_gt](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicPublicOrdering.lean/declarations/compareoflessandeq-eq-gt.md) | 414 | `result-track:e1785c83c28247f5463352675746f0ca7bc22db461d64a717fd5d45d81bfebbc` |
| 127 | `theorem` | [isLE_compareOfLessAndEq](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicPublicOrdering.lean/declarations/isle-compareoflessandeq.md) | 422 | `result-track:dee730bf536dd0091dc4e8384da9566ab6387cfdb9d7b8c7af5518573cc4b91e` |
| 128 | `theorem` | [isGE_compareOfLessAndEq](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicPublicOrdering.lean/declarations/isge-compareoflessandeq.md) | 440 | `result-track:414fa8fa99dfbfef141b72e26c6f1d8e0f3536c0bef948709a4a15fbd8af570e` |
| 129 | `class` | [Ord](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicPublicOrdering.lean/declarations/ord.md) | 461 | `declaration-track:39672f6319e78ed6b09de68102ae6e46df0e146af89ee2fcd74f45bacb0233c7` |
| 130 | `def` | [compareOn](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicPublicOrdering.lean/declarations/compareon.md) | 477 | `declaration-track:c757c7b432db12f07a9483295dbce480a5bcd0d159b1001a64226f065f5a8c7a` |
| 131 | `instance` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicPublicOrdering.lean/declarations/instance-source-edition-2.md) | 480 | `declaration-track:022cb99e12f23a9365e61528df16fb97cd52a51ddf31bf3bbcd6aed5767b4226` |
| 132 | `instance` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicPublicOrdering.lean/declarations/instance-source-edition-13.md) | 483 | `declaration-track:c47c8261468f7cdcff563b92f63cd081aaa35c80442b6b4a1f95097b9dd753e3` |
| 133 | `instance` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicPublicOrdering.lean/declarations/instance-source-edition-12.md) | 486 | `declaration-track:b724e78e6f6b6f8def4ba1c969372e5f6d737a5aac4532683aa4c83c3a296c49` |
| 134 | `instance` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicPublicOrdering.lean/declarations/instance-source-edition-9.md) | 492 | `declaration-track:9213032d476b38e34d03554b306258ba06411e55d4a1b9fe17dc8b17af8c6cc7` |
| 135 | `instance` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicPublicOrdering.lean/declarations/instance-source-edition-5.md) | 495 | `declaration-track:25c4137f1a2f45d1ec871cf9d4242f717b8b2497b686c2d2b2d9557ec10a1711` |
| 136 | `instance` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicPublicOrdering.lean/declarations/instance-source-edition-3.md) | 498 | `declaration-track:0b2518e136e2a44b8f0b9184f8119ec88ef70a3d8bbf0cb29a5496728716644c` |
| 137 | `instance` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicPublicOrdering.lean/declarations/instance-source-edition-4.md) | 501 | `declaration-track:17d6982f6305f527bcc1e5cef1299876dbdd09bcaf6102aa4205e50d2fcc3d96` |
| 138 | `instance` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicPublicOrdering.lean/declarations/instance-source-edition-10.md) | 508 | `declaration-track:b466c8561ddee307901146c8f974ab898b12ad92dbcd12f72cf02a0f0606c074` |
| 139 | `def` | [compareLex](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicPublicOrdering.lean/declarations/comparelex-source-edition-2.md) | 514 | `declaration-track:f31ffea85cbbde587ed18c5a5bbd8c6a5e01318253db1aede6ef94f48a06c801` |
| 140 | `instance` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicPublicOrdering.lean/declarations/instance-source-edition-16.md) | 524 | `declaration-track:d92d6cc9ba71e4778eaa5dd88a9564d76561bb412e4300cf668403f05db6c3a3` |
| 141 | `theorem` | [compare_eq_compareLex](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicPublicOrdering.lean/declarations/compare-eq-comparelex.md) | 527 | `result-track:befaa1b9032c778f161d7ecaa2a7cb861f1e6c273a61575e58fb8fd14ce79515` |
| 142 | `theorem` | [compareLex_cons_cons](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicPublicOrdering.lean/declarations/comparelex-cons-cons.md) | 530 | `result-track:07def15d939369e54193b03904ffd473a52fe30c4bad9de29549db3bee67238b` |
| 143 | `theorem` | [compare_cons_cons](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicPublicOrdering.lean/declarations/compare-cons-cons.md) | 536 | `result-track:d3e6a6285d52c5b80a6f575faf0d70942da8f4b1e6fc4e9aad8b18eb6de08e59` |
| 144 | `theorem` | [compareLex_nil_cons](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicPublicOrdering.lean/declarations/comparelex-nil-cons.md) | 540 | `result-track:29f97ce2387b0ef3184f37603decf526f207b684f68f7107fbb0b0e4fd75920e` |
| 145 | `theorem` | [compare_nil_cons](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicPublicOrdering.lean/declarations/compare-nil-cons.md) | 545 | `result-track:80754fa9d9e28fec1378a6efd07d8dad291e82ec94ff7b2c12b50645d3b62953` |
| 146 | `theorem` | [compareLex_cons_nil](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicPublicOrdering.lean/declarations/comparelex-cons-nil.md) | 549 | `result-track:e7dacb29354445010ba6c76ac514a3fd6749389fbad07d1ce406be13ce45eeed` |
| 147 | `theorem` | [compare_cons_nil](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicPublicOrdering.lean/declarations/compare-cons-nil.md) | 554 | `result-track:cb96f077be922d1f9849c205ba530884892aec34d522ad214dfa163d28d760ea` |
| 148 | `theorem` | [compareLex_nil_nil](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicPublicOrdering.lean/declarations/comparelex-nil-nil.md) | 558 | `result-track:a435dcd2cbba7aedc62744c067e2b2ca95237fbaa8c6a11256194428835cdf4c` |
| 149 | `theorem` | [compare_nil_nil](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicPublicOrdering.lean/declarations/compare-nil-nil.md) | 563 | `result-track:bb6d30ee7974d3c70dde98ba1a4c98046a9f27a2b62922dc087029251f6791fe` |
| 150 | `theorem` | [isLE_compareLex_nil_left](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicPublicOrdering.lean/declarations/isle-comparelex-nil-left.md) | 567 | `result-track:f7fb5155bf6c3f8d29e75222691d21437e7b18e872e2e9fac18bd02c830aa38e` |
| 151 | `theorem` | [isLE_compare_nil_left](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicPublicOrdering.lean/declarations/isle-compare-nil-left.md) | 571 | `result-track:e5ef668c0816d31261a0027456f9f9b6a5256a5d397eb5c73dfea90ad6e0b97e` |
| 152 | `theorem` | [isLE_compareLex_nil_right](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicPublicOrdering.lean/declarations/isle-comparelex-nil-right.md) | 575 | `result-track:21ef4eda6837f7a217af38021c9a9980f347387c7bc101150f457ef0438112c6` |
| 153 | `theorem` | [isLE_compare_nil_right](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicPublicOrdering.lean/declarations/isle-compare-nil-right.md) | 580 | `result-track:a61f604b34d7cf5c6af9a01b136d88736545b41f823b5107d42ba3975e6844af` |
| 154 | `theorem` | [isGE_compareLex_nil_left](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicPublicOrdering.lean/declarations/isge-comparelex-nil-left.md) | 584 | `result-track:8659e3ed2fbe8385f400f0c105f4ae4d849e6419c1cd8435361a235c5d5999e3` |
| 155 | `theorem` | [isGE_compare_nil_left](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicPublicOrdering.lean/declarations/isge-compare-nil-left.md) | 589 | `result-track:7fbbfe5a6421dbfc9b92d1b7c5f49c8c17206aa60e53fd86734b921da9349b08` |
| 156 | `theorem` | [isGE_compareLex_nil_right](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicPublicOrdering.lean/declarations/isge-comparelex-nil-right.md) | 593 | `result-track:5b9801e8ee0a0419f19548c5cb3ed9106441900e356b03f536f71130cfe817b4` |
| 157 | `theorem` | [isGE_compare_nil_right](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicPublicOrdering.lean/declarations/isge-compare-nil-right.md) | 597 | `result-track:60d7775b7ff2d22b248e8e42911e3451512fa04751701c6743a672df97ef9f87` |
| 158 | `theorem` | [compareLex_nil_left_eq_eq](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicPublicOrdering.lean/declarations/comparelex-nil-left-eq-eq.md) | 601 | `result-track:a0dfaa748f7fd8882b14c4480c64e166a5c32d96d2f531b039bece676a13a0f4` |
| 159 | `theorem` | [compare_nil_left_eq_eq](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicPublicOrdering.lean/declarations/compare-nil-left-eq-eq.md) | 606 | `result-track:0045357c1fb4b9707814b65f1f46b2985fcf9714c81bf0b392e70ef709757bb5` |
| 160 | `theorem` | [compareLex_nil_right_eq_eq](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicPublicOrdering.lean/declarations/comparelex-nil-right-eq-eq.md) | 610 | `result-track:71c5714e7c2e9950265cf78bf337c154758a2f578cc116758069f2053b875bf6` |
| 161 | `theorem` | [compare_nil_right_eq_eq](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicPublicOrdering.lean/declarations/compare-nil-right-eq-eq.md) | 615 | `result-track:b24f0b43cb60542d4b489530ebab15b7b21638b5adb64af5e12ff21691724088` |
| 162 | `def` | [lexOrd](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicPublicOrdering.lean/declarations/lexord.md) | 623 | `declaration-track:3c3ee501ef607eb08c3ab6069adb527983b0e32e37f4a5187e67fb3673d17430` |
| 163 | `def` | [beqOfOrd](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicPublicOrdering.lean/declarations/beqoford.md) | 630 | `declaration-track:4d859a447b0d68eb9c751889052e73b03f4834af63e5662b02f8982343b876cf` |
| 164 | `def` | [ltOfOrd](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicPublicOrdering.lean/declarations/ltoford.md) | 637 | `declaration-track:672c633a8a9c8e7949416905277a0deec9955a82eab4a4778d1529c9545a5e93` |
| 165 | `instance` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicPublicOrdering.lean/declarations/instance.md) | 641 | `declaration-track:00654dd1533479486a111ae371386ebfd486448ec0e7d418423a95543db7ce05` |
| 166 | `def` | [leOfOrd](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicPublicOrdering.lean/declarations/leoford.md) | 648 | `declaration-track:881135e6491f5e72891c9d847c5d1c080556083af1a5f5ac446353f0fc45e676` |
| 167 | `instance` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicPublicOrdering.lean/declarations/instance-source-edition-8.md) | 652 | `declaration-track:6f46a97fe93ff25dc730f3c6a9c2c65cc4553bc3848f0fb4895b74565d984fad` |
| 168 | `abbrev` | [toBEq](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicPublicOrdering.lean/declarations/tobeq.md) | 659 | `declaration-track:dceb6e8139b2f21f7a0e45949fa9d4b719c0a4b8c192df9e6b0d0ceea10d0af0` |
| 169 | `abbrev` | [toLT](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicPublicOrdering.lean/declarations/tolt.md) | 665 | `declaration-track:04deab05529eb5b1584deae2e7504d077ef156d9bef3541d63ab22687d3588c3` |
| 170 | `abbrev` | [toLE](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicPublicOrdering.lean/declarations/tole.md) | 671 | `declaration-track:530df48ff447086b8791bbd25cc01ed64ade2af0ab1a928743743b01a039c8de` |
| 171 | `def` | [opposite](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicPublicOrdering.lean/declarations/opposite.md) | 680 | `declaration-track:ab9e87def256c987b97d29e16e2909fc284605c322f3536fb7277ba6c04cff67` |
| 172 | `def` | [on](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicPublicOrdering.lean/declarations/on.md) | 691 | `declaration-track:e44a9bd07ecee30251891509806bb601c6c206630105e5863f64a70064045e5e` |
| 173 | `abbrev` | [lex](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicPublicOrdering.lean/declarations/lex-source-edition-2.md) | 697 | `declaration-track:c175070d9d13e18c53dbaa49a080d171564b029a2546d6bdb1a7401fc8bb4466` |
| 174 | `def` | [lex'](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicPublicOrdering.lean/declarations/lex.md) | 710 | `declaration-track:7dbeba26dbfaeef2099b550babdf5c1a0d181ccac124dec9374907654d2d714c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=05dc2e1a979a54a1c83e3d358d3f45339d4d10789e7a53458d97513f29e49cb8 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant88008e69462e197ac4183f462a4d8046c97e45c3ac9172cf3b4c250f84cae1a3.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant88008e69462e197ac4183f462a4d8046c97e45c3ac9172cf3b4c250f84cae1a3.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
