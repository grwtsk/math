# Verification target: Max Aligned

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "06d782fa6c7995ce5f154862e9c784c21ad183d5",
  "lexical_observation_count": 78,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Max/Variant50064e0f7cf93316aa70124805d018b69ebc90978ce2cb23af614afeaf4d42f9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MaxAligned.lean/index.md) · [Full source](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MaxAligned.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `06d782fa6c7995ce5f154862e9c784c21ad183d5`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Max/Variant50064e0f7cf93316aa70124805d018b69ebc90978ce2cb23af614afeaf4d42f9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Max/Variant50064e0f7cf93316aa70124805d018b69ebc90978ce2cb23af614afeaf4d42f9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.Synonym` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [NoBotOrder](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MaxAligned.lean/declarations/nobotorder.md) | 41 | `declaration-track:d4935faf38d4f8fb7b16ebc58140cc8bf85ff13b0b10c39e064f64173ddb34d3` |
| 2 | `class` | [NoTopOrder](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MaxAligned.lean/declarations/notoporder.md) | 47 | `declaration-track:b6eb4a1924dde5cac99325e8faaab1f5bb65abbdc613e612795dda1dd9e4673c` |
| 3 | `class` | [NoMinOrder](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MaxAligned.lean/declarations/nominorder.md) | 53 | `declaration-track:b36e5c1ab213147d42a04937edd77469df528e2cf69949879f27494b6caa621e` |
| 4 | `class` | [NoMaxOrder](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MaxAligned.lean/declarations/nomaxorder.md) | 59 | `declaration-track:efbfc4f42ec5c4c0f3fa6dca5637d02c79eefe4bb7ee7bb445c75e616c80e561` |
| 5 | `instance` | [nonempty_lt](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MaxAligned.lean/declarations/nonempty-lt.md) | 72 | `declaration-track:e3320225924e78efe99808fcb6432586c67cd2c386b26dbf1496ed33c9f94db0` |
| 6 | `instance` | [nonempty_gt](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MaxAligned.lean/declarations/nonempty-gt.md) | 75 | `declaration-track:9e785112f5a1257f029b6ac1e1c5042827438e071252f1b08967d44bc42dfafc` |
| 7 | `instance` | [OrderDual.noBotOrder](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MaxAligned.lean/declarations/orderdual-nobotorder.md) | 78 | `declaration-track:0ba19e47957f5788bb5b317568dd4501bf7eab5b59cbe165a41d6fd407bb7575` |
| 8 | `instance` | [OrderDual.noTopOrder](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MaxAligned.lean/declarations/orderdual-notoporder.md) | 82 | `declaration-track:39226e8dbf0e12ddce4bf8f13130d9c98fb19944f4268ff09637b26c5360e221` |
| 9 | `instance` | [OrderDual.noMinOrder](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MaxAligned.lean/declarations/orderdual-nominorder.md) | 86 | `declaration-track:e973a8baef84ff49b23937b0197440582df5918e0043c958a65083652131263a` |
| 10 | `instance` | [OrderDual.noMaxOrder](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MaxAligned.lean/declarations/orderdual-nomaxorder.md) | 90 | `declaration-track:8dcc9e12cbe942588a91816b7abb4836aab038ef949ef37eee7f1161fcbf3ad1` |
| 11 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MaxAligned.lean/declarations/instance-source-edition-4.md) | 95 | `declaration-track:c5f542e74e84c54ad4e92505aee89607bb3899428560042d17a50ab2fc8b09b2` |
| 12 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MaxAligned.lean/declarations/instance.md) | 99 | `declaration-track:4394713bb8446ee786bdc8c5303fa0de70db896b0ac9d3f7b41789bac2de1897` |
| 13 | `instance` | [noMaxOrder_of_left](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MaxAligned.lean/declarations/nomaxorder-of-left.md) | 102 | `declaration-track:cac599277255478900fe1ff7e4c21d18964195957b55df90165f5723a25425a1` |
| 14 | `instance` | [noMaxOrder_of_right](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MaxAligned.lean/declarations/nomaxorder-of-right.md) | 108 | `declaration-track:7dcbeae071862600267ba7537222e8e56995250387f5a4a394a6a5ee7e5c285a` |
| 15 | `instance` | [noMinOrder_of_left](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MaxAligned.lean/declarations/nominorder-of-left.md) | 114 | `declaration-track:41ab9bd27d2903cefaf40112618cfb22ecba846e2a4f2e18c22c31600e9f65e9` |
| 16 | `instance` | [noMinOrder_of_right](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MaxAligned.lean/declarations/nominorder-of-right.md) | 120 | `declaration-track:e246cbe0c41fb10566322624e6da50d91fc57b26adacf48a3a7ecdf69b0886d9` |
| 17 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MaxAligned.lean/declarations/instance-source-edition-3.md) | 126 | `declaration-track:abe2f5bccb7c9751d91fd606a5e9f77d18edc7f65ac90cac5384bf776fe99d66` |
| 18 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MaxAligned.lean/declarations/instance-source-edition-2.md) | 133 | `declaration-track:6a82c453b8c5b138ee18768af758d2cebb52879fa193fc8522b72e614cbfbcf4` |
| 19 | `theorem` | [NoBotOrder.to_noMinOrder](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MaxAligned.lean/declarations/nobotorder-to-nominorder.md) | 141 | `result-track:d7613b1cf07e2cf1c36b0d3bc4cebdd9436af784b2f00e6bd0e3bcd2cea86561` |
| 20 | `theorem` | [NoTopOrder.to_noMaxOrder](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MaxAligned.lean/declarations/notoporder-to-nomaxorder.md) | 146 | `result-track:bbfa2b91ab9c9ec01def27bf9cbe02d469fc534be6a59e3487f3d3bc3f81fc35` |
| 21 | `theorem` | [noBotOrder_iff_noMinOrder](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MaxAligned.lean/declarations/nobotorder-iff-nominorder.md) | 150 | `result-track:4e5047f82157e10ea27b0905c616f8b91827343f21ae01594e8819741645a624` |
| 22 | `theorem` | [noTopOrder_iff_noMaxOrder](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MaxAligned.lean/declarations/notoporder-iff-nomaxorder.md) | 159 | `result-track:eec0c360c0555f217300bff590b787fd4decc46f2aad3138f5e37dc40816869d` |
| 23 | `theorem` | [NoMinOrder.not_acc](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MaxAligned.lean/declarations/nominorder-not-acc.md) | 168 | `result-track:f140fefdd322afad27c0549995228eb241c6166cd56358b3d0a1d0402eaea854` |
| 24 | `theorem` | [NoMaxOrder.not_acc](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MaxAligned.lean/declarations/nomaxorder-not-acc.md) | 172 | `result-track:094a8aea61031a01ab6176965f84d5dc1e5515cce42961e7724f344da0c4855d` |
| 25 | `def` | [IsBot](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MaxAligned.lean/declarations/isbot.md) | 184 | `declaration-track:b5dba20326a4e29ea17d48bb131c99ce6819d7a72bdf277ea08ec39be6815776` |
| 26 | `def` | [IsTop](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MaxAligned.lean/declarations/istop-source-edition-2.md) | 192 | `declaration-track:70d9238416280cdede16d2c6d7daaf712cef03a67c16c5924069272f25867b39` |
| 27 | `def` | [IsMin](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MaxAligned.lean/declarations/ismin-source-edition-2.md) | 199 | `declaration-track:f2885d67fe8b4b1120c6867b1f6120601c8b7af6bf0a40242d3a8b1465281f30` |
| 28 | `def` | [IsMax](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MaxAligned.lean/declarations/ismax.md) | 206 | `declaration-track:68798d447e4947d41e17185ea4fee9b5e8fdeafa0e60272049622ea015da4bdc` |
| 29 | `theorem` | [not_isBot](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MaxAligned.lean/declarations/not-isbot.md) | 211 | `result-track:6c35bc4eca066423e6e0e411aadafa8a040d3e18010145524429887c91e535cd` |
| 30 | `theorem` | [not_isTop](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MaxAligned.lean/declarations/not-istop.md) | 217 | `result-track:7345d94f99fdf4375e5585dffb3ee737dc41bf73cb194a478692b16fac89ddfd` |
| 31 | `theorem` | [IsBot.isMin](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MaxAligned.lean/declarations/isbot-ismin.md) | 222 | `result-track:338a0e38be9da99b528be5b60ab1b8e4360c75aa651cbe8cc3bc6875604b157e` |
| 32 | `theorem` | [IsTop.isMax](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MaxAligned.lean/declarations/istop-ismax.md) | 225 | `result-track:bc8e97602bd8b4fca54ac373119a99a5b738c71341f033fc098b438fbfb595a2` |
| 33 | `theorem` | [isBot_toDual_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MaxAligned.lean/declarations/isbot-todual-iff.md) | 229 | `result-track:31c46670b881af707da0e48908e725a6bb0cde19401de87b19be67746baceab5` |
| 34 | `theorem` | [isTop_toDual_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MaxAligned.lean/declarations/istop-todual-iff.md) | 234 | `result-track:d5a27036812c6e3d2abde87500bf3b1b8b2a4a44111f65643465c23b655c23f9` |
| 35 | `theorem` | [isMin_toDual_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MaxAligned.lean/declarations/ismin-todual-iff.md) | 239 | `result-track:4bccac0c739fd6479cbe55ef9106fd06ac66e8a7325ecde52289dfe788077d35` |
| 36 | `theorem` | [isMax_toDual_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MaxAligned.lean/declarations/ismax-todual-iff.md) | 244 | `result-track:8e63fb88577699ce91873af2de7d335ff7f2fd269156392e738a114bf184797a` |
| 37 | `theorem` | [isBot_ofDual_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MaxAligned.lean/declarations/isbot-ofdual-iff.md) | 249 | `result-track:809b376ff4a4c836908db1e4edf1e8473daf14437a2e04a36a03f7b46cf93287` |
| 38 | `theorem` | [isTop_ofDual_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MaxAligned.lean/declarations/istop-ofdual-iff.md) | 254 | `result-track:863957455d68e876e127cada04d2ecb7ec76b344cf44dda1c6aa4777ebd41e78` |
| 39 | `theorem` | [isMin_ofDual_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MaxAligned.lean/declarations/ismin-ofdual-iff.md) | 259 | `result-track:b694aa514d5965242bbebc107e812a836b7adbf323e78e3dad092c835a8a4945` |
| 40 | `theorem` | [isMax_ofDual_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MaxAligned.lean/declarations/ismax-ofdual-iff.md) | 264 | `result-track:95c4ca121d614af90c62dc179095fc18d463d040cfb8845b0da1ddd514dd555f` |
| 41 | `theorem` | [IsBot.mono](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MaxAligned.lean/declarations/isbot-mono.md) | 298 | `result-track:7857061810198245ecf3669ea75bb662aa41937287de3042458f46ae95b71afa` |
| 42 | `theorem` | [IsTop.mono](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MaxAligned.lean/declarations/istop-mono.md) | 301 | `result-track:9d3528f7df108e7c5be97d6f3fdc4897786e48d6446f2e8ee168ff5230f64f8a` |
| 43 | `theorem` | [IsMin.mono](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MaxAligned.lean/declarations/ismin-mono.md) | 304 | `result-track:a39a3eb7251d3d912478bae80dab899d920fa243573882765dd976461fe3cebf` |
| 44 | `theorem` | [IsMax.mono](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MaxAligned.lean/declarations/ismax-mono.md) | 307 | `result-track:b72fa74bc44056ed82db0b497c3d51bddba3b6bc81966e952b109bbda198eb88` |
| 45 | `theorem` | [IsMin.not_lt](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MaxAligned.lean/declarations/ismin-not-lt.md) | 310 | `result-track:86ef2db76a5a63da158718464b6b465eef1147e66ae40c8cd5423304d2a87d7d` |
| 46 | `theorem` | [IsMax.not_lt](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MaxAligned.lean/declarations/ismax-not-lt.md) | 313 | `result-track:739db7fd58559a2d984cf214f5b9785db4501077a9616ac74fafba5f0f9f41e4` |
| 47 | `theorem` | [not_isMin_of_lt](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MaxAligned.lean/declarations/not-ismin-of-lt.md) | 317 | `result-track:9dd9a18c9d9ef6a7578e51077a6c401853279202fbab8d2d87d3ca164498ee4c` |
| 48 | `theorem` | [not_isMax_of_lt](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MaxAligned.lean/declarations/not-ismax-of-lt.md) | 321 | `result-track:85c6eb2ec34ff2ba1ff27e1038779ea4a353becc664cdf0a3b5c01ae2923e2e0` |
| 49 | `theorem` | [isMin_iff_forall_not_lt](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MaxAligned.lean/declarations/ismin-iff-forall-not-lt.md) | 328 | `result-track:e0cc39cde0bacde2e451701bd83db17c0624bcd8de75e725739d885465952d4a` |
| 50 | `theorem` | [isMax_iff_forall_not_lt](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MaxAligned.lean/declarations/ismax-iff-forall-not-lt.md) | 332 | `result-track:64eaf38df0c9c261b4d4bdd6b5ad9c8d7f4926d29ce60dd5b0c1293d4f557283` |
| 51 | `theorem` | [not_isMin_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MaxAligned.lean/declarations/not-ismin-iff.md) | 337 | `result-track:517f6283297f3c7104fe2feff86f8b5a85da55e4cba138cbdcad26efbf07296a` |
| 52 | `theorem` | [not_isMax_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MaxAligned.lean/declarations/not-ismax-iff.md) | 342 | `result-track:7c9344fc30a49e0411e29ac5298571203c4a3cffac2bf94dd5d6332418298ecd` |
| 53 | `theorem` | [not_isMin](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MaxAligned.lean/declarations/not-ismin.md) | 347 | `result-track:dad96895dd6d7dbbf3c036cf7e579debef6d434028b26ef8c645bd324cac0886` |
| 54 | `theorem` | [not_isMax](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MaxAligned.lean/declarations/not-ismax.md) | 352 | `result-track:4e1ebd70acc9788d52b6a305fb94cd560deefbd334a4f38984f61895c0ca338e` |
| 55 | `theorem` | [isBot](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MaxAligned.lean/declarations/isbot-source-edition-2.md) | 360 | `result-track:c9917f96144dfd78d2a59aba2ce1ac41904ce5946b72eed2d3464ada90b9d504` |
| 56 | `theorem` | [isTop](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MaxAligned.lean/declarations/istop.md) | 363 | `result-track:0e1841eebb8a726607928452ab53cc213ea752b5c273938373373a2928e7c52b` |
| 57 | `theorem` | [isMin](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MaxAligned.lean/declarations/ismin.md) | 366 | `result-track:20aeabccb16c60426730cdc05824df1b814dfe5539ce79d79028962d12ca2a50` |
| 58 | `theorem` | [isMax](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MaxAligned.lean/declarations/ismax-source-edition-2.md) | 370 | `result-track:d5bae04bec4d2833b7fd3b7c4e9a58bc1461f38aa6967eca4bd1900c4a52169b` |
| 59 | `theorem` | [IsMin.eq_of_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MaxAligned.lean/declarations/ismin-eq-of-le.md) | 382 | `result-track:d90858b82dfc6bf877ca0430f85c13241c7e2d4f7c47c247fcf184094f8c24da` |
| 60 | `theorem` | [IsMin.eq_of_ge](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MaxAligned.lean/declarations/ismin-eq-of-ge.md) | 386 | `result-track:02e95d959f289c93007bf7bf9196b4cdcda9e88a2b335eaa4ce9eeda03c95da0` |
| 61 | `theorem` | [IsMax.eq_of_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MaxAligned.lean/declarations/ismax-eq-of-le.md) | 390 | `result-track:169f2614358b1863a1ef6d4f9bf6c8878d45b7d8335f1f56b6b2803846d6e3c0` |
| 62 | `theorem` | [IsMax.eq_of_ge](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MaxAligned.lean/declarations/ismax-eq-of-ge.md) | 394 | `result-track:4a427ab7310daa6f31a532e9d1a583f3ceb2889a325a63d1a7f9f77bc29be695` |
| 63 | `theorem` | [IsBot.prod_mk](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MaxAligned.lean/declarations/isbot-prod-mk.md) | 404 | `result-track:402dc4c1ba7dea86928a88bb8ebfafb8c09ca43b7518430cd372119fa7508038` |
| 64 | `theorem` | [IsTop.prod_mk](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MaxAligned.lean/declarations/istop-prod-mk.md) | 407 | `result-track:129fa180a2a1543d4a492e0dd70e1d3d563f0485137270824c730e449df31861` |
| 65 | `theorem` | [IsMin.prod_mk](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MaxAligned.lean/declarations/ismin-prod-mk.md) | 410 | `result-track:f3c0ded160a7b3369a1da9e0bc1d8ded8fa758106f8784d6d84fc5000f9bf123` |
| 66 | `theorem` | [IsMax.prod_mk](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MaxAligned.lean/declarations/ismax-prod-mk.md) | 413 | `result-track:5b4f0071757aea6d041d331c94afb0fa6f6392981f78b7b917c332ecbd0d4587` |
| 67 | `theorem` | [IsBot.fst](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MaxAligned.lean/declarations/isbot-fst.md) | 416 | `result-track:ba851e78f637bdb5ff39296b9bee41f33d3d209666013569b22e4b0b994ee3c7` |
| 68 | `theorem` | [IsBot.snd](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MaxAligned.lean/declarations/isbot-snd.md) | 419 | `result-track:d5bdf49de29d1e396f702b51581a8abf63f4188b35132dee3e86e8ba71c43172` |
| 69 | `theorem` | [IsTop.fst](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MaxAligned.lean/declarations/istop-fst.md) | 422 | `result-track:eabf8ab3211054a055a90d5c13f2c0df13855f102e206827aa4933ab713b4677` |
| 70 | `theorem` | [IsTop.snd](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MaxAligned.lean/declarations/istop-snd.md) | 425 | `result-track:36008e8798d063e9ba4e4e09475854b56f903bbd66840e531477670ef98c575b` |
| 71 | `theorem` | [IsMin.fst](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MaxAligned.lean/declarations/ismin-fst.md) | 428 | `result-track:881fddc9ea0dc5c1e868d849c8385b0efd360275426bef79b68988be782aad44` |
| 72 | `theorem` | [IsMin.snd](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MaxAligned.lean/declarations/ismin-snd.md) | 432 | `result-track:4a7cd024c55a3e4355368284b835fd590f0ce9490e1ba395ff99829e74e6111d` |
| 73 | `theorem` | [IsMax.fst](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MaxAligned.lean/declarations/ismax-fst.md) | 436 | `result-track:a73d639c525a07c6bd861a29326d4bd2f193271c9cc6499165344726133df6f2` |
| 74 | `theorem` | [IsMax.snd](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MaxAligned.lean/declarations/ismax-snd.md) | 440 | `result-track:c3e64844d76922d3ad7f167edd3777bd65240145014df78aa93c2d88de641ba6` |
| 75 | `theorem` | [Prod.isBot_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MaxAligned.lean/declarations/prod-isbot-iff.md) | 444 | `result-track:54f060d12e55ba9a6da1d8230d2cd17259ecf3fac0d56bdc04a43a7146c05393` |
| 76 | `theorem` | [Prod.isTop_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MaxAligned.lean/declarations/prod-istop-iff.md) | 448 | `result-track:8e9cd10bf32aeaaa1bbe146b7b866d9913f0b24ea9ae66b0504c6e65688f2101` |
| 77 | `theorem` | [Prod.isMin_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MaxAligned.lean/declarations/prod-ismin-iff.md) | 452 | `result-track:1ee82295535fb532be140506096c74423b3a30031e628bb47462ee536595a669` |
| 78 | `theorem` | [Prod.isMax_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MaxAligned.lean/declarations/prod-ismax-iff.md) | 456 | `result-track:3d55080ffe9fc5c5411a4bc01970e1e746cc21cdbd2305bac4dc5a75e254d8c6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6fcec6d2348457c3d54505c2d28e5010b31c91e0178311613145f15899b9395c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Max/Variant50064e0f7cf93316aa70124805d018b69ebc90978ce2cb23af614afeaf4d42f9.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/Max/Variant50064e0f7cf93316aa70124805d018b69ebc90978ce2cb23af614afeaf4d42f9.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
