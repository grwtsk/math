# Verification target: DFAPublic

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5eb9c44511ab077418efc2ed7a9433bb1462e2ca",
  "lexical_observation_count": 49,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/Computability/DFA/Variantd2c94acd258d5beb51b9f23339524ba9f09ead338e25dd2bdbea2765770926fb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/DFAPublic.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/DFAPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5eb9c44511ab077418efc2ed7a9433bb1462e2ca`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/Computability/DFA/Variantd2c94acd258d5beb51b9f23339524ba9f09ead338e25dd2bdbea2765770926fb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/Computability/DFA/Variantd2c94acd258d5beb51b9f23339524ba9f09ead338e25dd2bdbea2765770926fb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [DFA](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/DFAPublic.lean/declarations/dfa.md) | 58 | `declaration-track:5d20f3f47ab3eb9bb469790beeda9af540ae73164f3a85df45a62d5a73c24970` |
| 2 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/DFAPublic.lean/declarations/instance-source-edition-2.md) | 70 | `declaration-track:f65d03966eb6bc978be97c83d6a1e6b11d8cafd6aa65457e02fe489bac0b7e54` |
| 3 | `def` | [evalFrom](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/DFAPublic.lean/declarations/evalfrom.md) | 74 | `declaration-track:3ad4edea121306c0a3606aed01c92e9d943eb99f8557c04703ebd6bc5b0c84a2` |
| 4 | `theorem` | [evalFrom_nil](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/DFAPublic.lean/declarations/evalfrom-nil.md) | 78 | `result-track:56f2db8d63591f00ba97fc859eb02a0c2d8abad6b52eb5094c8522f09b272198` |
| 5 | `theorem` | [evalFrom_cons](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/DFAPublic.lean/declarations/evalfrom-cons.md) | 82 | `result-track:0c065f373599e6fd44701f3b3776ec9a4b961303654d2ff90cd77aa40661c841` |
| 6 | `theorem` | [evalFrom_singleton](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/DFAPublic.lean/declarations/evalfrom-singleton.md) | 87 | `result-track:a8024d9bb7ee66daa216257dc894070920610dd77193e6c931080608d0fc505e` |
| 7 | `theorem` | [evalFrom_append_singleton](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/DFAPublic.lean/declarations/evalfrom-append-singleton.md) | 91 | `result-track:30788649e14d2f402d375907a896fcc10f9e6c1c76ee01304b61d51e63335ec2` |
| 8 | `def` | [eval](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/DFAPublic.lean/declarations/eval.md) | 96 | `declaration-track:13940ddd211e2ae4c337c841a7e4819ff6b0059590c73d30897d156bfab3523e` |
| 9 | `theorem` | [eval_nil](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/DFAPublic.lean/declarations/eval-nil.md) | 100 | `result-track:bd2f0deb8b777d48aab349625673c95528071dc6e99aea2c7f0923268d67b2f7` |
| 10 | `theorem` | [eval_singleton](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/DFAPublic.lean/declarations/eval-singleton.md) | 104 | `result-track:ca1f8f0352f54cd81c939fe2d023b3ba1413319aee2f9bba7c874de8fd8561e0` |
| 11 | `theorem` | [eval_append_singleton](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/DFAPublic.lean/declarations/eval-append-singleton.md) | 108 | `result-track:4f668f47ea0cafa7e68f76c072a58cf9a5f3b3fdfd97a4fd04852686878fc32a` |
| 12 | `theorem` | [evalFrom_of_append](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/DFAPublic.lean/declarations/evalfrom-of-append.md) | 111 | `result-track:9441aa8e5ffa77a2532e5f8fab4f1448b74a09139f6f1601ca5735072565be33` |
| 13 | `def` | [acceptsFrom](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/DFAPublic.lean/declarations/acceptsfrom.md) | 118 | `declaration-track:0a47c5d3a9d1d05ae8540b051100419404b00b8b1a48aa97a215f270d37864d4` |
| 14 | `theorem` | [mem_acceptsFrom](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/DFAPublic.lean/declarations/mem-acceptsfrom.md) | 120 | `result-track:87462d47624262eb619be472f5eefe21ee46281a3ad03d31458424cb6bbf9a24` |
| 15 | `def` | [accepts](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/DFAPublic.lean/declarations/accepts.md) | 124 | `declaration-track:719b126a417686d6b35d5bca6bcb1e1d0cbc4eefa35dd6eb74d811b3b937835b` |
| 16 | `theorem` | [mem_accepts](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/DFAPublic.lean/declarations/mem-accepts.md) | 126 | `result-track:7c2ce05a75d5a8208fe60d50f2fb136844b1fa034552bd2b5c91f91133b96219` |
| 17 | `theorem` | [evalFrom_split](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/DFAPublic.lean/declarations/evalfrom-split.md) | 128 | `result-track:9674c4aacf8dbb836e409453ebff06bd7cab0d144b6c2d597508ee55c72f8045` |
| 18 | `theorem` | [evalFrom_of_pow](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/DFAPublic.lean/declarations/evalfrom-of-pow.md) | 158 | `result-track:551ab0bee83f7978d290e279d76689024d80187b3cb47563349b62f14fedb733` |
| 19 | `theorem` | [pumping_lemma](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/DFAPublic.lean/declarations/pumping-lemma.md) | 173 | `result-track:166448fd7c63127f23bc40a65947642c417daa7a77d03f9e0f42b4e64a7b7010` |
| 20 | `def` | [comap](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/DFAPublic.lean/declarations/comap.md) | 199 | `declaration-track:c5114da3a4db13d63debf34d193c6457879208242e2c2f3352bf6ca95bf36b41` |
| 21 | `theorem` | [comap_id](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/DFAPublic.lean/declarations/comap-id.md) | 205 | `result-track:dfcb504b9919628c24ea3b34919bc8373598683864e4c7d7c4a8efec0d8c74f9` |
| 22 | `theorem` | [evalFrom_comap](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/DFAPublic.lean/declarations/evalfrom-comap.md) | 208 | `result-track:e2f223c1a025c9620da6e5ac40955b567e2f72de2c1ddaeb4b01ec697df616d7` |
| 23 | `theorem` | [eval_comap](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/DFAPublic.lean/declarations/eval-comap.md) | 215 | `result-track:b415d8aa538b7f24f9c823bde35fdfca9f6c794139f8d4cfb50c69a188ccaa25` |
| 24 | `theorem` | [accepts_comap](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/DFAPublic.lean/declarations/accepts-comap.md) | 220 | `result-track:aefe7b68edf3c4fdecc4bef5f0355d74d402a06bfb06aa292a0f2b98f248663f` |
| 25 | `def` | [reindex](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/DFAPublic.lean/declarations/reindex.md) | 229 | `declaration-track:30bdcaf73c5d035efd230acf2180f713ced098240c4410ad934e2b97f77cf166` |
| 26 | `theorem` | [reindex_refl](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/DFAPublic.lean/declarations/reindex-refl.md) | 244 | `result-track:0dd65231babe2d6f11ea9a7214cf4da67cacfe773b0d88b4e04c2501c51978ae` |
| 27 | `theorem` | [symm_reindex](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/DFAPublic.lean/declarations/symm-reindex.md) | 247 | `result-track:e526c99c96157585a537e07fb99d03c3013e0af656d3fb239cc1e6f00f675387` |
| 28 | `theorem` | [evalFrom_reindex](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/DFAPublic.lean/declarations/evalfrom-reindex.md) | 250 | `result-track:c43159e1ded42121e85a95b5d9cfc61b119a2fc102236cbd04e9282d57738690` |
| 29 | `theorem` | [eval_reindex](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/DFAPublic.lean/declarations/eval-reindex.md) | 257 | `result-track:53f3c4f2172496a283dc25c5dec7c556b2868044c501bc23e6fb5dbbb0da1561` |
| 30 | `theorem` | [accepts_reindex](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/DFAPublic.lean/declarations/accepts-reindex.md) | 261 | `result-track:ed1485f36a048a3454647e837b60dc5e8f8ca72900045d192474176b6798eb50` |
| 31 | `theorem` | [comap_reindex](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/DFAPublic.lean/declarations/comap-reindex.md) | 265 | `result-track:b077274770d858370c86a57ae9488e547ab3afd0b9c00ca2cde6a0b330804a9e` |
| 32 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/DFAPublic.lean/declarations/instance.md) | 275 | `declaration-track:5c956783cf6b3b1701bebdf93652dd1e274c7db1f752142abb913ad3155c5095` |
| 33 | `theorem` | [compl_def](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/DFAPublic.lean/declarations/compl-def.md) | 278 | `result-track:28fe8dc17df9bf7b876809fce5e3113b8961f8cd9b0e0039647d8543d0a28969` |
| 34 | `theorem` | [acceptsFrom_compl](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/DFAPublic.lean/declarations/acceptsfrom-compl.md) | 282 | `result-track:e7e08248be89285bdb22ccb3c8ac623f9767ca2874780f1f84d22a1bb885ea83` |
| 35 | `theorem` | [accepts_compl](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/DFAPublic.lean/declarations/accepts-compl.md) | 286 | `result-track:52d0f77c72b0dcaa27028935939257dfede1df19a2cb1ac5411f4aaafbaea2dc` |
| 36 | `def` | [union](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/DFAPublic.lean/declarations/union.md) | 297 | `declaration-track:ff9e504140c8186de80f1b33198b2430b2a8dfa3e074ad4713888e5b9f116f7d` |
| 37 | `theorem` | [acceptsFrom_union](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/DFAPublic.lean/declarations/acceptsfrom-union.md) | 304 | `result-track:4f8e7b06936f54d8c79d4eaaf2fe3db2b063df92c60b9aa86f930d9151b13292` |
| 38 | `theorem` | [accepts_union](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/DFAPublic.lean/declarations/accepts-union.md) | 315 | `result-track:095ae5c6669e99548a4e2d8b4b1821435e9330f6306df285b8b78b86ba6de804` |
| 39 | `def` | [inter](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/DFAPublic.lean/declarations/inter.md) | 327 | `declaration-track:b75097dadef3bbe432021d532eb11173a86dd61055b133eeeb646ef3c83690f5` |
| 40 | `theorem` | [acceptsFrom_inter](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/DFAPublic.lean/declarations/acceptsfrom-inter.md) | 334 | `result-track:1c0feda195ad56bf972e96c5c8e518878e6140baf3fecc880bbff4a615886eb9` |
| 41 | `theorem` | [accepts_inter](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/DFAPublic.lean/declarations/accepts-inter.md) | 344 | `result-track:fa56a87f2422f43d98522b78e989dee9b6532be24b44501c72bdc57c0c245b47` |
| 42 | `def` | [IsRegular](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/DFAPublic.lean/declarations/isregular.md) | 354 | `declaration-track:3ed66d300445d34e3dfe1583d7b766b00731e6ecb851361b66a1e284ff0321fb` |
| 43 | `lemma` | [isRegular_iff.helper.](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/DFAPublic.lean/declarations/isregular-iff-helper.md) | 358 | `result-track:6f7a0a2e45551a0c9b79507ed82b524f3dfc6b7d88632aca29eda13985b6c981` |
| 44 | `theorem` | [isRegular_iff](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/DFAPublic.lean/declarations/isregular-iff.md) | 371 | `result-track:36568748e11ce09ad6d8fe4beabfc551c2c457c7acc9e72ed34c2fb14060e523` |
| 45 | `theorem` | [IsRegular.compl](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/DFAPublic.lean/declarations/isregular-compl-source-edition-2.md) | 375 | `result-track:f81a328799cf4131134254acc2e554590b00a5bab1e99b66437be6d4d16f2885` |
| 46 | `theorem` | [IsRegular.of_compl](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/DFAPublic.lean/declarations/isregular-of-compl.md) | 379 | `result-track:c045d61774037388dc56e297efa2c28674f32de36dde7fd57d0127118c02f55e` |
| 47 | `theorem` | [IsRegular_compl](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/DFAPublic.lean/declarations/isregular-compl.md) | 385 | `result-track:b528d167a3df8818ed2051939abf98469d056d0b2d85aafd3f7c9c1aada6e444` |
| 48 | `theorem` | [IsRegular.add](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/DFAPublic.lean/declarations/isregular-add.md) | 389 | `result-track:8a7e158389e461f801f99c95984dd90bf76f8139a5a673344c2d103c7403f90b` |
| 49 | `theorem` | [IsRegular.inf](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/DFAPublic.lean/declarations/isregular-inf.md) | 396 | `result-track:686be085e769e3e1661e9e2e9c913edacb6f6278dbb542255bc5281d2acec9ee` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5fc90119b600d93541bc05f7ea94015e08d611b159bc4fdedeeef0762e493225 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/Computability/DFA/Variantd2c94acd258d5beb51b9f23339524ba9f09ead338e25dd2bdbea2765770926fb.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/Computability/DFA/Variantd2c94acd258d5beb51b9f23339524ba9f09ead338e25dd2bdbea2765770926fb.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
