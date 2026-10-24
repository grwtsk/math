# Verification target: GRWTSK.Topology.HomotopyGroup.Variantb487d00878afee1ad6fadfaad3efe49ccb6a151c4a984145ebc2cb6f6668a2f6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d4486de2bc267c81b7ddb3df318e39c428d07058",
  "lexical_observation_count": 62,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/HomotopyGroup/Variantb487d00878afee1ad6fadfaad3efe49ccb6a151c4a984145ebc2cb6f6668a2f6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Topology/HomotopyGroup/Variantb487d00878afee1ad6fadfaad3efe49ccb6a151c4a984145ebc2cb6f6668a2f6.lean/index.md) · [Full source](../../../../mathematics/Topology/HomotopyGroup/Variantb487d00878afee1ad6fadfaad3efe49ccb6a151c4a984145ebc2cb6f6668a2f6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d4486de2bc267c81b7ddb3df318e39c428d07058`.

Source path: `GRWTSK/Topology/HomotopyGroup/Variantb487d00878afee1ad6fadfaad3efe49ccb6a151c4a984145ebc2cb6f6668a2f6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/HomotopyGroup/Variantb487d00878afee1ad6fadfaad3efe49ccb6a151c4a984145ebc2cb6f6668a2f6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.AlgebraicTopology.FundamentalGroupoid.FundamentalGroup` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.EckmannHilton` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Equiv.TransferInstance` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Ext` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [boundary](../../../../mathematics/Topology/HomotopyGroup/Variantb487d00878afee1ad6fadfaad3efe49ccb6a151c4a984145ebc2cb6f6668a2f6.lean/declarations/boundary--162782f756f75e9575a818ca.md) | 64 | `declaration-track:162782f756f75e9575a818ca55f1c6c14ab3975a1ccb2eb07fb75b50d662e2f9` |
| 2 | `def` | [splitAt](../../../../mathematics/Topology/HomotopyGroup/Variantb487d00878afee1ad6fadfaad3efe49ccb6a151c4a984145ebc2cb6f6668a2f6.lean/declarations/splitat--8cbd8ddf577ec10687e35c5c.md) | 73 | `declaration-track:8cbd8ddf577ec10687e35c5c908ea03819f45668e7c9ee28e4cf0567ab3b5a21` |
| 3 | `def` | [insertAt](../../../../mathematics/Topology/HomotopyGroup/Variantb487d00878afee1ad6fadfaad3efe49ccb6a151c4a984145ebc2cb6f6668a2f6.lean/declarations/insertat--705acffef48014649abab79f.md) | 80 | `declaration-track:705acffef48014649abab79f5619bb476d9b2d647bc3137c15be5177eb731ced` |
| 4 | `theorem` | [insertAt_boundary](../../../../mathematics/Topology/HomotopyGroup/Variantb487d00878afee1ad6fadfaad3efe49ccb6a151c4a984145ebc2cb6f6668a2f6.lean/declarations/insertat-boundary--ef617fb27958669a0dc1999e.md) | 84 | `result-track:ef617fb27958669a0dc1999e651e9e9533717d1f29025704bb534e38373eb707` |
| 5 | `def` | [LoopSpace](../../../../mathematics/Topology/HomotopyGroup/Variantb487d00878afee1ad6fadfaad3efe49ccb6a151c4a984145ebc2cb6f6668a2f6.lean/declarations/loopspace--1ca10de905340484e89a7db7.md) | 97 | `declaration-track:1ca10de905340484e89a7db7094d51722f87c15556c954fe6290b8bb04b327f3` |
| 6 | `instance` | [LoopSpace.inhabited](../../../../mathematics/Topology/HomotopyGroup/Variantb487d00878afee1ad6fadfaad3efe49ccb6a151c4a984145ebc2cb6f6668a2f6.lean/declarations/loopspace-inhabited--e0844e18bdf0aca0587482e0.md) | 104 | `declaration-track:e0844e18bdf0aca0587482e07026299b3f54579af20249732c78f219a4b9b3ee` |
| 7 | `def` | [GenLoop](../../../../mathematics/Topology/HomotopyGroup/Variantb487d00878afee1ad6fadfaad3efe49ccb6a151c4a984145ebc2cb6f6668a2f6.lean/declarations/genloop--dcf8cafbba8fe1b85ee50a2a.md) | 111 | `declaration-track:dcf8cafbba8fe1b85ee50a2a95ba896f515ba1e0945a411a29d9583ce1afb5dc` |
| 8 | `instance` | [funLike](../../../../mathematics/Topology/HomotopyGroup/Variantb487d00878afee1ad6fadfaad3efe49ccb6a151c4a984145ebc2cb6f6668a2f6.lean/declarations/funlike--b4c807a8120ba08a7ca3a6cc.md) | 123 | `declaration-track:b4c807a8120ba08a7ca3a6ccd0abb486629ec4f65a52c9057b4c2196e05623a7` |
| 9 | `theorem` | [ext](../../../../mathematics/Topology/HomotopyGroup/Variantb487d00878afee1ad6fadfaad3efe49ccb6a151c4a984145ebc2cb6f6668a2f6.lean/declarations/ext--8ddeae1db5c3d3003767f8c4.md) | 129 | `result-track:8ddeae1db5c3d3003767f8c4b80395a37f088f42eac33aaa02ce9c9fa19fc84e` |
| 10 | `theorem` | [mk_apply](../../../../mathematics/Topology/HomotopyGroup/Variantb487d00878afee1ad6fadfaad3efe49ccb6a151c4a984145ebc2cb6f6668a2f6.lean/declarations/mk-apply--fba374874dc31e0423d7b533.md) | 134 | `result-track:fba374874dc31e0423d7b5334bef3d32f16f4ecc31be7958d0ae8a78e633ac2c` |
| 11 | `def` | [copy](../../../../mathematics/Topology/HomotopyGroup/Variantb487d00878afee1ad6fadfaad3efe49ccb6a151c4a984145ebc2cb6f6668a2f6.lean/declarations/copy--bee84f625c0784aa60f99a33.md) | 140 | `declaration-track:bee84f625c0784aa60f99a339dd9c0a96a0b76a7302e51cf5e002c045015c2f5` |
| 12 | `theorem` | [coe_copy](../../../../mathematics/Topology/HomotopyGroup/Variantb487d00878afee1ad6fadfaad3efe49ccb6a151c4a984145ebc2cb6f6668a2f6.lean/declarations/coe-copy--0fa0cee88e9b05294ff37c98.md) | 146 | `result-track:0fa0cee88e9b05294ff37c983686593e88077e3f906ee68235343c5c579dcf48` |
| 13 | `theorem` | [copy_eq](../../../../mathematics/Topology/HomotopyGroup/Variantb487d00878afee1ad6fadfaad3efe49ccb6a151c4a984145ebc2cb6f6668a2f6.lean/declarations/copy-eq--90ac64bef64f716f35b2ce14.md) | 150 | `result-track:90ac64bef64f716f35b2ce143d7d865f67418498cf3014478c594f4552812c50` |
| 14 | `theorem` | [boundary](../../../../mathematics/Topology/HomotopyGroup/Variantb487d00878afee1ad6fadfaad3efe49ccb6a151c4a984145ebc2cb6f6668a2f6.lean/declarations/boundary--e0eac3fb51181832e531db9b.md) | 155 | `result-track:e0eac3fb51181832e531db9bf93f93f4b06171d99a3795bce52b77c27b56cc7f` |
| 15 | `def` | [const](../../../../mathematics/Topology/HomotopyGroup/Variantb487d00878afee1ad6fadfaad3efe49ccb6a151c4a984145ebc2cb6f6668a2f6.lean/declarations/const--777370ce4f7b593878abdf35.md) | 160 | `declaration-track:777370ce4f7b593878abdf35ed863e92e51677e5f1010cc7724f6743d7b85d3f` |
| 16 | `theorem` | [const_apply](../../../../mathematics/Topology/HomotopyGroup/Variantb487d00878afee1ad6fadfaad3efe49ccb6a151c4a984145ebc2cb6f6668a2f6.lean/declarations/const-apply--d18a37f7f59b7a060e973739.md) | 165 | `result-track:d18a37f7f59b7a060e9737399774b904e8b8943b4b05e7664b577ebb28a4da07` |
| 17 | `instance` | [inhabited](../../../../mathematics/Topology/HomotopyGroup/Variantb487d00878afee1ad6fadfaad3efe49ccb6a151c4a984145ebc2cb6f6668a2f6.lean/declarations/inhabited--05e4777e9cd1e1483be88802.md) | 169 | `declaration-track:05e4777e9cd1e1483be8880267e3e5db6535b9109877cbddf96deda07bc1933e` |
| 18 | `def` | [Homotopic](../../../../mathematics/Topology/HomotopyGroup/Variantb487d00878afee1ad6fadfaad3efe49ccb6a151c4a984145ebc2cb6f6668a2f6.lean/declarations/homotopic--05273c1b48b09303ac0e4975.md) | 173 | `declaration-track:05273c1b48b09303ac0e497510c0338c2a5a226ec29c38cb3adcbb7bb14d5f3b` |
| 19 | `theorem` | [refl](../../../../mathematics/Topology/HomotopyGroup/Variantb487d00878afee1ad6fadfaad3efe49ccb6a151c4a984145ebc2cb6f6668a2f6.lean/declarations/refl--38c0353fc1bbb8c09d7b817e.md) | 182 | `result-track:38c0353fc1bbb8c09d7b817ea882997e6ed22122966031ca23ddd26fc6beb274` |
| 20 | `theorem` | [symm](../../../../mathematics/Topology/HomotopyGroup/Variantb487d00878afee1ad6fadfaad3efe49ccb6a151c4a984145ebc2cb6f6668a2f6.lean/declarations/symm--b57272f8ec5fb420d369d020.md) | 187 | `result-track:b57272f8ec5fb420d369d020bfc591f8ea6d3dae1b16db1d930358e9cb2d9a89` |
| 21 | `theorem` | [trans](../../../../mathematics/Topology/HomotopyGroup/Variantb487d00878afee1ad6fadfaad3efe49ccb6a151c4a984145ebc2cb6f6668a2f6.lean/declarations/trans--fb02f8ebce9e003a7054f61a.md) | 192 | `result-track:fb02f8ebce9e003a7054f61afc905fb781c2978879ecf53ec48e7f726f067908` |
| 22 | `theorem` | [equiv](../../../../mathematics/Topology/HomotopyGroup/Variantb487d00878afee1ad6fadfaad3efe49ccb6a151c4a984145ebc2cb6f6668a2f6.lean/declarations/equiv--e4d2b648cc179b27df7abfa1.md) | 196 | `result-track:e4d2b648cc179b27df7abfa145b13de42e71cf15a1efa7a8251724f6a5e32769` |
| 23 | `instance` | [setoid](../../../../mathematics/Topology/HomotopyGroup/Variantb487d00878afee1ad6fadfaad3efe49ccb6a151c4a984145ebc2cb6f6668a2f6.lean/declarations/setoid--8e7bfec686fb3ee3f549a15b.md) | 200 | `declaration-track:8e7bfec686fb3ee3f549a15b036bf414f5b98104b0b8af4614a39ad38aa8686d` |
| 24 | `def` | [toLoop](../../../../mathematics/Topology/HomotopyGroup/Variantb487d00878afee1ad6fadfaad3efe49ccb6a151c4a984145ebc2cb6f6668a2f6.lean/declarations/toloop--41c5c07ce42667fd5b3b2fd3.md) | 212 | `declaration-track:41c5c07ce42667fd5b3b2fd3855931ef4e93921071ab8cc53cad55feb3008f90` |
| 25 | `theorem` | [continuous_toLoop](../../../../mathematics/Topology/HomotopyGroup/Variantb487d00878afee1ad6fadfaad3efe49ccb6a151c4a984145ebc2cb6f6668a2f6.lean/declarations/continuous-toloop--d1521974acc8fd27fecc1982.md) | 222 | `result-track:d1521974acc8fd27fecc1982bc7b9db2b702e359835c527c5a3a54337a6de38d` |
| 26 | `def` | [fromLoop](../../../../mathematics/Topology/HomotopyGroup/Variantb487d00878afee1ad6fadfaad3efe49ccb6a151c4a984145ebc2cb6f6668a2f6.lean/declarations/fromloop--414d71ff29199fbf5935bb15.md) | 235 | `declaration-track:414d71ff29199fbf5935bb158a04d7032b49c44130c9ff7d2e5f612b3354941e` |
| 27 | `theorem` | [continuous_fromLoop](../../../../mathematics/Topology/HomotopyGroup/Variantb487d00878afee1ad6fadfaad3efe49ccb6a151c4a984145ebc2cb6f6668a2f6.lean/declarations/continuous-fromloop--29619f36cfbaee7822d55e64.md) | 248 | `result-track:29619f36cfbaee7822d55e64cf428e69f6ddcc77dea0e1ea28b9bf05bf6d74fb` |
| 28 | `theorem` | [to_from](../../../../mathematics/Topology/HomotopyGroup/Variantb487d00878afee1ad6fadfaad3efe49ccb6a151c4a984145ebc2cb6f6668a2f6.lean/declarations/to-from--6c6242e199e3da5a51672636.md) | 255 | `result-track:6c6242e199e3da5a5167263626dfa3d94d53a3778650fcfbd2744aa35ceb4a76` |
| 29 | `def` | [loopHomeo](../../../../mathematics/Topology/HomotopyGroup/Variantb487d00878afee1ad6fadfaad3efe49ccb6a151c4a984145ebc2cb6f6668a2f6.lean/declarations/loophomeo--c3ff7e8c521c9ee9cc0d1888.md) | 265 | `declaration-track:c3ff7e8c521c9ee9cc0d188830da344f5d028262a668cec73e47b449a80430aa` |
| 30 | `theorem` | [toLoop_apply](../../../../mathematics/Topology/HomotopyGroup/Variantb487d00878afee1ad6fadfaad3efe49ccb6a151c4a984145ebc2cb6f6668a2f6.lean/declarations/toloop-apply--f5436af50effffc1515bd4e0.md) | 275 | `result-track:f5436af50effffc1515bd4e04465f5b3d1955c0ee58a19ded13b52094795a1d0` |
| 31 | `theorem` | [fromLoop_apply](../../../../mathematics/Topology/HomotopyGroup/Variantb487d00878afee1ad6fadfaad3efe49ccb6a151c4a984145ebc2cb6f6668a2f6.lean/declarations/fromloop-apply--38d945a3174224725701a9f3.md) | 280 | `result-track:38d945a3174224725701a9f31bd5ee3796ca5d818bc364a5390d7ca7367af2bf` |
| 32 | `def` | [cCompInsert](../../../../mathematics/Topology/HomotopyGroup/Variantb487d00878afee1ad6fadfaad3efe49ccb6a151c4a984145ebc2cb6f6668a2f6.lean/declarations/ccompinsert--e08d830e3a7ebf1dee8c586c.md) | 287 | `declaration-track:e08d830e3a7ebf1dee8c586cb21a176e8cc650f6b828ed00cca4313c15508b37` |
| 33 | `def` | [homotopyTo](../../../../mathematics/Topology/HomotopyGroup/Variantb487d00878afee1ad6fadfaad3efe49ccb6a151c4a984145ebc2cb6f6668a2f6.lean/declarations/homotopyto--0a56080ebc82aea05e087608.md) | 294 | `declaration-track:0a56080ebc82aea05e0876081f47c2c1e9536228ec47c2ea495fa741a514eea7` |
| 34 | `theorem` | [homotopyTo_apply](../../../../mathematics/Topology/HomotopyGroup/Variantb487d00878afee1ad6fadfaad3efe49ccb6a151c4a984145ebc2cb6f6668a2f6.lean/declarations/homotopyto-apply--3c79632f1574f744a6fe3c15.md) | 301 | `result-track:3c79632f1574f744a6fe3c150c4f25a7187678e9627fcc74056f4b31df9f41b2` |
| 35 | `theorem` | [homotopicTo](../../../../mathematics/Topology/HomotopyGroup/Variantb487d00878afee1ad6fadfaad3efe49ccb6a151c4a984145ebc2cb6f6668a2f6.lean/declarations/homotopicto--c5f6785736cb4f8a5cd3f902.md) | 307 | `result-track:c5f6785736cb4f8a5cd3f902db40f02886e9175c75356ff50bcd07ca37767036` |
| 36 | `def` | [homotopyFrom](../../../../mathematics/Topology/HomotopyGroup/Variantb487d00878afee1ad6fadfaad3efe49ccb6a151c4a984145ebc2cb6f6668a2f6.lean/declarations/homotopyfrom--485557adf01cb69494c2d485.md) | 325 | `declaration-track:485557adf01cb69494c2d4858289bf167f395bcc2c6efd6d630b8823525deefa` |
| 37 | `theorem` | [homotopicFrom](../../../../mathematics/Topology/HomotopyGroup/Variantb487d00878afee1ad6fadfaad3efe49ccb6a151c4a984145ebc2cb6f6668a2f6.lean/declarations/homotopicfrom--e20dd92d348f069fc4dafb02.md) | 334 | `result-track:e20dd92d348f069fc4dafb0280987080c870f96cd1018aeaeda40f86057fbf9a` |
| 38 | `def` | [transAt](../../../../mathematics/Topology/HomotopyGroup/Variantb487d00878afee1ad6fadfaad3efe49ccb6a151c4a984145ebc2cb6f6668a2f6.lean/declarations/transat--46d052955d594b78b114bc23.md) | 360 | `declaration-track:46d052955d594b78b114bc23e8511746d0e5f30529f89e5dccc6ed337d281e20` |
| 39 | `def` | [symmAt](../../../../mathematics/Topology/HomotopyGroup/Variantb487d00878afee1ad6fadfaad3efe49ccb6a151c4a984145ebc2cb6f6668a2f6.lean/declarations/symmat--71b5a5d1ac53f98530ade829.md) | 375 | `declaration-track:71b5a5d1ac53f98530ade8292e5d3be7828740325319b24f4005830cc080ef76` |
| 40 | `theorem` | [transAt_distrib](../../../../mathematics/Topology/HomotopyGroup/Variantb487d00878afee1ad6fadfaad3efe49ccb6a151c4a984145ebc2cb6f6668a2f6.lean/declarations/transat-distrib--6588b55bdc88a578360bdd90.md) | 380 | `result-track:6588b55bdc88a578360bdd90f88d30bc64f08bb6613ac6353c2e549b50c6b7b4` |
| 41 | `theorem` | [fromLoop_trans_toLoop](../../../../mathematics/Topology/HomotopyGroup/Variantb487d00878afee1ad6fadfaad3efe49ccb6a151c4a984145ebc2cb6f6668a2f6.lean/declarations/fromloop-trans-toloop--b9420d4ea6065e55b9c44a4e.md) | 388 | `result-track:b9420d4ea6065e55b9c44a4eabc66899452aac06335716a351083e4befb8c867` |
| 42 | `theorem` | [fromLoop_symm_toLoop](../../../../mathematics/Topology/HomotopyGroup/Variantb487d00878afee1ad6fadfaad3efe49ccb6a151c4a984145ebc2cb6f6668a2f6.lean/declarations/fromloop-symm-toloop--eadf8867ed126fba25b460df.md) | 393 | `result-track:eadf8867ed126fba25b460dfb34f6fa6f0c321d45587f843f5fe2a5668e81e51` |
| 43 | `def` | [HomotopyGroup](../../../../mathematics/Topology/HomotopyGroup/Variantb487d00878afee1ad6fadfaad3efe49ccb6a151c4a984145ebc2cb6f6668a2f6.lean/declarations/homotopygroup--1e4318f975c2647be4ecff47.md) | 403 | `declaration-track:1e4318f975c2647be4ecff4787e7f8c88f3d55ebc5a50cc350bad01c8b1d6fec` |
| 44 | `instance` | [(anonymous)](../../../../mathematics/Topology/HomotopyGroup/Variantb487d00878afee1ad6fadfaad3efe49ccb6a151c4a984145ebc2cb6f6668a2f6.lean/declarations/instance--7456a65123f854c1042d5c46.md) | 408 | `declaration-track:7456a65123f854c1042d5c46ac20ca7491771c038b6fce71b3175e1faf6766a7` |
| 45 | `def` | [homotopyGroupEquivFundamentalGroup](../../../../mathematics/Topology/HomotopyGroup/Variantb487d00878afee1ad6fadfaad3efe49ccb6a151c4a984145ebc2cb6f6668a2f6.lean/declarations/homotopygroupequivfundamentalgroup--1ab6a1a739e57149b74ea3eb.md) | 417 | `declaration-track:1ab6a1a739e57149b74ea3ebc1f509a13664d1981d03cc29c687343c22e22c44` |
| 46 | `def` | [HomotopyGroup.Pi](../../../../mathematics/Topology/HomotopyGroup/Variantb487d00878afee1ad6fadfaad3efe49ccb6a151c4a984145ebc2cb6f6668a2f6.lean/declarations/homotopygroup-pi--72adc3bdc499a905fadbfb39.md) | 426 | `declaration-track:72adc3bdc499a905fadbfb39a104c8a199976c90e596487f31fcf709cc093d0d` |
| 47 | `def` | [genLoopHomeoOfIsEmpty](../../../../mathematics/Topology/HomotopyGroup/Variantb487d00878afee1ad6fadfaad3efe49ccb6a151c4a984145ebc2cb6f6668a2f6.lean/declarations/genloophomeoofisempty--74f6ad51c3ef3addf450c0e9.md) | 434 | `declaration-track:74f6ad51c3ef3addf450c0e9348f5a4bcb53f16eaafef7d7ea91a2190b8b4c3f` |
| 48 | `def` | [homotopyGroupEquivZerothHomotopyOfIsEmpty](../../../../mathematics/Topology/HomotopyGroup/Variantb487d00878afee1ad6fadfaad3efe49ccb6a151c4a984145ebc2cb6f6668a2f6.lean/declarations/homotopygroupequivzerothhomotopyofisempty--b14588d6499daae3762ab15f.md) | 445 | `declaration-track:b14588d6499daae3762ab15f5346ed4885c06ed9c38961ef4b79e0d1bb0bbb2b` |
| 49 | `def` | [HomotopyGroup.pi0EquivZerothHomotopy](../../../../mathematics/Topology/HomotopyGroup/Variantb487d00878afee1ad6fadfaad3efe49ccb6a151c4a984145ebc2cb6f6668a2f6.lean/declarations/homotopygroup-pi0equivzerothhomotopy--740a2d654f78db21188b0374.md) | 463 | `declaration-track:740a2d654f78db21188b03749b2b68d0b8281b6013493e9db1fc3282940807e4` |
| 50 | `def` | [genLoopEquivOfUnique](../../../../mathematics/Topology/HomotopyGroup/Variantb487d00878afee1ad6fadfaad3efe49ccb6a151c4a984145ebc2cb6f6668a2f6.lean/declarations/genloopequivofunique--dbd7e57062b4ef50b105187c.md) | 468 | `declaration-track:dbd7e57062b4ef50b105187cb0b04648658abc3fd89d5f9e97031efa5e2bc2db` |
| 51 | `def` | [homotopyGroupEquivFundamentalGroupOfUnique](../../../../mathematics/Topology/HomotopyGroup/Variantb487d00878afee1ad6fadfaad3efe49ccb6a151c4a984145ebc2cb6f6668a2f6.lean/declarations/homotopygroupequivfundamentalgroupofunique--a14112ffe6cbf9b9547f8dd6.md) | 489 | `declaration-track:a14112ffe6cbf9b9547f8dd626dc83a90f75a2be408fe12ba4c999064a8d1552` |
| 52 | `def` | [HomotopyGroup.pi1EquivFundamentalGroup](../../../../mathematics/Topology/HomotopyGroup/Variantb487d00878afee1ad6fadfaad3efe49ccb6a151c4a984145ebc2cb6f6668a2f6.lean/declarations/homotopygroup-pi1equivfundamentalgroup--e157fe39c3dc6c8c853e1174.md) | 511 | `declaration-track:e157fe39c3dc6c8c853e1174b414869e289a6b8aac100d34946e5c8c7684f4f0` |
| 53 | `instance` | [group](../../../../mathematics/Topology/HomotopyGroup/Variantb487d00878afee1ad6fadfaad3efe49ccb6a151c4a984145ebc2cb6f6668a2f6.lean/declarations/group--86e074fddd9c531939ab663f.md) | 518 | `declaration-track:86e074fddd9c531939ab663f0407c78998bf28905d39dd631ea6271fc24d4151` |
| 54 | `def` | [auxGroup](../../../../mathematics/Topology/HomotopyGroup/Variantb487d00878afee1ad6fadfaad3efe49ccb6a151c4a984145ebc2cb6f6668a2f6.lean/declarations/auxgroup--fa20b2d89fa856b67efd887b.md) | 526 | `declaration-track:fa20b2d89fa856b67efd887b063d08e8a0d6cf96b77cdca39dab13ccb3ee4b6d` |
| 55 | `theorem` | [isUnital_auxGroup](../../../../mathematics/Topology/HomotopyGroup/Variantb487d00878afee1ad6fadfaad3efe49ccb6a151c4a984145ebc2cb6f6668a2f6.lean/declarations/isunital-auxgroup--577dd9bea914136bdd20bbf9.md) | 530 | `result-track:577dd9bea914136bdd20bbf9d2eb55c7592b842dfa72640d12d56a03997ac571` |
| 56 | `theorem` | [auxGroup_indep](../../../../mathematics/Topology/HomotopyGroup/Variantb487d00878afee1ad6fadfaad3efe49ccb6a151c4a984145ebc2cb6f6668a2f6.lean/declarations/auxgroup-indep--83cd2db1021457fcf98b49bc.md) | 535 | `result-track:83cd2db1021457fcf98b49bc013eb73e472878e70f4a13513f264eb19030bad0` |
| 57 | `theorem` | [transAt_indep](../../../../mathematics/Topology/HomotopyGroup/Variantb487d00878afee1ad6fadfaad3efe49ccb6a151c4a984145ebc2cb6f6668a2f6.lean/declarations/transat-indep--af515554aeb8582571ffca83.md) | 545 | `result-track:af515554aeb8582571ffca83f294d6ab1babd0145011752e960e2342644b6477` |
| 58 | `theorem` | [symmAt_indep](../../../../mathematics/Topology/HomotopyGroup/Variantb487d00878afee1ad6fadfaad3efe49ccb6a151c4a984145ebc2cb6f6668a2f6.lean/declarations/symmat-indep--c135ac3d982fbca824a68d39.md) | 552 | `result-track:c135ac3d982fbca824a68d39ebb917ec4414d466112068d5d0d504de65640d31` |
| 59 | `theorem` | [one_def](../../../../mathematics/Topology/HomotopyGroup/Variantb487d00878afee1ad6fadfaad3efe49ccb6a151c4a984145ebc2cb6f6668a2f6.lean/declarations/one-def--c4e9c94f6c0776472c4810e1.md) | 560 | `result-track:c4e9c94f6c0776472c4810e1b19a6f720cee4458c5fa429434d002769b110a5d` |
| 60 | `theorem` | [mul_spec](../../../../mathematics/Topology/HomotopyGroup/Variantb487d00878afee1ad6fadfaad3efe49ccb6a151c4a984145ebc2cb6f6668a2f6.lean/declarations/mul-spec--33633937944de094224c400d.md) | 565 | `result-track:33633937944de094224c400d0be9d200c5421259b4eec6d0a87254c5aff72dd5` |
| 61 | `theorem` | [inv_spec](../../../../mathematics/Topology/HomotopyGroup/Variantb487d00878afee1ad6fadfaad3efe49ccb6a151c4a984145ebc2cb6f6668a2f6.lean/declarations/inv-spec--d487d84935021fb1cce3a4eb.md) | 572 | `result-track:d487d84935021fb1cce3a4ebe4f2556191d75b371acd7a4cd8f439c896d86f90` |
| 62 | `instance` | [commGroup](../../../../mathematics/Topology/HomotopyGroup/Variantb487d00878afee1ad6fadfaad3efe49ccb6a151c4a984145ebc2cb6f6668a2f6.lean/declarations/commgroup--0a37552494c5bebc27d7b632.md) | 578 | `declaration-track:0a37552494c5bebc27d7b63282ef26da4aaef1c038843697f9c6c574ff9c685c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
